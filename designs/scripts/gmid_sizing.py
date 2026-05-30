"""
gmid_sizing.py
--------------
gm/Id-based device sizing tool for GF180MCU 3.3V transistors.

Reads characterization CSVs (produced by the xschem `wrdata` testbenches
in libs/nmos_char/ and libs/pmos_char/) and provides a lookup interface
for analog sizing decisions.

The classic gm/Id design flow:
    1. Pick a target gm/Id (sets inversion level: ~25 weak, ~10 moderate, ~5 strong)
    2. Pick an L (sets gain / output resistance / fT tradeoff)
    3. Specify either target Id or target gm
    4. Tool returns the required W

Usage:
    # One-shot sizing
    python gmid_sizing.py size --type nmos --L 0.5u --gmid 15 --id 10u

    # Plot the curves
    python gmid_sizing.py plot --type both
    python gmid_sizing.py plot --type nmos --save nmos_gmid.png

    # Interactive REPL (best for iterating during design)
    python gmid_sizing.py interactive

    # As a library:
    from gmid_sizing import GmIdLookup
    nmos = GmIdLookup('libs/nmos_char/data', 'nmos')
    result = nmos.size(L='0.5u', gm_id=15, id='10u')
    print(result['W'])  # required width in meters
"""

import argparse
import re
import sys
from pathlib import Path

import numpy as np
import pandas as pd
import matplotlib.pyplot as plt


# ------------------------------------------------------------------
# Utility: SI suffix parsing
# ------------------------------------------------------------------
SI_SUFFIXES = {
    'f': 1e-15, 'p': 1e-12, 'n': 1e-9, 'u': 1e-6, 'µ': 1e-6,
    'm': 1e-3, 'k': 1e3, 'meg': 1e6,
}


def parse_si(s):
    """Parse '0.5u', '10n', '1.5m' -> float in SI base units."""
    if isinstance(s, (int, float)):
        return float(s)
    s = str(s).strip().lower()
    if s.endswith('meg'):
        return float(s[:-3]) * 1e6
    if s and s[-1] in SI_SUFFIXES:
        return float(s[:-1]) * SI_SUFFIXES[s[-1]]
    return float(s)


def parse_L_from_filename(path):
    """Extract L from filename like 'nmos_gmid_L0p28u.csv' -> 0.28e-6."""
    m = re.search(r'L(\d+p?\d*)([a-z]+)', path.name, re.IGNORECASE)
    if not m:
        raise ValueError(f"Can't parse L from {path.name}")
    num_str, suffix = m.groups()
    num_str = num_str.replace('p', '.')
    return parse_si(num_str + suffix)


def fmt_si(x, unit=''):
    """Format a number with SI suffix, e.g. 1.5e-6 -> '1.5u'."""
    if x == 0:
        return f'0{unit}'
    ax = abs(x)
    if ax >= 1e6:   return f'{x/1e6:.4g}M{unit}'
    if ax >= 1e3:   return f'{x/1e3:.4g}k{unit}'
    if ax >= 1:     return f'{x:.4g}{unit}'
    if ax >= 1e-3:  return f'{x*1e3:.4g}m{unit}'
    if ax >= 1e-6:  return f'{x*1e6:.4g}u{unit}'
    if ax >= 1e-9:  return f'{x*1e9:.4g}n{unit}'
    if ax >= 1e-12: return f'{x*1e12:.4g}p{unit}'
    return f'{x:.4g}{unit}'


# ------------------------------------------------------------------
# CSV loader
# ------------------------------------------------------------------
def load_wrdata_csv(path):
    """
    Load an ngspice `wrdata` output for the sweep
        wrdata file id gm gm_id id_w
    which produces 8 columns: (vgs, id, vgs, gm, vgs, gm_id, vgs, id_w)
    We discard the repeated vgs columns and keep one.
    """
    df = pd.read_csv(path, sep=r'\s+', header=None, engine='python')
    if df.shape[1] < 8:
        raise ValueError(f"{path.name} has {df.shape[1]} columns, expected >=8.")
    out = pd.DataFrame({
        'vgs':   df.iloc[:, 0],
        'id':    df.iloc[:, 1],
        'gm':    df.iloc[:, 3],
        'gm_id': df.iloc[:, 5],
        'id_w':  df.iloc[:, 7],
    })
    # Use absolute values so PMOS data is sign-clean for lookup.
    for c in ('id', 'gm', 'gm_id', 'id_w'):
        out[c] = out[c].abs()
    return out


# ------------------------------------------------------------------
# Lookup class
# ------------------------------------------------------------------
class GmIdLookup:
    """Family of gm/Id curves at multiple L values, with sizing methods."""

    def __init__(self, data_dir, device):
        self.device = device.lower()
        self.data_dir = Path(data_dir)
        self.curves = {}  # L (float, meters) -> cleaned DataFrame

        files = sorted(self.data_dir.glob(f'{device}_gmid_L*.csv'))
        if not files:
            raise FileNotFoundError(
                f"No {device}_gmid_L*.csv files in {data_dir}"
            )
        for f in files:
            L = parse_L_from_filename(f)
            self.curves[L] = load_wrdata_csv(f)
        self.L_values = sorted(self.curves.keys())

    # --------------------------------------------------------------
    # Internal: monotonic slice of the curve (peak -> strong inversion)
    # --------------------------------------------------------------
    def _monotonic_slice(self, L):
        """
        Return the portion of the curve from peak gm/Id rightward,
        which is monotonically decreasing in gm/Id as id_w grows.
        This is the region usable for design lookup.
        """
        df = self.curves[L]
        peak = df['gm_id'].idxmax()
        sub = df.iloc[peak:].copy()
        # Sort by gm_id ascending so np.interp works
        return sub.sort_values('gm_id').reset_index(drop=True)

    # --------------------------------------------------------------
    # Core lookup: gm/Id, L -> id/W
    # --------------------------------------------------------------
    def lookup_idw(self, L, gm_id_target, verbose=True):
        """Given L and target gm/Id, return Id/W [A/m]."""
        L = parse_si(L)
        if L not in self.curves:
            L_closest = min(self.L_values, key=lambda x: abs(x - L))
            if verbose:
                print(f"  [info] L={fmt_si(L,'m')} not characterized; "
                      f"using nearest L={fmt_si(L_closest,'m')}")
            L = L_closest
        sub = self._monotonic_slice(L)
        gmid_max = sub['gm_id'].max()
        gmid_min = sub['gm_id'].min()
        if gm_id_target > gmid_max:
            if verbose:
                print(f"  [warn] target gm/Id={gm_id_target:.2f} exceeds curve "
                      f"peak {gmid_max:.2f}. Clamping.")
            return float(sub['id_w'].iloc[-1])
        if gm_id_target < gmid_min:
            if verbose:
                print(f"  [warn] target gm/Id={gm_id_target:.2f} below curve "
                      f"floor {gmid_min:.2f}. Clamping.")
            return float(sub['id_w'].iloc[0])
        return float(np.interp(gm_id_target, sub['gm_id'], sub['id_w']))

    # --------------------------------------------------------------
    # Sizing: returns the W needed
    # --------------------------------------------------------------
    def size(self, L, gm_id, id=None, gm=None, verbose=True):
        """
        Returns a dict with sizing info. Specify either id OR gm.

        L:     channel length (e.g. '0.5u' or 0.5e-6)
        gm_id: target gm/Id [V^-1]
        id:    target Id [A or string]
        gm:    target gm [S or string]  (alternative to id)
        """
        L = parse_si(L)
        if id is None and gm is None:
            raise ValueError("Specify either id or gm.")
        if id is not None and gm is not None:
            raise ValueError("Specify only one of id or gm, not both.")

        if gm is not None:
            gm = parse_si(gm)
            id_target = gm / gm_id
        else:
            id_target = parse_si(id)

        # Snap to actual characterized L (so caller knows what curve was used)
        if L in self.curves:
            L_used = L
        else:
            L_used = min(self.L_values, key=lambda x: abs(x - L))

        id_w = self.lookup_idw(L_used, gm_id, verbose=verbose)
        W = id_target / id_w
        gm_val = gm_id * id_target

        return {
            'device':    self.device,
            'L':         L_used,
            'L_request': L,
            'W':         W,
            'W_L':       W / L_used,
            'gm_id':     gm_id,
            'id':        id_target,
            'gm':        gm_val,
            'id_w':      id_w,
        }

    # --------------------------------------------------------------
    # Plotting
    # --------------------------------------------------------------
    def plot(self, ax=None, xlog=True, mark=None):
        """
        Plot the family of gm/Id curves.
        mark: optional list of (L, gm_id, id_w) tuples to overlay as markers
        """
        if ax is None:
            fig, ax = plt.subplots(figsize=(8, 6))
        for L in self.L_values:
            df = self.curves[L]
            # Only show points where id is meaningfully above the noise floor
            mask = df['id'] > df['id'].max() * 1e-6
            ax.plot(df['id_w'][mask], df['gm_id'][mask],
                    linewidth=2, label=f'L = {fmt_si(L,"m")}')
        if mark:
            for L, gm_id_val, id_w_val in mark:
                ax.plot(id_w_val, gm_id_val, 'k*', markersize=14,
                        label=f'op pt: L={fmt_si(L,"m")}, gm/Id={gm_id_val:.2f}')
        if xlog:
            ax.set_xscale('log')
        ax.set_xlabel('Id / W  [A/m]')
        ax.set_ylabel(r'$g_m / I_D$  [V$^{-1}$]')
        ax.set_title(f'{self.device.upper()} gm/Id characterization '
                     f'(gf180mcu {self.device[0]}fet_03v3)')
        ax.legend(loc='best')
        ax.grid(True, which='both', alpha=0.3)
        return ax


# ------------------------------------------------------------------
# Pretty output
# ------------------------------------------------------------------
def format_result(r):
    # 1 A/m  ==  1 uA/um   (exact)
    id_w_uA_per_um = r['id_w']
    return (
        f"  Device:  {r['device'].upper()}\n"
        f"  L:       {fmt_si(r['L'],'m')}\n"
        f"  W:       {fmt_si(r['W'],'m')}   <-- required width\n"
        f"  W/L:     {r['W_L']:.3f}\n"
        f"  Id:      {fmt_si(r['id'],'A')}\n"
        f"  gm:      {fmt_si(r['gm'],'S')}\n"
        f"  gm/Id:   {r['gm_id']:.3f} V^-1\n"
        f"  Id/W:    {id_w_uA_per_um:.4g} uA/um"
    )


# ------------------------------------------------------------------
# CLI commands
# ------------------------------------------------------------------
def cmd_size(args, nmos, pmos):
    lookup = nmos if args.type == 'nmos' else pmos
    kwargs = {'L': args.L, 'gm_id': args.gmid}
    if args.id:
        kwargs['id'] = args.id
    if args.gm:
        kwargs['gm'] = args.gm
    r = lookup.size(**kwargs)
    print(f"\nSizing result:")
    print(format_result(r))
    print()


def cmd_plot(args, nmos, pmos):
    if args.type == 'both':
        fig, (ax1, ax2) = plt.subplots(1, 2, figsize=(14, 6))
        nmos.plot(ax=ax1)
        pmos.plot(ax=ax2)
    elif args.type == 'nmos':
        nmos.plot()
    else:
        pmos.plot()
    plt.tight_layout()
    if args.save:
        plt.savefig(args.save, dpi=150, bbox_inches='tight')
        print(f"Saved plot to {args.save}")
    else:
        plt.show()


def cmd_interactive(args, nmos, pmos):
    print("\ngm/Id sizing tool — interactive mode")
    print("Type 'help' for commands, 'quit' to exit.\n")
    while True:
        try:
            line = input("gmid> ").strip()
        except (EOFError, KeyboardInterrupt):
            print()
            break
        if not line:
            continue
        if line in ('quit', 'exit', 'q'):
            break
        if line == 'help':
            print(
                "  size <nmos|pmos> <L> <gm/Id> <Id>\n"
                "      e.g.   size nmos 0.5u 15 10u\n"
                "  sizeg <nmos|pmos> <L> <gm/Id> <gm>\n"
                "      (size by target gm instead of Id)\n"
                "      e.g.   sizeg nmos 0.5u 15 150u\n"
                "  plot <nmos|pmos|both>\n"
                "  Ls       List available L values\n"
                "  quit\n"
            )
            continue
        if line == 'Ls':
            print(f"  NMOS Ls: {[fmt_si(L,'m') for L in nmos.L_values]}")
            print(f"  PMOS Ls: {[fmt_si(L,'m') for L in pmos.L_values]}")
            continue
        parts = line.split()
        try:
            if parts[0] in ('size', 'sizeg') and len(parts) == 5:
                dev, L, gmid, val = parts[1], parts[2], float(parts[3]), parts[4]
                lookup = nmos if dev == 'nmos' else pmos
                if parts[0] == 'size':
                    r = lookup.size(L=L, gm_id=gmid, id=val)
                else:
                    r = lookup.size(L=L, gm_id=gmid, gm=val)
                print(format_result(r))
            elif parts[0] == 'plot' and len(parts) == 2:
                t = parts[1]
                if t == 'both':
                    fig, (a1, a2) = plt.subplots(1, 2, figsize=(14, 6))
                    nmos.plot(ax=a1); pmos.plot(ax=a2)
                elif t == 'nmos':
                    nmos.plot()
                elif t == 'pmos':
                    pmos.plot()
                plt.tight_layout()
                plt.show()
            else:
                print("Unknown command. Type 'help'.")
        except Exception as e:
            print(f"  Error: {e}")


# ------------------------------------------------------------------
# Main
# ------------------------------------------------------------------
def main():
    p = argparse.ArgumentParser(
        description='gm/Id sizing tool for GF180MCU 3.3V devices'
    )
    p.add_argument('--nmos-data', default='libs/nmos_char/data',
                   help='Path to NMOS CSV directory '
                        '(default: libs/nmos_char/data)')
    p.add_argument('--pmos-data', default='libs/pmos_char/data',
                   help='Path to PMOS CSV directory '
                        '(default: libs/pmos_char/data)')
    sub = p.add_subparsers(dest='cmd', required=True)

    ps = sub.add_parser('size', help='Size a single device')
    ps.add_argument('--type', required=True, choices=['nmos', 'pmos'])
    ps.add_argument('--L', required=True, help='Channel length, e.g. 0.5u')
    ps.add_argument('--gmid', required=True, type=float,
                    help='Target gm/Id [V^-1]')
    g = ps.add_mutually_exclusive_group(required=True)
    g.add_argument('--id', help='Target drain current, e.g. 10u')
    g.add_argument('--gm', help='Target gm, e.g. 150u')

    pp = sub.add_parser('plot', help='Plot gm/Id curves')
    pp.add_argument('--type', default='both',
                    choices=['nmos', 'pmos', 'both'])
    pp.add_argument('--save', default=None,
                    help='Save PNG instead of showing')

    sub.add_parser('interactive', help='Interactive REPL')

    args = p.parse_args()

    # Load both families (PMOS may be missing if user only ran NMOS)
    nmos = pmos = None
    try:
        nmos = GmIdLookup(args.nmos_data, 'nmos')
    except FileNotFoundError as e:
        print(f"[warn] NMOS data not loaded: {e}", file=sys.stderr)
    try:
        pmos = GmIdLookup(args.pmos_data, 'pmos')
    except FileNotFoundError as e:
        print(f"[warn] PMOS data not loaded: {e}", file=sys.stderr)

    if args.cmd == 'size':
        cmd_size(args, nmos, pmos)
    elif args.cmd == 'plot':
        cmd_plot(args, nmos, pmos)
    elif args.cmd == 'interactive':
        cmd_interactive(args, nmos, pmos)


if __name__ == '__main__':
    main()

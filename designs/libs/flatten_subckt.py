#!/usr/bin/env python3
"""
flatten_subckt.py

Flattens all instances of a named .SUBCKT in a SPICE/CDL netlist by inlining
the subcircuit's device lines at each call site, remapping ports to the
instance's actual connected nets, and uniquifying internal (non-port) nets
and device names so multiple instances don't collide.

Usage:
    python3 flatten_subckt.py input.spice output.spice SUBCKT_NAME [SUBCKT_NAME2 ...]

Notes:
- Handles line continuations ("+" at start of line).
- Case-insensitive matching of .SUBCKT / .ENDS / element type letters.
- Only flattens element lines inside the target subckt (M/R/C/D/Q/etc,
  including nested X calls to OTHER subckts - those are left as-is unless
  you also pass their name in the target list).
- Removes the .SUBCKT....ENDS block(s) for flattened subckts entirely.
- Leaves all other subckts and top-level lines untouched.
"""

import sys
import re

def read_lines_join_continuations(path):
    """Read file, join '+' continuation lines into their parent line."""
    raw = open(path, "r").read().splitlines()
    joined = []
    for line in raw:
        if line.startswith("+") and joined:
            joined[-1] = joined[-1].rstrip() + " " + line[1:].strip()
        else:
            joined.append(line)
    return joined

def parse_subckts(lines):
    """Return dict: name -> {'ports': [...], 'body': [line, ...]}"""
    subckts = {}
    i = 0
    while i < len(lines):
        line = lines[i]
        stripped = line.strip()
        if stripped.upper().startswith(".SUBCKT"):
            toks = stripped.split()
            name = toks[1]
            ports = toks[2:]
            body = []
            i += 1
            while i < len(lines) and not lines[i].strip().upper().startswith(".ENDS"):
                body.append(lines[i])
                i += 1
            subckts[name] = {"ports": ports, "body": body}
        i += 1
    return subckts

def flatten_instance(subckt, call_nets, inst_tag, targets, subckts):
    """
    Expand one instance of subckt (given its port->net mapping via call_nets)
    into flat device lines. Recurses into nested X calls if their target is
    also in `targets`; otherwise leaves nested X calls as-is (renamed nets only).
    Returns list of output lines.
    """
    ports = subckt["ports"]
    port_map = dict(zip(ports, call_nets))
    out = []

    for line in subckt["body"]:
        s = line.strip()
        if not s or s.startswith("*"):
            continue  # drop comments/blank lines inside flattened block
        toks = s.split()
        etype = toks[0][0].upper()

        if etype == "X":
            # nested subcircuit call: tokens = Xname net1 net2 ... subname
            xname = toks[0]
            xnets = toks[1:-1]
            xsub = toks[-1]
            # remap nets through this instance's port_map, else uniquify
            mapped_nets = []
            for n in xnets:
                if n in port_map:
                    mapped_nets.append(port_map[n])
                else:
                    mapped_nets.append(f"{n}_{inst_tag}")
            if xsub in targets and xsub in subckts:
                # recurse: flatten this nested instance too
                nested_tag = f"{inst_tag}_{xname}"
                out.extend(
                    flatten_instance(
                        subckts[xsub], mapped_nets, nested_tag, targets, subckts
                    )
                )
            else:
                # leave as a subcircuit call, just with remapped/uniquified nets
                new_name = f"{xname}_{inst_tag}"
                out.append(f"{new_name} " + " ".join(mapped_nets) + f" {xsub}")
            continue

        # Regular device line (M, R, C, D, Q, etc.)
        # Format: <name> <net1> <net2> ... <netN> <model> [params...]
        # Only the first N tokens after the name are actual net terminals;
        # token N+1 is the model name and must NOT be touched. Everything
        # after that (L=.., W=.., nf=.., m=..) also passes through unchanged.
        TERMINAL_COUNTS = {
            "M": 4,  # MOSFET: d g s b
            "Q": 3,  # BJT: c b e (4th bulk/substrate terminal sometimes present)
            "D": 2,  # Diode: a k
            "R": 2,  # Resistor
            "C": 2,  # Capacitor
        }
        n_terms = TERMINAL_COUNTS.get(etype, 2)  # conservative default

        new_toks = [f"{toks[0]}_{inst_tag}"]
        for idx, t in enumerate(toks[1:], start=1):
            if "=" in t:
                new_toks.append(t)  # parameter, e.g. L=0.28u
                continue
            if idx <= n_terms:
                # this is a net terminal position
                if t in port_map:
                    new_toks.append(port_map[t])
                else:
                    new_toks.append(f"{t}_{inst_tag}")
            else:
                # model name or trailing positional param - leave untouched
                new_toks.append(t)
        out.append(" ".join(new_toks))

    return out

def flatten_netlist(lines, target_names):
    subckts = parse_subckts(lines)
    for t in target_names:
        if t not in subckts:
            print(f"WARNING: subckt '{t}' not found in netlist - skipping", file=sys.stderr)

    out = []
    i = 0
    while i < len(lines):
        line = lines[i]
        stripped = line.strip()

        # Skip (remove) .SUBCKT....ENDS blocks for flattened targets
        if stripped.upper().startswith(".SUBCKT"):
            name = stripped.split()[1]
            if name in target_names:
                # skip until matching .ENDS
                i += 1
                while i < len(lines) and not lines[i].strip().upper().startswith(".ENDS"):
                    i += 1
                i += 1  # skip the .ENDS line itself
                continue
            else:
                out.append(line)
                i += 1
                continue

        # Flatten X calls to target subckts wherever they appear
        if stripped and stripped[0].upper() == "X":
            toks = stripped.split()
            xname = toks[0]
            xnets = toks[1:-1]
            xsub = toks[-1]
            if xsub in target_names and xsub in subckts:
                flat_lines = flatten_instance(
                    subckts[xsub], xnets, xname.lstrip("Xx"), target_names, subckts
                )
                out.append(f"* -- flattened {xname} ({xsub}) --")
                out.extend(flat_lines)
                out.append(f"* -- end flattened {xname} --")
                i += 1
                continue

        out.append(line)
        i += 1

    return out

def main():
    if len(sys.argv) < 4:
        print(f"Usage: {sys.argv[0]} input.spice output.spice SUBCKT_NAME [SUBCKT_NAME2 ...]")
        sys.exit(1)

    in_path = sys.argv[1]
    out_path = sys.argv[2]
    targets = sys.argv[3:]

    lines = read_lines_join_continuations(in_path)
    result = flatten_netlist(lines, targets)

    with open(out_path, "w") as f:
        f.write("\n".join(result) + "\n")

    print(f"Flattened {targets} -> wrote {out_path}")

if __name__ == "__main__":
    main()

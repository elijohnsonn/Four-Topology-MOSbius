# gm/Id Sizing Tool

A Python utility for analog sizing decisions using the gm/Id design methodology.
Reads characterization CSVs produced by the `nmos_char/` and `pmos_char/`
xschem testbenches and returns the **W** required to hit a target operating
point (gm/Id, Id, L).

## What it does

Given the family of curves you swept:

| L value | NMOS file | PMOS file |
|---|---|---|
| 0.28 µm | `nmos_gmid_L0p28u.csv` | `pmos_gmid_L0p28u.csv` |
| 0.5 µm  | `nmos_gmid_L0p5u.csv`  | `pmos_gmid_L0p5u.csv`  |
| 1 µm    | `nmos_gmid_L1u.csv`    | `pmos_gmid_L1u.csv`    |
| 2 µm    | `nmos_gmid_L2u.csv`    | `pmos_gmid_L2u.csv`    |
| 5 µm    | `nmos_gmid_L5u.csv`    | `pmos_gmid_L5u.csv`    |

You give it a target operating point — for example:

> "I want an NMOS at L = 0.5 µm biased at gm/Id = 15 V⁻¹ carrying 10 µA"

and it returns:

> "Use W = 4.2 µm"  *(numbers illustrative)*

## Installation

Only standard scientific Python is needed:

```bash
pip install numpy pandas matplotlib
```

Both already exist inside the IIC-OSIC-TOOLS docker container, so you can
run the script there directly. You can also run it on your host.

## Usage

### Sizing one device (CLI)

```bash
python gmid_sizing.py size --type nmos --L 0.5u --gmid 15 --id 10u
```

Output:

```
Sizing result:
  Device:  NMOS
  L:       500nm
  W:       4.2um   <-- required width
  W/L:     8.401
  Id:      10uA
  gm:      150uS
  gm/Id:   15.000 V^-1
  Id/W:    2.38uA/m
```

Specify `--gm` instead of `--id` to size by target transconductance:

```bash
python gmid_sizing.py size --type pmos --L 1u --gmid 12 --gm 200u
```

### Plotting

```bash
python gmid_sizing.py plot --type both
python gmid_sizing.py plot --type nmos --save nmos_gmid.png
```

### Interactive REPL

For iterating during design (sizing many devices in one session):

```bash
python gmid_sizing.py interactive
```

```
gmid> size nmos 0.5u 15 10u
  Device:  NMOS
  W:       4.2um
  ...
gmid> size pmos 1u 12 20u
  ...
gmid> plot both
gmid> quit
```

### As a Python library

```python
from gmid_sizing import GmIdLookup

nmos = GmIdLookup('libs/nmos_char/data', 'nmos')
pmos = GmIdLookup('libs/pmos_char/data', 'pmos')

# Differential pair input device sizing
inp = nmos.size(L='1u', gm_id=18, id='5u')
print(f"Input pair W = {inp['W']*1e6:.2f} um")

# Tail current source
tail = nmos.size(L='2u', gm_id=8, id='10u')
```

## How it works

For each L curve, the script:

1. Loads the CSV (8 columns from `wrdata`: vgs, id, vgs, gm, vgs, gm/Id, vgs, Id/W)
2. Takes absolute values (so PMOS data is sign-clean)
3. Slices from the peak of gm/Id rightward — the monotonic, design-usable region
4. Interpolates Id/W at the target gm/Id

Then W = Id_target / (Id/W).

## Default paths

The script assumes you run it from your repo root with this structure:

```
your-repo/
├── scripts/
│   └── gmid_sizing.py
└── libs/
    ├── nmos_char/data/*.csv
    └── pmos_char/data/*.csv
```

Override with `--nmos-data` and `--pmos-data` if your layout differs.

## Caveats

- **L extrapolation** isn't done. If you ask for an L not in the swept set,
  the script uses the closest available L and warns you. Re-sweep the
  testbench if you need finer L resolution.
- **gm/Id outside the curve range** is clamped (not extrapolated). The peak
  represents the deepest weak-inversion point your sweep reached.
- **One Vds per curve**. The CSVs were swept at Vds = 1.5 V. For final sizing
  you should verify the device's actual Vds in-circuit isn't dramatically
  different (saturation only matters; the curves are pretty flat in sat).
- **Single corner (typical).** No PVT variation here. Worth doing a separate
  sweep at fast/slow corners later if needed.

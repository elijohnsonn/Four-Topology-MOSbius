"""
Plot OTA transient response CSVs (default / 2x / 3x / 4x).

Each CSV is expected to have 4 columns with no header:
    time_out, v_output, time_in, v_input
(this is the format produced by ngspice's `wrdata` for two traces)

Usage:
    Just run it from the directory containing your CSVs:
        python plot_ota_transient.py

    It looks for files whose names contain "default", "2x", "3x", "4x"
    (case-insensitive, matched anywhere in the filename) and writes,
    into that same directory:
        - inverting_amp_simulation.png       (2x2 combined figure)
        - inverting_amp_simulation_default.png
        - inverting_amp_simulation_2x.png
        - inverting_amp_simulation_3x.png
        - inverting_amp_simulation_4x.png

    You can also point it at a different directory:
        python plot_ota_transient.py /path/to/csv/folder

    Or give exact files explicitly (in default,2x,3x,4x order):
        python plot_ota_transient.py default.csv 2x.csv 3x.csv 4x.csv
"""

import sys
import glob
import os
import numpy as np
import matplotlib
matplotlib.use('Agg')  # no display needed, just write the file
import matplotlib.pyplot as plt

LABELS = ['default', '2x', '3x', '4x']
COLORS = {'default': 'tab:gray', '2x': 'tab:blue', '3x': 'tab:orange', '4x': 'tab:green'}
TITLE = 'Telescopic OTA Inverting Amplifier Simulation'
COMBINED_OUTPUT_NAME = 'inverting_amp_simulation.png'


def find_csv_for_label(directory, label):
    """Find a CSV file in `directory` whose name contains `label` (case-insensitive)."""
    candidates = glob.glob(os.path.join(directory, '*.csv'))
    matches = [c for c in candidates if label.lower() in os.path.basename(c).lower()]
    if not matches:
        return None
    matches.sort(key=len)
    if len(matches) > 1:
        print(f"  Note: multiple files matched '{label}', using {matches[0]}")
    return matches[0]


def resolve_files(args):
    """
    Returns (files_dict, output_dir).
    files_dict maps label -> csv path.
    """
    if len(args) == 4:
        files = dict(zip(LABELS, args))
        for label, path in files.items():
            if not os.path.isfile(path):
                sys.exit(f"Error: file not found for '{label}': {path}")
        output_dir = os.path.dirname(os.path.abspath(files['default']))
        return files, output_dir

    directory = args[0] if len(args) == 1 else os.getcwd()
    if not os.path.isdir(directory):
        sys.exit(f"Error: '{directory}' is not a directory")

    files = {}
    missing = []
    for label in LABELS:
        path = find_csv_for_label(directory, label)
        if path is None:
            missing.append(label)
        else:
            files[label] = path

    if missing:
        sys.exit(
            f"Error: could not find a CSV for: {', '.join(missing)} "
            f"in {directory}\n"
            f"Expected filenames containing one of: {LABELS}"
        )

    return files, directory


def plot_one(ax, label, path):
    data = np.loadtxt(path)
    t, vout, tin, vin = data[:, 0], data[:, 1], data[:, 2], data[:, 3]

    ax.plot(t * 1000, vout, color=COLORS.get(label, 'tab:red'),
            linewidth=1.3, label='output')
    ax.plot(tin * 1000, vin, color='black', linestyle='--',
            linewidth=1, alpha=0.5, label='input')

    ax.set_title(label)
    ax.set_xlabel('Time (ms)')
    ax.set_ylabel('Voltage (V)')
    ax.grid(True, alpha=0.3)
    ax.legend(fontsize=8)


def main():
    args = sys.argv[1:]
    files, output_dir = resolve_files(args)

    print("Using files:")
    for label, path in files.items():
        print(f"  {label}: {path}")

    # --- Combined 2x2 figure ---
    fig, axes = plt.subplots(2, 2, figsize=(11, 8), sharex=True, sharey=True)
    axes = axes.flatten()

    for ax, (label, path) in zip(axes, files.items()):
        plot_one(ax, label, path)

    fig.suptitle(TITLE, fontsize=14)
    plt.tight_layout()

    combined_path = os.path.join(output_dir, COMBINED_OUTPUT_NAME)
    plt.savefig(combined_path, dpi=130)
    plt.close(fig)
    print(f"\nSaved: {combined_path}")

    # --- Individual figures, one per file ---
    for label, path in files.items():
        fig_i, ax_i = plt.subplots(figsize=(7, 5))
        plot_one(ax_i, label, path)
        fig_i.suptitle(TITLE, fontsize=13)
        plt.tight_layout()

        individual_path = os.path.join(
            output_dir, f'inverting_amp_simulation_{label}.png'
        )
        plt.savefig(individual_path, dpi=130)
        plt.close(fig_i)
        print(f"Saved: {individual_path}")


if __name__ == '__main__':
    main()
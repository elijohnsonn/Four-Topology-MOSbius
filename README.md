# Repository for 2026 SSCS Chipathon Four Topology MOSbius team

## About
Analog circuit design intuition is best developed through hands-on measurement of real silicon, yet most educational settings rely primarily on simulation. Four Topology MOSbius is an open-source, programmable amplifier test chip that enables students to configure and evaluate four distinct amplifier topologies, a folded cascode OTA, a five- transistor OTA, a telescopic cascode OTA, and a common- source stage, on a single die. Each amplifier is implemented with programmable transistors that allow selection among four sizing configurations (base through 4× sizing), and both topology and sizing are selected at runtime through an on-chip scan chain without powering down the system. All amplifiers were designed using the gm/ID methodology to target a 1 MHz gain- bandwidth product while driving a 120 pF off-chip load, and the design was completed entirely with open-source tools (Xschem, Ngspice, and KLayout) and the GlobalFoundries GF180MCU open-source PDK. Building on the MOSbius platform, the chip supports side-by-side comparison of gain, bandwidth, slew rate, phase margin, and power consumption under identical loading conditions, as well as two-stage configurations with external frequency compensation.

## Team
All team members are undergraduate students at Columbia University in the City of New York
- Eli Johnson — Team Lead, Schematic and Design Integration/Troubleshooting, Owner of Folded Cascode, Common-Source Blocks
- Maxwell Drucker — Layout Integration/Troubleshooting, Owner of Scan Chain, Transmission Gates, Programmable Transistor Block (Digital)
- Manuel Garcia — Owner of Telescopic Cascode Block
- Songhang Li — Owner of 5-Transistor Block

## Repository Navigation
All schematics, layouts, can be found in /designs/libs. Slide decks and images can be found in other directories in the main branch
- Amplifiers are located in core_amps (schematics, symbols, and layouts)
- Digital blocks are located core_digital
- Top-Level symbol and layout are located in core_tb
- Verification and Pex results are located in verification and pex, respectively

## Contact
- etj2114@columbia.edu
- mrd2210@columbia.edu
- mpg2169@columbia.edu
- sl5929@columbia.edu







v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Scan Chain} 730 -300 0 0 0.5 0.5 {}
N 1520 50 1520 100 {lab=VSS}
N -0 100 1520 100 {lab=VSS}
N -0 50 -0 100 {lab=VSS}
N 220 50 220 100 {lab=VSS}
N 440 50 440 100 {lab=VSS}
N 650 50 650 100 {lab=VSS}
N 870 50 870 100 {lab=VSS}
N 1090 50 1090 100 {lab=VSS}
N 1300 50 1300 100 {lab=VSS}
N 1390 -80 1440 -80 {lab=ena<7>}
N 1440 -80 1440 -70 {lab=ena<7>}
N 1180 -80 1220 -80 {lab=ena<5>}
N 1220 -80 1220 -70 {lab=ena<5>}
N 960 -80 1010 -80 {lab=ena<4>}
N 1010 -80 1010 -70 {lab=ena<4>}
N 790 -80 790 -70 {lab=ena<3>}
N 740 -80 790 -80 {lab=ena<3>}
N 570 -80 570 -70 {lab=ena<2>}
N 530 -80 570 -80 {lab=ena<2>}
N 360 -80 360 -70 {lab=ena<1>}
N 310 -80 360 -80 {lab=ena<1>}
N 90 -80 140 -80 {lab=ena<0>}
N 140 -80 140 -70 {lab=ena<0>}
N 140 10 140 70 {lab=CLK}
N -80 70 140 70 {lab=CLK}
N -80 10 -80 70 {lab=CLK}
N 140 70 1440 70 {lab=CLK}
N 1440 10 1440 70 {lab=CLK}
N 1220 10 1220 70 {lab=CLK}
N 1010 10 1010 70 {lab=CLK}
N 790 10 790 70 {lab=CLK}
N 570 10 570 70 {lab=CLK}
N 360 10 360 70 {lab=CLK}
N 0 -190 0 -120 {lab=VDD}
N 0 -190 1520 -190 {lab=VDD}
N 1520 -190 1520 -120 {lab=VDD}
N 1610 -80 1660 -80 {lab=ena<7>}
N 1660 -80 1660 -70 {lab=ena<7>}
N 1440 70 1660 70 {lab=CLK}
N 1660 10 1660 70 {lab=CLK}
N 1740 50 1740 100 {lab=VSS}
N 1520 100 1740 100 {lab=VSS}
N 1740 -190 1740 -120 {lab=VDD}
N 1520 -190 1740 -190 {lab=VDD}
N 1300 -190 1300 -120 {lab=VDD}
N 1090 -190 1090 -120 {lab=VDD}
N 870 -190 870 -120 {lab=VDD}
N 650 -190 650 -120 {lab=VDD}
N 440 -190 440 -120 {lab=VDD}
N 220 -190 220 -120 {lab=VDD}
N -130 -70 -80 -70 {lab=scan_in}
N 1830 -80 1900 -80 {lab=scan_out}
C {libs/core_digital/D_ff1.sym} 0 -40 0 0 {name=x1}
C {libs/core_digital/D_ff1.sym} 220 -40 0 0 {name=x2}
C {libs/core_digital/D_ff1.sym} 440 -40 0 0 {name=x3}
C {libs/core_digital/D_ff1.sym} 650 -40 0 0 {name=x4}
C {libs/core_digital/D_ff1.sym} 870 -40 0 0 {name=x5}
C {libs/core_digital/D_ff1.sym} 1090 -40 0 0 {name=x6}
C {libs/core_digital/D_ff1.sym} 1300 -40 0 0 {name=x7}
C {libs/core_digital/D_ff1.sym} 1520 -40 0 0 {name=x8}
C {libs/core_digital/D_ff1.sym} 1740 -40 0 0 {name=x9}
C {ipin.sym} -130 -70 0 0 {name=p1 lab=scan_in}
C {ipin.sym} -80 70 0 0 {name=p2 lab=CLK}
C {ipin.sym} 0 100 0 0 {name=p3 lab=VSS}
C {ipin.sym} 0 -190 0 0 {name=p4 lab=VDD}
C {opin.sym} 90 0 1 0 {name=p5 lab=ena_bar<0>}
C {opin.sym} 530 0 1 0 {name=p6 lab=ena_bar<2>}
C {opin.sym} 310 0 1 0 {name=p7 lab=ena_bar<1>}
C {opin.sym} 740 0 1 0 {name=p8 lab=ena_bar<3>}
C {opin.sym} 960 0 1 0 {name=p9 lab=ena_bar<4>}
C {opin.sym} 1180 0 1 0 {name=p10 lab=ena_bar<5>}
C {opin.sym} 1390 0 1 0 {name=p11 lab=ena_bar<6>}
C {opin.sym} 1610 0 1 0 {name=p12 lab=ena_bar<7>}
C {opin.sym} 1900 -80 0 0 {name=p13 lab=scan_out}
C {opin.sym} 1640 -80 3 0 {name=p14 lab=ena<7>}
C {opin.sym} 1410 -80 3 0 {name=p15 lab=ena<6>}
C {opin.sym} 1200 -80 3 0 {name=p16 lab=ena<5>}
C {opin.sym} 990 -80 3 0 {name=p17 lab=ena<4>}
C {opin.sym} 760 -80 3 0 {name=p18 lab=ena<3>}
C {opin.sym} 550 -80 3 0 {name=p19 lab=ena<2>}
C {opin.sym} 340 -80 3 0 {name=p20 lab=ena<1>}
C {opin.sym} 120 -80 3 0 {name=p21 lab=ena<0>}

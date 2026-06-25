v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 590 -850 620 -850 {lab=EN0}
N 590 -830 620 -830 {lab=EN0_bar}
N 590 -810 620 -810 {lab=EN1}
N 590 -790 620 -790 {lab=EN1_bar}
N 1380 -460 1380 -420 {lab=#net1}
N 1380 -220 1410 -220 {lab=VSS}
N 1190 -320 1320 -320 {lab=vbias}
N 1460 -310 1460 -220 {lab=VSS}
N 1410 -220 1460 -220 {lab=VSS}
N 1540 -740 1540 -700 {lab=#net2}
N 1220 -740 1220 -700 {lab=#net3}
N 1300 -590 1460 -590 {lab=VSS}
N 1030 -600 1160 -600 {lab=vinp}
N 1600 -600 1710 -600 {lab=vinn}
N 1220 -980 1220 -940 {lab=#net4}
N 1540 -980 1540 -940 {lab=output}
N 1280 -840 1480 -840 {lab=VBN}
N 1220 -500 1220 -460 {lab=#net1}
N 1540 -500 1540 -460 {lab=#net1}
N 1220 -460 1540 -460 {lab=#net1}
N 1250 -500 1510 -500 {lab=VSS}
N 1380 -590 1380 -500 {lab=VSS}
N 1620 -830 1620 -740 {lab=VSS}
N 1570 -740 1620 -740 {lab=VSS}
N 1140 -830 1140 -740 {lab=VSS}
N 1140 -740 1190 -740 {lab=VSS}
N 1560 -1180 1610 -1180 {lab=VDD}
N 1610 -1180 1610 -1070 {lab=VDD}
N 1150 -1180 1200 -1180 {lab=VDD}
N 1150 -1180 1150 -1070 {lab=VDD}
N 1290 -1080 1470 -1080 {lab=VBP}
N 1230 -1220 1230 -1180 {lab=#net5}
N 1160 -1420 1210 -1420 {lab=VDD}
N 1160 -1420 1160 -1310 {lab=VDD}
N 1530 -1220 1530 -1180 {lab=#net6}
N 1550 -1420 1600 -1420 {lab=VDD}
N 1600 -1420 1600 -1310 {lab=VDD}
N 1300 -1320 1460 -1320 {lab=#net4}
N 1380 -1320 1380 -970 {lab=#net4}
N 1220 -970 1380 -970 {lab=#net4}
N 1210 -1420 1240 -1420 {lab=VDD}
N 1240 -1420 1520 -1420 {lab=VDD}
N 1520 -1420 1550 -1420 {lab=VDD}
N 700 -240 700 -200 {lab=VBN}
N 740 -270 740 -220 {lab=VBN}
N 700 -220 740 -220 {lab=VBN}
N 700 -140 890 -140 {lab=VSS}
N 700 -170 790 -170 {lab=VSS}
N 790 -170 890 -170 {lab=VSS}
N 930 -220 930 -170 {lab=VBP}
N 890 -240 890 -200 {lab=VBP}
N 890 -220 930 -220 {lab=VBP}
N 740 -270 850 -270 {lab=VBN}
N 790 -170 790 -140 {lab=VSS}
N 630 -170 660 -170 {lab=vbias}
N 680 -270 700 -270 {lab=VDD}
N 680 -300 680 -270 {lab=VDD}
N 680 -300 700 -300 {lab=VDD}
N 700 -300 890 -300 {lab=VDD}
N 890 -270 910 -270 {lab=VDD}
N 910 -300 910 -270 {lab=VDD}
N 890 -300 910 -300 {lab=VDD}
C {lab_pin.sym} 1600 -1420 2 0 {name=p1 sig_type=std_logic lab=VDD}
C {code_shown.sym} 1775 -1420 0 0 {name=s1 only_toplevel=false value="
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical"}
C {opin.sym} 1540 -960 0 0 {name=p9 lab=output}
C {iopin.sym} 1580 -1420 3 0 {name=p5 lab=VDD}
C {iopin.sym} 620 -830 0 0 {name=p15 lab=EN0_bar
}
C {iopin.sym} 620 -810 0 0 {name=p16 lab=EN1}
C {iopin.sym} 620 -850 0 0 {name=p17 lab=EN0}
C {iopin.sym} 620 -790 0 0 {name=p18 lab=EN1_bar}
C {lab_pin.sym} 590 -850 0 0 {name=p19 sig_type=std_logic lab=EN0}
C {lab_pin.sym} 590 -830 0 0 {name=p20 sig_type=std_logic lab=EN0_bar}
C {lab_pin.sym} 590 -790 0 0 {name=p22 sig_type=std_logic lab=EN1_bar}
C {lab_pin.sym} 590 -810 0 0 {name=p21 sig_type=std_logic lab=EN1}
C {lab_pin.sym} 1320 -380 0 0 {name=p48 sig_type=std_logic lab=EN0}
C {lab_pin.sym} 1320 -350 0 0 {name=p49 sig_type=std_logic lab=EN0_bar}
C {lab_pin.sym} 1320 -290 0 0 {name=p50 sig_type=std_logic lab=EN1}
C {lab_pin.sym} 1320 -260 0 0 {name=p51 sig_type=std_logic lab=EN1_bar}
C {lab_pin.sym} 1410 -420 0 1 {name=p52 sig_type=std_logic lab=VDD}
C {libs/core_digital/programmable_nfet.sym} 1440 -310 0 0 {name=x7 width=30u length=0.5u nf=1 mult=2}
C {lab_pin.sym} 1190 -320 0 0 {name=p53 sig_type=std_logic lab=vbias}
C {lab_pin.sym} 1460 -220 0 1 {name=p54 sig_type=std_logic lab=VSS}
C {libs/core_digital/programmable_nfet.sym} 1480 -590 0 1 {name=x9 width=30u length=0.5u nf=1 mult=1}
C {lab_pin.sym} 1600 -660 0 1 {name=p47 sig_type=std_logic lab=EN0}
C {lab_pin.sym} 1600 -630 0 1 {name=p55 sig_type=std_logic lab=EN0_bar}
C {lab_pin.sym} 1600 -570 0 1 {name=p56 sig_type=std_logic lab=EN1}
C {lab_pin.sym} 1600 -540 0 1 {name=p57 sig_type=std_logic lab=EN1_bar}
C {lab_pin.sym} 1160 -660 0 0 {name=p58 sig_type=std_logic lab=EN0}
C {lab_pin.sym} 1160 -630 0 0 {name=p59 sig_type=std_logic lab=EN0_bar}
C {lab_pin.sym} 1160 -570 0 0 {name=p60 sig_type=std_logic lab=EN1}
C {lab_pin.sym} 1160 -540 0 0 {name=p61 sig_type=std_logic lab=EN1_bar}
C {lab_pin.sym} 1250 -700 0 1 {name=p62 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1510 -700 0 0 {name=p63 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1380 -590 3 1 {name=p65 sig_type=std_logic lab=VSS}
C {libs/core_digital/programmable_nfet.sym} 1280 -590 0 0 {name=x10 width=30u length=0.5u nf=1 mult=1}
C {ipin.sym} 1050 -600 1 0 {name=p14 lab=vinp}
C {lab_pin.sym} 1030 -600 0 0 {name=p64 sig_type=std_logic lab=vinp}
C {ipin.sym} 1710 -600 1 0 {name=p66 lab=vinn}
C {lab_pin.sym} 1710 -600 2 0 {name=p67 sig_type=std_logic lab=vinn}
C {lab_pin.sym} 1280 -900 0 1 {name=p68 sig_type=std_logic lab=EN0}
C {lab_pin.sym} 1280 -870 0 1 {name=p69 sig_type=std_logic lab=EN0_bar}
C {lab_pin.sym} 1280 -810 0 1 {name=p70 sig_type=std_logic lab=EN1}
C {lab_pin.sym} 1280 -780 0 1 {name=p71 sig_type=std_logic lab=EN1_bar}
C {lab_pin.sym} 1190 -940 0 0 {name=p72 sig_type=std_logic lab=VDD}
C {libs/core_digital/programmable_nfet.sym} 1160 -830 0 1 {name=x12 width=30u length=0.5u nf=1 mult=6}
C {lab_pin.sym} 1480 -900 0 0 {name=p73 sig_type=std_logic lab=EN0}
C {lab_pin.sym} 1480 -870 0 0 {name=p74 sig_type=std_logic lab=EN0_bar}
C {lab_pin.sym} 1480 -810 0 0 {name=p75 sig_type=std_logic lab=EN1}
C {lab_pin.sym} 1480 -780 0 0 {name=p76 sig_type=std_logic lab=EN1_bar}
C {lab_pin.sym} 1570 -940 0 1 {name=p77 sig_type=std_logic lab=VDD}
C {libs/core_digital/programmable_nfet.sym} 1600 -830 0 0 {name=x14 width=30u length=0.5u nf=1 mult=6}
C {lab_pin.sym} 1570 -740 1 1 {name=p78 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1190 -740 3 0 {name=p79 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1380 -840 1 0 {name=p80 sig_type=std_logic lab=VBN
}
C {libs/core_digital/programmable_pfet.sym} 1590 -1080 0 0 {name=x15 width=44u length=0.5u nf=1 mult=5}
C {lab_pin.sym} 1470 -1140 0 0 {name=p81 sig_type=std_logic lab=EN0}
C {lab_pin.sym} 1470 -1110 0 0 {name=p82 sig_type=std_logic lab=EN0_bar}
C {lab_pin.sym} 1470 -1050 0 0 {name=p83 sig_type=std_logic lab=EN1}
C {lab_pin.sym} 1470 -1020 0 0 {name=p84 sig_type=std_logic lab=EN1_bar}
C {lab_pin.sym} 1560 -980 0 1 {name=p85 sig_type=std_logic lab=VSS}
C {libs/core_digital/programmable_pfet.sym} 1170 -1080 0 1 {name=x16 width=44u length=0.5u nf=1 mult=5}
C {lab_pin.sym} 1290 -1140 0 1 {name=p87 sig_type=std_logic lab=EN0}
C {lab_pin.sym} 1290 -1110 0 1 {name=p88 sig_type=std_logic lab=EN0_bar}
C {lab_pin.sym} 1290 -1050 0 1 {name=p89 sig_type=std_logic lab=EN1}
C {lab_pin.sym} 1290 -1020 0 1 {name=p90 sig_type=std_logic lab=EN1_bar}
C {lab_pin.sym} 1200 -980 0 0 {name=p91 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1350 -1080 3 0 {name=p92 sig_type=std_logic lab=VBP}
C {libs/core_digital/programmable_pfet.sym} 1180 -1320 0 1 {name=x17 width=30u length=0.5u nf=1 mult=8}
C {lab_pin.sym} 1300 -1380 0 1 {name=p94 sig_type=std_logic lab=EN0}
C {lab_pin.sym} 1300 -1350 0 1 {name=p95 sig_type=std_logic lab=EN0_bar}
C {lab_pin.sym} 1300 -1290 0 1 {name=p96 sig_type=std_logic lab=EN1}
C {lab_pin.sym} 1300 -1260 0 1 {name=p97 sig_type=std_logic lab=EN1_bar}
C {lab_pin.sym} 1210 -1220 0 0 {name=p98 sig_type=std_logic lab=VSS}
C {libs/core_digital/programmable_pfet.sym} 1580 -1320 0 0 {name=x18 width=30u length=0.5u nf=1 mult=8}
C {lab_pin.sym} 1460 -1380 0 0 {name=p99 sig_type=std_logic lab=EN0}
C {lab_pin.sym} 1460 -1350 0 0 {name=p100 sig_type=std_logic lab=EN0_bar}
C {lab_pin.sym} 1460 -1290 0 0 {name=p101 sig_type=std_logic lab=EN1}
C {lab_pin.sym} 1460 -1260 0 0 {name=p102 sig_type=std_logic lab=EN1_bar}
C {lab_pin.sym} 1550 -1220 0 1 {name=p103 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1610 -1180 2 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1150 -1180 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {symbols/nfet_03v3.sym} 680 -170 0 0 {name=M11
L=0.5u
W=30u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 910 -170 0 1 {name=M12
L=0.5u
W=1.5u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 870 -270 0 0 {name=M13
L=0.50u
W=70u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 720 -270 0 1 {name=M14
L=0.50u
W=70u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 890 -220 0 0 {name=p11 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 700 -220 0 0 {name=p13 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 800 -300 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 790 -140 1 1 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 630 -170 0 0 {name=p7 sig_type=std_logic lab=vbias}
C {iopin.sym} 1460 -280 0 0 {name=p8 lab=VSS}
C {iopin.sym} 1210 -320 3 0 {name=p10 lab=vbias}

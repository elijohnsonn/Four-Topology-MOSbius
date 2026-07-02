v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 140 -640 620 -640 {}
L 4 620 -640 620 -360 {}
L 4 140 -360 620 -360 {}
L 4 140 -640 140 -360 {}
T {Bias Voltage Circuit} 220 -700 0 0 0.6 0.6 {}
N 830 -740 860 -740 {lab=EN0}
N 830 -720 860 -720 {lab=!EN0}
N 830 -700 860 -700 {lab=EN1}
N 830 -680 860 -680 {lab=!EN1}
N 1380 -460 1380 -420 {lab=#net1}
N 1380 -220 1410 -220 {lab=VSS}
N 1190 -320 1320 -320 {lab=VG_BIAS}
N 1460 -310 1460 -220 {lab=VSS}
N 1410 -220 1460 -220 {lab=VSS}
N 1540 -740 1540 -700 {lab=#net2}
N 1220 -740 1220 -700 {lab=#net3}
N 1300 -590 1460 -590 {lab=VSS}
N 1030 -600 1160 -600 {lab=INP}
N 1600 -600 1710 -600 {lab=INN}
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
N 300 -510 300 -470 {lab=VBN}
N 340 -540 340 -490 {lab=VBN}
N 300 -490 340 -490 {lab=VBN}
N 300 -410 490 -410 {lab=VSS}
N 300 -440 390 -440 {lab=VSS}
N 390 -440 490 -440 {lab=VSS}
N 530 -490 530 -440 {lab=VBP}
N 490 -510 490 -470 {lab=VBP}
N 490 -490 530 -490 {lab=VBP}
N 340 -540 450 -540 {lab=VBN}
N 390 -440 390 -410 {lab=VSS}
N 230 -440 260 -440 {lab=VG_BIAS}
N 280 -540 300 -540 {lab=VDD}
N 280 -570 280 -540 {lab=VDD}
N 280 -570 300 -570 {lab=VDD}
N 300 -570 490 -570 {lab=VDD}
N 490 -540 510 -540 {lab=VDD}
N 510 -570 510 -540 {lab=VDD}
N 490 -570 510 -570 {lab=VDD}
C {lab_pin.sym} 1600 -1420 2 0 {name=p1 sig_type=std_logic lab=VDD}
C {code_shown.sym} 2345 -1200 0 0 {name=s1 only_toplevel=false value="
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical"}
C {opin.sym} 1540 -960 0 0 {name=p9 lab=output}
C {iopin.sym} 1580 -1420 3 0 {name=p5 lab=VDD}
C {iopin.sym} 860 -720 0 0 {name=p15 lab=!EN0
}
C {iopin.sym} 860 -700 0 0 {name=p16 lab=EN1}
C {iopin.sym} 860 -740 0 0 {name=p17 lab=EN0}
C {iopin.sym} 860 -680 0 0 {name=p18 lab=!EN1}
C {lab_pin.sym} 830 -740 0 0 {name=p19 sig_type=std_logic lab=EN0}
C {lab_pin.sym} 830 -720 0 0 {name=p20 sig_type=std_logic lab=!EN0}
C {lab_pin.sym} 830 -680 0 0 {name=p22 sig_type=std_logic lab=!EN1}
C {lab_pin.sym} 830 -700 0 0 {name=p21 sig_type=std_logic lab=EN1}
C {lab_pin.sym} 1320 -380 0 0 {name=p48 sig_type=std_logic lab=EN0}
C {lab_pin.sym} 1320 -350 0 0 {name=p49 sig_type=std_logic lab=!EN0}
C {lab_pin.sym} 1320 -290 0 0 {name=p50 sig_type=std_logic lab=EN1}
C {lab_pin.sym} 1320 -260 0 0 {name=p51 sig_type=std_logic lab=!EN1}
C {lab_pin.sym} 1410 -420 0 1 {name=p52 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1190 -320 0 0 {name=p53 sig_type=std_logic lab=VG_BIAS}
C {lab_pin.sym} 1460 -220 0 1 {name=p54 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1600 -660 0 1 {name=p47 sig_type=std_logic lab=EN0}
C {lab_pin.sym} 1600 -630 0 1 {name=p55 sig_type=std_logic lab=!EN0}
C {lab_pin.sym} 1600 -570 0 1 {name=p56 sig_type=std_logic lab=EN1}
C {lab_pin.sym} 1600 -540 0 1 {name=p57 sig_type=std_logic lab=!EN1}
C {lab_pin.sym} 1160 -660 0 0 {name=p58 sig_type=std_logic lab=EN0}
C {lab_pin.sym} 1160 -630 0 0 {name=p59 sig_type=std_logic lab=!EN0}
C {lab_pin.sym} 1160 -570 0 0 {name=p60 sig_type=std_logic lab=EN1}
C {lab_pin.sym} 1160 -540 0 0 {name=p61 sig_type=std_logic lab=!EN1}
C {lab_pin.sym} 1250 -700 0 1 {name=p62 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1510 -700 0 0 {name=p63 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1380 -590 3 1 {name=p65 sig_type=std_logic lab=VSS}
C {ipin.sym} 1050 -600 1 0 {name=p14 lab=INP}
C {lab_pin.sym} 1030 -600 0 0 {name=p64 sig_type=std_logic lab=INP}
C {ipin.sym} 1710 -600 1 0 {name=p66 lab=INN}
C {lab_pin.sym} 1710 -600 2 0 {name=p67 sig_type=std_logic lab=INN}
C {lab_pin.sym} 1280 -900 0 1 {name=p68 sig_type=std_logic lab=EN0}
C {lab_pin.sym} 1280 -870 0 1 {name=p69 sig_type=std_logic lab=!EN0}
C {lab_pin.sym} 1280 -810 0 1 {name=p70 sig_type=std_logic lab=EN1}
C {lab_pin.sym} 1280 -780 0 1 {name=p71 sig_type=std_logic lab=!EN1}
C {lab_pin.sym} 1190 -940 0 0 {name=p72 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1480 -900 0 0 {name=p73 sig_type=std_logic lab=EN0}
C {lab_pin.sym} 1480 -870 0 0 {name=p74 sig_type=std_logic lab=!EN0}
C {lab_pin.sym} 1480 -810 0 0 {name=p75 sig_type=std_logic lab=EN1}
C {lab_pin.sym} 1480 -780 0 0 {name=p76 sig_type=std_logic lab=!EN1}
C {lab_pin.sym} 1570 -940 0 1 {name=p77 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1570 -740 1 1 {name=p78 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1190 -740 3 0 {name=p79 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1380 -840 1 0 {name=p80 sig_type=std_logic lab=VBN
}
C {lab_pin.sym} 1470 -1140 0 0 {name=p81 sig_type=std_logic lab=EN0}
C {lab_pin.sym} 1470 -1110 0 0 {name=p82 sig_type=std_logic lab=!EN0}
C {lab_pin.sym} 1470 -1050 0 0 {name=p83 sig_type=std_logic lab=EN1}
C {lab_pin.sym} 1470 -1020 0 0 {name=p84 sig_type=std_logic lab=!EN1}
C {lab_pin.sym} 1560 -980 0 1 {name=p85 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1290 -1140 0 1 {name=p87 sig_type=std_logic lab=EN0}
C {lab_pin.sym} 1290 -1110 0 1 {name=p88 sig_type=std_logic lab=!EN0}
C {lab_pin.sym} 1290 -1050 0 1 {name=p89 sig_type=std_logic lab=EN1}
C {lab_pin.sym} 1290 -1020 0 1 {name=p90 sig_type=std_logic lab=!EN1}
C {lab_pin.sym} 1200 -980 0 0 {name=p91 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1350 -1080 3 0 {name=p92 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 1300 -1380 0 1 {name=p94 sig_type=std_logic lab=EN0}
C {lab_pin.sym} 1300 -1350 0 1 {name=p95 sig_type=std_logic lab=!EN0}
C {lab_pin.sym} 1300 -1290 0 1 {name=p96 sig_type=std_logic lab=EN1}
C {lab_pin.sym} 1300 -1260 0 1 {name=p97 sig_type=std_logic lab=!EN1}
C {lab_pin.sym} 1210 -1220 0 0 {name=p98 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1460 -1380 0 0 {name=p99 sig_type=std_logic lab=EN0}
C {lab_pin.sym} 1460 -1350 0 0 {name=p100 sig_type=std_logic lab=!EN0}
C {lab_pin.sym} 1460 -1290 0 0 {name=p101 sig_type=std_logic lab=EN1}
C {lab_pin.sym} 1460 -1260 0 0 {name=p102 sig_type=std_logic lab=!EN1}
C {lab_pin.sym} 1550 -1220 0 1 {name=p103 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 1610 -1180 2 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1150 -1180 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {symbols/nfet_03v3.sym} 280 -440 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 510 -440 0 1 {name=M2
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
C {symbols/pfet_03v3.sym} 470 -540 0 0 {name=M4
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
C {symbols/pfet_03v3.sym} 320 -540 0 1 {name=M3
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
C {lab_pin.sym} 490 -490 0 0 {name=p11 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 300 -490 0 0 {name=p13 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 400 -570 1 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 390 -410 1 1 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 230 -440 0 0 {name=p7 sig_type=std_logic lab=VG_BIAS}
C {iopin.sym} 1460 -280 0 0 {name=p8 lab=VSS}
C {iopin.sym} 1210 -320 3 0 {name=p10 lab=VG_BIAS}
C {libs/core_digital/schem/programmable_pfet.sym} 1580 -1320 0 0 {name=x12 width=40u length=0.5u nf=1 mult=6}
C {libs/core_digital/schem/programmable_pfet.sym} 1180 -1320 0 1 {name=x8 width=40u length=0.5u nf=1 mult=6}
C {libs/core_digital/schem/programmable_pfet.sym} 1170 -1080 0 1 {name=x9 width=47u length=0.4u nf=1 mult=5}
C {libs/core_digital/schem/programmable_pfet.sym} 1590 -1080 0 0 {name=x6 width=47u length=0.4u nf=1 mult=5}
C {libs/core_digital/schem/programmable_nfet.sym} 1600 -830 0 0 {name=x7 width=45u length=0.5u nf=1 mult=6}
C {libs/core_digital/schem/programmable_nfet.sym} 1160 -830 0 1 {name=x4 width=45u length=0.5u nf=1 mult=6}
C {libs/core_digital/schem/programmable_nfet.sym} 1280 -590 0 0 {name=x5 width=30u length=0.5u nf=1 mult=1}
C {libs/core_digital/schem/programmable_nfet.sym} 1480 -590 0 1 {name=x2 width=30u length=0.5u nf=1 mult=1}
C {libs/core_digital/schem/programmable_nfet.sym} 1440 -310 0 0 {name=x3 width=30u length=0.5u nf=1 mult=2}

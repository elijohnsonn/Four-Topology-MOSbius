v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 12350 20140 12510 20140 {lab=#net1}
N 12310 20170 12310 20200 {lab=#net2}
N 12550 20170 12550 20200 {lab=#net3}
N 12350 20230 12510 20230 {lab=VBP}
N 12310 20260 12310 20320 {lab=#net1}
N 12430 20230 12430 20280 {lab=VBP}
N 12310 20090 12310 20110 {lab=VDD}
N 12310 20090 12550 20090 {lab=VDD}
N 12550 20090 12550 20110 {lab=VDD}
N 12550 20260 12550 20320 {lab=output}
N 12310 20380 12310 20410 {lab=#net4}
N 12310 20470 12550 20470 {lab=#net5}
N 12550 20380 12550 20410 {lab=#net6}
N 12590 20440 12640 20440 {lab=vinn}
N 12210 20440 12270 20440 {lab=vinp}
N 12310 20440 12550 20440 {lab=VSS}
N 12270 20350 12310 20350 {lab=VSS}
N 12550 20350 12610 20350 {lab=VSS}
N 12430 20010 12530 20010 {lab=VDD}
N 12430 20010 12430 20085 {lab=VDD}
N 12430 20085 12430 20090 {lab=VDD}
N 12270 20140 12310 20140 {lab=VDD}
N 12270 20140 12270 20230 {lab=VDD}
N 12270 20230 12310 20230 {lab=VDD}
N 12270 20090 12270 20140 {lab=VDD}
N 12270 20090 12320 20090 {lab=VDD}
N 12550 20090 12600 20090 {lab=VDD}
N 12600 20090 12600 20140 {lab=VDD}
N 12550 20230 12595 20230 {lab=VDD}
N 12595 20140 12595 20230 {lab=VDD}
N 12550 20140 12600 20140 {lab=VDD}
N 12430 20470 12430 20620 {lab=#net5}
N 12210 20650 12390 20650 {lab=Ibias}
N 12170 20680 12170 20700 {lab=VSS}
N 12170 20700 12430 20700 {lab=VSS}
N 12430 20680 12430 20700 {lab=VSS}
N 12430 20700 12580 20700 {lab=VSS}
N 12580 20580 12580 20700 {lab=VSS}
N 12170 20590 12250 20590 {lab=Ibias}
N 12250 20590 12250 20650 {lab=Ibias}
N 12120 20590 12170 20590 {lab=Ibias}
N 12120 20560 12120 20590 {lab=Ibias}
N 12170 20590 12170 20620 {lab=Ibias}
N 12110 20650 12170 20650 {lab=VSS}
N 12110 20650 12110 20700 {lab=VSS}
N 12110 20700 12170 20700 {lab=VSS}
N 12430 20650 12580 20650 {lab=VSS}
N 12370 20140 12370 20290 {lab=#net1}
N 12310 20290 12370 20290 {lab=#net1}
N 12550 20140 12600 20140 {lab=VDD}
N 11790 20590 11790 20630 {lab=VBN}
N 11830 20560 11830 20610 {lab=VBN}
N 11790 20610 11830 20610 {lab=VBN}
N 11790 20690 11980 20690 {lab=VSS}
N 11790 20660 11880 20660 {lab=VSS}
N 11880 20660 11980 20660 {lab=VSS}
N 12020 20610 12020 20660 {lab=VBP}
N 11980 20590 11980 20630 {lab=VBP}
N 11980 20610 12020 20610 {lab=VBP}
N 11830 20560 11940 20560 {lab=VBN}
N 11980 20500 11980 20530 {lab=VDD}
N 12350 20350 12510 20350 {lab=VBN}
N 11980 20560 12070 20560 {lab=VDD}
N 12070 20500 12070 20560 {lab=VDD}
N 11980 20500 12070 20500 {lab=VDD}
N 11880 20660 11880 20690 {lab=VSS}
N 11880 20690 11880 20710 {lab=VSS}
N 11720 20660 11750 20660 {lab=Ibias}
N 11700 20560 11790 20560 {lab=VDD}
N 11700 20500 11700 20560 {lab=VDD}
N 11700 20500 11980 20500 {lab=VDD}
N 11790 20500 11790 20530 {lab=VDD}
C {symbols/pfet_03v3.sym} 12530 20230 0 0 {name=M8
L=0.4u
W=47u
nf=1
m=5
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 12530 20350 0 0 {name=M4
L=0.5u
W=45u
nf=1
m=5
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 12290 20440 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 12330 20350 0 1 {name=M2
L=0.5u
W=45u
nf=1
m=5
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 12570 20440 0 1 {name=M3
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
C {symbols/pfet_03v3.sym} 12530 20140 0 0 {name=M5
L=0.50u
W=40u
nf=1
m=6
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 12330 20230 0 1 {name=M6
L=0.4u
W=47u
nf=1
m=5
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 12330 20140 0 1 {name=M7
L=0.50u
W=40u
nf=1
m=6
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 12410 20650 0 0 {name=M9
L=0.5u
W=30u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 12190 20650 0 1 {name=M10
L=.5u
W=20u
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
C {lab_pin.sym} 12530 20010 2 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 12210 20440 0 0 {name=p3 sig_type=std_logic lab=vinp}
C {lab_pin.sym} 12640 20440 2 0 {name=p4 sig_type=std_logic lab=vinn}
C {code_shown.sym} 12725 20040 0 0 {name=s1 only_toplevel=false value="
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical"}
C {ipin.sym} 12230 20440 1 0 {name=p7 lab=vinp}
C {ipin.sym} 12640 20440 1 0 {name=p8 lab=vinn}
C {opin.sym} 12550 20290 0 0 {name=p9 lab=output}
C {iopin.sym} 12120 20560 0 0 {name=p10 lab=Ibias}
C {iopin.sym} 12430 20050 0 0 {name=p5 lab=VDD}
C {lab_pin.sym} 12430 20350 1 0 {name=p6 sig_type=std_logic lab=VBN
}
C {symbols/nfet_03v3.sym} 11770 20660 0 0 {name=M11
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
C {symbols/nfet_03v3.sym} 12000 20660 0 1 {name=M12
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
C {symbols/pfet_03v3.sym} 11960 20560 0 0 {name=M13
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
C {symbols/pfet_03v3.sym} 11810 20560 0 1 {name=M14
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
C {lab_pin.sym} 11980 20610 0 0 {name=p11 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 12430 20280 0 0 {name=p12 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 11790 20610 0 0 {name=p13 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 11700 20500 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {iopin.sym} 12580 20580 0 0 {name=p15 lab=VSS}
C {lab_pin.sym} 12610 20350 2 0 {name=p16 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 12270 20350 2 1 {name=p17 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 11880 20710 2 1 {name=p18 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 11720 20660 0 0 {name=p20 sig_type=std_logic lab=Ibias}
C {lab_pin.sym} 12430 20440 3 1 {name=p21 sig_type=std_logic lab=VSS
}

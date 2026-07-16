v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 11420 20200 11420 20520 {}
L 4 11420 20200 11900 20200 {}
L 4 11900 20200 11900 20520 {}
L 4 11420 20520 11900 20520 {}
T {Bias Voltage Circuit} 11510 20150 0 0 0.6 0.6 {}
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
N 12590 20440 12640 20440 {lab=INN}
N 12210 20440 12270 20440 {lab=INP}
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
N 11580 20360 11580 20400 {lab=VBN}
N 11620 20330 11620 20380 {lab=VBN}
N 11580 20380 11620 20380 {lab=VBN}
N 11580 20460 11770 20460 {lab=VSS}
N 11580 20430 11670 20430 {lab=VSS}
N 11670 20430 11770 20430 {lab=VSS}
N 11810 20380 11810 20430 {lab=VBP}
N 11770 20360 11770 20400 {lab=VBP}
N 11770 20380 11810 20380 {lab=VBP}
N 11620 20330 11730 20330 {lab=VBN}
N 11770 20270 11770 20300 {lab=VDD}
N 12350 20350 12510 20350 {lab=VBN}
N 11770 20330 11860 20330 {lab=VDD}
N 11860 20270 11860 20330 {lab=VDD}
N 11770 20270 11860 20270 {lab=VDD}
N 11670 20430 11670 20460 {lab=VSS}
N 11670 20460 11670 20480 {lab=VSS}
N 11510 20430 11540 20430 {lab=Ibias}
N 11490 20330 11580 20330 {lab=VDD}
N 11490 20270 11490 20330 {lab=VDD}
N 11490 20270 11770 20270 {lab=VDD}
N 11580 20270 11580 20300 {lab=VDD}
C {symbols/pfet_03v3.sym} 12530 20230 0 0 {name=M8
L=0.5u
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
L=0.4u
W=45u
nf=1
m=6
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
L=0.4u
W=45u
nf=1
m=6
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
L=0.5u
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
L=1u
W=27.1u
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
L=1u
W=27.1u
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
C {lab_pin.sym} 12210 20440 0 0 {name=p3 sig_type=std_logic lab=INP}
C {lab_pin.sym} 12640 20440 2 0 {name=p4 sig_type=std_logic lab=INN}
C {code_shown.sym} 12725 20040 0 0 {name=s1 only_toplevel=false value="
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical"}
C {ipin.sym} 12240 20440 1 0 {name=p7 lab=INP}
C {ipin.sym} 12620 20440 1 0 {name=p8 lab=INN}
C {opin.sym} 12550 20290 0 0 {name=p9 lab=output}
C {iopin.sym} 12120 20560 0 0 {name=p10 lab=Ibias}
C {iopin.sym} 12430 20050 0 0 {name=p5 lab=VDD}
C {lab_pin.sym} 12430 20350 1 0 {name=p6 sig_type=std_logic lab=VBN
}
C {symbols/nfet_03v3.sym} 11560 20430 0 0 {name=M11
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
C {symbols/nfet_03v3.sym} 11790 20430 0 1 {name=M12
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
C {symbols/pfet_03v3.sym} 11750 20330 0 0 {name=M13
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
C {symbols/pfet_03v3.sym} 11600 20330 0 1 {name=M14
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
C {lab_pin.sym} 11770 20380 0 0 {name=p11 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 12430 20280 0 0 {name=p12 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 11580 20380 0 0 {name=p13 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 11490 20270 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {iopin.sym} 12580 20580 0 0 {name=p15 lab=VSS}
C {lab_pin.sym} 12610 20350 2 0 {name=p16 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 12270 20350 2 1 {name=p17 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 11670 20480 2 1 {name=p18 sig_type=std_logic lab=VSS
}
C {lab_pin.sym} 11510 20430 0 0 {name=p20 sig_type=std_logic lab=Ibias}
C {lab_pin.sym} 12430 20440 3 1 {name=p21 sig_type=std_logic lab=VSS
}

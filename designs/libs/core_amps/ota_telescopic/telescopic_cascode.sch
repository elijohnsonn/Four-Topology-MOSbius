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
N 12310 20440 12550 20440 {lab=GND}
N 12520 20440 12520 20570 {lab=GND}
N 12520 20570 12520 20580 {lab=GND}
N 12270 20350 12310 20350 {lab=GND}
N 12550 20350 12610 20350 {lab=GND}
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
N 12170 20680 12170 20700 {lab=GND}
N 12170 20700 12430 20700 {lab=GND}
N 12430 20680 12430 20700 {lab=GND}
N 12430 20700 12580 20700 {lab=GND}
N 12580 20580 12580 20700 {lab=GND}
N 12170 20590 12250 20590 {lab=Ibias}
N 12250 20590 12250 20650 {lab=Ibias}
N 12120 20590 12170 20590 {lab=Ibias}
N 12120 20560 12120 20590 {lab=Ibias}
N 12170 20590 12170 20620 {lab=Ibias}
N 12110 20650 12170 20650 {lab=GND}
N 12110 20650 12110 20700 {lab=GND}
N 12110 20700 12170 20700 {lab=GND}
N 12430 20650 12580 20650 {lab=GND}
N 12520 20580 12590 20580 {lab=GND}
N 12370 20140 12370 20290 {lab=#net1}
N 12310 20290 12370 20290 {lab=#net1}
N 12550 20140 12600 20140 {lab=VDD}
N 12190 20820 12190 20860 {lab=VBN}
N 12000 20750 12190 20760 {lab=VDD}
N 12000 20750 12190 20790 {lab=VDD}
N 12230 20790 12230 20840 {lab=VBN}
N 12190 20840 12230 20840 {lab=VBN}
N 12190 20920 12380 20920 {lab=GND}
N 12280 20700 12280 20920 {lab=GND}
N 12150 20720 12150 20890 {lab=Ibias}
N 12150 20720 12230 20720 {lab=Ibias}
N 12230 20650 12230 20720 {lab=Ibias}
N 12190 20890 12280 20890 {lab=GND}
N 12280 20890 12380 20890 {lab=GND}
N 12420 20840 12420 20890 {lab=VBP}
N 12380 20820 12380 20860 {lab=VBP}
N 12380 20840 12420 20840 {lab=VBP}
N 12230 20790 12340 20790 {lab=VBN}
N 12000 20730 12380 20730 {lab=VDD}
N 12380 20730 12380 20760 {lab=VDD}
N 12350 20350 12510 20350 {lab=VBN}
N 12380 20790 12470 20790 {lab=VDD}
N 12470 20730 12470 20790 {lab=VDD}
N 12380 20730 12470 20730 {lab=VDD}
N 12000 20730 12000 20750 {lab=VDD}
C {gnd.sym} 12590 20580 0 0 {name=l2 lab=GND}
C {gnd.sym} 12610 20350 0 0 {name=l3 lab=GND}
C {gnd.sym} 12270 20350 0 0 {name=l4 lab=GND}
C {symbols/pfet_03v3.sym} 12530 20230 0 0 {name=M8
L=0.50u
W=55u
nf=1
m=4
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
W=60u
nf=1
m=3
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
W=60u
nf=1
m=3
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
W=60u
nf=1
m=4
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
L=0.50u
W=55u
nf=1
m=4
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
W=60u
nf=1
m=4
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
W=60u
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
C {lab_pin.sym} 12120 20560 0 0 {name=p2 sig_type=std_logic lab=Ibias}
C {lab_pin.sym} 12210 20440 0 0 {name=p3 sig_type=std_logic lab=vinp}
C {lab_pin.sym} 12640 20440 2 0 {name=p4 sig_type=std_logic lab=vinn}
C {code_shown.sym} 12725 20040 0 0 {name=s1 only_toplevel=false value="
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical"}
C {ipin.sym} 12230 20440 1 0 {name=p7 lab=vinp}
C {ipin.sym} 12640 20440 1 0 {name=p8 lab=vinn}
C {opin.sym} 12550 20290 0 0 {name=p9 lab=output}
C {iopin.sym} 12250 20600 0 0 {name=p10 lab=Ibias}
C {iopin.sym} 12430 20050 0 0 {name=p5 lab=VDD}
C {lab_pin.sym} 12430 20350 1 0 {name=p6 sig_type=std_logic lab=VBN
}
C {symbols/nfet_03v3.sym} 12170 20890 0 0 {name=M11
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
C {symbols/nfet_03v3.sym} 12400 20890 0 1 {name=M12
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
C {symbols/pfet_03v3.sym} 12360 20790 0 0 {name=M13
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
C {symbols/pfet_03v3.sym} 12210 20790 0 1 {name=M14
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
C {lab_pin.sym} 12380 20840 0 0 {name=p11 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 12430 20280 0 0 {name=p12 sig_type=std_logic lab=VBP}
C {lab_pin.sym} 12190 20840 0 0 {name=p13 sig_type=std_logic lab=VBN}
C {lab_pin.sym} 12000 20750 0 0 {name=p14 sig_type=std_logic lab=VDD}

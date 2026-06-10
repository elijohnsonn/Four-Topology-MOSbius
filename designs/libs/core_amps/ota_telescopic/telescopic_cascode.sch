v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 13130 20790 13290 20790 {lab=#net1}
N 13090 20820 13090 20850 {lab=#net1}
N 13330 20820 13330 20850 {lab=#net2}
N 13210 20790 13210 20830 {lab=#net1}
N 13090 20830 13210 20830 {lab=#net1}
N 13130 20880 13290 20880 {lab=#net3}
N 13090 20910 13090 20970 {lab=#net3}
N 13210 20880 13210 20930 {lab=#net3}
N 13090 20930 13210 20930 {lab=#net3}
N 13090 20740 13090 20760 {lab=VDD}
N 13090 20740 13330 20740 {lab=VDD}
N 13330 20740 13330 20760 {lab=VDD}
N 13330 20910 13330 20970 {lab=output}
N 13090 21030 13090 21060 {lab=#net4}
N 13090 21120 13330 21120 {lab=#net5}
N 13330 21030 13330 21060 {lab=#net6}
N 13370 21090 13420 21090 {lab=vinn}
N 12990 21090 13050 21090 {lab=vinp}
N 13090 21090 13330 21090 {lab=GND}
N 13300 21090 13300 21220 {lab=GND}
N 13300 21220 13300 21230 {lab=GND}
N 13130 21000 13290 21000 {lab=#net7}
N 13170 21000 13170 21010 {lab=#net7}
N 13170 21070 13170 21090 {lab=GND}
N 13050 21000 13090 21000 {lab=GND}
N 13330 21000 13390 21000 {lab=GND}
N 13210 20660 13310 20660 {lab=VDD}
N 13210 20660 13210 20735 {lab=VDD}
N 13210 20735 13210 20740 {lab=VDD}
N 13050 20790 13090 20790 {lab=VDD}
N 13050 20790 13050 20880 {lab=VDD}
N 13050 20880 13090 20880 {lab=VDD}
N 13050 20740 13050 20790 {lab=VDD}
N 13050 20740 13100 20740 {lab=VDD}
N 13330 20740 13380 20740 {lab=VDD}
N 13380 20740 13380 20790 {lab=VDD}
N 13330 20880 13375 20880 {lab=VDD}
N 13375 20790 13375 20880 {lab=VDD}
N 13330 20790 13380 20790 {lab=VDD}
N 13090 20970 13130 20970 {lab=#net3}
N 13090 21030 13130 21030 {lab=#net4}
N 13210 21120 13210 21270 {lab=#net5}
N 12990 21300 13170 21300 {lab=Ibias}
N 12950 21330 12950 21350 {lab=GND}
N 12950 21350 13210 21350 {lab=GND}
N 13210 21330 13210 21350 {lab=GND}
N 13210 21350 13360 21350 {lab=GND}
N 13360 21230 13360 21350 {lab=GND}
N 12950 21240 13030 21240 {lab=Ibias}
N 13030 21240 13030 21300 {lab=Ibias}
N 12900 21240 12950 21240 {lab=Ibias}
N 12900 21210 12900 21240 {lab=Ibias}
N 12950 21240 12950 21270 {lab=Ibias}
N 12890 21300 12950 21300 {lab=GND}
N 12890 21300 12890 21350 {lab=GND}
N 12890 21350 12950 21350 {lab=GND}
N 13210 21300 13360 21300 {lab=GND}
N 13300 21230 13370 21230 {lab=GND}
C {gnd.sym} 13370 21230 0 0 {name=l2 lab=GND}
C {vsource.sym} 13170 21040 0 0 {name=V2 value=1.91 savecurrent=false}
C {gnd.sym} 13390 21000 0 0 {name=l3 lab=GND}
C {gnd.sym} 13050 21000 0 0 {name=l4 lab=GND}
C {symbols/pfet_03v3.sym} 13310 20880 0 0 {name=M8
L=0.28u
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
C {symbols/nfet_03v3.sym} 13310 21000 0 0 {name=M4
L=0.28u
W=26u
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
C {symbols/nfet_03v3.sym} 13070 21090 0 0 {name=M1
L=0.28u
W=26u
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
C {symbols/nfet_03v3.sym} 13110 21000 0 1 {name=M2
L=0.28u
W=26u
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
C {symbols/nfet_03v3.sym} 13350 21090 0 1 {name=M3
L=0.28u
W=26u
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
C {symbols/pfet_03v3.sym} 13310 20790 0 0 {name=M5
L=0.28u
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
C {symbols/pfet_03v3.sym} 13110 20880 0 1 {name=M6
L=0.28u
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
C {symbols/pfet_03v3.sym} 13110 20790 0 1 {name=M7
L=0.28u
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
C {symbols/nfet_03v3.sym} 13190 21300 0 0 {name=M9
L=0.28u
W=15.54u
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
C {symbols/nfet_03v3.sym} 12970 21300 0 1 {name=M10
L=.28u
W=5.18u
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
C {lab_pin.sym} 13310 20660 2 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 12900 21210 0 0 {name=p2 sig_type=std_logic lab=Ibias}
C {lab_pin.sym} 12990 21090 0 0 {name=p3 sig_type=std_logic lab=vinp}
C {lab_pin.sym} 13420 21090 2 0 {name=p4 sig_type=std_logic lab=vinn}
C {code_shown.sym} 13505 20690 0 0 {name=s1 only_toplevel=false value="
.include /foss/pdks/gf180mcuD/libs.tech/ngspice/design.ngspice
.lib /foss/pdks/gf180mcuD/libs.tech/ngspice/sm141064.ngspice typical"}
C {ipin.sym} 13010 21090 1 0 {name=p7 lab=vinp}
C {ipin.sym} 13420 21090 1 0 {name=p8 lab=vinn}
C {opin.sym} 13330 20940 0 0 {name=p9 lab=output}
C {iopin.sym} 13030 21250 0 0 {name=p10 lab=Ibias}
C {iopin.sym} 13210 20700 0 0 {name=p5 lab=VDD}

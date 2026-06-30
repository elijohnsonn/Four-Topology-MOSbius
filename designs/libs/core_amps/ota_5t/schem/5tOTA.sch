v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 4 0 -390 350 -120 {fill=0}
T {5-Transister Operational Transconductance Amplifier} 410 -850 0 0 0.4 0.4 {}
T {Bias Voltage Source} 80 -420 0 0 0.4 0.4 {}
N 570 -710 570 -630 {lab=VDD}
N 570 -710 790 -710 {lab=VDD}
N 790 -710 790 -630 {lab=VDD}
N 610 -600 750 -600 {lab=#net1}
N 680 -600 680 -540 {lab=#net1}
N 570 -540 680 -540 {lab=#net1}
N 570 -570 570 -430 {lab=#net1}
N 790 -570 790 -430 {lab=vout}
N 570 -370 570 -310 {lab=#net2}
N 570 -310 790 -310 {lab=#net2}
N 790 -370 790 -310 {lab=#net2}
N 680 -310 680 -270 {lab=#net2}
N 530 -240 640 -240 {lab=i_bias}
N 680 -210 680 -180 {lab=VSS}
N 790 -500 870 -500 {lab=vout}
N 680 -750 680 -710 {lab=VDD}
N 500 -400 530 -400 {lab=vin+}
N 830 -400 860 -400 {lab=vin-}
N 550 -600 570 -600 {lab=VDD}
N 550 -660 550 -600 {lab=VDD}
N 550 -660 570 -660 {lab=VDD}
N 790 -600 810 -600 {lab=VDD}
N 810 -660 810 -600 {lab=VDD}
N 790 -660 810 -660 {lab=VDD}
N 860 -400 920 -400 {lab=vin-}
N 680 -180 680 -150 {lab=VSS}
N 470 -400 500 -400 {lab=vin+}
N 680 -240 700 -240 {lab=VSS}
N 700 -240 700 -170 {lab=VSS}
N 680 -170 700 -170 {lab=VSS}
N 870 -500 920 -500 {lab=vout}
N 180 -240 260 -240 {lab=i_bias}
N 80 -360 140 -360 {lab=i_bias}
N 140 -360 140 -270 {lab=i_bias}
N 140 -210 140 -180 {lab=VSS}
N 570 -400 580 -400 {lab=VSS}
N 780 -400 790 -400 {lab=VSS}
N 140 -300 220 -300 {lab=i_bias}
N 220 -300 220 -240 {lab=i_bias}
N 120 -240 140 -240 {lab=VSS}
N 120 -240 120 -200 {lab=VSS}
N 120 -200 140 -200 {lab=VSS}
N 260 -240 530 -240 {lab=i_bias}
C {title.sym} 170 -40 0 0 {name=l1 author="Songhang Li"}
C {symbols/nfet_03v3.sym} 550 -400 0 0 {name=M1
L=0.5u
W=3*11.43u
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
C {symbols/nfet_03v3.sym} 810 -400 0 1 {name=M2
L=0.5u
W=3*11.43u
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
C {symbols/pfet_03v3.sym} 590 -600 0 1 {name=M3
L=0.5u
W=100u
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
C {symbols/pfet_03v3.sym} 770 -600 0 0 {name=M4
L=0.5u
W=100u
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
C {symbols/nfet_03v3.sym} 660 -240 0 0 {name=M5
L=0.5u
W=3*22.86u
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
C {ipin.sym} 680 -750 1 0 {name=p1 lab=VDD}
C {opin.sym} 920 -500 0 0 {name=p2 lab=vout}
C {ipin.sym} 80 -360 0 0 {name=p5 lab=i_bias
}
C {ipin.sym} 470 -400 0 0 {name=p4 lab=vin+}
C {ipin.sym} 920 -400 2 0 {name=p7 lab=vin-
}
C {lab_pin.sym} 700 -190 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 580 -400 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 780 -400 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 790 -700 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {ipin.sym} 680 -150 3 0 {name=p12 lab=VSS
}
C {symbols/nfet_03v3.sym} 160 -240 0 1 {name=M6
L=0.5u
W=22.86u
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
C {lab_pin.sym} 140 -180 3 0 {name=p13 sig_type=std_logic lab=VSS}

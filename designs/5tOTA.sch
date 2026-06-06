v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 460 -700 460 -620 {lab=VDD}
N 460 -700 680 -700 {lab=VDD}
N 680 -700 680 -620 {lab=VDD}
N 500 -590 640 -590 {lab=#net1}
N 570 -590 570 -530 {lab=#net1}
N 460 -530 570 -530 {lab=#net1}
N 460 -560 460 -420 {lab=#net1}
N 680 -560 680 -420 {lab=vout}
N 460 -360 460 -300 {lab=#net2}
N 460 -300 680 -300 {lab=#net2}
N 680 -360 680 -300 {lab=#net2}
N 570 -300 570 -260 {lab=#net2}
N 420 -230 530 -230 {lab=i_bias}
N 570 -200 570 -170 {lab=VSS}
N 680 -490 760 -490 {lab=vout}
N 570 -740 570 -700 {lab=VDD}
N 390 -390 420 -390 {lab=vin+}
N 720 -390 750 -390 {lab=vin-}
N 440 -590 460 -590 {lab=VDD}
N 440 -650 440 -590 {lab=VDD}
N 440 -650 460 -650 {lab=VDD}
N 680 -590 700 -590 {lab=VDD}
N 700 -650 700 -590 {lab=VDD}
N 680 -650 700 -650 {lab=VDD}
N 750 -390 810 -390 {lab=vin-}
N 570 -170 570 -140 {lab=VSS}
N 360 -390 390 -390 {lab=vin+}
N 570 -230 590 -230 {lab=VSS}
N 590 -230 590 -160 {lab=VSS}
N 570 -160 590 -160 {lab=VSS}
N 760 -490 810 -490 {lab=vout}
N 340 -230 420 -230 {lab=i_bias}
N 240 -350 300 -350 {lab=i_bias}
N 300 -350 300 -260 {lab=i_bias}
N 300 -200 300 -170 {lab=VSS}
N 460 -390 470 -390 {lab=VSS}
N 670 -390 680 -390 {lab=VSS}
N 300 -290 380 -290 {lab=i_bias}
N 380 -290 380 -230 {lab=i_bias}
C {title.sym} 170 -40 0 0 {name=l1 author="Songhang Li"}
C {symbols/nfet_03v3.sym} 440 -390 0 0 {name=M1
L=0.28u
W=0.22u
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
C {symbols/nfet_03v3.sym} 700 -390 0 1 {name=M2
L=0.28u
W=0.22u
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
C {symbols/pfet_03v3.sym} 480 -590 0 1 {name=M3
L=0.28u
W=0.22u
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
C {symbols/pfet_03v3.sym} 660 -590 0 0 {name=M4
L=0.28u
W=0.22u
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
C {symbols/nfet_03v3.sym} 550 -230 0 0 {name=M5
L=0.28u
W=0.22u
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
C {ipin.sym} 570 -740 1 0 {name=p1 lab=VDD}
C {opin.sym} 810 -490 0 0 {name=p2 lab=vout}
C {ipin.sym} 240 -350 0 0 {name=p5 lab=i_bias
}
C {lab_pin.sym} 410 -390 0 0 {name=p6 sig_type=std_logic lab=vin+}
C {lab_pin.sym} 780 -390 0 0 {name=p3 sig_type=std_logic lab=vin-}
C {ipin.sym} 360 -390 0 0 {name=p4 lab=vin+
}
C {ipin.sym} 810 -390 2 0 {name=p7 lab=vin-
}
C {lab_pin.sym} 590 -160 1 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 470 -390 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 670 -390 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 680 -690 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {ipin.sym} 570 -140 3 0 {name=p12 lab=VSS
}
C {symbols/nfet_03v3.sym} 320 -230 0 1 {name=M6
L=0.28u
W=0.22u
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
C {lab_pin.sym} 300 -170 3 0 {name=p13 sig_type=std_logic lab=VSS}

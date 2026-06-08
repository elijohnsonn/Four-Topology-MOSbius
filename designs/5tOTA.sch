v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {5-Transister Operational Transconductance Amplifier} 190 -870 0 0 0.4 0.4 {}
N 340 -700 340 -620 {lab=VDD}
N 340 -700 560 -700 {lab=VDD}
N 560 -700 560 -620 {lab=VDD}
N 380 -590 520 -590 {lab=#net1}
N 450 -590 450 -530 {lab=#net1}
N 340 -530 450 -530 {lab=#net1}
N 340 -560 340 -420 {lab=#net1}
N 560 -560 560 -420 {lab=vout}
N 340 -360 340 -300 {lab=#net2}
N 340 -300 560 -300 {lab=#net2}
N 560 -360 560 -300 {lab=#net2}
N 450 -300 450 -260 {lab=#net2}
N 300 -230 410 -230 {lab=i_bias}
N 450 -200 450 -170 {lab=VSS}
N 560 -490 640 -490 {lab=vout}
N 450 -740 450 -700 {lab=VDD}
N 270 -390 300 -390 {lab=vin+}
N 600 -390 630 -390 {lab=vin-}
N 320 -590 340 -590 {lab=VDD}
N 320 -650 320 -590 {lab=VDD}
N 320 -650 340 -650 {lab=VDD}
N 560 -590 580 -590 {lab=VDD}
N 580 -650 580 -590 {lab=VDD}
N 560 -650 580 -650 {lab=VDD}
N 630 -390 690 -390 {lab=vin-}
N 450 -170 450 -140 {lab=VSS}
N 240 -390 270 -390 {lab=vin+}
N 450 -230 470 -230 {lab=VSS}
N 470 -230 470 -160 {lab=VSS}
N 450 -160 470 -160 {lab=VSS}
N 640 -490 690 -490 {lab=vout}
N 220 -230 300 -230 {lab=i_bias}
N 120 -350 180 -350 {lab=i_bias}
N 180 -350 180 -260 {lab=i_bias}
N 180 -200 180 -170 {lab=VSS}
N 340 -390 350 -390 {lab=VSS}
N 550 -390 560 -390 {lab=VSS}
N 180 -290 260 -290 {lab=i_bias}
N 260 -290 260 -230 {lab=i_bias}
N 160 -230 180 -230 {lab=VSS}
N 160 -230 160 -190 {lab=VSS}
N 160 -190 180 -190 {lab=VSS}
C {title.sym} 170 -40 0 0 {name=l1 author="Songhang Li"}
C {symbols/nfet_03v3.sym} 320 -390 0 0 {name=M1
L=0.5u
W=11.43u
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
C {symbols/nfet_03v3.sym} 580 -390 0 1 {name=M2
L=0.5u
W=11.43u
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
C {symbols/pfet_03v3.sym} 360 -590 0 1 {name=M3
L=0.5u
W=23u
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
C {symbols/pfet_03v3.sym} 540 -590 0 0 {name=M4
L=0.5u
W=23u
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
C {symbols/nfet_03v3.sym} 430 -230 0 0 {name=M5
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
C {ipin.sym} 450 -740 1 0 {name=p1 lab=VDD}
C {opin.sym} 690 -490 0 0 {name=p2 lab=vout}
C {ipin.sym} 120 -350 0 0 {name=p5 lab=i_bias
}
C {lab_pin.sym} 290 -390 0 0 {name=p6 sig_type=std_logic lab=vin+}
C {lab_pin.sym} 660 -390 0 0 {name=p3 sig_type=std_logic lab=vin-}
C {ipin.sym} 240 -390 0 0 {name=p4 lab=vin+}
C {ipin.sym} 690 -390 2 0 {name=p7 lab=vin-
}
C {lab_pin.sym} 470 -180 2 0 {name=p8 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 350 -390 2 0 {name=p9 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 550 -390 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 560 -690 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {ipin.sym} 450 -140 3 0 {name=p12 lab=VSS
}
C {symbols/nfet_03v3.sym} 200 -230 0 1 {name=M6
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
C {lab_pin.sym} 180 -170 3 0 {name=p13 sig_type=std_logic lab=VSS}

v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -30 -0 20 0 {lab=#net1}
N 120 -150 120 -30 {lab=D}
N 280 -150 290 -150 {lab=D}
N 120 30 120 120 {lab=S}
N 300 30 300 120 {lab=S}
N 300 -150 300 -30 {lab=D}
N 290 -150 300 -150 {lab=D}
N 340 0 390 0 {lab=#net2}
N -430 30 -430 120 {lab=S}
N -430 180 60 180 {lab=S}
N -430 -150 -430 -30 {lab=D}
N -430 -150 60 -150 {lab=D}
N -0 -210 0 -150 {lab=D}
N 0 180 0 220 {lab=S}
N 0 220 0 230 {lab=S}
N -550 0 -430 -0 {lab=B}
N -150 30 -150 60 {lab=EN1}
N -150 -30 -130 -30 {lab=!EN1}
N -130 -60 -130 -30 {lab=!EN1}
N 630 -30 650 -30 {lab=!EN2}
N 630 -60 630 -30 {lab=!EN2}
N 650 30 650 60 {lab=EN1}
N -300 -20 -300 -0 {lab=G}
N -70 -0 -30 0 {lab=#net1}
N -300 -0 -230 -0 {lab=G}
N -390 -0 -300 -0 {lab=G}
N 20 -0 80 0 {lab=#net1}
N -20 0 -20 50 {lab=#net1}
N 120 -0 300 0 {lab=B}
N 400 70 420 70 {lab=!EN2}
N 390 0 570 -0 {lab=#net2}
N 460 0 460 40 {lab=#net2}
N 460 100 460 130 {lab=VSS}
N 460 70 530 70 {lab=VSS}
N 60 -150 280 -150 {lab=D}
N -430 120 -430 180 {lab=S}
N 300 120 300 180 {lab=S}
N 60 180 300 180 {lab=S}
N 120 120 120 180 {lab=S}
N -80 80 -60 80 {lab=!EN1}
N -20 80 -10 80 {lab=VSS}
N -190 50 -190 80 {lab=VSS}
N -190 80 -190 100 {lab=VSS}
N 690 50 690 90 {lab=VSS}
N 690 90 690 100 {lab=VSS}
N 730 -0 780 0 {lab=G}
N -190 -80 -190 -50 {lab=VDD}
N 690 -100 690 -50 {lab=VDD}
N -20 110 -20 140 {lab=VSS}
N -10 80 60 80 {lab=VSS}
N 530 70 540 70 {lab=VSS}
C {symbols/nfet_03v3.sym} -410 0 0 1 {name=M1
L=L
W=W
nf=NF
m=M
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 100 0 0 0 {name=M2
L=L
W=W
nf=NF
m=M
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 320 0 0 1 {name=M3
L=L
W=2*W
nf=2*NF
m=M
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {libs/etj_test_def/tgate.sym} -150 10 0 0 {name=x1}
C {libs/etj_test_def/tgate.sym} 650 10 0 1 {name=x2}
C {iopin.sym} 0 -210 3 0 {name=p17 lab=D}
C {iopin.sym} 0 230 1 0 {name=p1 lab=S}
C {iopin.sym} -550 0 2 0 {name=p2 lab=B}
C {lab_pin.sym} 210 0 1 0 {name=p4 sig_type=std_logic lab=B}
C {iopin.sym} -130 -60 3 0 {name=p5 lab=!EN1}
C {iopin.sym} -150 60 1 0 {name=p6 lab=EN1}
C {iopin.sym} 630 -60 3 0 {name=p7 lab=!EN2}
C {iopin.sym} 650 60 1 0 {name=p8 lab=EN2}
C {iopin.sym} -300 -20 3 0 {name=p9 lab=G}
C {symbols/nfet_03v3.sym} -40 80 0 0 {name=M4
L=0.28u
W=0.42u
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
C {lab_pin.sym} -80 80 3 0 {name=p11 sig_type=std_logic lab=!EN1}
C {symbols/nfet_03v3.sym} 440 70 0 0 {name=M5
L=0.28u
W=0.42u
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
C {lab_pin.sym} 400 70 3 0 {name=p3 sig_type=std_logic lab=!EN2}
C {iopin.sym} -190 100 3 1 {name=p10 lab=VSS}
C {lab_pin.sym} 690 100 0 1 {name=p13 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 780 0 0 1 {name=p14 sig_type=std_logic lab=G}
C {iopin.sym} -190 -80 3 0 {name=p15 lab=VDD}
C {lab_pin.sym} 690 -100 0 1 {name=p16 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 60 80 3 1 {name=p18 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -20 140 0 1 {name=p19 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 540 70 3 1 {name=p20 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 460 130 0 1 {name=p21 sig_type=std_logic lab=VSS}

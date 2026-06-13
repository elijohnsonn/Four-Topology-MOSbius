v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 40 -100 40 -50 {lab=d}
N 40 -100 390 -100 {lab=d}
N 390 -100 390 -50 {lab=d}
N 220 -100 220 -50 {lab=d}
N 220 -20 260 -20 {lab=b}
N 40 -20 70 -20 {lab=b}
N 390 -20 440 -20 {lab=b}
N 390 10 390 50 {lab=s}
N 40 50 390 50 {lab=s}
N 40 10 40 50 {lab=s}
N 220 10 220 50 {lab=s}
N 320 70 320 90 {lab=ena_bar<2>}
N 320 160 320 180 {lab=ena<2>}
N 400 30 400 140 {lab=#net1}
N 350 30 400 30 {lab=#net1}
N 350 -20 350 30 {lab=#net1}
N 260 -190 260 -70 {lab=#net2}
N 180 -70 260 -70 {lab=#net2}
N 180 -70 180 -20 {lab=#net2}
N 40 -190 90 -190 {lab=g}
N -100 -190 -100 130 {lab=g}
N -100 -190 40 -190 {lab=g}
N 150 140 230 140 {lab=g}
N 150 30 150 140 {lab=g}
N -100 30 150 30 {lab=g}
N 70 70 70 130 {lab=#net3}
N 0 70 70 70 {lab=#net3}
N 0 -20 0 70 {lab=#net3}
N -10 50 -10 80 {lab=ena_bar<0>}
N 180 -170 180 -140 {lab=ena<1>}
N 180 -270 180 -240 {lab=ena_bar<1>}
N 130 -270 130 -240 {lab=VDD}
N 140 -140 140 -120 {lab=VSS}
N -10 150 -10 180 {lab=ena<0>}
N -50 180 -50 220 {lab=VSS}
N -50 220 280 220 {lab=VSS}
N 280 190 280 220 {lab=VSS}
N 270 70 270 90 {lab=VDD}
N 270 60 270 70 {lab=VDD}
N -60 60 270 60 {lab=VDD}
N -60 60 -60 80 {lab=VDD}
C {libs/core_digital/transmission_gate.sym} -10 130 0 0 {name=x1}
C {libs/core_digital/transmission_gate.sym} 180 -190 0 0 {name=x2}
C {libs/core_digital/transmission_gate.sym} 320 140 0 0 {name=x3}
C {lab_wire.sym} 60 -20 0 0 {name=p1 sig_type=std_logic lab=b
}
C {lab_wire.sym} 140 -120 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 430 -20 0 0 {name=p3 sig_type=std_logic lab=b}
C {lab_wire.sym} 240 -20 0 0 {name=p4 sig_type=std_logic lab=b}
C {lab_wire.sym} 130 220 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 110 60 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 130 -260 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {ipin.sym} -50 220 0 0 {name=p8 lab=VSS}
C {ipin.sym} 190 60 0 0 {name=p9 lab=VDD}
C {ipin.sym} -100 -50 0 0 {name=p10 lab=g}
C {ipin.sym} 180 -260 0 0 {name=p11 lab=ena_bar<1>}
C {ipin.sym} -10 50 0 0 {name=p12 lab=ena_bar<0>}
C {ipin.sym} 320 70 0 0 {name=p13 lab=ena_bar<2>}
C {ipin.sym} 320 180 0 0 {name=p14 lab=ena<2>}
C {ipin.sym} -10 170 0 0 {name=p15 lab=ena<0>}
C {ipin.sym} 180 -150 0 0 {name=p16 lab=ena<1>}
C {iopin.sym} 390 -100 0 0 {name=p17 lab=d}
C {iopin.sym} 330 50 0 0 {name=p18 lab=s}
C {symbols/pfet_03v3.sym} 20 -20 0 0 {name=M1
L=\{length\}
W=\{width\}
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
C {symbols/pfet_03v3.sym} 200 -20 0 0 {name=M2
L=\{length\}
W=\{width\}
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
C {symbols/pfet_03v3.sym} 370 -20 0 0 {name=M3
L=\{length\}
W=2*\{width\}
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
C {ipin.sym} 430 -20 0 0 {name=p19 lab=b}

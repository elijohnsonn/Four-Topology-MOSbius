v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 40 -100 40 -50 {lab=s}
N 40 -100 390 -100 {lab=s}
N 390 -100 390 -50 {lab=s}
N 40 -20 70 -20 {lab=b}
N 390 -20 440 -20 {lab=b}
N 390 10 390 50 {lab=s}
N 40 50 390 50 {lab=s}
N 40 10 40 50 {lab=s}
N 320 70 320 90 {lab=ena_bar<1>}
N 320 160 320 180 {lab=ena<1>}
N 400 30 400 140 {lab=#net1}
N 350 30 400 30 {lab=#net1}
N 350 -20 350 30 {lab=#net1}
N 150 140 230 140 {lab=g}
N 150 30 150 140 {lab=g}
N -100 30 150 30 {lab=g}
N 70 70 70 130 {lab=#net2}
N 0 70 70 70 {lab=#net2}
N 0 -20 0 70 {lab=#net2}
N -10 50 -10 80 {lab=ena_bar<0>}
N -10 150 -10 180 {lab=ena<0>}
N -50 180 -50 220 {lab=VSS}
N -50 220 280 220 {lab=VSS}
N 280 190 280 220 {lab=VSS}
N 270 70 270 90 {lab=VDD}
N 270 60 270 70 {lab=VDD}
N -60 60 270 60 {lab=VDD}
N -60 60 -60 80 {lab=VDD}
N -100 30 -100 130 {lab=g}
N 120 60 120 120 {lab=VDD}
N 70 180 120 180 {lab=#net2}
N 70 130 70 180 {lab=#net2}
N 120 150 140 150 {lab=VDD}
N 140 110 140 150 {lab=VDD}
N 120 110 140 110 {lab=VDD}
N 490 70 490 110 {lab=VDD}
N 490 60 490 70 {lab=VDD}
N 270 60 490 60 {lab=VDD}
N 490 140 520 140 {lab=VDD}
N 520 90 520 140 {lab=VDD}
N 490 90 520 90 {lab=VDD}
N 420 170 490 170 {lab=#net1}
N 420 120 420 170 {lab=#net1}
N 400 120 420 120 {lab=#net1}
N 80 150 80 200 {lab=ena<0>}
N -10 200 80 200 {lab=ena<0>}
N -10 180 -10 200 {lab=ena<0>}
N 450 140 450 210 {lab=ena<1>}
N 320 210 450 210 {lab=ena<1>}
N 320 180 320 210 {lab=ena<1>}
C {libs/core_digital/transmission_gate.sym} -10 130 0 0 {name=x1}
C {libs/core_digital/transmission_gate.sym} 320 140 0 0 {name=x3}
C {lab_wire.sym} 60 -20 0 0 {name=p1 sig_type=std_logic lab=b
}
C {lab_wire.sym} 430 -20 0 0 {name=p3 sig_type=std_logic lab=b}
C {lab_wire.sym} 130 220 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 110 60 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {ipin.sym} -50 220 0 0 {name=p8 lab=VSS}
C {ipin.sym} 190 60 0 0 {name=p9 lab=VDD}
C {ipin.sym} -100 30 0 0 {name=p10 lab=g}
C {ipin.sym} 320 70 0 0 {name=p11 lab=ena_bar<1>}
C {ipin.sym} -10 50 0 0 {name=p12 lab=ena_bar<0>}
C {ipin.sym} -10 170 0 0 {name=p15 lab=ena<0>}
C {iopin.sym} 390 -100 0 0 {name=p17 lab=s}
C {iopin.sym} 330 50 0 0 {name=p18 lab=d}
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
C {symbols/pfet_03v3.sym} 370 -20 0 0 {name=M3
L=\{length\}
W=\{2*width\}
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
C {ipin.sym} 320 180 0 0 {name=p2 lab=ena<1>}
C {symbols/pfet_03v3.sym} 470 140 0 0 {name=M2
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
C {symbols/pfet_03v3.sym} 100 150 0 0 {name=M4
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

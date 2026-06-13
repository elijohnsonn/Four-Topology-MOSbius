v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 50 -90 50 -40 {lab=d}
N 50 -90 400 -90 {lab=d}
N 400 -90 400 -40 {lab=d}
N 230 -90 230 -40 {lab=d}
N 230 -10 270 -10 {lab=b}
N 50 -10 80 -10 {lab=b}
N 400 -10 450 -10 {lab=b}
N 400 20 400 60 {lab=s}
N 50 60 400 60 {lab=s}
N 50 20 50 60 {lab=s}
N 230 20 230 60 {lab=s}
N 330 80 330 100 {lab=ena_bar<2>}
N 330 170 330 190 {lab=ena<2>}
N 410 40 410 150 {lab=#net1}
N 360 40 410 40 {lab=#net1}
N 360 -10 360 40 {lab=#net1}
N 270 -180 270 -60 {lab=#net2}
N 190 -60 270 -60 {lab=#net2}
N 190 -60 190 -10 {lab=#net2}
N 50 -180 100 -180 {lab=g}
N -90 -180 -90 140 {lab=g}
N -90 -180 50 -180 {lab=g}
N 160 150 240 150 {lab=g}
N 160 40 160 150 {lab=g}
N -90 40 160 40 {lab=g}
N 80 80 80 140 {lab=#net3}
N 10 80 80 80 {lab=#net3}
N 10 -10 10 80 {lab=#net3}
N -0 60 -0 90 {lab=ena_bar<0>}
N 190 -160 190 -130 {lab=ena<1>}
N 190 -260 190 -230 {lab=ena_bar<1>}
N 140 -260 140 -230 {lab=VDD}
N 150 -130 150 -110 {lab=VSS}
N -0 160 -0 190 {lab=ena<0>}
N -40 190 -40 230 {lab=VSS}
N -40 230 290 230 {lab=VSS}
N 290 200 290 230 {lab=VSS}
N 280 80 280 100 {lab=VDD}
N 280 70 280 80 {lab=VDD}
N -50 70 280 70 {lab=VDD}
N -50 70 -50 90 {lab=VDD}
C {symbols/nfet_03v3.sym} 30 -10 0 0 {name=M1
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
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 210 -10 0 0 {name=M2
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
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 380 -10 0 0 {name=M3
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
model=nfet_03v3
spiceprefix=X
}
C {libs/core_digital/transmission_gate.sym} 0 140 0 0 {name=x1}
C {libs/core_digital/transmission_gate.sym} 190 -180 0 0 {name=x2}
C {libs/core_digital/transmission_gate.sym} 330 150 0 0 {name=x3}
C {lab_wire.sym} 70 -10 0 0 {name=p1 sig_type=std_logic lab=b}
C {lab_wire.sym} 150 -110 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 440 -10 0 0 {name=p3 sig_type=std_logic lab=b}
C {lab_wire.sym} 250 -10 0 0 {name=p4 sig_type=std_logic lab=b}
C {lab_wire.sym} 140 230 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 120 70 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 140 -250 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {ipin.sym} -40 230 0 0 {name=p8 lab=VSS}
C {ipin.sym} 200 70 0 0 {name=p9 lab=VDD}
C {ipin.sym} -90 -40 0 0 {name=p10 lab=g}
C {ipin.sym} 190 -250 0 0 {name=p11 lab=ena_bar<1>}
C {ipin.sym} 0 60 0 0 {name=p12 lab=ena_bar<0>}
C {ipin.sym} 330 80 0 0 {name=p13 lab=ena_bar<2>}
C {ipin.sym} 330 190 0 0 {name=p14 lab=ena<2>}
C {ipin.sym} 0 180 0 0 {name=p15 lab=ena<0>}
C {ipin.sym} 190 -140 0 0 {name=p16 lab=ena<1>}
C {iopin.sym} 400 -90 0 0 {name=p17 lab=d}
C {iopin.sym} 340 60 0 0 {name=p18 lab=s}
C {ipin.sym} 430 -10 0 0 {name=p19 lab=b}

v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Inverter} -50 -240 0 0 0.5 0.5 {}
N 20 -110 20 -70 {lab=Y}
N 30 -30 30 -0 {lab=Vss}
N 20 -40 30 -40 {lab=Vss}
N 30 -40 30 -30 {lab=Vss}
N 20 -0 30 -0 {lab=Vss}
N 20 -10 20 -0 {lab=Vss}
N -50 -40 -20 -40 {lab=A}
N -50 -140 -50 -40 {lab=A}
N -50 -140 -20 -140 {lab=A}
N 20 -140 30 -140 {lab=Vdd}
N 20 -180 30 -180 {lab=Vdd}
N 20 -180 20 -170 {lab=Vdd}
N -80 -90 -50 -90 {lab=A}
N 30 -180 30 -140 {lab=Vdd}
N 20 -90 60 -90 {lab=Y}
C {symbols/nfet_03v3.sym} 0 -40 0 0 {name=M1
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
C {symbols/pfet_03v3.sym} 0 -140 0 0 {name=M2
L=0.28u
W=0.84u
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
C {ipin.sym} 20 -180 0 0 {name=p1 lab=Vdd}
C {ipin.sym} -80 -90 0 0 {name=p4 lab=A}
C {ipin.sym} 20 0 0 0 {name=p5 lab=Vss}
C {opin.sym} 60 -90 0 0 {name=p2 lab=Y
}

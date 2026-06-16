v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 40 -50 40 -20 {lab=#net1}
N 40 10 60 10 {lab=Vss}
N 60 -80 60 10 {lab=Vss}
N 40 -90 60 -90 {lab=Vss}
N 60 10 60 60 {lab=Vss}
N 40 60 60 60 {lab=Vss}
N 40 40 40 60 {lab=Vss}
N 40 40 40 70 {lab=Vss}
N -20 -140 -20 -120 {lab=#net2}
N -20 -120 40 -120 {lab=#net2}
N 40 -120 40 -110 {lab=#net2}
N 40 -120 40 -110 {lab=#net2}
N 40 -120 110 -120 {lab=#net2}
N 110 -150 110 -120 {lab=#net2}
N 40 -60 40 -50 {lab=#net1}
N 110 -170 140 -170 {lab=Vdd}
N 140 -220 140 -170 {lab=Vdd}
N -20 -220 140 -220 {lab=Vdd}
N -20 -220 -20 -200 {lab=Vdd}
N -20 -170 -0 -170 {lab=Vdd}
N -0 -220 0 -170 {lab=Vdd}
N 110 -220 110 -200 {lab=Vdd}
N -60 -170 -60 -90 {lab=A}
N -60 -90 -0 -90 {lab=A}
N 60 -90 60 -80 {lab=Vss}
N -40 10 -0 10 {lab=B}
N -40 -40 -40 10 {lab=B}
N -40 -40 90 -40 {lab=B}
N 90 -140 90 -40 {lab=B}
N 70 -140 90 -140 {lab=B}
N 70 -170 70 -140 {lab=B}
N 110 -120 140 -120 {lab=#net2}
C {symbols/nfet_03v3.sym} 20 -90 0 0 {name=M1
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
C {symbols/nfet_03v3.sym} 20 10 0 0 {name=M2
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
C {symbols/pfet_03v3.sym} -40 -170 0 0 {name=M3
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
C {symbols/pfet_03v3.sym} 90 -170 0 0 {name=M4
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
C {ipin.sym} -60 -100 0 0 {name=p1 lab=A}
C {ipin.sym} -40 -10 0 0 {name=p2 lab=B}
C {ipin.sym} 40 70 0 0 {name=p3 lab=Vss}
C {ipin.sym} -20 -220 0 0 {name=p4 lab=Vdd}
C {opin.sym} 140 -120 0 0 {name=p5 lab=Y}

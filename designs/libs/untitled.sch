v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 40 30 110 30 {lab=xxx}
N 40 -90 40 30 {lab=xxx}
N 40 -90 60 -90 {lab=xxx}
N 120 -90 190 -90 {lab=out}
N 190 -90 190 30 {lab=out}
N 170 30 190 30 {lab=out}
N 140 10 140 30 {lab=VSS}
N 90 -90 90 -70 {lab=VDD}
N 140 70 140 90 {lab=enab}
N 90 -160 90 -130 {lab=enab_bar}
C {symbols/nfet_03v3.sym} 140 50 3 0 {name=M1
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
C {symbols/pfet_03v3.sym} 90 -110 1 0 {name=M2
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
C {opin.sym} 190 -30 0 0 {name=p1 lab=out}
C {ipin.sym} 40 -30 0 0 {name=p2 lab=in}
C {ipin.sym} 140 10 0 0 {name=p3 lab=VSS}
C {ipin.sym} 90 -70 0 0 {name=p4 lab=VDD}
C {ipin.sym} 90 -160 0 0 {name=p5 lab=enab_bar}
C {ipin.sym} 140 90 0 0 {name=p6 lab=enab}

v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Transmission Gate} -70 -180 0 0 0.5 0.5 {}
N 0 70 70 70 {lab=in}
N 0 -30 -0 70 {lab=in}
N 0 -30 20 -30 {lab=in}
N 80 -30 140 -30 {lab=out}
N 140 -30 140 70 {lab=out}
N 130 70 140 70 {lab=out}
N 100 110 100 130 {lab=ena}
N 100 50 100 70 {lab=VSS}
N 50 -30 50 -20 {lab=VDD}
N 50 -100 50 -70 {lab=ena_bar}
C {symbols/pfet_03v3.sym} 50 -50 1 0 {name=M1
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
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 100 90 3 0 {name=M2
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
C {ipin.sym} 0 20 0 0 {name=p1 lab=in}
C {ipin.sym} 50 -100 0 0 {name=p2 lab=ena_bar}
C {ipin.sym} 100 130 0 0 {name=p3 lab=ena}
C {ipin.sym} 100 60 0 0 {name=p4 lab=VSS}
C {ipin.sym} 50 -20 0 0 {name=p5 lab=VDD}
C {opin.sym} 140 10 0 0 {name=p6 lab=out}

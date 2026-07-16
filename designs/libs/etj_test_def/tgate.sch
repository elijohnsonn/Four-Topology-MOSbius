v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -90 40 -30 40 {lab=IN}
N -110 -140 -110 40 {lab=IN}
N 30 40 90 40 {lab=OUT}
N 110 -140 110 40 {lab=OUT}
N -160 -50 -110 -50 {lab=IN}
N 110 -50 160 -50 {lab=OUT}
N 0 -140 -0 -60 {lab=VDD}
N -30 -60 -0 -60 {lab=VDD}
N -0 -50 -0 40 {lab=VSS}
N -0 -50 30 -50 {lab=VSS}
N -110 40 -90 40 {lab=IN}
N 90 40 110 40 {lab=OUT}
N -170 -50 -160 -50 {lab=IN}
N 160 -50 170 -50 {lab=OUT}
N 0 -230 0 -190 {lab=#net1}
N -0 80 0 120 {lab=EN}
N -110 -150 -30 -150 {lab=IN}
N -110 -150 -110 -140 {lab=IN}
N 30 -150 110 -150 {lab=OUT}
N 110 -150 110 -140 {lab=OUT}
N 0 -150 0 -140 {lab=VDD}
C {symbols/nfet_03v3.sym} 0 60 3 0 {name=M1
L=.28u
W=.42u
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
C {iopin.sym} -170 -50 2 0 {name=p60 lab=IN}
C {iopin.sym} 170 -50 2 1 {name=p1 lab=OUT}
C {iopin.sym} 0 120 1 0 {name=p2 lab=EN}
C {iopin.sym} 0 -240 3 0 {name=p3 lab=EN_BAR}
C {symbols/pfet_03v3.sym} 0 -170 1 0 {name=M2
L=.28u
W=1.2u
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
C {iopin.sym} 30 -50 2 1 {name=p4 lab=VSS}
C {iopin.sym} -30 -60 2 0 {name=p5 lab=VDD}

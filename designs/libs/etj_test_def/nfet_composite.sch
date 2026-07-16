v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -30 -0 20 0 {lab=#net1}
N 60 -150 60 -30 {lab=D}
N 60 -150 320 -150 {lab=D}
N 320 -150 330 -150 {lab=D}
N 60 30 60 120 {lab=D}
N 60 120 340 120 {lab=D}
N 340 30 340 120 {lab=D}
N 340 -150 340 -30 {lab=D}
N 330 -150 340 -150 {lab=D}
N 380 -0 430 0 {lab=#net2}
N -390 -0 -190 0 {lab=#net3}
N -430 30 -430 120 {lab=D}
N -430 120 60 120 {lab=D}
N -430 -150 -430 -30 {lab=D}
N -430 -150 60 -150 {lab=D}
N -0 -210 0 -150 {lab=D}
N -0 120 -0 160 {lab=D}
N 0 160 0 170 {lab=D}
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
C {symbols/nfet_03v3.sym} 40 0 0 0 {name=M2
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
C {symbols/nfet_03v3.sym} 360 0 0 1 {name=M3
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
C {libs/etj_test_def/tgate.sym} -110 10 0 0 {name=x1}
C {libs/etj_test_def/tgate.sym} 510 10 0 1 {name=x2}
C {iopin.sym} 0 -210 3 0 {name=p17 lab=D}
C {iopin.sym} 0 170 1 0 {name=p1 lab=S}

v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -0 30 0 80 {lab=VSS}
N -0 -110 0 -30 {lab=OUT}
N -0 -230 -0 -170 {lab=VDD}
N -120 -140 -40 -140 {lab=IN}
N 0 -70 120 -70 {lab=OUT}
N -170 -0 -40 -0 {lab=IBIAS}
N -210 -80 -210 -30 {lab=IBIAS}
N -210 -60 -120 -60 {lab=IBIAS}
N -120 -60 -120 -0 {lab=IBIAS}
N -210 30 -210 70 {lab=VSS}
N -210 70 -0 70 {lab=VSS}
N -260 -0 -210 0 {lab=VSS}
N -260 -0 -260 70 {lab=VSS}
N -260 70 -210 70 {lab=VSS}
N -0 -0 70 0 {lab=VSS}
N 70 -0 70 70 {lab=VSS}
N 0 70 70 70 {lab=VSS}
N -0 -140 60 -140 {lab=VDD}
N 60 -140 70 -140 {lab=VDD}
N 70 -200 70 -140 {lab=VDD}
N 0 -200 70 -200 {lab=VDD}
C {symbols/nfet_03v3.sym} -20 0 0 0 {name=M1
L=0.5u
W=23u
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
C {symbols/pfet_03v3.sym} -20 -140 0 0 {name=M2
L=0.5u
W=78u
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
C {symbols/nfet_03v3.sym} -190 0 0 1 {name=M4
L=0.5u
W=23u
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
C {iopin.sym} -210 -80 3 0 {name=p1 lab=IBIAS}
C {iopin.sym} 0 -230 3 0 {name=p2 lab=VDD
}
C {iopin.sym} 120 -70 0 0 {name=p3 lab=OUT
}
C {iopin.sym} 0 80 1 0 {name=p4 lab=VSS
}
C {iopin.sym} -120 -140 2 0 {name=p5 lab=IN
}

v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Programmable NFET} 110 -200 0 0 0.5 0.5 {}
N 50 -90 50 -40 {lab=d}
N 50 -90 400 -90 {lab=d}
N 400 -90 400 -40 {lab=d}
N 50 -10 80 -10 {lab=b}
N 350 -10 400 -10 {lab=b}
N 400 20 400 60 {lab=s}
N 50 60 400 60 {lab=s}
N 50 20 50 60 {lab=s}
N 630 -80 630 -60 {lab=ena_bar<1>}
N 630 10 630 30 {lab=ena<1>}
N -170 0 -170 30 {lab=ena<0>}
N -40 230 290 230 {lab=VSS}
N 480 140 480 230 {lab=VSS}
N 290 230 480 230 {lab=VSS}
N 480 110 510 110 {lab=VSS}
N 510 110 510 160 {lab=VSS}
N 480 160 510 160 {lab=VSS}
N 480 -10 480 80 {lab=#net1}
N 440 -10 480 -10 {lab=#net1}
N 480 -10 550 -10 {lab=#net1}
N 480 230 600 230 {lab=VSS}
N 400 110 440 110 {lab=ena_bar<1>}
N 600 230 660 230 {lab=VSS}
N 660 230 670 230 {lab=VSS}
N 670 40 670 230 {lab=VSS}
N 680 -90 680 -60 {lab=VDD}
N -320 -20 -260 -20 {lab=g}
N 720 -10 760 -10 {lab=g}
N -170 -120 -170 -70 {lab=ena_bar<0>}
N -220 -90 -220 -70 {lab=VDD}
N -210 30 -210 230 {lab=VSS}
N -210 230 -30 230 {lab=VSS}
N -20 -10 -20 40 {lab=#net2}
N -20 -10 10 -10 {lab=#net2}
N -90 -10 -20 -10 {lab=#net2}
N -90 -20 -90 -10 {lab=#net2}
N -20 70 10 70 {lab=VSS}
N 10 70 10 110 {lab=VSS}
N -20 110 10 110 {lab=VSS}
N -20 100 -20 110 {lab=VSS}
N -20 110 -20 230 {lab=VSS}
N -90 70 -60 70 {lab=ena_bar<0>}
C {symbols/nfet_03v3.sym} 30 -10 0 0 {name=M1
L=\{length\}
W=\{width\}
nf=\{nf\}
m=\{mult\}
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 420 -10 0 1 {name=M3
L=\{length\}
W=\{2*width\}
nf=\{2*nf\}
m=\{mult\}
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_wire.sym} 70 -10 0 0 {name=p1 sig_type=std_logic lab=b}
C {lab_wire.sym} 390 -10 0 0 {name=p3 sig_type=std_logic lab=b}
C {lab_wire.sym} 140 230 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 680 -90 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {ipin.sym} -40 230 0 0 {name=p8 lab=VSS}
C {ipin.sym} -220 -90 0 0 {name=p9 lab=VDD}
C {ipin.sym} -320 -20 0 0 {name=p10 lab=g}
C {ipin.sym} 630 -80 0 0 {name=p11 lab=ena_bar<1>}
C {ipin.sym} -170 -120 0 0 {name=p12 lab=ena_bar<0>}
C {ipin.sym} 630 30 0 0 {name=p14 lab=ena<1>}
C {ipin.sym} -170 20 0 0 {name=p15 lab=ena<0>}
C {iopin.sym} 400 -90 0 0 {name=p17 lab=d}
C {iopin.sym} 340 60 0 0 {name=p18 lab=s}
C {ipin.sym} 380 -10 0 0 {name=p19 lab=b}
C {symbols/nfet_03v3.sym} 460 110 0 0 {name=M2
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
C {symbols/nfet_03v3.sym} -40 70 0 0 {name=M4
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
C {lab_wire.sym} 420 110 0 0 {name=p2 sig_type=std_logic lab=ena_bar<1>}
C {lab_wire.sym} 760 -10 0 0 {name=p4 sig_type=std_logic lab=g}
C {lab_wire.sym} -80 70 0 0 {name=p7 sig_type=std_logic lab=ena_bar<0>}
C {libs/core_digital/schem/transmission_gate.sym} -170 -20 0 0 {name=x1}
C {libs/core_digital/schem/transmission_gate.sym} 630 -10 0 1 {name=x2}

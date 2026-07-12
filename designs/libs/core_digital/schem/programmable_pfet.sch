v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Programmable PFET} 70 -210 0 0 0.5 0.5 {}
N 40 -100 40 -50 {lab=s}
N 40 -100 390 -100 {lab=s}
N 390 -100 390 -50 {lab=s}
N 40 -20 70 -20 {lab=b}
N 340 -20 390 -20 {lab=b}
N 390 10 390 50 {lab=d}
N 40 10 40 50 {lab=d}
N 540 -130 540 -110 {lab=ena_bar<1>}
N -280 -90 -210 -90 {lab=VDD}
N -160 -20 -160 10 {lab=ena<0>}
N -200 10 -200 50 {lab=VSS}
N 580 -10 580 20 {lab=VSS}
N -330 -40 -240 -40 {lab=g}
N 540 -40 540 30 {lab=ena<1>}
N 480 30 540 30 {lab=ena<1>}
N 440 -20 440 -0 {lab=#net1}
N 430 -20 440 -20 {lab=#net1}
N 440 -60 440 -20 {lab=#net1}
N 440 -60 460 -60 {lab=#net1}
N 420 30 420 60 {lab=VDD}
N 420 30 440 30 {lab=VDD}
N 420 60 440 60 {lab=VDD}
N 440 60 440 90 {lab=VDD}
N 630 -60 670 -60 {lab=g}
N -160 -120 -160 -90 {lab=ena_bar<0>}
N 40 50 390 50 {lab=d}
N -40 -0 -40 20 {lab=#net2}
N -40 -20 -40 -0 {lab=#net2}
N -40 -20 0 -20 {lab=#net2}
N -40 -40 -40 -20 {lab=#net2}
N -80 -40 -40 -40 {lab=#net2}
N -0 50 -0 130 {lab=ena<0>}
N -150 130 0 130 {lab=ena<0>}
N -150 10 -150 130 {lab=ena<0>}
N -160 10 -150 10 {lab=ena<0>}
N -60 50 -40 50 {lab=VDD}
N -60 50 -60 80 {lab=VDD}
N -60 80 -40 80 {lab=VDD}
N -40 80 -40 100 {lab=VDD}
N 590 -140 590 -110 {lab=VDD}
C {lab_wire.sym} 60 -20 0 0 {name=p1 sig_type=std_logic lab=b
}
C {lab_wire.sym} 360 -20 0 0 {name=p3 sig_type=std_logic lab=b}
C {lab_wire.sym} -200 40 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -230 -90 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {ipin.sym} -200 50 0 0 {name=p8 lab=VSS}
C {ipin.sym} -280 -90 0 0 {name=p9 lab=VDD}
C {ipin.sym} -330 -40 0 0 {name=p10 lab=g}
C {ipin.sym} 540 -130 0 0 {name=p11 lab=ena_bar<1>}
C {ipin.sym} -160 -120 0 0 {name=p12 lab=ena_bar<0>}
C {ipin.sym} -160 10 3 0 {name=p15 lab=ena<0>}
C {iopin.sym} 390 -100 0 0 {name=p17 lab=s}
C {iopin.sym} 330 50 0 0 {name=p18 lab=d}
C {symbols/pfet_03v3.sym} 20 -20 0 0 {name=M1
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
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 410 -20 0 1 {name=M3
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
model=pfet_03v3
spiceprefix=X
}
C {ipin.sym} 340 -20 0 0 {name=p19 lab=b}
C {ipin.sym} 540 10 0 0 {name=p2 lab=ena<1>}
C {symbols/pfet_03v3.sym} 460 30 2 0 {name=M2
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
C {symbols/pfet_03v3.sym} -20 50 2 0 {name=M4
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
C {lab_wire.sym} 440 90 0 0 {name=p4 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 660 -60 0 0 {name=p7 sig_type=std_logic lab=g}
C {lab_wire.sym} 580 10 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {lab_wire.sym} -280 -40 0 0 {name=p14 sig_type=std_logic lab=g}
C {lab_wire.sym} -40 100 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 590 -140 0 0 {name=p20 sig_type=std_logic lab=VDD}
C {libs/core_digital/schem/transmission_gate.sym} -160 -40 0 0 {name=x1}
C {libs/core_digital/schem/transmission_gate.sym} 540 -60 0 1 {name=x2}

v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Programmable NFET} -390 -320 0 0 0.5 0.5 {}
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
N 210 -90 210 -40 {lab=d}
N 210 20 210 60 {lab=s}
N 210 -10 240 -10 {lab=b}
N 140 -10 170 -10 {lab=default_g}
N 170 -300 170 -270 {lab=VDD}
N 180 -170 180 -140 {lab=VSS}
N 80 -220 130 -220 {lab=g}
N 300 -220 340 -220 {lab=default_g}
N 220 -200 220 -170 {lab=#net3}
N 220 -310 220 -270 {lab=#net4}
N 220 -540 220 -310 {lab=#net4}
N -10 -540 220 -540 {lab=#net4}
N 220 -170 220 -150 {lab=#net3}
N -130 -460 -130 -430 {lab=VSS}
N -130 -640 -130 -610 {lab=VDD}
N -280 -570 -210 -570 {lab=ena_bar<1>}
N -280 -500 -210 -500 {lab=ena_bar<0>}
N 220 -350 350 -350 {lab=#net4}
N 520 -360 520 -150 {lab=#net3}
N 220 -150 520 -150 {lab=#net3}
N 400 -310 400 -280 {lab=VSS}
N 400 -420 400 -390 {lab=VDD}
N 340 -240 430 -240 {lab=default_g}
N 340 -240 340 -220 {lab=default_g}
N 430 -180 430 -130 {lab=VSS}
N 180 -130 430 -130 {lab=VSS}
N 180 -140 180 -130 {lab=VSS}
N 410 -210 430 -210 {lab=VSS}
N 410 -210 410 -180 {lab=VSS}
N 410 -180 410 -160 {lab=VSS}
N 410 -160 430 -160 {lab=VSS}
N 470 -260 470 -210 {lab=#net4}
N 300 -260 470 -260 {lab=#net4}
N 300 -350 300 -260 {lab=#net4}
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
C {symbols/nfet_03v3.sym} 190 -10 0 0 {name=M5
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
C {lab_wire.sym} 230 -10 0 0 {name=p13 sig_type=std_logic lab=b}
C {lab_wire.sym} 160 -10 0 0 {name=p22 sig_type=std_logic lab=default_g}
C {libs/core_digital/schem/transmission_gate.sym} 220 -220 0 0 {name=x3}
C {lab_wire.sym} 170 -290 0 0 {name=p16 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 180 -150 0 0 {name=p20 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 110 -220 0 0 {name=p21 sig_type=std_logic lab=g
}
C {lab_wire.sym} 330 -220 0 0 {name=p23 sig_type=std_logic lab=default_g}
C {libs/core_digital/schem/NAND2.sym} -130 -540 0 0 {name=x5}
C {lab_wire.sym} -130 -440 0 0 {name=p25 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} -130 -630 0 0 {name=p27 sig_type=std_logic lab=VDD}
C {libs/core_digital/schem/inv1.sym} 410 -340 0 0 {name=x4}
C {lab_wire.sym} 400 -290 0 0 {name=p24 sig_type=std_logic lab=VSS
}
C {lab_wire.sym} 400 -410 0 0 {name=p26 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -250 -500 0 0 {name=p28 sig_type=std_logic lab=ena_bar<0>}
C {lab_wire.sym} -240 -570 0 0 {name=p29 sig_type=std_logic lab=ena_bar<1>}
C {symbols/nfet_03v3.sym} 450 -210 0 1 {name=M6
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

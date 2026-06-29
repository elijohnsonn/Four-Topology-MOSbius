v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {D Flip Flop} 240 -330 0 0 0.5 0.5 {}
N 180 -50 180 -0 {lab=VSS}
N 180 -260 180 -220 {lab=VDD}
N 60 -170 100 -170 {lab=D}
N 60 -90 100 -90 {lab=CLK}
N 290 -90 290 80 {lab=#net1}
N 290 -90 360 -90 {lab=#net1}
N 120 -10 120 90 {lab=CLK}
N 100 -10 120 -10 {lab=CLK}
N 100 -90 100 -10 {lab=CLK}
N 170 20 170 50 {lab=VDD}
N 270 -180 360 -180 {lab=#net2}
N 360 -180 360 -170 {lab=#net2}
N 440 -50 440 130 {lab=VSS}
N 170 130 440 130 {lab=VSS}
N 530 -100 560 -100 {lab=Q_bar}
N 530 -180 560 -180 {lab=xxx}
N 440 -240 440 -220 {lab=VDD}
N 180 -240 440 -240 {lab=VDD}
C {libs/core_digital/D_latch1.sym} 180 -140 0 0 {name=x1}
C {libs/core_digital/inv1.sym} 180 100 0 0 {name=x6}
C {ipin.sym} 60 -170 0 0 {name=p1 lab=D}
C {ipin.sym} 60 -90 0 0 {name=p2 lab=CLK}
C {ipin.sym} 180 -260 0 0 {name=p3 lab=VDD}
C {ipin.sym} 180 -10 0 0 {name=p4 lab=VSS}
C {lab_wire.sym} 180 -30 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 180 -230 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 170 40 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {libs/core_digital/D_latch1.sym} 440 -140 0 0 {name=x2}
C {lab_wire.sym} 360 130 0 0 {name=p5 sig_type=std_logic lab=VSS}
C {opin.sym} 560 -180 0 0 {name=p6 lab=Q}
C {opin.sym} 560 -100 0 0 {name=p9 lab=Q_bar}

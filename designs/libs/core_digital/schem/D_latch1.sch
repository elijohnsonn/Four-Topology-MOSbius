v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {D Latch} 220 -320 0 0 0.5 0.5 {}
N 140 -10 140 30 {lab=#net1}
N 140 30 210 30 {lab=#net1}
N -30 -190 -30 -0 {lab=D}
N -30 -190 200 -190 {lab=D}
N 20 -250 20 -40 {lab=Vdd}
N 20 -250 280 -250 {lab=Vdd}
N 280 -250 280 -230 {lab=Vdd}
N 280 -250 280 -230 {lab=Vdd}
N 280 -250 590 -250 {lab=Vdd}
N 590 -250 590 -230 {lab=Vdd}
N 290 -10 600 -10 {lab=Vdd}
N 280 -80 590 -80 {lab=Vss}
N 460 -80 590 -80 {lab=Vss}
N 460 140 600 140 {lab=Vss}
N 290 140 600 140 {lab=Vss}
N 30 140 290 140 {lab=Vss}
N 30 50 30 140 {lab=Vss}
N 20 50 30 50 {lab=Vss}
N 20 40 20 50 {lab=Vss}
N 160 100 210 100 {lab=clk}
N 160 -120 160 100 {lab=clk}
N 160 -120 200 -120 {lab=clk}
N 410 100 520 100 {lab=#net2}
N 410 60 410 100 {lab=#net2}
N 400 -190 400 -160 {lab=#net3}
N 400 -190 510 -190 {lab=#net3}
N 480 -120 510 -120 {lab=Q_bar}
N 480 -120 480 -40 {lab=Q_bar}
N 480 -40 720 -40 {lab=Q_bar}
N 720 -40 720 60 {lab=Q_bar}
N 720 60 770 60 {lab=Q_bar}
N 490 30 520 30 {lab=Q}
N 490 -60 490 30 {lab=Q}
N 490 -60 710 -60 {lab=Q}
N 710 -160 710 -60 {lab=Q}
N 710 -160 750 -160 {lab=Q}
C {ipin.sym} -30 -190 0 0 {name=p1 lab=D}
C {ipin.sym} 20 -250 0 0 {name=p2 lab=Vdd
}
C {ipin.sym} 30 140 0 0 {name=p3 lab=Vss}
C {ipin.sym} 160 80 0 0 {name=p4 lab=clk}
C {opin.sym} 750 -160 0 0 {name=p5 lab=Q}
C {opin.sym} 770 60 0 0 {name=p6 lab=Q_bar}
C {lab_wire.sym} 420 -80 0 0 {name=p7 sig_type=std_logic lab=Vss}
C {lab_wire.sym} 420 -10 0 0 {name=p8 sig_type=std_logic lab=Vdd}
C {lab_wire.sym} 440 -250 0 0 {name=p9 sig_type=std_logic lab=Vdd}
C {lab_wire.sym} 410 140 0 0 {name=p10 sig_type=std_logic lab=Vss}
C {libs/core_digital/schem/NAND2.sym} 280 -160 0 0 {name=x1}
C {libs/core_digital/schem/NAND2.sym} 290 60 0 0 {name=x2}
C {libs/core_digital/schem/NAND2.sym} 600 60 0 0 {name=x3}
C {libs/core_digital/schem/NAND2.sym} 590 -160 0 0 {name=x4}
C {libs/core_digital/schem/inv1.sym} 30 10 0 0 {name=x5}

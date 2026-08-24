v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 190 -230 190 -200 {lab=VSS}
N 210 -230 210 -200 {lab=VDD}
N 800 230 830 230 {lab=CLK_PD}
N 800 230 800 260 {lab=CLK_PD}
N 800 260 830 260 {lab=CLK_PD}
N 960 330 990 330 {lab=PROG_ENA_PU}
N 990 330 1000 330 {lab=PROG_ENA_PU}
N 960 370 1000 370 {lab=PROG_ENA_PD}
N 1150 260 1190 260 {lab=SCAN_IN_PU}
N 1150 220 1190 220 {lab=SCAN_IN_PU}
N 1150 230 1150 260 {lab=SCAN_IN_PU}
N 1150 220 1150 230 {lab=SCAN_IN_PU}
N 1150 70 1190 70 {lab=SCAN_OUT_IE}
N 1150 70 1150 130 {lab=SCAN_OUT_IE}
N 1150 130 1190 130 {lab=SCAN_OUT_IE}
N 1150 100 1190 100 {lab=SCAN_OUT_IE}
N 1150 30 1190 30 {lab=SCAN_OUT_IE}
N 1150 30 1150 70 {lab=SCAN_OUT_IE}
N 1150 -40 1190 -40 {lab=SCAN_OUT_IE}
N 1150 -40 1150 30 {lab=SCAN_OUT_IE}
N 1150 0 1190 -0 {lab=SCAN_OUT_IE}
N 1150 -160 1190 -160 {lab=SCAN_OUT_IN}
N 1170 -130 1190 -130 {lab=SCAN_OUT_OE}
N 1170 -130 1170 -90 {lab=SCAN_OUT_OE}
N 1170 -90 1190 -90 {lab=SCAN_OUT_OE}
C {libs/core_tb/schem/DUT.sym} 280 10 0 0 {name=x1}
C {iopin.sym} 50 140 0 1 {name=p1 lab=PROG_ENA}
C {iopin.sym} 530 130 0 0 {name=p2 lab=OUT_CS}
C {iopin.sym} 530 70 0 0 {name=p3 lab=OUT_TELESCOPIC}
C {iopin.sym} 530 10 0 0 {name=p4 lab=OUT_5T}
C {iopin.sym} 530 -50 0 0 {name=p5 lab=OUT_FOLDED}
C {iopin.sym} 530 -110 0 0 {name=p6 lab=SCAN_OUT_OUT}
C {iopin.sym} 50 90 0 1 {name=p7 lab=IBIAS}
C {iopin.sym} 50 60 0 1 {name=p8 lab=IN_CS}
C {iopin.sym} 50 30 0 1 {name=p9 lab=INN_TELESCOPIC}
C {iopin.sym} 50 0 0 1 {name=p10 lab=INP_TELESCOPIC}
C {iopin.sym} 50 -30 0 1 {name=p11 lab=INN_5T}
C {iopin.sym} 50 -60 0 1 {name=p12 lab=INP_5T}
C {iopin.sym} 50 -90 0 1 {name=p13 lab=INN_FOLDED}
C {iopin.sym} 50 -120 0 1 {name=p14 lab=INP_FOLDED}
C {iopin.sym} 340 -200 1 1 {name=p15 lab=CLK}
C {iopin.sym} 370 -200 1 1 {name=p16 lab=SCAN_IN}
C {iopin.sym} 190 -230 1 1 {name=p17 lab=VSS}
C {iopin.sym} 210 -230 1 1 {name=p19 lab=VDD}
C {iopin.sym} 1190 -160 0 0 {name=p18 lab=SCAN_OUT_IN}
C {iopin.sym} 1190 -130 0 0 {name=p20 lab=SCAN_OUT_OE}
C {iopin.sym} 1190 -90 0 0 {name=p21 lab=SCAN_OUT_SL}
C {iopin.sym} 1190 -40 0 0 {name=p22 lab=SCAN_OUT_IE}
C {iopin.sym} 1190 0 0 0 {name=p23 lab=SCAN_OUT_PD}
C {iopin.sym} 1190 30 0 0 {name=p24 lab=SCAN_OUT_PDRV1}
C {iopin.sym} 1190 70 0 0 {name=p25 lab=SCAN_OUT_PDRV0}
C {iopin.sym} 1190 100 0 0 {name=p26 lab=SCAN_OUT_PU}
C {iopin.sym} 1190 130 0 0 {name=p27 lab=SCAN_OUT_CS}
C {iopin.sym} 830 230 0 0 {name=p28 lab=CLK_PD}
C {iopin.sym} 830 260 0 0 {name=p29 lab=CLK_PU}
C {iopin.sym} 1190 220 0 0 {name=p30 lab=SCAN_IN_PU}
C {iopin.sym} 1190 260 0 0 {name=p31 lab=SCAN_IN_PD}
C {iopin.sym} 1000 330 0 0 {name=p32 lab=PROG_ENA_PU}
C {iopin.sym} 1000 370 0 0 {name=p33 lab=PROG_ENA_PD}
C {lab_wire.sym} 800 240 0 0 {name=p34 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1150 220 0 0 {name=p35 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1150 60 0 0 {name=p36 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 960 330 0 0 {name=p37 sig_type=std_logic lab=VSS}
C {lab_wire.sym} 960 370 0 0 {name=p39 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 1170 -100 0 0 {name=p38 sig_type=std_logic lab=VDD}

v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 450 -300 450 -240 {lab=VDD}
N 330 -300 330 -240 {lab=VSS}
N 670 -300 670 -240 {lab=!EN0}
N 550 -300 550 -240 {lab=EN0}
N 880 -300 880 -240 {lab=!EN1}
N 760 -300 760 -240 {lab=EN1}
N -20 -90 -20 -0 {lab=OUT}
N -20 -50 180 -50 {lab=OUT}
N -190 -190 -90 -190 {lab=IN}
N -0 -330 -0 -290 {lab=VDD}
N -30 -330 -30 -290 {lab=VDD}
N 50 -180 100 -180 {lab=VDD}
N -130 -220 -90 -220 {lab=!EN0}
N -130 -250 -90 -250 {lab=EN0}
N -130 -160 -90 -160 {lab=EN1}
N -130 -130 -90 -130 {lab=!EN1}
N -120 160 -80 160 {lab=!EN1}
N -120 130 -80 130 {lab=EN1}
N -120 70 -80 70 {lab=!EN0}
N -120 40 -80 40 {lab=EN0}
N -240 100 -80 100 {lab=VG_BIAS}
N 10 -10 10 -0 {lab=VDD}
N 10 -10 50 -10 {lab=VDD}
N -20 200 -20 240 {lab=VSS}
N 10 200 10 240 {lab=VSS}
N 0 -90 0 -80 {lab=VSS}
N -0 -80 50 -80 {lab=VSS}
N 60 110 110 110 {lab=VSS}
C {libs/core_digital/schem/programmable_nfet.sym} 40 110 0 0 {name=x1 width=23u length=0.5u nf=1 mult=1}
C {libs/core_digital/schem/programmable_pfet.sym} 30 -190 0 0 {name=x2 width=7.8u length=0.5u nf=1 mult=10}
C {lab_pin.sym} 450 -300 0 0 {name=p36 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 330 -300 0 0 {name=p37 sig_type=std_logic lab=VSS}
C {iopin.sym} 330 -240 1 0 {name=p38 lab=VSS}
C {iopin.sym} 450 -240 1 0 {name=p39 lab=VDD}
C {iopin.sym} 550 -240 1 0 {name=p42 lab=EN0}
C {iopin.sym} 670 -240 1 0 {name=p43 lab=!EN0}
C {iopin.sym} 760 -240 1 0 {name=p46 lab=EN1}
C {iopin.sym} 880 -240 1 0 {name=p47 lab=!EN1}
C {lab_pin.sym} 550 -300 0 0 {name=p40 sig_type=std_logic lab=EN0}
C {lab_pin.sym} 670 -300 0 0 {name=p41 sig_type=std_logic lab=!EN0}
C {lab_pin.sym} 760 -300 0 0 {name=p44 sig_type=std_logic lab=EN1}
C {lab_pin.sym} 880 -300 0 0 {name=p45 sig_type=std_logic lab=!EN1}
C {iopin.sym} 180 -50 0 0 {name=p3 lab=OUT
}
C {iopin.sym} -190 -190 2 0 {name=p5 lab=IN
}
C {lab_pin.sym} -30 -330 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 0 -330 0 1 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 100 -180 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -130 -220 0 0 {name=p6 sig_type=std_logic lab=!EN0}
C {lab_pin.sym} -130 -250 0 0 {name=p7 sig_type=std_logic lab=EN0}
C {lab_pin.sym} -130 -160 0 0 {name=p8 sig_type=std_logic lab=EN1}
C {lab_pin.sym} -130 -130 0 0 {name=p9 sig_type=std_logic lab=!EN1}
C {lab_pin.sym} -120 40 0 0 {name=p10 sig_type=std_logic lab=EN0}
C {lab_pin.sym} -120 70 0 0 {name=p11 sig_type=std_logic lab=!EN0}
C {lab_pin.sym} -120 130 0 0 {name=p12 sig_type=std_logic lab=EN1}
C {lab_pin.sym} -120 160 0 0 {name=p13 sig_type=std_logic lab=!EN1}
C {iopin.sym} -240 100 2 0 {name=p71 lab=VG_BIAS}
C {lab_pin.sym} 50 -10 0 1 {name=p14 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -20 240 0 0 {name=p15 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 10 240 0 1 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 50 -80 0 1 {name=p17 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 110 110 0 1 {name=p18 sig_type=std_logic lab=VSS}

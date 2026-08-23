v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -440 -290 -310 -290 {lab=IN}
N -410 10 -310 10 {lab=VCM}
N -140 10 -60 10 {lab=OUT}
N -220 30 -220 70 {lab=CLK_ENA}
N -260 60 -260 80 {lab=GND}
N -270 -70 -270 -40 {lab=VDD}
N -220 -80 -220 -40 {lab=!CLK_ENA}
N -220 -270 -220 -230 {lab=!CLK_ENA}
N -260 -240 -260 -220 {lab=GND}
N -270 -370 -270 -340 {lab=VDD}
N -220 -380 -220 -340 {lab=CLK_ENA}
N -60 -290 -60 10 {lab=OUT}
N -140 -290 -60 -290 {lab=OUT}
N -60 -160 -20 -160 {lab=OUT}
N -30 -160 -30 -130 {lab=OUT}
N -30 -70 -30 -30 {lab=GND}
C {libs/core_digital/schem/transmission_gate.sym} -220 10 0 0 {name=x2}
C {gnd.sym} -260 80 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -270 -70 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -220 -80 0 1 {name=p22 sig_type=std_logic lab=!CLK_ENA}
C {lab_pin.sym} -220 70 0 1 {name=p23 sig_type=std_logic lab=CLK_ENA}
C {libs/core_digital/schem/transmission_gate.sym} -220 -290 0 0 {name=x5}
C {gnd.sym} -260 -220 0 0 {name=l4 lab=GND}
C {ipin.sym} -440 -290 0 0 {name=p2 lab=IN}
C {opin.sym} -20 -160 0 0 {name=p1 lab=OUT}
C {ipin.sym} -410 10 0 0 {name=p3 lab=VCM}
C {ipin.sym} -270 -370 0 0 {name=p5 lab=VDD}
C {ipin.sym} -220 -380 0 1 {name=p4 lab=CLK_ENA}
C {ipin.sym} -220 -230 1 1 {name=p7 lab=!CLK_ENA}
C {capa.sym} -30 -100 0 0 {name=C
m=1
value=1n
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -30 -30 0 0 {name=l8 lab=GND}

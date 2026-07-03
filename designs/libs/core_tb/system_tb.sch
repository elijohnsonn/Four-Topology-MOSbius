v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 50 -290 50 -250 {lab=#net1}
N 80 -290 80 -250 {lab=#net2}
N 640 -100 640 -50 {lab=VDD}
N 640 10 640 50 {lab=GND}
N -100 -280 -100 -250 {lab=GND}
N -150 -290 -150 -270 {lab=GND}
N -150 -290 -100 -290 {lab=GND}
N -100 -290 -100 -280 {lab=GND}
N 540 10 540 50 {lab=GND}
N 540 -100 540 -50 {lab=VDD}
N -80 -290 -80 -250 {lab=VDD}
C {libs/core_tb/DUT.sym} -10 -40 0 0 {name=x1}
C {vsource.sym} 640 -20 0 0 {name=V3 value="PWL(0 0 0.1499m 0 0.15m 3.3 0.24999m 3.3 0.25m 0)" savecurrent=false}
C {gnd.sym} 640 50 0 0 {name=l1 lab=GND}
C {gnd.sym} -150 -270 0 0 {name=l2 lab=GND}
C {vsource.sym} 540 -20 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 540 50 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 540 -100 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -80 -290 0 1 {name=p1 sig_type=std_logic lab=VDD}

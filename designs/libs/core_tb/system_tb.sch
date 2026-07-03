v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 510 -260 510 180 {}
L 4 510 180 1180 180 {}
L 4 1180 -260 1180 180 {}
L 4 510 -260 1180 -260 {}
L 4 -1450 -330 -1450 620 {}
L 4 -1450 620 360 620 {}
L 4 360 -390 360 620 {}
L 4 -1450 -390 360 -390 {}
L 4 -1450 -390 -1450 -320 {}
L 4 520 420 520 700 {}
L 4 520 700 1210 700 {}
L 4 1210 420 1210 700 {}
L 4 520 420 1210 420 {}
T {CLOCK GENERATION} 560 -420 0 0 1 1 {}
T {Artificially generate a clock signal and ensure it 
turns off after around .425 ms, which is when the 
scan in signal has fully propogated through the scan chain} 540 -350 0 0 0.4 0.4 {}
T {VDD, GND, SCAN INPUT} 550 290 0 0 1 1 {}
T {Scan chain input artificially generated to 
enable folded cascode 3x sizing} 630 360 0 0 0.4 0.4 {}
T {R2 = 5K} -460 410 0 0 0.75 0.75 {}
T {R1 = 1K} -1020 -50 0 0 0.75 0.75 {}
T {CL = 120p} 120 0 0 0 0.75 0.75 {}
T {DC = 1.65V
500Hz Frequency 
50mV Amplitude
1ms Delay} -1190 260 0 0 0.5 0.5 {}
T {DC = 1.65V} -1380 260 0 0 0.5 0.5 {}
T {IBIAS1=IBIAS2=100u} -800 280 0 0 0.4 0.4 {}
N -350 -270 -350 -230 {lab=CLK}
N -320 -270 -320 -230 {lab=SCAN_IN}
N 820 490 820 540 {lab=SCAN_IN}
N 820 600 820 640 {lab=GND}
N -500 -260 -500 -230 {lab=GND}
N -550 -270 -550 -250 {lab=GND}
N -550 -270 -500 -270 {lab=GND}
N -500 -270 -500 -260 {lab=GND}
N 670 600 670 640 {lab=GND}
N 670 490 670 540 {lab=VDD}
N -480 -270 -480 -230 {lab=VDD}
N 640 -50 640 0 {lab=#net1}
N 640 60 640 100 {lab=GND}
N 640 -60 740 -60 {lab=#net1}
N 640 -60 640 -50 {lab=#net1}
N 910 -60 990 -60 {lab=CLK}
N 830 -190 830 -110 {lab=#net2}
N 830 -210 930 -210 {lab=#net2}
N 930 -210 930 -190 {lab=#net2}
N 930 -130 930 -110 {lab=GND}
N 830 -210 830 -190 {lab=#net2}
N 830 -40 830 0 {lab=#net3}
N 830 0 880 0 {lab=#net3}
N 880 0 880 30 {lab=#net3}
N 880 90 880 110 {lab=GND}
N 790 -10 790 10 {lab=GND}
N 780 -140 780 -110 {lab=VDD}
N -730 60 -640 60 {lab=#net4}
N -730 60 -730 160 {lab=#net4}
N -680 90 -640 90 {lab=#net5}
N -680 90 -680 160 {lab=#net5}
N -730 220 -730 250 {lab=VDD}
N -680 220 -680 250 {lab=VDD}
N -810 -150 -640 -150 {lab=INP_FOLDED}
N -750 -120 -640 -120 {lab=#net6}
N -160 -80 -110 -80 {lab=OUT_FOLDED}
N -110 -80 20 -80 {lab=OUT_FOLDED}
N -30 -80 -30 400 {lab=OUT_FOLDED}
N -830 60 -830 400 {lab=#net6}
N -830 -70 -830 0 {lab=#net6}
N -1310 180 -1310 210 {lab=GND}
N 20 -80 80 -80 {lab=OUT_FOLDED}
N -1310 -150 -1310 50 {lab=INP_FOLDED}
N -1170 -150 -810 -150 {lab=INP_FOLDED}
N -1310 50 -1310 80 {lab=INP_FOLDED}
N 40 -80 40 -50 {lab=OUT_FOLDED}
N 40 10 40 50 {lab=GND}
N -1310 80 -1310 120 {lab=INP_FOLDED}
N -830 0 -830 60 {lab=#net6}
N -830 -120 -750 -120 {lab=#net6}
N -830 -120 -830 -70 {lab=#net6}
N -910 -120 -830 -120 {lab=#net6}
N -1020 -120 -970 -120 {lab=INN_FOLDED}
N -1170 -120 -1170 -70 {lab=INN_FOLDED}
N -1170 180 -1170 210 {lab=GND}
N -240 500 -30 500 {lab=OUT_FOLDED}
N -30 400 -30 500 {lab=OUT_FOLDED}
N -370 500 -240 500 {lab=OUT_FOLDED}
N -830 500 -430 500 {lab=#net6}
N -830 400 -830 500 {lab=#net6}
N -1310 -150 -1260 -150 {lab=INP_FOLDED}
N -1170 -120 -1130 -120 {lab=INN_FOLDED}
N -1260 -150 -1170 -150 {lab=INP_FOLDED}
N -1130 -120 -1020 -120 {lab=INN_FOLDED}
N -1170 -70 -1170 120 {lab=INN_FOLDED}
C {libs/core_tb/DUT.sym} -410 -20 0 0 {name=x1}
C {vsource.sym} 820 570 0 0 {name=V3 value="PWL(0 0 0.34999m 0 0.35m 3.3 0.499999m 3.3 0.5m 0)" savecurrent=false}
C {gnd.sym} 820 640 0 0 {name=l1 lab=GND}
C {gnd.sym} -550 -250 0 0 {name=l2 lab=GND}
C {vsource.sym} 670 570 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 670 640 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 670 490 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -480 -270 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 820 490 0 1 {name=p2 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -320 -270 0 1 {name=p3 sig_type=std_logic lab=SCAN_IN}
C {vsource.sym} 640 30 0 0 {name=V2 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} 640 100 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 990 -60 0 1 {name=p4 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -350 -270 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 830 -60 0 0 {name=x2}
C {vsource.sym} 930 -160 0 0 {name=V4 value="PWL(0 0 0.42501m 0 0.42502m 3.3)" savecurrent=false}
C {gnd.sym} 930 -110 0 0 {name=l5 lab=GND}
C {vsource.sym} 880 60 0 0 {name=V5 value="PWL(0 3.3 0.42501m 3.3 0.42502m 0)" savecurrent=false}
C {gnd.sym} 880 110 0 0 {name=l6 lab=GND}
C {gnd.sym} 790 10 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 780 -140 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {isource.sym} -730 190 2 0 {name=IBIAS1 value=100u}
C {isource.sym} -680 190 2 1 {name=IBIAS2 value=100u}
C {lab_pin.sym} -730 250 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -680 250 0 1 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 80 -80 0 1 {name=p11 sig_type=std_logic lab=OUT_FOLDED}
C {devices/code_shown.sym} 1290 0 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 1290 110 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control

tran 1u 10m
plot v(OUT_FOLDED) v(INN_FOLDED)

meas tran v_out find v(out_folded) at=1.5m
meas tran v_inn find v(inn_folded) at=1.5m
meas tran v_inp find v(inp_folded) at=1.5m
print v_out v_inn v_inp

.endc
"}
C {gnd.sym} -1310 210 0 0 {name=l9 lab=GND}
C {vsource.sym} -1310 150 0 0 {name=V7 value=1.65 savecurrent=false}
C {capa.sym} 40 -20 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 40 50 0 0 {name=l8 lab=GND}
C {res.sym} -940 -120 1 0 {name=R2
value=1k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -1170 150 0 0 {name=V6 value= "dc 1.65 ac 0 sin(1.65 50m 500 1m)" savecurrent=false}
C {gnd.sym} -1170 210 0 0 {name=l10 lab=GND}
C {lab_pin.sym} -1170 -120 0 0 {name=p13 sig_type=std_logic lab=INN_FOLDED}
C {lab_pin.sym} -1310 -150 0 0 {name=p12 sig_type=std_logic lab=INP_FOLDED}
C {res.sym} -400 500 1 0 {name=R1
value=5k
footprint=1206
device=resistor
m=1}

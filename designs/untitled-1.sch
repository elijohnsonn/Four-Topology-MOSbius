v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -1850 -400 -1850 550 {}
L 4 -1850 550 -40 550 {}
L 4 -40 -460 -40 550 {}
L 4 -1850 -460 -40 -460 {}
L 4 -1850 -460 -1850 -390 {}
L 4 120 270 120 550 {}
L 4 120 550 810 550 {}
L 4 900 270 900 550 {}
L 4 120 270 810 270 {}
L 4 810 270 900 270 {}
L 4 810 550 900 550 {}
L 4 80 -390 80 50 {}
L 4 80 50 750 50 {}
L 4 1120 -390 1120 50 {}
L 4 80 -390 750 -390 {}
L 4 750 50 1120 50 {}
L 4 750 -390 1120 -390 {}
T {VDD, GND, SCAN INPUT, PROG_ENA} 100 140 0 0 1 1 {}
T {Scan chain input artificially generated to enable folded cascode 1x sizing
prog_ena sets default (low) or program (high)} 220 210 0 0 0.4 0.4 {}
T {R2 = 500K} -880 350 0 0 0.75 0.75 {}
T {R1 = 100K} -1460 -120 0 0 0.75 0.75 {}
T {CL = 120p} -280 -70 0 0 0.75 0.75 {}
T {DC = 1.65V
500Hz Frequency 
50mV Amplitude
1ms Delay} -1590 190 0 0 0.5 0.5 {}
T {DC = 1.65V} -1780 190 0 0 0.5 0.5 {}
T {IBIAS = 100u} -1200 210 0 0 0.4 0.4 {}
T {IMPLEMENTATION} -1170 -630 0 0 1 1 {}
T {Configure the folded cascode in 1× mode 
as an inverting amplifier to amplify a 
sine wave input by 5 while driving a 
120pF capacitive load.} -1160 -570 0 0 0.4 0.4 {}
T {CLOCK GENERATION} 340 -550 0 0 1 1 {}
T {Artificially generate a clock signal and ensure it 
turns off after around .425ms, which is when the 
scan in signal has fully propogated through the scan chain} 320 -480 0 0 0.4 0.4 {}
N -750 -340 -750 -300 {lab=CLK}
N -720 -340 -720 -300 {lab=SCAN_IN}
N 420 340 420 390 {lab=SCAN_IN}
N 420 450 420 490 {lab=GND}
N -900 -330 -900 -300 {lab=GND}
N -950 -340 -950 -320 {lab=GND}
N -950 -340 -900 -340 {lab=GND}
N -900 -340 -900 -330 {lab=GND}
N 270 450 270 490 {lab=GND}
N 270 340 270 390 {lab=VDD}
N -880 -340 -880 -300 {lab=VDD}
N -1130 -10 -1040 -10 {lab=#net1}
N -1130 -10 -1130 90 {lab=#net1}
N -1130 150 -1130 180 {lab=VDD}
N -1210 -220 -1040 -220 {lab=INP_FOLDED}
N -1150 -190 -1040 -190 {lab=#net2}
N -560 -150 -510 -150 {lab=OUT_FOLDED}
N -510 -150 -380 -150 {lab=OUT_FOLDED}
N -430 -150 -430 330 {lab=OUT_FOLDED}
N -1230 -10 -1230 330 {lab=#net2}
N -1230 -140 -1230 -70 {lab=#net2}
N -1710 110 -1710 140 {lab=GND}
N -380 -150 -320 -150 {lab=OUT_FOLDED}
N -1710 -220 -1710 -20 {lab=INP_FOLDED}
N -1570 -220 -1210 -220 {lab=INP_FOLDED}
N -1710 -20 -1710 10 {lab=INP_FOLDED}
N -360 -150 -360 -120 {lab=OUT_FOLDED}
N -360 -60 -360 -20 {lab=GND}
N -1710 10 -1710 50 {lab=INP_FOLDED}
N -1230 -70 -1230 -10 {lab=#net2}
N -1230 -190 -1150 -190 {lab=#net2}
N -1230 -190 -1230 -140 {lab=#net2}
N -1310 -190 -1230 -190 {lab=#net2}
N -1420 -190 -1370 -190 {lab=INN_FOLDED}
N -1570 -190 -1570 -140 {lab=INN_FOLDED}
N -1570 110 -1570 140 {lab=GND}
N -640 430 -430 430 {lab=OUT_FOLDED}
N -430 330 -430 430 {lab=OUT_FOLDED}
N -770 430 -640 430 {lab=OUT_FOLDED}
N -1230 430 -830 430 {lab=#net2}
N -1230 330 -1230 430 {lab=#net2}
N -1710 -220 -1660 -220 {lab=INP_FOLDED}
N -1570 -190 -1530 -190 {lab=INN_FOLDED}
N -1660 -220 -1570 -220 {lab=INP_FOLDED}
N -1530 -190 -1420 -190 {lab=INN_FOLDED}
N -1570 -140 -1570 50 {lab=INN_FOLDED}
N -1100 40 -1040 40 {lab=PROG_ENA}
N 790 340 790 390 {lab=PROG_ENA}
N 790 450 790 490 {lab=GND}
N 790 330 790 340 {lab=PROG_ENA}
N 210 -180 210 -130 {lab=#net3}
N 210 -70 210 -30 {lab=GND}
N 210 -190 310 -190 {lab=#net3}
N 210 -190 210 -180 {lab=#net3}
N 480 -190 560 -190 {lab=CLK}
N 400 -320 400 -240 {lab=!CLK_ENA}
N 400 -340 500 -340 {lab=!CLK_ENA}
N 500 -340 500 -320 {lab=!CLK_ENA}
N 500 -260 500 -240 {lab=GND}
N 400 -340 400 -320 {lab=!CLK_ENA}
N 400 -170 400 -130 {lab=CLK_ENA}
N 400 -130 450 -130 {lab=CLK_ENA}
N 450 -130 450 -100 {lab=CLK_ENA}
N 450 -40 450 -20 {lab=GND}
N 360 -140 360 -120 {lab=GND}
N 350 -270 350 -240 {lab=VDD}
N 710 -190 710 -140 {lab=GND}
N 710 -140 710 -100 {lab=GND}
N 710 -200 810 -200 {lab=GND}
N 710 -200 710 -190 {lab=GND}
N 980 -200 1060 -200 {lab=CLK}
N 900 -180 900 -140 {lab=!CLK_ENA}
N 860 -150 860 -130 {lab=GND}
N 850 -280 850 -250 {lab=VDD}
N 900 -290 900 -250 {lab=CLK_ENA}
N 450 -130 520 -130 {lab=CLK_ENA}
N 500 -340 570 -340 {lab=!CLK_ENA}
C {vsource.sym} 420 420 0 0 {name=V3 value="PWL(0 0 0.39999m 0 0.4m 3.3 0.499999m 3.3 0.5m 0)" savecurrent=false}
C {gnd.sym} 420 490 0 0 {name=l1 lab=GND}
C {gnd.sym} -950 -320 0 0 {name=l2 lab=GND}
C {vsource.sym} 270 420 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 270 490 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 270 340 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -880 -340 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 420 340 0 1 {name=p2 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -720 -340 0 1 {name=p3 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -750 -340 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {isource.sym} -1130 120 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -1130 180 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -320 -150 0 1 {name=p11 sig_type=std_logic lab=OUT_FOLDED}
C {devices/code_shown.sym} 970 300 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 970 410 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control
tran 1u 5m

plot v(out_folded) v(inn_folded)

meas tran vout_pp pp v(out_folded) from=2m to=5m
meas tran vin_pp pp v(inn_folded) from=2m to=5m
let gain = vout_pp / vin_pp
print gain

meas tran vout_dc avg v(out_folded) from=2m to=5m
meas tran vin_dc avg v(inn_folded) from=2m to=5m
let dc_offset = vout_dc - vin_dc
let input_offset = dc_offset / 6
print vout_dc vin_dc dc_offset input_offset

let ideal_gain = 5
let gain_error_pct = (ideal_gain - gain) / ideal_gain * 100
print gain_error_pct

meas tran idd avg i(v1) from=2m to=5m
let power = abs(idd) * 3.3
print idd power
.endc
"}
C {gnd.sym} -1710 140 0 0 {name=l9 lab=GND}
C {vsource.sym} -1710 80 0 0 {name=V7 value=1.65 savecurrent=false}
C {capa.sym} -360 -90 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -360 -20 0 0 {name=l8 lab=GND}
C {res.sym} -1340 -190 1 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -1570 80 0 0 {name=V6 value= "dc 1.65 ac 0 sin(1.65 10m 500 1m)" savecurrent=false}
C {gnd.sym} -1570 140 0 0 {name=l10 lab=GND}
C {lab_pin.sym} -1570 -190 0 0 {name=p13 sig_type=std_logic lab=INN_FOLDED}
C {lab_pin.sym} -1710 -220 0 0 {name=p12 sig_type=std_logic lab=INP_FOLDED}
C {res.sym} -800 430 1 0 {name=R1
value=500k
footprint=1206
device=resistor
m=1}
C {libs/core_tb/schem/DUT.sym} -810 -90 0 0 {name=x1}
C {lab_pin.sym} -1100 40 3 0 {name=p7 sig_type=std_logic lab=PROG_ENA}
C {vsource.sym} 790 420 0 0 {name=V8 value=3.3 savecurrent=false}
C {gnd.sym} 790 490 0 0 {name=l11 lab=GND}
C {lab_pin.sym} 790 330 0 1 {name=p10 sig_type=std_logic lab=PROG_ENA}
C {vsource.sym} 210 -100 0 0 {name=V9 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} 210 -30 0 0 {name=l12 lab=GND}
C {lab_pin.sym} 560 -190 0 1 {name=p14 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 400 -190 0 0 {name=x3}
C {vsource.sym} 500 -290 0 0 {name=V10 value="PWL(0 0 0.42501m 0 0.42502m 3.3)" savecurrent=false}
C {gnd.sym} 500 -240 0 0 {name=l13 lab=GND}
C {vsource.sym} 450 -70 0 0 {name=V11 value="PWL(0 3.3 0.42501m 3.3 0.42502m 0)" savecurrent=false}
C {gnd.sym} 450 -20 0 0 {name=l14 lab=GND}
C {gnd.sym} 360 -120 0 0 {name=l15 lab=GND}
C {lab_pin.sym} 350 -270 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {gnd.sym} 710 -100 0 0 {name=l16 lab=GND}
C {lab_pin.sym} 1060 -200 0 1 {name=p16 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 900 -200 0 0 {name=x4}
C {gnd.sym} 860 -130 0 0 {name=l17 lab=GND}
C {lab_pin.sym} 850 -280 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 900 -290 0 1 {name=p18 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 900 -140 0 1 {name=p19 sig_type=std_logic lab=!CLK_ENA}
C {lab_pin.sym} 520 -130 0 1 {name=p20 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 570 -340 0 1 {name=p21 sig_type=std_logic lab=!CLK_ENA}

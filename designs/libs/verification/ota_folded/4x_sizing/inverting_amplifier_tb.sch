v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -1840 -420 -1840 530 {}
L 4 -1840 530 -30 530 {}
L 4 -30 -480 -30 530 {}
L 4 -1840 -480 -30 -480 {}
L 4 -1840 -480 -1840 -410 {}
L 4 270 250 270 530 {}
L 4 270 530 960 530 {}
L 4 1050 250 1050 530 {}
L 4 270 250 960 250 {}
L 4 960 250 1050 250 {}
L 4 960 530 1050 530 {}
L 4 90 -410 90 30 {}
L 4 90 30 760 30 {}
L 4 1130 -410 1130 30 {}
L 4 90 -410 760 -410 {}
L 4 760 30 1130 30 {}
L 4 760 -410 1130 -410 {}
T {VDD, GND, SCAN INPUT, PROGRAMMABLE ENABLE} 30 120 0 0 1 1 {}
T {Scan chain input artificially generated to enable folded cascode 1x sizing
prog_ena sets default (low) or program (high)} 310 190 0 0 0.4 0.4 {}
T {R2 = 500K} -870 330 0 0 0.75 0.75 {}
T {R1 = 100K} -1450 -140 0 0 0.75 0.75 {}
T {CL = 120p} -270 -90 0 0 0.75 0.75 {}
T {DC = 1.65V
500Hz Frequency 
50mV Amplitude
1ms Delay} -1580 170 0 0 0.5 0.5 {}
T {DC = 1.65V} -1770 170 0 0 0.5 0.5 {}
T {IBIAS = 100u} -1190 190 0 0 0.4 0.4 {}
T {IMPLEMENTATION} -1100 -660 0 0 1 1 {}
T {Configure the folded cascode in 3× mode 
as an inverting amplifier to amplify a 
sine wave input by 5 while driving a 
120pF capacitive load.} -1090 -600 0 0 0.4 0.4 {}
T {CLOCK GENERATION} 350 -570 0 0 1 1 {}
T {Artificially generate a clock signal and ensure it 
turns off after around .425ms, which is when the 
scan in signal has fully propogated through the scan chain} 330 -500 0 0 0.4 0.4 {}
N -740 -360 -740 -320 {lab=CLK}
N -710 -360 -710 -320 {lab=SCAN_IN}
N 570 320 570 370 {lab=SCAN_IN}
N 570 430 570 470 {lab=GND}
N -890 -350 -890 -320 {lab=GND}
N -940 -360 -940 -340 {lab=GND}
N -940 -360 -890 -360 {lab=GND}
N -890 -360 -890 -350 {lab=GND}
N 420 430 420 470 {lab=GND}
N 420 320 420 370 {lab=VDD}
N -870 -360 -870 -320 {lab=VDD}
N -1120 -30 -1030 -30 {lab=#net1}
N -1120 -30 -1120 70 {lab=#net1}
N -1120 130 -1120 160 {lab=VDD}
N -1200 -240 -1030 -240 {lab=INP_FOLDED}
N -1140 -210 -1030 -210 {lab=#net2}
N -550 -170 -500 -170 {lab=OUT_FOLDED}
N -500 -170 -370 -170 {lab=OUT_FOLDED}
N -420 -170 -420 310 {lab=OUT_FOLDED}
N -1220 -30 -1220 310 {lab=#net2}
N -1220 -160 -1220 -90 {lab=#net2}
N -1700 90 -1700 120 {lab=GND}
N -370 -170 -310 -170 {lab=OUT_FOLDED}
N -1700 -240 -1700 -40 {lab=INP_FOLDED}
N -1560 -240 -1200 -240 {lab=INP_FOLDED}
N -1700 -40 -1700 -10 {lab=INP_FOLDED}
N -350 -170 -350 -140 {lab=OUT_FOLDED}
N -350 -80 -350 -40 {lab=GND}
N -1700 -10 -1700 30 {lab=INP_FOLDED}
N -1220 -90 -1220 -30 {lab=#net2}
N -1220 -210 -1140 -210 {lab=#net2}
N -1220 -210 -1220 -160 {lab=#net2}
N -1300 -210 -1220 -210 {lab=#net2}
N -1410 -210 -1360 -210 {lab=INN_FOLDED}
N -1560 -210 -1560 -160 {lab=INN_FOLDED}
N -1560 90 -1560 120 {lab=GND}
N -630 410 -420 410 {lab=OUT_FOLDED}
N -420 310 -420 410 {lab=OUT_FOLDED}
N -760 410 -630 410 {lab=OUT_FOLDED}
N -1220 410 -820 410 {lab=#net2}
N -1220 310 -1220 410 {lab=#net2}
N -1700 -240 -1650 -240 {lab=INP_FOLDED}
N -1560 -210 -1520 -210 {lab=INN_FOLDED}
N -1650 -240 -1560 -240 {lab=INP_FOLDED}
N -1520 -210 -1410 -210 {lab=INN_FOLDED}
N -1560 -160 -1560 30 {lab=INN_FOLDED}
N -1090 20 -1030 20 {lab=PROG_ENA}
N 940 320 940 370 {lab=PROG_ENA}
N 940 430 940 470 {lab=GND}
N 940 310 940 320 {lab=PROG_ENA}
N 220 -200 220 -150 {lab=#net3}
N 220 -90 220 -50 {lab=GND}
N 220 -210 320 -210 {lab=#net3}
N 220 -210 220 -200 {lab=#net3}
N 490 -210 570 -210 {lab=CLK}
N 410 -340 410 -260 {lab=!CLK_ENA}
N 410 -360 510 -360 {lab=!CLK_ENA}
N 510 -360 510 -340 {lab=!CLK_ENA}
N 510 -280 510 -260 {lab=GND}
N 410 -360 410 -340 {lab=!CLK_ENA}
N 410 -190 410 -150 {lab=CLK_ENA}
N 410 -150 460 -150 {lab=CLK_ENA}
N 460 -150 460 -120 {lab=CLK_ENA}
N 460 -60 460 -40 {lab=GND}
N 370 -160 370 -140 {lab=GND}
N 360 -290 360 -260 {lab=VDD}
N 720 -210 720 -160 {lab=GND}
N 720 -160 720 -120 {lab=GND}
N 720 -220 820 -220 {lab=GND}
N 720 -220 720 -210 {lab=GND}
N 990 -220 1070 -220 {lab=CLK}
N 910 -200 910 -160 {lab=!CLK_ENA}
N 870 -170 870 -150 {lab=GND}
N 860 -300 860 -270 {lab=VDD}
N 910 -310 910 -270 {lab=CLK_ENA}
N 460 -150 530 -150 {lab=CLK_ENA}
N 510 -360 580 -360 {lab=!CLK_ENA}
C {gnd.sym} 570 470 0 0 {name=l1 lab=GND}
C {gnd.sym} -940 -340 0 0 {name=l2 lab=GND}
C {vsource.sym} 420 400 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 420 470 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 420 320 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -870 -360 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 570 320 0 1 {name=p2 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -710 -360 0 1 {name=p3 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -740 -360 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {isource.sym} -1120 100 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -1120 160 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -310 -170 0 1 {name=p11 sig_type=std_logic lab=OUT_FOLDED}
C {devices/code_shown.sym} 1400 -270 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 1400 -160 0 0 {name=Simulation1 only_toplevel=false 

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
C {gnd.sym} -1700 120 0 0 {name=l9 lab=GND}
C {vsource.sym} -1700 60 0 0 {name=V7 value=1.65 savecurrent=false}
C {capa.sym} -350 -110 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -350 -40 0 0 {name=l8 lab=GND}
C {res.sym} -1330 -210 1 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -1560 60 0 0 {name=V6 value= "dc 1.65 ac 0 sin(1.65 10m 500 1m)" savecurrent=false}
C {gnd.sym} -1560 120 0 0 {name=l10 lab=GND}
C {lab_pin.sym} -1560 -210 0 0 {name=p13 sig_type=std_logic lab=INN_FOLDED}
C {lab_pin.sym} -1700 -240 0 0 {name=p12 sig_type=std_logic lab=INP_FOLDED}
C {res.sym} -790 410 1 0 {name=R1
value=500k
footprint=1206
device=resistor
m=1}
C {libs/core_tb/schem/DUT.sym} -800 -110 0 0 {name=x1}
C {lab_pin.sym} -1090 20 3 0 {name=p7 sig_type=std_logic lab=PROG_ENA}
C {vsource.sym} 940 400 0 0 {name=V8 value=3.3 savecurrent=false}
C {gnd.sym} 940 470 0 0 {name=l11 lab=GND}
C {lab_pin.sym} 940 310 0 1 {name=p10 sig_type=std_logic lab=PROG_ENA}
C {vsource.sym} 220 -120 0 0 {name=V9 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} 220 -50 0 0 {name=l12 lab=GND}
C {lab_pin.sym} 570 -210 0 1 {name=p14 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 410 -210 0 0 {name=x3}
C {vsource.sym} 510 -310 0 0 {name=V10 value="PWL(0 0 0.42501m 0 0.42502m 3.3)" savecurrent=false}
C {gnd.sym} 510 -260 0 0 {name=l13 lab=GND}
C {vsource.sym} 460 -90 0 0 {name=V11 value="PWL(0 3.3 0.42501m 3.3 0.42502m 0)" savecurrent=false}
C {gnd.sym} 460 -40 0 0 {name=l14 lab=GND}
C {gnd.sym} 370 -140 0 0 {name=l15 lab=GND}
C {lab_pin.sym} 360 -290 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {gnd.sym} 720 -120 0 0 {name=l16 lab=GND}
C {lab_pin.sym} 1070 -220 0 1 {name=p16 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 910 -220 0 0 {name=x4}
C {gnd.sym} 870 -150 0 0 {name=l17 lab=GND}
C {lab_pin.sym} 860 -300 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 910 -310 0 1 {name=p18 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 910 -160 0 1 {name=p19 sig_type=std_logic lab=!CLK_ENA}
C {lab_pin.sym} 530 -150 0 1 {name=p20 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 580 -360 0 1 {name=p21 sig_type=std_logic lab=!CLK_ENA}
C {vsource.sym} 570 400 0 0 {name=V2 value="PWL(0 0 0.34999m 0 0.35m 3.3 0.499999m 3.3 0.5m 0)" savecurrent=false}

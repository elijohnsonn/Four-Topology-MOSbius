v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -1840 -410 -1840 540 {}
L 4 -1840 540 -30 540 {}
L 4 -30 -470 -30 540 {}
L 4 -1840 -470 -30 -470 {}
L 4 -1840 -470 -1840 -400 {}
L 4 270 260 270 540 {}
L 4 270 540 960 540 {}
L 4 1050 260 1050 540 {}
L 4 270 260 960 260 {}
L 4 960 260 1050 260 {}
L 4 960 540 1050 540 {}
L 4 90 -400 90 40 {}
L 4 90 40 760 40 {}
L 4 1130 -400 1130 40 {}
L 4 90 -400 760 -400 {}
L 4 760 40 1130 40 {}
L 4 760 -400 1130 -400 {}
T {VDD, GND, SCAN INPUT, PROGRAMMABLE ENABLE} 30 130 0 0 1 1 {}
T {Scan chain input artificially generated to enable folded cascode 4x sizing
prog_ena sets default (low) or program (high)} 310 200 0 0 0.4 0.4 {}
T {R2 = 500K} -870 340 0 0 0.75 0.75 {}
T {R1 = 100K} -1450 -130 0 0 0.75 0.75 {}
T {DC = 1.65V
500Hz Frequency 
50mV Amplitude
1ms Delay} -1580 180 0 0 0.5 0.5 {}
T {DC = 1.65V} -1770 180 0 0 0.5 0.5 {}
T {IBIAS = 100u} -1190 200 0 0 0.4 0.4 {}
T {IMPLEMENTATION} -1100 -650 0 0 1 1 {}
T {Configure the folded cascode in 4× mode 
as an inverting amplifier to amplify a 
sine wave input by 5 while driving a 
120pF capacitive load.} -1090 -590 0 0 0.4 0.4 {}
T {CLOCK GENERATION} 350 -560 0 0 1 1 {}
T {Artificially generate a clock signal and ensure it 
turns off after around .425ms, which is when the 
scan in signal has fully propogated through the scan chain} 330 -490 0 0 0.4 0.4 {}
T {CL = 120p} -300 -10 0 0 0.75 0.75 {}
N -740 -350 -740 -310 {lab=CLK}
N -710 -350 -710 -310 {lab=SCAN_IN}
N 570 330 570 380 {lab=SCAN_IN}
N 570 440 570 480 {lab=GND}
N -890 -340 -890 -310 {lab=GND}
N -940 -350 -940 -330 {lab=GND}
N -940 -350 -890 -350 {lab=GND}
N -890 -350 -890 -340 {lab=GND}
N 420 440 420 480 {lab=GND}
N 420 330 420 380 {lab=VDD}
N -870 -350 -870 -310 {lab=VDD}
N -1120 -20 -1030 -20 {lab=#net1}
N -1120 -20 -1120 80 {lab=#net1}
N -1120 140 -1120 170 {lab=VDD}
N -1200 -230 -1030 -230 {lab=INP_FOLDED}
N -1140 -200 -1030 -200 {lab=#net2}
N -550 -160 -500 -160 {lab=#net3}
N -500 -160 -370 -160 {lab=#net3}
N -420 -160 -420 320 {lab=#net3}
N -1220 -20 -1220 320 {lab=#net2}
N -1220 -150 -1220 -80 {lab=#net2}
N -1700 100 -1700 130 {lab=GND}
N -1700 -230 -1700 -30 {lab=INP_FOLDED}
N -1560 -230 -1200 -230 {lab=INP_FOLDED}
N -1700 -30 -1700 0 {lab=INP_FOLDED}
N -1700 0 -1700 40 {lab=INP_FOLDED}
N -1220 -80 -1220 -20 {lab=#net2}
N -1220 -200 -1140 -200 {lab=#net2}
N -1220 -200 -1220 -150 {lab=#net2}
N -1300 -200 -1220 -200 {lab=#net2}
N -1410 -200 -1360 -200 {lab=INN_FOLDED}
N -1560 -200 -1560 -150 {lab=INN_FOLDED}
N -1560 100 -1560 130 {lab=GND}
N -630 420 -420 420 {lab=#net3}
N -420 320 -420 420 {lab=#net3}
N -760 420 -630 420 {lab=#net3}
N -1220 420 -820 420 {lab=#net2}
N -1220 320 -1220 420 {lab=#net2}
N -1700 -230 -1650 -230 {lab=INP_FOLDED}
N -1560 -200 -1520 -200 {lab=INN_FOLDED}
N -1650 -230 -1560 -230 {lab=INP_FOLDED}
N -1520 -200 -1410 -200 {lab=INN_FOLDED}
N -1560 -150 -1560 40 {lab=INN_FOLDED}
N -1090 30 -1030 30 {lab=PROG_ENA}
N 940 330 940 380 {lab=PROG_ENA}
N 940 440 940 480 {lab=GND}
N 940 320 940 330 {lab=PROG_ENA}
N 220 -190 220 -140 {lab=#net4}
N 220 -80 220 -40 {lab=GND}
N 220 -200 320 -200 {lab=#net4}
N 220 -200 220 -190 {lab=#net4}
N 490 -200 570 -200 {lab=CLK}
N 410 -330 410 -250 {lab=!CLK_ENA}
N 410 -350 510 -350 {lab=!CLK_ENA}
N 510 -350 510 -330 {lab=!CLK_ENA}
N 510 -270 510 -250 {lab=GND}
N 410 -350 410 -330 {lab=!CLK_ENA}
N 410 -180 410 -140 {lab=CLK_ENA}
N 410 -140 460 -140 {lab=CLK_ENA}
N 460 -140 460 -110 {lab=CLK_ENA}
N 460 -50 460 -30 {lab=GND}
N 370 -150 370 -130 {lab=GND}
N 360 -280 360 -250 {lab=VDD}
N 720 -200 720 -150 {lab=GND}
N 720 -150 720 -110 {lab=GND}
N 720 -210 820 -210 {lab=GND}
N 720 -210 720 -200 {lab=GND}
N 990 -210 1070 -210 {lab=CLK}
N 910 -190 910 -150 {lab=!CLK_ENA}
N 870 -160 870 -140 {lab=GND}
N 860 -290 860 -260 {lab=VDD}
N 910 -300 910 -260 {lab=CLK_ENA}
N 460 -140 530 -140 {lab=CLK_ENA}
N 510 -350 580 -350 {lab=!CLK_ENA}
N -230 -160 -170 -160 {lab=OUT_FOLDED}
N -210 -160 -210 -130 {lab=OUT_FOLDED}
N -210 -70 -210 -30 {lab=GND}
N -300 -110 -300 -80 {lab=VDD}
N -280 -110 -280 -100 {lab=!CLK_ENA}
N -320 -110 -320 -100 {lab=CLK_ENA}
N -370 -40 -370 -10 {lab=GND}
N -370 -140 -370 -100 {lab=#net5}
C {gnd.sym} 570 480 0 0 {name=l1 lab=GND}
C {gnd.sym} -940 -330 0 0 {name=l2 lab=GND}
C {vsource.sym} 420 410 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 420 480 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 420 330 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -870 -350 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 570 330 0 1 {name=p2 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -710 -350 0 1 {name=p3 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -740 -350 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {isource.sym} -1120 110 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -1120 170 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 1740 -260 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 1740 -160 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.include /foss/designs/libs/pex/DUT.spice
.control
set color0 = white 
set color1 = black
tran 1u 5m

plot v(out_folded) v(inn_folded)
wrdata /foss/designs/libs/pex/start_up_cir/folded/4x.csv v(out_folded) v(inn_folded)

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
C {gnd.sym} -1700 130 0 0 {name=l9 lab=GND}
C {vsource.sym} -1700 70 0 0 {name=V7 value=1.65 savecurrent=false}
C {res.sym} -1330 -200 1 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -1560 70 0 0 {name=V6 value= "dc 1.65 ac 0 sin(1.65 10m 500 1m)" savecurrent=false}
C {gnd.sym} -1560 130 0 0 {name=l10 lab=GND}
C {lab_pin.sym} -1560 -200 0 0 {name=p13 sig_type=std_logic lab=INN_FOLDED}
C {lab_pin.sym} -1700 -230 0 0 {name=p12 sig_type=std_logic lab=INP_FOLDED}
C {res.sym} -790 420 1 0 {name=R1
value=500k
footprint=1206
device=resistor
m=1}
C {lab_pin.sym} -1090 30 3 0 {name=p7 sig_type=std_logic lab=PROG_ENA}
C {vsource.sym} 940 410 0 0 {name=V8 value=3.3 savecurrent=false}
C {gnd.sym} 940 480 0 0 {name=l11 lab=GND}
C {lab_pin.sym} 940 320 0 1 {name=p10 sig_type=std_logic lab=PROG_ENA}
C {vsource.sym} 220 -110 0 0 {name=V9 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} 220 -40 0 0 {name=l12 lab=GND}
C {lab_pin.sym} 570 -200 0 1 {name=p14 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 410 -200 0 0 {name=x3}
C {vsource.sym} 510 -300 0 0 {name=V10 value="PWL(0 0 0.42501m 0 0.42502m 3.3)" savecurrent=false}
C {gnd.sym} 510 -250 0 0 {name=l13 lab=GND}
C {vsource.sym} 460 -80 0 0 {name=V11 value="PWL(0 3.3 0.42501m 3.3 0.42502m 0)" savecurrent=false}
C {gnd.sym} 460 -30 0 0 {name=l14 lab=GND}
C {gnd.sym} 370 -130 0 0 {name=l15 lab=GND}
C {lab_pin.sym} 360 -280 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {gnd.sym} 720 -110 0 0 {name=l16 lab=GND}
C {lab_pin.sym} 1070 -210 0 1 {name=p16 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 910 -210 0 0 {name=x4}
C {gnd.sym} 870 -140 0 0 {name=l17 lab=GND}
C {lab_pin.sym} 860 -290 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 910 -300 0 1 {name=p18 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 910 -150 0 1 {name=p19 sig_type=std_logic lab=!CLK_ENA}
C {lab_pin.sym} 530 -140 0 1 {name=p20 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 580 -350 0 1 {name=p21 sig_type=std_logic lab=!CLK_ENA}
C {vsource.sym} 570 410 0 0 {name=V2 value="PWL(0 0 0.34999m 0 0.35m 3.3 0.499999m 3.3 0.5m 0)" savecurrent=false}
C {libs/pex/DUT.sym} -800 -100 0 0 {name=x1}
C {lab_pin.sym} -170 -160 0 1 {name=p4 sig_type=std_logic lab=OUT_FOLDED}
C {capa.sym} -210 -100 0 0 {name=CLOAD1
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -210 -30 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -320 -100 1 1 {name=p6 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} -300 -80 3 0 {name=p22 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -280 -100 1 1 {name=p23 sig_type=std_logic lab=!CLK_ENA}
C {gnd.sym} -370 -10 0 0 {name=l5 lab=GND}
C {vsource.sym} -370 -70 0 0 {name=V3 value=1.65 savecurrent=false}
C {libs/core_amps/start_up_cir/start_up_cir.sym} -300 -150 0 0 {name=x2}

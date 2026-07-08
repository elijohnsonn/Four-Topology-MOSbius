v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 460 -400 460 40 {}
L 4 460 40 1130 40 {}
L 4 1130 -400 1130 40 {}
L 4 460 -400 1130 -400 {}
L 4 -1810 -470 -1810 480 {}
L 4 -1750 480 60 480 {}
L 4 160 -530 160 480 {}
L 4 -1750 -530 60 -530 {}
L 4 -1810 -530 -1810 -460 {}
L 4 350 200 350 480 {}
L 4 350 480 1040 480 {}
L 4 1230 200 1230 480 {}
L 4 350 200 1040 200 {}
L 4 1040 200 1230 200 {}
L 4 1040 480 1230 480 {}
L 4 -1810 -530 -1750 -530 {}
L 4 -1810 480 -1750 480 {}
L 4 60 480 160 480 {}
L 4 60 -530 160 -530 {}
T {CLOCK GENERATION} 510 -560 0 0 1 1 {}
T {Artificially generate a clock signal and ensure it 
turns off after around .425ms, which is when the 
scan in signal has fully propogated through the scan chain} 490 -490 0 0 0.4 0.4 {}
T {VDD, GND, SCAN INPUT} 500 70 0 0 1 1 {}
T {Scan chain input artificially generated to enable 
folded cascode 1x and common source 1x sizing} 540 140 0 0 0.4 0.4 {}
T {CL = 120p} -100 130 0 0 0.75 0.75 {}
T {IBIAS = 100u} -1100 140 0 0 0.4 0.4 {}
T {IMPLEMENTATION} -1070 -700 0 0 1 1 {}
T {Configure the folded cascode in 1× mode and the common source stage 
in 1x mode as a two-stage inverting amplifier to amplify a sine wave 
input by 5 while driving a 120pF capacitive load.} -1190 -630 0 0 0.4 0.4 {}
T {DC = 1.65V
500Hz Frequency 
50mV Amplitude
1ms Delay} -1740 110 0 0 0.5 0.5 {}
T {DC = 1.65V} -1490 110 0 0 0.5 0.5 {}
T {R1 = 100K} -1500 -390 0 0 0.75 0.75 {}
T {R2 = 500K} -730 420 0 0 0.75 0.75 {}
T {Rm = 2.7K} -410 -300 0 0 0.75 0.75 {}
T {Cc = 20p} -130 -290 0 0 0.75 0.75 {}
N -650 -410 -650 -370 {lab=CLK}
N -620 -410 -620 -370 {lab=SCAN_IN}
N 650 270 650 320 {lab=SCAN_IN}
N 650 380 650 420 {lab=GND}
N -800 -400 -800 -370 {lab=GND}
N -850 -410 -850 -390 {lab=GND}
N -850 -410 -800 -410 {lab=GND}
N -800 -410 -800 -400 {lab=GND}
N 500 380 500 420 {lab=GND}
N 500 270 500 320 {lab=VDD}
N -780 -410 -780 -370 {lab=VDD}
N 590 -190 590 -140 {lab=#net1}
N 590 -80 590 -40 {lab=GND}
N 590 -200 690 -200 {lab=#net1}
N 590 -200 590 -190 {lab=#net1}
N 860 -200 940 -200 {lab=CLK}
N 780 -330 780 -250 {lab=#net2}
N 780 -350 880 -350 {lab=#net2}
N 880 -350 880 -330 {lab=#net2}
N 880 -270 880 -250 {lab=GND}
N 780 -350 780 -330 {lab=#net2}
N 780 -180 780 -140 {lab=#net3}
N 780 -140 830 -140 {lab=#net3}
N 830 -140 830 -110 {lab=#net3}
N 830 -50 830 -30 {lab=GND}
N 740 -150 740 -130 {lab=GND}
N 730 -280 730 -250 {lab=VDD}
N -1030 -80 -940 -80 {lab=#net4}
N -1030 -80 -1030 20 {lab=#net4}
N -1030 80 -1030 110 {lab=VDD}
N -1050 -260 -940 -260 {lab=#net5}
N -110 -40 -50 -40 {lab=OUT_CS}
N -90 -40 -90 -10 {lab=OUT_CS}
N -90 50 -90 90 {lab=GND}
N -1130 -260 -1050 -260 {lab=#net5}
N -1210 -260 -1130 -260 {lab=#net5}
N -1430 -260 -1380 -260 {lab=#net5}
N -1470 -260 -1470 -210 {lab=#net5}
N -1470 40 -1470 70 {lab=GND}
N -540 360 -330 360 {lab=OUT_CS}
N -1130 360 -730 360 {lab=#net6}
N -1470 -260 -1430 -260 {lab=#net5}
N -1470 -210 -1470 -20 {lab=#net5}
N -460 -40 -280 -40 {lab=OUT_CS}
N -460 -220 -370 -220 {lab=#net7}
N -370 -220 -370 160 {lab=#net7}
N -370 -220 -330 -220 {lab=#net7}
N -160 -220 -130 -220 {lab=OUT_CS}
N -130 -220 -130 -40 {lab=OUT_CS}
N -130 -40 -110 -40 {lab=OUT_CS}
N -280 -40 -130 -40 {lab=OUT_CS}
N -1320 -260 -1210 -260 {lab=#net5}
N -1200 360 -1130 360 {lab=#net6}
N -330 360 -170 360 {lab=OUT_CS}
N -170 -40 -170 360 {lab=OUT_CS}
N -1150 -110 -940 -110 {lab=#net7}
N -1150 -110 -1150 220 {lab=#net7}
N -1150 220 -370 220 {lab=#net7}
N -370 160 -370 220 {lab=#net7}
N -1190 -200 -1080 -290 {lab=#net6}
N -1200 -190 -1190 -200 {lab=#net6}
N -1200 -190 -1200 350 {lab=#net6}
N -1200 350 -1200 360 {lab=#net6}
N -1380 -260 -1320 -260 {lab=#net5}
N -730 360 -670 360 {lab=#net6}
N -1080 -290 -940 -290 {lab=#net6}
N -270 -220 -220 -220 {lab=#net8}
N -610 360 -540 360 {lab=OUT_CS}
N -1600 -30 -1600 70 {lab=GND}
N -1600 -170 -1600 -90 {lab=INN_FOLDED}
N -1600 -230 -1600 -170 {lab=INN_FOLDED}
N -1350 -290 -1080 -290 {lab=#net6}
N -1370 -290 -1350 -290 {lab=#net6}
N -1580 -290 -1430 -290 {lab=INN_FOLDED}
N -1600 -290 -1580 -290 {lab=INN_FOLDED}
N -1600 -290 -1600 -230 {lab=INN_FOLDED}
C {vsource.sym} 650 350 0 0 {name=V3 value="PWL(0 0 0.0999m 0 0.1m 3.3 0.1499m 3.3 0.15m 0 0.39999m 0 0.4m 3.3 0.499999m 3.3 0.5m 0)" savecurrent=false}
C {gnd.sym} 650 420 0 0 {name=l1 lab=GND}
C {gnd.sym} -850 -390 0 0 {name=l2 lab=GND}
C {vsource.sym} 500 350 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 500 420 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 500 270 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -780 -410 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 650 270 0 1 {name=p2 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -620 -410 0 1 {name=p3 sig_type=std_logic lab=SCAN_IN}
C {vsource.sym} 590 -110 0 0 {name=V2 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} 590 -40 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 940 -200 0 1 {name=p4 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -650 -410 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 780 -200 0 0 {name=x2}
C {vsource.sym} 880 -300 0 0 {name=V4 value="PWL(0 0 0.42501m 0 0.42502m 3.3)" savecurrent=false}
C {gnd.sym} 880 -250 0 0 {name=l5 lab=GND}
C {vsource.sym} 830 -80 0 0 {name=V5 value="PWL(0 3.3 0.42501m 3.3 0.42502m 0)" savecurrent=false}
C {gnd.sym} 830 -30 0 0 {name=l6 lab=GND}
C {gnd.sym} 740 -130 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 730 -280 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {isource.sym} -1030 50 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -1030 110 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -50 -40 0 1 {name=p11 sig_type=std_logic lab=OUT_CS}
C {devices/code_shown.sym} 1270 -80 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 1270 30 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control
tran 1u 10m

plot v(OUT_CS) v(INN_FOLDED)
meas tran vout_pp pp v(out_cs) from=5m to=10m
meas tran vin_pp pp v(inn_folded) from=5m to=10m
let gain = vout_pp / vin_pp
print gain

.endc
"}
C {capa.sym} -90 20 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -90 90 0 0 {name=l8 lab=GND}
C {gnd.sym} -1470 70 0 0 {name=l10 lab=GND}
C {res.sym} -300 -220 1 0 {name=R3
value=2.7k
footprint=1206
device=resistor
m=1}
C {capa.sym} -190 -220 1 0 {name=CLOAD1
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -1470 10 0 0 {name=V7 value=1.65 savecurrent=false}
C {res.sym} -1400 -290 3 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {res.sym} -640 360 1 0 {name=R1
value=500k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -1600 -60 0 1 {name=V6 value= "dc 1.65 ac 0 sin(1.65 50m 500 1m)" savecurrent=false}
C {gnd.sym} -1600 70 0 0 {name=l9 lab=GND}
C {lab_pin.sym} -1600 -290 0 0 {name=p13 sig_type=std_logic lab=INN_FOLDED}
C {libs/core_tb/schem/DUT.sym} -710 -160 0 0 {name=x1}

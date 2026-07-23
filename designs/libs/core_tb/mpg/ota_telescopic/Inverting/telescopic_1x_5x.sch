v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 150 -440 150 0 {}
L 4 150 0 820 0 {}
L 4 820 -440 820 0 {}
L 4 150 -440 820 -440 {}
L 4 -1810 -510 -1810 440 {}
L 4 -1810 440 0 440 {}
L 4 0 -570 0 440 {}
L 4 -1810 -570 0 -570 {}
L 4 -1810 -570 -1810 -500 {}
L 4 160 160 160 440 {}
L 4 160 440 850 440 {}
L 4 850 160 850 440 {}
L 4 160 160 850 160 {}
T {CLOCK GENERATION} 200 -600 0 0 1 1 {}
T {Artificially generate a clock signal and ensure it 
turns off after around .425ms, which is when the 
scan in signal has fully propogated through the scan chain} 180 -530 0 0 0.4 0.4 {}
T {VDD, GND, SCAN INPUT} 190 30 0 0 1 1 {}
T {Scan chain input artificially generated to 
enable telescopic cascode 1x sizing} 270 100 0 0 0.4 0.4 {}
T {R2 = 500K} -840 240 0 0 0.75 0.75 {}
T {R1 = 100K} -1420 -110 0 0 0.75 0.75 {}
T {CL = 120p} -240 -60 0 0 0.75 0.75 {}
T {DC = 1.65V
500Hz Frequency 
50mV Amplitude
1ms Delay} -1550 200 0 0 0.5 0.5 {}
T {DC = 1.65V} -1740 200 0 0 0.5 0.5 {}
T {IBIAS1=100u} -1160 110 0 0 0.4 0.4 {}
T {IMPLEMENTATION} -1130 -740 0 0 1 1 {}
T {Configure the telescopic cascode in 1× mode 
as an inverting amplifier to amplify a 
sine wave input by 5 while driving a 
120pF capacitive load.} -1120 -680 0 0 0.4 0.4 {}
N -710 -450 -710 -410 {lab=CLK}
N -680 -450 -680 -410 {lab=SCAN_IN}
N 460 230 460 280 {lab=SCAN_IN}
N 460 340 460 380 {lab=GND}
N -860 -440 -860 -410 {lab=GND}
N -910 -450 -910 -430 {lab=GND}
N -910 -450 -860 -450 {lab=GND}
N -860 -450 -860 -440 {lab=GND}
N 310 340 310 380 {lab=GND}
N 310 230 310 280 {lab=VDD}
N -840 -450 -840 -410 {lab=VDD}
N 280 -230 280 -180 {lab=#net1}
N 280 -120 280 -80 {lab=GND}
N 280 -240 380 -240 {lab=#net1}
N 280 -240 280 -230 {lab=#net1}
N 550 -240 630 -240 {lab=CLK}
N 470 -370 470 -290 {lab=#net2}
N 470 -390 570 -390 {lab=#net2}
N 570 -390 570 -370 {lab=#net2}
N 570 -310 570 -290 {lab=GND}
N 470 -390 470 -370 {lab=#net2}
N 470 -220 470 -180 {lab=#net3}
N 470 -180 520 -180 {lab=#net3}
N 520 -180 520 -150 {lab=#net3}
N 520 -90 520 -70 {lab=GND}
N 430 -190 430 -170 {lab=GND}
N 420 -320 420 -290 {lab=VDD}
N -1090 -120 -1000 -120 {lab=#net4}
N -1090 -120 -1090 -20 {lab=#net4}
N -1090 40 -1090 70 {lab=VDD}
N -1170 -210 -1000 -210 {lab=INP_TELESCOPIC}
N -520 -140 -470 -140 {lab=OUT_TELESCOPIC}
N -470 -140 -340 -140 {lab=OUT_TELESCOPIC}
N -1190 -130 -1190 -60 {lab=#net5}
N -1670 120 -1670 150 {lab=GND}
N -340 -140 -280 -140 {lab=OUT_TELESCOPIC}
N -1670 -210 -1670 -10 {lab=INP_TELESCOPIC}
N -1530 -210 -1170 -210 {lab=INP_TELESCOPIC}
N -1670 -10 -1670 20 {lab=INP_TELESCOPIC}
N -320 -140 -320 -110 {lab=OUT_TELESCOPIC}
N -320 -50 -320 -10 {lab=GND}
N -1670 20 -1670 60 {lab=INP_TELESCOPIC}
N -1190 -60 -1190 0 {lab=#net5}
N -1190 -180 -1110 -180 {lab=#net5}
N -1190 -180 -1190 -130 {lab=#net5}
N -1270 -180 -1190 -180 {lab=#net5}
N -1380 -180 -1330 -180 {lab=INN_TELESCOPIC}
N -1530 -180 -1530 -130 {lab=INN_TELESCOPIC}
N -1530 120 -1530 150 {lab=GND}
N -600 320 -390 320 {lab=OUT_TELESCOPIC}
N -390 220 -390 320 {lab=OUT_TELESCOPIC}
N -730 320 -600 320 {lab=OUT_TELESCOPIC}
N -1190 320 -790 320 {lab=#net5}
N -1670 -210 -1620 -210 {lab=INP_TELESCOPIC}
N -1530 -180 -1490 -180 {lab=INN_TELESCOPIC}
N -1620 -210 -1530 -210 {lab=INP_TELESCOPIC}
N -1490 -180 -1380 -180 {lab=INN_TELESCOPIC}
N -1530 -130 -1530 60 {lab=INN_TELESCOPIC}
N -390 -140 -390 220 {lab=OUT_TELESCOPIC}
N -1190 0 -1190 320 {lab=#net5}
N -1110 -180 -1000 -180 {lab=#net5}
N -1000 -70 -1000 -30 {lab=GND}
C {vsource.sym} 460 310 0 0 {name=V3 value= "PWL(0 0 0.2999m 0 0.3m 3.3 0.349999m 3.3 0.35m 0)" savecurrent=false}
C {gnd.sym} 460 380 0 0 {name=l1 lab=GND}
C {gnd.sym} -910 -430 0 0 {name=l2 lab=GND}
C {vsource.sym} 310 310 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 310 380 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 310 230 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -840 -450 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 460 230 0 1 {name=p2 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -680 -450 0 1 {name=p3 sig_type=std_logic lab=SCAN_IN}
C {vsource.sym} 280 -150 0 0 {name=V2 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} 280 -80 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 630 -240 0 1 {name=p4 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -710 -450 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 470 -240 0 0 {name=x2}
C {vsource.sym} 570 -340 0 0 {name=V4 value="PWL(0 0 0.42501m 0 0.42502m 3.3)" savecurrent=false}
C {gnd.sym} 570 -290 0 0 {name=l5 lab=GND}
C {vsource.sym} 520 -120 0 0 {name=V5 value="PWL(0 3.3 0.42501m 3.3 0.42502m 0)" savecurrent=false}
C {gnd.sym} 520 -70 0 0 {name=l6 lab=GND}
C {gnd.sym} 430 -170 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 420 -320 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {isource.sym} -1090 10 2 0 {name=IBIAS1 value=100u}
C {lab_pin.sym} -1090 70 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -280 -140 0 1 {name=p11 sig_type=std_logic lab=OUT_TELESCOPIC}
C {devices/code_shown.sym} 920 -180 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 920 -70 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control
set color0 = white
set color1 = black
tran 1u 18m
plot v(OUT_TELESCOPIC) v(INN_TELESCOPIC)
meas tran vout_pp pp v(out_telescopic) from=5m to=10m
meas tran vin_pp pp v(inn_telescopic) from=5m to=10m
let gain = vout_pp / vin_pp
print gain
.endc
"}
C {gnd.sym} -1670 150 0 0 {name=l9 lab=GND}
C {vsource.sym} -1670 90 0 0 {name=V7 value=1.65 savecurrent=false}
C {capa.sym} -320 -80 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -320 -10 0 0 {name=l8 lab=GND}
C {res.sym} -1300 -180 1 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -1530 90 0 0 {name=V6 value= "dc 1.65 ac 0 sin(1.65 50m 500 1m)" savecurrent=false}
C {gnd.sym} -1530 150 0 0 {name=l10 lab=GND}
C {lab_pin.sym} -1530 -180 0 0 {name=p13 sig_type=std_logic lab=INN_TELESCOPIC}
C {lab_pin.sym} -1670 -210 0 0 {name=p12 sig_type=std_logic lab=INP_TELESCOPIC}
C {res.sym} -760 320 1 0 {name=R1
value=500k
footprint=1206
device=resistor
m=1}
C {libs/core_tb/schem/DUT.sym} -770 -200 0 0 {name=x1}
C {gnd.sym} -1000 -30 0 1 {name=l11 lab=GND}

v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 80 -440 80 0 {}
L 4 80 0 750 0 {}
L 4 750 -440 750 0 {}
L 4 80 -440 750 -440 {}
L 4 -1880 -510 -1880 440 {}
L 4 -1880 440 -70 440 {}
L 4 -70 -570 -70 440 {}
L 4 -1880 -570 -70 -570 {}
L 4 -1880 -570 -1880 -500 {}
L 4 90 160 90 440 {}
L 4 90 440 780 440 {}
L 4 780 160 780 440 {}
L 4 90 160 780 160 {}
T {CLOCK GENERATION} 130 -600 0 0 1 1 {}
T {Artificially generate a clock signal and ensure it 
turns off after around .425ms, which is when the 
scan in signal has fully propogated through the scan chain} 110 -530 0 0 0.4 0.4 {}
T {VDD, GND, SCAN INPUT} 120 30 0 0 1 1 {}
T {Scan chain input artificially generated to 
enable telescopic cascode 1x sizing} 200 100 0 0 0.4 0.4 {}
T {R2 = 500K} -910 240 0 0 0.75 0.75 {}
T {R1 = 100K} -1490 -110 0 0 0.75 0.75 {}
T {CL = 120p} -310 -60 0 0 0.75 0.75 {}
T {DC = 1.65V
500Hz Frequency 
50mV Amplitude
1ms Delay} -1620 200 0 0 0.5 0.5 {}
T {DC = 1.65V} -1810 200 0 0 0.5 0.5 {}
T {IBIAS1=100u} -1230 110 0 0 0.4 0.4 {}
T {IMPLEMENTATION} -1200 -740 0 0 1 1 {}
T {Configure the telescopic cascode in 1× mode 
as an inverting amplifier to amplify a 
sine wave input by 5 while driving a 
120pF capacitive load.} -1190 -680 0 0 0.4 0.4 {}
N -780 -450 -780 -410 {lab=CLK}
N -750 -450 -750 -410 {lab=SCAN_IN}
N 390 230 390 280 {lab=SCAN_IN}
N 390 340 390 380 {lab=GND}
N -930 -440 -930 -410 {lab=GND}
N -980 -450 -980 -430 {lab=GND}
N -980 -450 -930 -450 {lab=GND}
N -930 -450 -930 -440 {lab=GND}
N 240 340 240 380 {lab=GND}
N 240 230 240 280 {lab=VDD}
N -910 -450 -910 -410 {lab=VDD}
N 210 -230 210 -180 {lab=#net1}
N 210 -120 210 -80 {lab=GND}
N 210 -240 310 -240 {lab=#net1}
N 210 -240 210 -230 {lab=#net1}
N 480 -240 560 -240 {lab=CLK}
N 400 -370 400 -290 {lab=#net2}
N 400 -390 500 -390 {lab=#net2}
N 500 -390 500 -370 {lab=#net2}
N 500 -310 500 -290 {lab=GND}
N 400 -390 400 -370 {lab=#net2}
N 400 -220 400 -180 {lab=#net3}
N 400 -180 450 -180 {lab=#net3}
N 450 -180 450 -150 {lab=#net3}
N 450 -90 450 -70 {lab=GND}
N 360 -190 360 -170 {lab=GND}
N 350 -320 350 -290 {lab=VDD}
N -1160 -120 -1070 -120 {lab=#net4}
N -1160 -120 -1160 -20 {lab=#net4}
N -1160 40 -1160 70 {lab=VDD}
N -1240 -210 -1070 -210 {lab=INP_TELESCOPIC}
N -590 -140 -540 -140 {lab=OUT_TELESCOPIC}
N -540 -140 -410 -140 {lab=OUT_TELESCOPIC}
N -1260 -130 -1260 -60 {lab=#net5}
N -1740 120 -1740 150 {lab=GND}
N -410 -140 -350 -140 {lab=OUT_TELESCOPIC}
N -1740 -210 -1740 -10 {lab=INP_TELESCOPIC}
N -1600 -210 -1240 -210 {lab=INP_TELESCOPIC}
N -1740 -10 -1740 20 {lab=INP_TELESCOPIC}
N -390 -140 -390 -110 {lab=OUT_TELESCOPIC}
N -390 -50 -390 -10 {lab=GND}
N -1740 20 -1740 60 {lab=INP_TELESCOPIC}
N -1260 -60 -1260 0 {lab=#net5}
N -1260 -180 -1180 -180 {lab=#net5}
N -1260 -180 -1260 -130 {lab=#net5}
N -1340 -180 -1260 -180 {lab=#net5}
N -1450 -180 -1400 -180 {lab=INN_TELESCOPIC}
N -1600 -180 -1600 -130 {lab=INN_TELESCOPIC}
N -1600 120 -1600 150 {lab=GND}
N -670 320 -460 320 {lab=OUT_TELESCOPIC}
N -460 220 -460 320 {lab=OUT_TELESCOPIC}
N -800 320 -670 320 {lab=OUT_TELESCOPIC}
N -1260 320 -860 320 {lab=#net5}
N -1740 -210 -1690 -210 {lab=INP_TELESCOPIC}
N -1600 -180 -1560 -180 {lab=INN_TELESCOPIC}
N -1690 -210 -1600 -210 {lab=INP_TELESCOPIC}
N -1560 -180 -1450 -180 {lab=INN_TELESCOPIC}
N -1600 -130 -1600 60 {lab=INN_TELESCOPIC}
N -460 -140 -460 220 {lab=OUT_TELESCOPIC}
N -1260 0 -1260 320 {lab=#net5}
N -1180 -180 -1070 -180 {lab=#net5}
C {vsource.sym} 390 310 0 0 {name=V3 value= "PWL(0 0 0.2999m 0 0.3m 3.3 0.349999m 3.3 0.35m 0)" savecurrent=false}
C {gnd.sym} 390 380 0 0 {name=l1 lab=GND}
C {gnd.sym} -980 -430 0 0 {name=l2 lab=GND}
C {vsource.sym} 240 310 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 240 380 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 240 230 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -910 -450 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 390 230 0 1 {name=p2 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -750 -450 0 1 {name=p3 sig_type=std_logic lab=SCAN_IN}
C {vsource.sym} 210 -150 0 0 {name=V2 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} 210 -80 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 560 -240 0 1 {name=p4 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -780 -450 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 400 -240 0 0 {name=x2}
C {vsource.sym} 500 -340 0 0 {name=V4 value="PWL(0 0 0.42501m 0 0.42502m 3.3)" savecurrent=false}
C {gnd.sym} 500 -290 0 0 {name=l5 lab=GND}
C {vsource.sym} 450 -120 0 0 {name=V5 value="PWL(0 3.3 0.42501m 3.3 0.42502m 0)" savecurrent=false}
C {gnd.sym} 450 -70 0 0 {name=l6 lab=GND}
C {gnd.sym} 360 -170 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 350 -320 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {isource.sym} -1160 10 2 0 {name=IBIAS1 value=100u}
C {lab_pin.sym} -1160 70 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -350 -140 0 1 {name=p11 sig_type=std_logic lab=OUT_TELESCOPIC}
C {devices/code_shown.sym} 850 -180 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 850 -70 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control
tran 1u 10m
plot v(OUT_TELESCOPIC) v(INN_TELESCOPIC)
meas tran vout_pp pp v(out_telescopic) from=5m to=10m
meas tran vin_pp pp v(inn_telescopic) from=5m to=10m
let gain = vout_pp / vin_pp
print gain
.endc
"}
C {gnd.sym} -1740 150 0 0 {name=l9 lab=GND}
C {vsource.sym} -1740 90 0 0 {name=V7 value=1.65 savecurrent=false}
C {capa.sym} -390 -80 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -390 -10 0 0 {name=l8 lab=GND}
C {res.sym} -1370 -180 1 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -1600 90 0 0 {name=V6 value= "dc 1.65 ac 0 sin(1.65 50m 500 1m)" savecurrent=false}
C {gnd.sym} -1600 150 0 0 {name=l10 lab=GND}
C {lab_pin.sym} -1600 -180 0 0 {name=p13 sig_type=std_logic lab=INN_TELESCOPIC}
C {lab_pin.sym} -1740 -210 0 0 {name=p12 sig_type=std_logic lab=INP_TELESCOPIC}
C {res.sym} -830 320 1 0 {name=R1
value=500k
footprint=1206
device=resistor
m=1}
C {libs/core_tb/schem/DUT.sym} -840 -200 0 0 {name=x1}

v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 110 -320 110 120 {}
L 4 110 120 780 120 {}
L 4 780 -320 780 120 {}
L 4 110 -320 780 -320 {}
L 4 -1850 -390 -1850 560 {}
L 4 -1850 560 -40 560 {}
L 4 -40 -450 -40 560 {}
L 4 -1850 -450 -40 -450 {}
L 4 -1850 -450 -1850 -380 {}
L 4 120 280 120 560 {}
L 4 120 560 810 560 {}
L 4 810 280 810 560 {}
L 4 120 280 810 280 {}
T {CLOCK GENERATION} 160 -480 0 0 1 1 {}
T {Artificially generate a clock signal and ensure it 
turns off after around .425ms, which is when the 
scan in signal has fully propogated through the scan chain} 140 -410 0 0 0.4 0.4 {}
T {VDD, GND, SCAN INPUT} 150 150 0 0 1 1 {}
T {Scan chain input artificially generated to 
enable folded cascode 1x sizing} 230 220 0 0 0.4 0.4 {}
T {R2 = 500K} -880 360 0 0 0.75 0.75 {}
T {R1 = 100K} -1460 -110 0 0 0.75 0.75 {}
T {CL = 120p} -280 -60 0 0 0.75 0.75 {}
T {DC = 1.65V
500Hz Frequency 
50mV Amplitude
1ms Delay} -1590 200 0 0 0.5 0.5 {}
T {DC = 1.65V} -1780 200 0 0 0.5 0.5 {}
T {IBIAS1=IBIAS2=100u} -1200 220 0 0 0.4 0.4 {}
T {IMPLEMENTATION} -1170 -620 0 0 1 1 {}
T {Configure the folded cascode in 1× mode 
as an inverting amplifier to amplify a 
sine wave input by 5 while driving a 
120pF capacitive load.} -1160 -560 0 0 0.4 0.4 {}
N -750 -330 -750 -290 {lab=CLK}
N -720 -330 -720 -290 {lab=SCAN_IN}
N 420 350 420 400 {lab=SCAN_IN}
N 420 460 420 500 {lab=GND}
N -900 -320 -900 -290 {lab=GND}
N -950 -330 -950 -310 {lab=GND}
N -950 -330 -900 -330 {lab=GND}
N -900 -330 -900 -320 {lab=GND}
N 270 460 270 500 {lab=GND}
N 270 350 270 400 {lab=VDD}
N -880 -330 -880 -290 {lab=VDD}
N 240 -110 240 -60 {lab=#net1}
N 240 0 240 40 {lab=GND}
N 240 -120 340 -120 {lab=#net1}
N 240 -120 240 -110 {lab=#net1}
N 510 -120 590 -120 {lab=CLK}
N 430 -250 430 -170 {lab=#net2}
N 430 -270 530 -270 {lab=#net2}
N 530 -270 530 -250 {lab=#net2}
N 530 -190 530 -170 {lab=GND}
N 430 -270 430 -250 {lab=#net2}
N 430 -100 430 -60 {lab=#net3}
N 430 -60 480 -60 {lab=#net3}
N 480 -60 480 -30 {lab=#net3}
N 480 30 480 50 {lab=GND}
N 390 -70 390 -50 {lab=GND}
N 380 -200 380 -170 {lab=VDD}
N -1130 0 -1040 0 {lab=#net4}
N -1130 0 -1130 100 {lab=#net4}
N -1080 30 -1040 30 {lab=#net5}
N -1080 30 -1080 100 {lab=#net5}
N -1130 160 -1130 190 {lab=VDD}
N -1080 160 -1080 190 {lab=VDD}
N -1210 -210 -1040 -210 {lab=INP_FOLDED}
N -1150 -180 -1040 -180 {lab=#net6}
N -560 -140 -510 -140 {lab=OUT_FOLDED}
N -510 -140 -380 -140 {lab=OUT_FOLDED}
N -430 -140 -430 340 {lab=OUT_FOLDED}
N -1230 0 -1230 340 {lab=#net6}
N -1230 -130 -1230 -60 {lab=#net6}
N -1710 120 -1710 150 {lab=GND}
N -380 -140 -320 -140 {lab=OUT_FOLDED}
N -1710 -210 -1710 -10 {lab=INP_FOLDED}
N -1570 -210 -1210 -210 {lab=INP_FOLDED}
N -1710 -10 -1710 20 {lab=INP_FOLDED}
N -360 -140 -360 -110 {lab=OUT_FOLDED}
N -360 -50 -360 -10 {lab=GND}
N -1710 20 -1710 60 {lab=INP_FOLDED}
N -1230 -60 -1230 0 {lab=#net6}
N -1230 -180 -1150 -180 {lab=#net6}
N -1230 -180 -1230 -130 {lab=#net6}
N -1310 -180 -1230 -180 {lab=#net6}
N -1420 -180 -1370 -180 {lab=INN_FOLDED}
N -1570 -180 -1570 -130 {lab=INN_FOLDED}
N -1570 120 -1570 150 {lab=GND}
N -640 440 -430 440 {lab=OUT_FOLDED}
N -430 340 -430 440 {lab=OUT_FOLDED}
N -770 440 -640 440 {lab=OUT_FOLDED}
N -1230 440 -830 440 {lab=#net6}
N -1230 340 -1230 440 {lab=#net6}
N -1710 -210 -1660 -210 {lab=INP_FOLDED}
N -1570 -180 -1530 -180 {lab=INN_FOLDED}
N -1660 -210 -1570 -210 {lab=INP_FOLDED}
N -1530 -180 -1420 -180 {lab=INN_FOLDED}
N -1570 -130 -1570 60 {lab=INN_FOLDED}
C {vsource.sym} 420 430 0 0 {name=V3 value="PWL(0 0 0.39999m 0 0.4m 3.3 0.499999m 3.3 0.5m 0)" savecurrent=false}
C {gnd.sym} 420 500 0 0 {name=l1 lab=GND}
C {gnd.sym} -950 -310 0 0 {name=l2 lab=GND}
C {vsource.sym} 270 430 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 270 500 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 270 350 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -880 -330 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 420 350 0 1 {name=p2 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -720 -330 0 1 {name=p3 sig_type=std_logic lab=SCAN_IN}
C {vsource.sym} 240 -30 0 0 {name=V2 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} 240 40 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 590 -120 0 1 {name=p4 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -750 -330 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 430 -120 0 0 {name=x2}
C {vsource.sym} 530 -220 0 0 {name=V4 value="PWL(0 0 0.42501m 0 0.42502m 3.3)" savecurrent=false}
C {gnd.sym} 530 -170 0 0 {name=l5 lab=GND}
C {vsource.sym} 480 0 0 0 {name=V5 value="PWL(0 3.3 0.42501m 3.3 0.42502m 0)" savecurrent=false}
C {gnd.sym} 480 50 0 0 {name=l6 lab=GND}
C {gnd.sym} 390 -50 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 380 -200 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {isource.sym} -1130 130 2 0 {name=IBIAS1 value=100u}
C {isource.sym} -1080 130 2 1 {name=IBIAS2 value=100u}
C {lab_pin.sym} -1130 190 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -1080 190 0 1 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -320 -140 0 1 {name=p11 sig_type=std_logic lab=OUT_FOLDED}
C {devices/code_shown.sym} 880 -60 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 880 50 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control
tran 1u 10m
plot v(OUT_FOLDED) v(INN_FOLDED)
meas tran vout_pp pp v(out_folded) from=5m to=10m
meas tran vin_pp pp v(inn_folded) from=5m to=10m
let gain = vout_pp / vin_pp
print gain
.endc
"}
C {gnd.sym} -1710 150 0 0 {name=l9 lab=GND}
C {vsource.sym} -1710 90 0 0 {name=V7 value=1.65 savecurrent=false}
C {capa.sym} -360 -80 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -360 -10 0 0 {name=l8 lab=GND}
C {res.sym} -1340 -180 1 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -1570 90 0 0 {name=V6 value= "dc 1.65 ac 0 sin(1.65 50m 500 1m)" savecurrent=false}
C {gnd.sym} -1570 150 0 0 {name=l10 lab=GND}
C {lab_pin.sym} -1570 -180 0 0 {name=p13 sig_type=std_logic lab=INN_FOLDED}
C {lab_pin.sym} -1710 -210 0 0 {name=p12 sig_type=std_logic lab=INP_FOLDED}
C {res.sym} -800 440 1 0 {name=R1
value=500k
footprint=1206
device=resistor
m=1}
C {libs/core_tb/schem/DUT.sym} -810 -80 0 0 {name=x1}

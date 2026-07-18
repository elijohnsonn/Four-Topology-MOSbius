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
enable 5t OTA 2x sizing} 230 220 0 0 0.4 0.4 {}
T {R2 = 500K} -880 360 0 0 0.75 0.75 {}
T {R1 = 100K} -1460 -50 0 0 0.75 0.75 {}
T {CL = 120p} -280 0 0 0 0.75 0.75 {}
T {DC = 1.65V
500Hz Frequency 
50mV Amplitude
1ms Delay} -1590 270 0 0 0.5 0.5 {}
T {DC = 1.65V} -1780 270 0 0 0.5 0.5 {}
T {IBIAS1=IBIAS2=100u} -1200 220 0 0 0.4 0.4 {}
T {IMPLEMENTATION} -1170 -620 0 0 1 1 {}
T {Configure the 5t OTA in 2x mode 
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
N -1130 160 -1130 190 {lab=VDD}
N -1210 -150 -1040 -150 {lab=INP_5T}
N -1150 -120 -1040 -120 {lab=#net5}
N -560 -80 -510 -80 {lab=OUT_5T}
N -510 -80 -380 -80 {lab=OUT_5T}
N -1230 0 -1230 340 {lab=#net5}
N -1710 190 -1710 220 {lab=GND}
N -380 -80 -320 -80 {lab=OUT_5T}
N -1570 -150 -1210 -150 {lab=INP_5T}
N -360 -80 -360 -50 {lab=OUT_5T}
N -360 10 -360 50 {lab=GND}
N -1230 -120 -1150 -120 {lab=#net5}
N -1310 -120 -1230 -120 {lab=#net5}
N -1420 -120 -1370 -120 {lab=INN_5T}
N -1570 -120 -1570 -70 {lab=INN_5T}
N -1570 190 -1570 220 {lab=GND}
N -1230 440 -830 440 {lab=#net5}
N -1230 340 -1230 440 {lab=#net5}
N -1710 -150 -1660 -150 {lab=INP_5T}
N -1570 -120 -1530 -120 {lab=INN_5T}
N -1660 -150 -1570 -150 {lab=INP_5T}
N -1530 -120 -1420 -120 {lab=INN_5T}
N -1570 -70 -1570 130 {lab=INN_5T}
N -1710 -150 -1710 130 {lab=INP_5T}
N -1230 -120 -1230 0 {lab=#net5}
N -770 440 -460 440 {lab=OUT_5T}
N -460 -80 -460 440 {lab=OUT_5T}
C {vsource.sym} 420 430 0 0 {name=V3 value="PWL(0 0 0.1499m 0 0.15m 3.3 0.1999m 3.3 0.2m 0)" savecurrent=false}
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
C {lab_pin.sym} -1130 190 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -320 -80 0 1 {name=p11 sig_type=std_logic lab=OUT_5T}
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
set color0 = white
set color1 = black
tran 1u 10m
plot v(OUT_5T) v(INN_5T)
meas tran vout_pp pp v(out_5t) from=5m to=10m
meas tran vin_pp pp v(inn_5t) from=5m to=10m
let gain = vout_pp / vin_pp
print gain
.endc
"}
C {gnd.sym} -1710 220 0 0 {name=l9 lab=GND}
C {vsource.sym} -1710 160 0 0 {name=V7 value=1.65 savecurrent=false}
C {capa.sym} -360 -20 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -360 50 0 0 {name=l8 lab=GND}
C {res.sym} -1340 -120 1 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -1570 160 0 0 {name=V6 value= "dc 1.65 ac 0 sin(1.65 50m 500 1m)" savecurrent=false
}
C {gnd.sym} -1570 220 0 0 {name=l10 lab=GND}
C {lab_pin.sym} -1570 -120 0 0 {name=p13 sig_type=std_logic lab=INN_5T}
C {lab_pin.sym} -1710 -150 0 0 {name=p12 sig_type=std_logic lab=INP_5T}
C {res.sym} -800 440 1 0 {name=R1
value=500k
footprint=1206
device=resistor
m=1}
C {libs/core_tb/schem/DUT.sym} -810 -80 0 0 {name=x1}

v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -1850 -390 -1850 560 {}
L 4 -1850 560 -40 560 {}
L 4 -40 -450 -40 560 {}
L 4 -1850 -450 -40 -450 {}
L 4 -1850 -450 -1850 -380 {}
L 4 120 280 120 560 {}
L 4 120 560 810 560 {}
L 4 810 280 810 560 {}
L 4 120 280 810 280 {}
L 4 120 -440 120 0 {}
L 4 120 0 790 0 {}
L 4 1160 -440 1160 0 {}
L 4 120 -440 790 -440 {}
L 4 790 0 1160 0 {}
L 4 790 -440 1160 -440 {}
T {VDD, GND, SCAN INPUT} 150 150 0 0 1 1 {}
T {Scan chain input artificially generated to 
enable 5t OTA 1x sizing} 230 220 0 0 0.4 0.4 {}
T {R2 = 500K} -880 360 0 0 0.75 0.75 {}
T {R1 = 100K} -1460 -50 0 0 0.75 0.75 {}
T {CL = 120p} -280 0 0 0 0.75 0.75 {}
T {DC = 1.65V
1kHz Frequency 
50mV Amplitude
1ms Delay} -1590 270 0 0 0.5 0.5 {}
T {DC = 1.6435V} -1780 270 0 0 0.5 0.5 {}
T {IBIAS1=100u} -1200 220 0 0 0.4 0.4 {}
T {IMPLEMENTATION} -1170 -620 0 0 1 1 {}
T {Configure the 5t OTA in 1× mode 
as an inverting amplifier to amplify a 
sine wave input by 5 while driving a 
120pF capacitive load.} -1160 -560 0 0 0.4 0.4 {}
T {CLOCK GENERATION} 380 -600 0 0 1 1 {}
T {Artificially generate a clock signal and ensure it 
turns off after around .425ms, which is when the 
scan in signal has fully propogated through the scan chain} 360 -530 0 0 0.4 0.4 {}
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
N -1130 0 -1040 0 {lab=#net1}
N -1130 0 -1130 100 {lab=#net1}
N -1130 160 -1130 190 {lab=VDD}
N -1210 -150 -1040 -150 {lab=INP_5T}
N -1150 -120 -1040 -120 {lab=#net2}
N -560 -80 -510 -80 {lab=OUT_5T}
N -510 -80 -380 -80 {lab=OUT_5T}
N -1230 0 -1230 340 {lab=#net2}
N -1710 190 -1710 220 {lab=GND}
N -380 -80 -320 -80 {lab=OUT_5T}
N -1570 -150 -1210 -150 {lab=INP_5T}
N -360 -80 -360 -50 {lab=OUT_5T}
N -360 10 -360 50 {lab=GND}
N -1230 -120 -1150 -120 {lab=#net2}
N -1310 -120 -1230 -120 {lab=#net2}
N -1420 -120 -1370 -120 {lab=INN_5T}
N -1570 -120 -1570 -70 {lab=INN_5T}
N -1570 190 -1570 220 {lab=GND}
N -1230 440 -830 440 {lab=#net2}
N -1230 340 -1230 440 {lab=#net2}
N -1710 -150 -1660 -150 {lab=INP_5T}
N -1570 -120 -1530 -120 {lab=INN_5T}
N -1660 -150 -1570 -150 {lab=INP_5T}
N -1530 -120 -1420 -120 {lab=INN_5T}
N -1570 -70 -1570 130 {lab=INN_5T}
N -1710 -150 -1710 130 {lab=INP_5T}
N -1230 -120 -1230 0 {lab=#net2}
N -770 440 -460 440 {lab=OUT_5T}
N -460 -80 -460 440 {lab=OUT_5T}
N -1080 50 -1080 100 {lab=#net3}
N -1080 50 -1040 50 {lab=#net3}
N -1080 160 -1080 180 {lab=GND}
N 250 -230 250 -180 {lab=#net4}
N 250 -120 250 -80 {lab=GND}
N 250 -240 350 -240 {lab=#net4}
N 250 -240 250 -230 {lab=#net4}
N 520 -240 600 -240 {lab=CLK}
N 440 -370 440 -290 {lab=!CLK_ENA}
N 440 -390 540 -390 {lab=!CLK_ENA}
N 540 -390 540 -370 {lab=!CLK_ENA}
N 540 -310 540 -290 {lab=GND}
N 440 -390 440 -370 {lab=!CLK_ENA}
N 440 -220 440 -180 {lab=CLK_ENA}
N 440 -180 490 -180 {lab=CLK_ENA}
N 490 -180 490 -150 {lab=CLK_ENA}
N 490 -90 490 -70 {lab=GND}
N 400 -190 400 -170 {lab=GND}
N 390 -320 390 -290 {lab=VDD}
N 750 -240 750 -190 {lab=GND}
N 750 -190 750 -150 {lab=GND}
N 750 -250 850 -250 {lab=GND}
N 750 -250 750 -240 {lab=GND}
N 1020 -250 1100 -250 {lab=CLK}
N 940 -230 940 -190 {lab=!CLK_ENA}
N 900 -200 900 -180 {lab=GND}
N 890 -330 890 -300 {lab=VDD}
N 940 -340 940 -300 {lab=CLK_ENA}
N 490 -180 560 -180 {lab=CLK_ENA}
N 540 -390 610 -390 {lab=!CLK_ENA}
C {vsource.sym} 420 430 0 0 {name=V3 value="PWL(0 0 0.1999m 0 0.2m 3.3 0.24999m 3.3 0.25m 0)" savecurrent=false}
C {gnd.sym} 420 500 0 0 {name=l1 lab=GND}
C {gnd.sym} -950 -310 0 0 {name=l2 lab=GND}
C {vsource.sym} 270 430 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 270 500 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 270 350 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -880 -330 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 420 350 0 1 {name=p2 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -720 -330 0 1 {name=p3 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -750 -330 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {isource.sym} -1130 130 2 0 {name=IBIAS1 value=100u}
C {lab_pin.sym} -1130 190 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -320 -80 0 1 {name=p11 sig_type=std_logic lab=OUT_5T}
C {devices/code_shown.sym} 870 230 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 870 340 0 0 {name=Simulation1 only_toplevel=false 

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
C {vsource.sym} -1710 160 0 0 {name=V7 value=1.6435 savecurrent=false}
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
C {vsource.sym} -1570 160 0 0 {name=V6 value= "dc 1.65 ac 0 pulse(1.60 1.70 1m 1u 1u 0.5m 1m)" savecurrent=false
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
C {vsource.sym} -1080 130 0 0 {name=V8 value=3.3 savecurrent=false}
C {gnd.sym} -1080 180 0 0 {name=l11 lab=GND}
C {vsource.sym} 250 -150 0 0 {name=V9 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} 250 -80 0 0 {name=l12 lab=GND}
C {lab_pin.sym} 600 -240 0 1 {name=p7 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 440 -240 0 0 {name=x3}
C {vsource.sym} 540 -340 0 0 {name=V10 value="PWL(0 0 0.42501m 0 0.42502m 3.3)" savecurrent=false}
C {gnd.sym} 540 -290 0 0 {name=l13 lab=GND}
C {vsource.sym} 490 -120 0 0 {name=V11 value="PWL(0 3.3 0.42501m 3.3 0.42502m 0)" savecurrent=false}
C {gnd.sym} 490 -70 0 0 {name=l14 lab=GND}
C {gnd.sym} 400 -170 0 0 {name=l15 lab=GND}
C {lab_pin.sym} 390 -320 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {gnd.sym} 750 -150 0 0 {name=l16 lab=GND}
C {lab_pin.sym} 1100 -250 0 1 {name=p14 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 940 -250 0 0 {name=x4}
C {gnd.sym} 900 -180 0 0 {name=l17 lab=GND}
C {lab_pin.sym} 890 -330 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 940 -340 0 1 {name=p16 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 940 -190 0 1 {name=p17 sig_type=std_logic lab=!CLK_ENA}
C {lab_pin.sym} 560 -180 0 1 {name=p18 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 610 -390 0 1 {name=p19 sig_type=std_logic lab=!CLK_ENA}

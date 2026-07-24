v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -2090 -450 -2090 500 {}
L 4 -2030 500 -220 500 {}
L 4 -120 -510 -120 500 {}
L 4 -2030 -510 -220 -510 {}
L 4 -2090 -510 -2090 -440 {}
L 4 70 220 70 500 {}
L 4 70 500 760 500 {}
L 4 950 220 950 500 {}
L 4 70 220 760 220 {}
L 4 760 220 950 220 {}
L 4 760 500 950 500 {}
L 4 -2090 -510 -2030 -510 {}
L 4 -2090 500 -2030 500 {}
L 4 -220 500 -120 500 {}
L 4 -220 -510 -120 -510 {}
L 4 50 -510 50 -70 {}
L 4 50 -70 720 -70 {}
L 4 1090 -510 1090 -70 {}
L 4 50 -510 720 -510 {}
L 4 720 -70 1090 -70 {}
L 4 720 -510 1090 -510 {}
T {VDD, GND, SCAN INPUT} 220 90 0 0 1 1 {}
T {Scan chain input artificially generated to enable 
5t 3x and common source 3x sizing} 260 160 0 0 0.4 0.4 {}
T {CL = 120p} -380 150 0 0 0.75 0.75 {}
T {IBIAS = 100u} -1380 160 0 0 0.4 0.4 {}
T {IMPLEMENTATION} -1350 -680 0 0 1 1 {}
T {Configure the 5t OTA in 3× mode and the common source stage 
in 3x mode as a two-stage inverting amplifier to amplify a sine wave 
input by 5 while driving a 120pF capacitive load.} -1470 -610 0 0 0.4 0.4 {}
T {DC = 1.65V
500Hz Frequency 
50mV Amplitude
1ms Delay} -1970 190 0 0 0.5 0.5 {}
T {DC = 1.65V} -1720 190 0 0 0.5 0.5 {}
T {R1 = 100K} -1730 -310 0 0 0.75 0.75 {}
T {R2 = 500K} -1010 440 0 0 0.75 0.75 {}
T {Rm = 2.7K} -690 -220 0 0 0.75 0.75 {}
T {Cc = 20p} -410 -210 0 0 0.75 0.75 {}
T {CLOCK GENERATION} 310 -670 0 0 1 1 {}
T {Artificially generate a clock signal and ensure it 
turns off after around .425ms, which is when the 
scan in signal has fully propogated through the scan chain} 290 -600 0 0 0.4 0.4 {}
N -930 -390 -930 -350 {lab=CLK}
N -900 -390 -900 -350 {lab=SCAN_IN}
N 360 290 360 340 {lab=SCAN_IN}
N 360 400 360 440 {lab=GND}
N -1080 -380 -1080 -350 {lab=GND}
N -1130 -390 -1130 -370 {lab=GND}
N -1130 -390 -1080 -390 {lab=GND}
N -1080 -390 -1080 -380 {lab=GND}
N 220 400 220 440 {lab=GND}
N 220 290 220 340 {lab=VDD}
N -1060 -390 -1060 -350 {lab=VDD}
N -1310 -60 -1220 -60 {lab=#net1}
N -1310 -60 -1310 40 {lab=#net1}
N -1310 100 -1310 130 {lab=VDD}
N -390 -20 -330 -20 {lab=OUT_CS}
N -370 -20 -370 10 {lab=OUT_CS}
N -370 70 -370 110 {lab=GND}
N -1660 -180 -1610 -180 {lab=#net2}
N -1700 -180 -1700 -130 {lab=#net2}
N -1700 120 -1700 150 {lab=GND}
N -820 380 -610 380 {lab=OUT_CS}
N -1410 380 -1010 380 {lab=#net3}
N -1700 -180 -1660 -180 {lab=#net2}
N -1700 -130 -1700 60 {lab=#net2}
N -740 -20 -560 -20 {lab=OUT_CS}
N -740 -140 -650 -140 {lab=#net4}
N -650 -140 -650 240 {lab=#net4}
N -650 -140 -610 -140 {lab=#net4}
N -440 -140 -410 -140 {lab=OUT_CS}
N -410 -20 -390 -20 {lab=OUT_CS}
N -560 -20 -410 -20 {lab=OUT_CS}
N -1480 380 -1410 380 {lab=#net3}
N -610 380 -450 380 {lab=OUT_CS}
N -450 -20 -450 380 {lab=OUT_CS}
N -1430 -90 -1220 -90 {lab=#net4}
N -1430 -90 -1430 240 {lab=#net4}
N -1430 240 -650 240 {lab=#net4}
N -1480 -170 -1480 370 {lab=#net3}
N -1480 370 -1480 380 {lab=#net3}
N -1610 -180 -1550 -180 {lab=#net2}
N -1010 380 -950 380 {lab=#net3}
N -550 -140 -500 -140 {lab=#net5}
N -890 380 -820 380 {lab=OUT_CS}
N -1830 50 -1830 150 {lab=GND}
N -1830 -90 -1830 -10 {lab=INN_5T}
N -1830 -150 -1830 -90 {lab=INN_5T}
N -1810 -210 -1660 -210 {lab=INN_5T}
N -1830 -210 -1810 -210 {lab=INN_5T}
N -1830 -210 -1830 -150 {lab=INN_5T}
N -1550 -180 -1220 -180 {lab=#net2}
N -1600 -210 -1220 -210 {lab=#net3}
N -1480 -210 -1480 -170 {lab=#net3}
N -410 -140 -410 -20 {lab=OUT_CS}
N -1260 -10 -1260 40 {lab=#net6}
N -1260 -10 -1220 -10 {lab=#net6}
N -1260 100 -1260 120 {lab=GND}
N 180 -300 180 -250 {lab=#net7}
N 180 -190 180 -150 {lab=GND}
N 180 -310 280 -310 {lab=#net7}
N 180 -310 180 -300 {lab=#net7}
N 450 -310 530 -310 {lab=CLK}
N 370 -440 370 -360 {lab=!CLK_ENA}
N 370 -460 470 -460 {lab=!CLK_ENA}
N 470 -460 470 -440 {lab=!CLK_ENA}
N 470 -380 470 -360 {lab=GND}
N 370 -460 370 -440 {lab=!CLK_ENA}
N 370 -290 370 -250 {lab=CLK_ENA}
N 370 -250 420 -250 {lab=CLK_ENA}
N 420 -250 420 -220 {lab=CLK_ENA}
N 420 -160 420 -140 {lab=GND}
N 330 -260 330 -240 {lab=GND}
N 320 -390 320 -360 {lab=VDD}
N 680 -310 680 -260 {lab=GND}
N 680 -260 680 -220 {lab=GND}
N 680 -320 780 -320 {lab=GND}
N 680 -320 680 -310 {lab=GND}
N 950 -320 1030 -320 {lab=CLK}
N 870 -300 870 -260 {lab=!CLK_ENA}
N 830 -270 830 -250 {lab=GND}
N 820 -400 820 -370 {lab=VDD}
N 870 -410 870 -370 {lab=CLK_ENA}
N 420 -250 490 -250 {lab=CLK_ENA}
N 470 -460 540 -460 {lab=!CLK_ENA}
C {vsource.sym} 360 370 0 0 {name=V3 value="PWL(0 0 0.0499m 0 0.05m 3.3 0.1499m 3.3 0.15m 0 0.1499m 0 0.15m 3.3  0.24999m 3.3 0.25m 0)" savecurrent=false}
C {gnd.sym} 360 440 0 0 {name=l1 lab=GND}
C {gnd.sym} -1130 -370 0 0 {name=l2 lab=GND}
C {vsource.sym} 220 370 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 220 440 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 220 290 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -1060 -390 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 360 290 0 1 {name=p2 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -900 -390 0 1 {name=p3 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -930 -390 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {isource.sym} -1310 70 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -1310 130 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -330 -20 0 1 {name=p11 sig_type=std_logic lab=OUT_CS}
C {devices/code_shown.sym} 1010 0 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 1010 110 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control
tran 1u 10m

meas tran en0_5t find v(x1.en_0_5t) at=5m
meas tran enb0_5t find v(x1.!en_0_5t) at=5m
meas tran en1_5t find v(x1.en_1_5t) at=5m
meas tran enb1_5t find v(x1.!en_1_5t) at=5m
meas tran en0_cs find v(x1.en_0_cs) at=5m
meas tran enb0_cs find v(x1.!en_0_cs) at=5m
meas tran en1_cs find v(x1.en_1_cs) at=5m
meas tran enb1_cs find v(x1.!en_1_cs) at=5m
print en0_5t enb0_5t en1_5t enb1_5t
print en0_cs enb0_cs en1_cs enb1_cs

plot v(OUT_CS) v(INN_5T)
meas tran vout_pp pp v(out_cs) from=5m to=10m
meas tran vin_pp pp v(inn_5t) from=5m to=10m
let gain = vout_pp / vin_pp
print gain

.endc
"}
C {capa.sym} -370 40 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -370 110 0 0 {name=l8 lab=GND}
C {gnd.sym} -1700 150 0 0 {name=l10 lab=GND}
C {res.sym} -580 -140 1 0 {name=R3
value=2.7k
footprint=1206
device=resistor
m=1}
C {capa.sym} -470 -140 1 0 {name=CLOAD1
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -1700 90 0 0 {name=V7 value=1.65 savecurrent=false}
C {res.sym} -1630 -210 3 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {res.sym} -920 380 1 0 {name=R1
value=500k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -1830 20 0 1 {name=V6 value= "dc 1.65 ac 0 sin(1.65 50m 500 1m)" savecurrent=false}
C {gnd.sym} -1830 150 0 0 {name=l9 lab=GND}
C {lab_pin.sym} -1830 -210 0 0 {name=p13 sig_type=std_logic lab=INN_5T}
C {libs/core_tb/schem/DUT.sym} -990 -140 0 0 {name=x1}
C {vsource.sym} -1260 70 0 0 {name=V8 value=3.3 savecurrent=false}
C {gnd.sym} -1260 120 0 0 {name=l11 lab=GND}
C {vsource.sym} 180 -220 0 0 {name=V9 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} 180 -150 0 0 {name=l12 lab=GND}
C {lab_pin.sym} 530 -310 0 1 {name=p7 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 370 -310 0 0 {name=x3}
C {vsource.sym} 470 -410 0 0 {name=V10 value="PWL(0 0 0.42501m 0 0.42502m 3.3)" savecurrent=false}
C {gnd.sym} 470 -360 0 0 {name=l13 lab=GND}
C {vsource.sym} 420 -190 0 0 {name=V11 value="PWL(0 3.3 0.42501m 3.3 0.42502m 0)" savecurrent=false}
C {gnd.sym} 420 -140 0 0 {name=l14 lab=GND}
C {gnd.sym} 330 -240 0 0 {name=l15 lab=GND}
C {lab_pin.sym} 320 -390 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {gnd.sym} 680 -220 0 0 {name=l16 lab=GND}
C {lab_pin.sym} 1030 -320 0 1 {name=p14 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 870 -320 0 0 {name=x4}
C {gnd.sym} 830 -250 0 0 {name=l17 lab=GND}
C {lab_pin.sym} 820 -400 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 870 -410 0 1 {name=p16 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 870 -260 0 1 {name=p17 sig_type=std_logic lab=!CLK_ENA}
C {lab_pin.sym} 490 -250 0 1 {name=p18 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 540 -460 0 1 {name=p19 sig_type=std_logic lab=!CLK_ENA}

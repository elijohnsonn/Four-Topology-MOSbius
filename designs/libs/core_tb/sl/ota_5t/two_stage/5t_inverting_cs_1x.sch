v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 180 -380 180 60 {}
L 4 180 60 850 60 {}
L 4 850 -380 850 60 {}
L 4 180 -380 850 -380 {}
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
T {CLOCK GENERATION} 230 -540 0 0 1 1 {}
T {Artificially generate a clock signal and ensure it 
turns off after around .425ms, which is when the 
scan in signal has fully propogated through the scan chain} 210 -470 0 0 0.4 0.4 {}
T {VDD, GND, SCAN INPUT} 220 90 0 0 1 1 {}
T {Scan chain input artificially generated to enable 
5t 1x and common source 1x sizing} 260 160 0 0 0.4 0.4 {}
T {CL = 120p} -380 150 0 0 0.75 0.75 {}
T {IBIAS = 100u} -1380 160 0 0 0.4 0.4 {}
T {IMPLEMENTATION} -1350 -680 0 0 1 1 {}
T {Configure the 5t OTA in 1× mode and the common source stage 
in 1x mode as a two-stage inverting amplifier to amplify a sine wave 
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
N 310 -170 310 -120 {lab=#net1}
N 310 -60 310 -20 {lab=GND}
N 310 -180 410 -180 {lab=#net1}
N 310 -180 310 -170 {lab=#net1}
N 580 -180 660 -180 {lab=CLK}
N 500 -310 500 -230 {lab=#net2}
N 500 -330 600 -330 {lab=#net2}
N 600 -330 600 -310 {lab=#net2}
N 600 -250 600 -230 {lab=GND}
N 500 -330 500 -310 {lab=#net2}
N 500 -160 500 -120 {lab=#net3}
N 500 -120 550 -120 {lab=#net3}
N 550 -120 550 -90 {lab=#net3}
N 550 -30 550 -10 {lab=GND}
N 460 -130 460 -110 {lab=GND}
N 450 -260 450 -230 {lab=VDD}
N -1310 -60 -1220 -60 {lab=#net4}
N -1310 -60 -1310 40 {lab=#net4}
N -1310 100 -1310 130 {lab=VDD}
N -390 -20 -330 -20 {lab=OUT_CS}
N -370 -20 -370 10 {lab=OUT_CS}
N -370 70 -370 110 {lab=GND}
N -1660 -180 -1610 -180 {lab=#net5}
N -1700 -180 -1700 -130 {lab=#net5}
N -1700 120 -1700 150 {lab=GND}
N -820 380 -610 380 {lab=OUT_CS}
N -1410 380 -1010 380 {lab=#net6}
N -1700 -180 -1660 -180 {lab=#net5}
N -1700 -130 -1700 60 {lab=#net5}
N -740 -20 -560 -20 {lab=OUT_CS}
N -740 -140 -650 -140 {lab=#net7}
N -650 -140 -650 240 {lab=#net7}
N -650 -140 -610 -140 {lab=#net7}
N -440 -140 -410 -140 {lab=OUT_CS}
N -410 -20 -390 -20 {lab=OUT_CS}
N -560 -20 -410 -20 {lab=OUT_CS}
N -1480 380 -1410 380 {lab=#net6}
N -610 380 -450 380 {lab=OUT_CS}
N -450 -20 -450 380 {lab=OUT_CS}
N -1430 -90 -1220 -90 {lab=#net7}
N -1430 -90 -1430 240 {lab=#net7}
N -1430 240 -650 240 {lab=#net7}
N -1480 -170 -1480 370 {lab=#net6}
N -1480 370 -1480 380 {lab=#net6}
N -1610 -180 -1550 -180 {lab=#net5}
N -1010 380 -950 380 {lab=#net6}
N -550 -140 -500 -140 {lab=#net8}
N -890 380 -820 380 {lab=OUT_CS}
N -1830 50 -1830 150 {lab=GND}
N -1830 -90 -1830 -10 {lab=INN_5T}
N -1830 -150 -1830 -90 {lab=INN_5T}
N -1810 -210 -1660 -210 {lab=INN_5T}
N -1830 -210 -1810 -210 {lab=INN_5T}
N -1830 -210 -1830 -150 {lab=INN_5T}
N -1550 -180 -1220 -180 {lab=#net5}
N -1600 -210 -1220 -210 {lab=#net6}
N -1480 -210 -1480 -170 {lab=#net6}
N -410 -140 -410 -20 {lab=OUT_CS}
C {vsource.sym} 360 370 0 0 {name=V3 value="PWL(0 0 0.0999m 0 0.1m 3.3 0.1499m 3.3 0.15m 0.1999m 3.3 0.2m 0)" savecurrent=false}
C {gnd.sym} 360 440 0 0 {name=l1 lab=GND}
C {gnd.sym} -1130 -370 0 0 {name=l2 lab=GND}
C {vsource.sym} 220 370 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 220 440 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 220 290 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -1060 -390 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 360 290 0 1 {name=p2 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -900 -390 0 1 {name=p3 sig_type=std_logic lab=SCAN_IN}
C {vsource.sym} 310 -90 0 0 {name=V2 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} 310 -20 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 660 -180 0 1 {name=p4 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -930 -390 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 500 -180 0 0 {name=x2}
C {vsource.sym} 600 -280 0 0 {name=V4 value="PWL(0 0 0.42501m 0 0.42502m 3.3)" savecurrent=false}
C {gnd.sym} 600 -230 0 0 {name=l5 lab=GND}
C {vsource.sym} 550 -60 0 0 {name=V5 value="PWL(0 3.3 0.42501m 3.3 0.42502m 0)" savecurrent=false}
C {gnd.sym} 550 -10 0 0 {name=l6 lab=GND}
C {gnd.sym} 460 -110 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 450 -260 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {isource.sym} -1310 70 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -1310 130 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -330 -20 0 1 {name=p11 sig_type=std_logic lab=OUT_CS}
C {devices/code_shown.sym} 990 -60 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 990 50 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control
set color0 = white
set color1 = black

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
value=250k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -1830 20 0 1 {name=V6 value= "dc 1.65 ac 0 sin(1.65 50m 500 1m)" savecurrent=false}
C {gnd.sym} -1830 150 0 0 {name=l9 lab=GND}
C {lab_pin.sym} -1830 -210 0 0 {name=p13 sig_type=std_logic lab=INN_5T}
C {libs/core_tb/schem/DUT.sym} -990 -140 0 0 {name=x1}

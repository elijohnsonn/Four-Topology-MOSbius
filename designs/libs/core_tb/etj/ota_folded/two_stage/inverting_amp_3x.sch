v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -70 -390 -70 50 {}
L 4 -70 50 600 50 {}
L 4 970 -390 970 50 {}
L 4 -70 -390 600 -390 {}
L 4 -2090 -450 -2090 500 {}
L 4 -2030 500 -220 500 {}
L 4 -120 -510 -120 500 {}
L 4 -2030 -510 -220 -510 {}
L 4 -2090 -510 -2090 -440 {}
L 4 -60 220 -60 500 {}
L 4 -60 500 630 500 {}
L 4 820 220 820 500 {}
L 4 -60 220 630 220 {}
L 4 630 220 820 220 {}
L 4 630 500 820 500 {}
L 4 -2090 -510 -2030 -510 {}
L 4 -2090 500 -2030 500 {}
L 4 -220 500 -120 500 {}
L 4 -220 -510 -120 -510 {}
L 4 600 50 970 50 {}
L 4 600 -390 970 -390 {}
T {CLOCK GENERATION} 190 -550 0 0 1 1 {}
T {Artificially generate a clock signal and ensure it 
turns off after around .425ms, which is when the 
scan in signal has fully propogated through the scan chain} 170 -480 0 0 0.4 0.4 {}
T {VDD, GND, SCAN INPUT} 90 90 0 0 1 1 {}
T {Scan chain input artificially generated to enable 
folded cascode 3x and common source 3x sizing} 130 160 0 0 0.4 0.4 {}
T {CL = 120p} -380 150 0 0 0.75 0.75 {}
T {IBIAS = 100u} -1380 160 0 0 0.4 0.4 {}
T {IMPLEMENTATION} -1350 -680 0 0 1 1 {}
T {Configure the folded cascode in 3× mode and the common source stage 
in 3x mode as a two-stage inverting amplifier to amplify a sine wave 
input by 5 while driving a 120pF capacitive load.} -1470 -610 0 0 0.4 0.4 {}
T {DC = 1.65V
100kHz Frequency 
200mV Amplitude
1ms Delay} -2020 130 0 0 0.5 0.5 {}
T {DC = 1.65V} -1770 130 0 0 0.5 0.5 {}
T {R1 = 100K} -1780 -370 0 0 0.75 0.75 {}
T {R2 = 500K} -1010 440 0 0 0.75 0.75 {}
T {Rm = 2.7K} -690 -280 0 0 0.75 0.75 {}
T {Cc = 20p} -410 -270 0 0 0.75 0.75 {}
N -930 -390 -930 -350 {lab=CLK}
N -900 -390 -900 -350 {lab=SCAN_IN}
N 230 290 230 340 {lab=SCAN_IN}
N 230 400 230 440 {lab=GND}
N -1080 -380 -1080 -350 {lab=GND}
N -1130 -390 -1130 -370 {lab=GND}
N -1130 -390 -1080 -390 {lab=GND}
N -1080 -390 -1080 -380 {lab=GND}
N 90 400 90 440 {lab=GND}
N 90 290 90 340 {lab=VDD}
N -1060 -390 -1060 -350 {lab=VDD}
N 60 -180 60 -130 {lab=#net1}
N 60 -70 60 -30 {lab=GND}
N 60 -190 160 -190 {lab=#net1}
N 60 -190 60 -180 {lab=#net1}
N 330 -190 410 -190 {lab=CLK}
N 250 -320 250 -240 {lab=!CLK_ENA}
N 250 -340 350 -340 {lab=!CLK_ENA}
N 350 -340 350 -320 {lab=!CLK_ENA}
N 350 -260 350 -240 {lab=GND}
N 250 -340 250 -320 {lab=!CLK_ENA}
N 250 -170 250 -130 {lab=CLK_ENA}
N 250 -130 300 -130 {lab=CLK_ENA}
N 300 -130 300 -100 {lab=CLK_ENA}
N 300 -40 300 -20 {lab=GND}
N 210 -140 210 -120 {lab=GND}
N 200 -270 200 -240 {lab=VDD}
N -1310 -60 -1220 -60 {lab=#net2}
N -1310 -60 -1310 40 {lab=#net2}
N -1310 100 -1310 130 {lab=VDD}
N -1330 -240 -1220 -240 {lab=#net3}
N -390 -20 -330 -20 {lab=OUT_CS}
N -370 -20 -370 10 {lab=OUT_CS}
N -370 70 -370 110 {lab=GND}
N -1410 -240 -1330 -240 {lab=#net3}
N -1490 -240 -1410 -240 {lab=#net3}
N -1710 -240 -1660 -240 {lab=#net3}
N -1750 -240 -1750 -190 {lab=#net3}
N -1750 60 -1750 90 {lab=GND}
N -820 380 -610 380 {lab=OUT_CS}
N -1410 380 -1010 380 {lab=#net4}
N -1750 -240 -1710 -240 {lab=#net3}
N -1750 -190 -1750 0 {lab=#net3}
N -740 -20 -560 -20 {lab=OUT_CS}
N -740 -200 -650 -200 {lab=#net5}
N -650 -200 -650 180 {lab=#net5}
N -650 -200 -610 -200 {lab=#net5}
N -440 -200 -410 -200 {lab=OUT_CS}
N -410 -200 -410 -20 {lab=OUT_CS}
N -410 -20 -390 -20 {lab=OUT_CS}
N -560 -20 -410 -20 {lab=OUT_CS}
N -1600 -240 -1490 -240 {lab=#net3}
N -1480 380 -1410 380 {lab=#net4}
N -610 380 -450 380 {lab=OUT_CS}
N -450 -20 -450 380 {lab=OUT_CS}
N -1430 -90 -1220 -90 {lab=#net5}
N -1430 -90 -1430 240 {lab=#net5}
N -1430 240 -650 240 {lab=#net5}
N -650 180 -650 240 {lab=#net5}
N -1470 -180 -1360 -270 {lab=#net4}
N -1480 -170 -1470 -180 {lab=#net4}
N -1480 -170 -1480 370 {lab=#net4}
N -1480 370 -1480 380 {lab=#net4}
N -1660 -240 -1600 -240 {lab=#net3}
N -1010 380 -950 380 {lab=#net4}
N -1360 -270 -1220 -270 {lab=#net4}
N -550 -200 -500 -200 {lab=#net6}
N -890 380 -820 380 {lab=OUT_CS}
N -1880 -10 -1880 90 {lab=GND}
N -1880 -150 -1880 -70 {lab=INN_FOLDED}
N -1880 -210 -1880 -150 {lab=INN_FOLDED}
N -1630 -270 -1360 -270 {lab=#net4}
N -1650 -270 -1630 -270 {lab=#net4}
N -1860 -270 -1710 -270 {lab=INN_FOLDED}
N -1880 -270 -1860 -270 {lab=INN_FOLDED}
N -1880 -270 -1880 -210 {lab=INN_FOLDED}
N 560 -190 560 -140 {lab=GND}
N 560 -140 560 -100 {lab=GND}
N 560 -200 660 -200 {lab=GND}
N 560 -200 560 -190 {lab=GND}
N 830 -200 910 -200 {lab=CLK}
N 750 -180 750 -140 {lab=!CLK_ENA}
N 710 -150 710 -130 {lab=GND}
N 700 -280 700 -250 {lab=VDD}
N 750 -290 750 -250 {lab=CLK_ENA}
N 300 -130 370 -130 {lab=CLK_ENA}
N 350 -340 420 -340 {lab=!CLK_ENA}
C {vsource.sym} 230 370 0 0 {name=V3 value="PWL(0 0 0.0499m 0 0.05m 3.3 0.1499m 3.3 0.15m 0 0.34999m 0 0.35m 3.3 0.499999m 3.3 0.5m 0)" savecurrent=false}
C {gnd.sym} 230 440 0 0 {name=l1 lab=GND}
C {gnd.sym} -1130 -370 0 0 {name=l2 lab=GND}
C {vsource.sym} 90 370 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 90 440 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 90 290 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -1060 -390 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 230 290 0 1 {name=p2 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -900 -390 0 1 {name=p3 sig_type=std_logic lab=SCAN_IN}
C {vsource.sym} 60 -100 0 0 {name=V2 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} 60 -30 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 410 -190 0 1 {name=p4 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -930 -390 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 250 -190 0 0 {name=x2}
C {vsource.sym} 350 -290 0 0 {name=V4 value="PWL(0 0 0.42501m 0 0.42502m 3.3)" savecurrent=false}
C {gnd.sym} 350 -240 0 0 {name=l5 lab=GND}
C {vsource.sym} 300 -70 0 0 {name=V5 value="PWL(0 3.3 0.42501m 3.3 0.42502m 0)" savecurrent=false}
C {gnd.sym} 300 -20 0 0 {name=l6 lab=GND}
C {gnd.sym} 210 -120 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 200 -270 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {isource.sym} -1310 70 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -1310 130 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -330 -20 0 1 {name=p11 sig_type=std_logic lab=OUT_CS}
C {devices/code_shown.sym} 1080 -110 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 1080 0 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control
set color0 = white
set color1 = black
tran 1u 3m

meas tran en0_folded find v(x1.en_0_folded) at=5m
meas tran enb0_folded find v(x1.!en_0_folded) at=5m
meas tran en1_folded find v(x1.en_1_folded) at=5m
meas tran enb1_folded find v(x1.!en_1_folded) at=5m
meas tran en0_cs find v(x1.en_0_cs) at=5m
meas tran enb0_cs find v(x1.!en_0_cs) at=5m
meas tran en1_cs find v(x1.en_1_cs) at=5m
meas tran enb1_cs find v(x1.!en_1_cs) at=5m
print en0_folded enb0_folded en1_folded enb1_folded
print en0_cs enb0_cs en1_cs enb1_cs

plot v(OUT_CS) v(INN_FOLDED)
meas tran vout_pp pp v(out_cs) from=5m to=10m
meas tran vin_pp pp v(inn_folded) from=5m to=10m
let gain = vout_pp / vin_pp
print gain

wrdata /foss/designs/libs/core_tb/etj/ota_folded/two_stage/txt_results/two_stage_tran.txt v(out_cs) v(inn_folded)

.endc
"}
C {capa.sym} -370 40 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -370 110 0 0 {name=l8 lab=GND}
C {gnd.sym} -1750 90 0 0 {name=l10 lab=GND}
C {res.sym} -580 -200 1 0 {name=R3
value=2.7k
footprint=1206
device=resistor
m=1}
C {capa.sym} -470 -200 1 0 {name=CLOAD1
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} -1750 30 0 0 {name=V7 value=1.65 savecurrent=false}
C {res.sym} -1680 -270 3 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {res.sym} -920 380 1 0 {name=R1
value=500k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -1880 -40 0 1 {name=V6 value= "dc 1.65 ac 0 sin(1.65 200m 100k 1m)" savecurrent=false}
C {gnd.sym} -1880 90 0 0 {name=l9 lab=GND}
C {lab_pin.sym} -1880 -270 0 0 {name=p13 sig_type=std_logic lab=INN_FOLDED}
C {gnd.sym} 560 -100 0 0 {name=l11 lab=GND}
C {lab_pin.sym} 910 -200 0 1 {name=p7 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 750 -200 0 0 {name=x3}
C {gnd.sym} 710 -130 0 0 {name=l12 lab=GND}
C {lab_pin.sym} 700 -280 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 750 -290 0 1 {name=p14 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 750 -140 0 1 {name=p15 sig_type=std_logic lab=!CLK_ENA}
C {lab_pin.sym} 370 -130 0 1 {name=p10 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 420 -340 0 1 {name=p16 sig_type=std_logic lab=!CLK_ENA}
C {libs/core_tb/schem/DUT.sym} -990 -140 0 0 {name=x1}

v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 410 -1160 410 -720 {}
L 4 410 -720 1080 -720 {}
L 4 1080 -1160 1080 -720 {}
L 4 410 -1160 1080 -1160 {}
L 4 -1550 -1230 -1550 -280 {}
L 4 -1550 -280 260 -280 {}
L 4 260 -1290 260 -280 {}
L 4 -1550 -1290 260 -1290 {}
L 4 -1550 -1290 -1550 -1220 {}
L 4 420 -560 420 -280 {}
L 4 420 -280 1110 -280 {}
L 4 1110 -560 1110 -280 {}
L 4 420 -560 1110 -560 {}
T {CLOCK GENERATION} 460 -1320 0 0 1 1 {}
T {Artificially generate a clock signal and ensure it 
turns off after around .425ms, which is when the 
scan in signal has fully propogated through the scan chain} 440 -1250 0 0 0.4 0.4 {}
T {VDD, GND, SCAN INPUT} 450 -690 0 0 1 1 {}
T {Scan chain input artificially generated to 
enable telescopic cascode 3x sizing} 530 -620 0 0 0.4 0.4 {}
T {R2 = 500K} -580 -480 0 0 0.75 0.75 {}
T {R1 = 100K} -1160 -830 0 0 0.75 0.75 {}
T {CL = 120p} 20 -780 0 0 0.75 0.75 {}
T {DC = 1.65V
500Hz Frequency 
50mV Amplitude
1ms Delay} -1290 -520 0 0 0.5 0.5 {}
T {DC = 1.65V} -1480 -520 0 0 0.5 0.5 {}
T {IBIAS1=100u} -900 -610 0 0 0.4 0.4 {}
T {IMPLEMENTATION} -870 -1460 0 0 1 1 {}
T {Configure the telescopic cascode in 3× mode 
as an inverting amplifier to amplify a 
sine wave input by 5 while driving a 
120pF capacitive load.} -860 -1400 0 0 0.4 0.4 {}
N -450 -1170 -450 -1130 {lab=CLK}
N -420 -1170 -420 -1130 {lab=SCAN_IN}
N 720 -490 720 -440 {lab=SCAN_IN}
N 720 -380 720 -340 {lab=GND}
N -600 -1160 -600 -1130 {lab=GND}
N -650 -1170 -650 -1150 {lab=GND}
N -650 -1170 -600 -1170 {lab=GND}
N -600 -1170 -600 -1160 {lab=GND}
N 570 -380 570 -340 {lab=GND}
N 570 -490 570 -440 {lab=VDD}
N -580 -1170 -580 -1130 {lab=VDD}
N 540 -950 540 -900 {lab=#net1}
N 540 -840 540 -800 {lab=GND}
N 540 -960 640 -960 {lab=#net1}
N 540 -960 540 -950 {lab=#net1}
N 810 -960 890 -960 {lab=CLK}
N 730 -1090 730 -1010 {lab=#net2}
N 730 -1110 830 -1110 {lab=#net2}
N 830 -1110 830 -1090 {lab=#net2}
N 830 -1030 830 -1010 {lab=GND}
N 730 -1110 730 -1090 {lab=#net2}
N 730 -940 730 -900 {lab=#net3}
N 730 -900 780 -900 {lab=#net3}
N 780 -900 780 -870 {lab=#net3}
N 780 -810 780 -790 {lab=GND}
N 690 -910 690 -890 {lab=GND}
N 680 -1040 680 -1010 {lab=VDD}
N -830 -840 -740 -840 {lab=#net4}
N -830 -840 -830 -740 {lab=#net4}
N -830 -680 -830 -650 {lab=VDD}
N -910 -930 -740 -930 {lab=INP_TELESCOPIC}
N -260 -860 -210 -860 {lab=OUT_TELESCOPIC}
N -210 -860 -80 -860 {lab=OUT_TELESCOPIC}
N -930 -850 -930 -780 {lab=#net5}
N -1410 -600 -1410 -570 {lab=GND}
N -80 -860 -20 -860 {lab=OUT_TELESCOPIC}
N -1410 -930 -1410 -730 {lab=INP_TELESCOPIC}
N -1270 -930 -910 -930 {lab=INP_TELESCOPIC}
N -1410 -730 -1410 -700 {lab=INP_TELESCOPIC}
N -60 -860 -60 -830 {lab=OUT_TELESCOPIC}
N -60 -770 -60 -730 {lab=GND}
N -1410 -700 -1410 -660 {lab=INP_TELESCOPIC}
N -930 -780 -930 -720 {lab=#net5}
N -930 -900 -850 -900 {lab=#net5}
N -930 -900 -930 -850 {lab=#net5}
N -1010 -900 -930 -900 {lab=#net5}
N -1120 -900 -1070 -900 {lab=INN_TELESCOPIC}
N -1270 -900 -1270 -850 {lab=INN_TELESCOPIC}
N -1270 -600 -1270 -570 {lab=GND}
N -340 -400 -130 -400 {lab=OUT_TELESCOPIC}
N -130 -500 -130 -400 {lab=OUT_TELESCOPIC}
N -470 -400 -340 -400 {lab=OUT_TELESCOPIC}
N -930 -400 -530 -400 {lab=#net5}
N -1410 -930 -1360 -930 {lab=INP_TELESCOPIC}
N -1270 -900 -1230 -900 {lab=INN_TELESCOPIC}
N -1360 -930 -1270 -930 {lab=INP_TELESCOPIC}
N -1230 -900 -1120 -900 {lab=INN_TELESCOPIC}
N -1270 -850 -1270 -660 {lab=INN_TELESCOPIC}
N -130 -860 -130 -500 {lab=OUT_TELESCOPIC}
N -930 -720 -930 -400 {lab=#net5}
N -850 -900 -740 -900 {lab=#net5}
C {vsource.sym} 720 -410 0 0 {name=V3 value= "PWL(0 0 0.2499m 0 0.25m 3.3 0.34999m 3.3 0.35m 0)" savecurrent=false}
C {gnd.sym} 720 -340 0 0 {name=l1 lab=GND}
C {gnd.sym} -650 -1150 0 0 {name=l2 lab=GND}
C {vsource.sym} 570 -410 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 570 -340 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 570 -490 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -580 -1170 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 720 -490 0 1 {name=p2 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -420 -1170 0 1 {name=p3 sig_type=std_logic lab=SCAN_IN}
C {vsource.sym} 540 -870 0 0 {name=V2 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} 540 -800 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 890 -960 0 1 {name=p4 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -450 -1170 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 730 -960 0 0 {name=x2}
C {vsource.sym} 830 -1060 0 0 {name=V4 value="PWL(0 0 0.42501m 0 0.42502m 3.3)" savecurrent=false}
C {gnd.sym} 830 -1010 0 0 {name=l5 lab=GND}
C {vsource.sym} 780 -840 0 0 {name=V5 value="PWL(0 3.3 0.42501m 3.3 0.42502m 0)" savecurrent=false}
C {gnd.sym} 780 -790 0 0 {name=l6 lab=GND}
C {gnd.sym} 690 -890 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 680 -1040 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {isource.sym} -830 -710 2 0 {name=IBIAS1 value=100u}
C {lab_pin.sym} -830 -650 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -20 -860 0 1 {name=p11 sig_type=std_logic lab=OUT_TELESCOPIC}
C {devices/code_shown.sym} 1180 -900 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 1180 -790 0 0 {name=Simulation1 only_toplevel=false 

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
C {gnd.sym} -1410 -570 0 0 {name=l9 lab=GND}
C {vsource.sym} -1410 -630 0 0 {name=V7 value=1.65 savecurrent=false}
C {capa.sym} -60 -800 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -60 -730 0 0 {name=l8 lab=GND}
C {res.sym} -1040 -900 1 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -1270 -630 0 0 {name=V6 value= "dc 1.65 ac 0 sin(1.65 50m 500 1m)" savecurrent=false}
C {gnd.sym} -1270 -570 0 0 {name=l10 lab=GND}
C {lab_pin.sym} -1270 -900 0 0 {name=p13 sig_type=std_logic lab=INN_TELESCOPIC}
C {lab_pin.sym} -1410 -930 0 0 {name=p12 sig_type=std_logic lab=INP_TELESCOPIC}
C {res.sym} -500 -400 1 0 {name=R1
value=500k
footprint=1206
device=resistor
m=1}
C {libs/core_tb/schem/DUT.sym} -510 -920 0 0 {name=x1}

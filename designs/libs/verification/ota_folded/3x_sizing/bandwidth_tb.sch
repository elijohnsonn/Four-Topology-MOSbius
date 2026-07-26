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
L 4 260 280 260 560 {}
L 4 260 560 950 560 {}
L 4 1040 280 1040 560 {}
L 4 260 280 950 280 {}
L 4 950 280 1040 280 {}
L 4 950 560 1040 560 {}
L 4 80 -380 80 60 {}
L 4 80 60 750 60 {}
L 4 1120 -380 1120 60 {}
L 4 80 -380 750 -380 {}
L 4 750 60 1120 60 {}
L 4 750 -380 1120 -380 {}
T {VDD, GND, SCAN INPUT, PROGRAMMABLE ENABLE} 20 150 0 0 1 1 {}
T {Scan chain input artificially generated to enable folded cascode 1x sizing
prog_ena sets default (low) or program (high)} 300 220 0 0 0.4 0.4 {}
T {R2 = 500K} -880 360 0 0 0.75 0.75 {}
T {R1 = 100K} -1460 -110 0 0 0.75 0.75 {}
T {CL = 120p} -280 -60 0 0 0.75 0.75 {}
T {DC = 1.65V
500Hz Frequency 
50mV Amplitude
1ms Delay} -1590 200 0 0 0.5 0.5 {}
T {DC = 1.65V} -1780 200 0 0 0.5 0.5 {}
T {IBIAS = 100u} -1200 220 0 0 0.4 0.4 {}
T {IMPLEMENTATION} -1110 -630 0 0 1 1 {}
T {Configure the folded cascode in 3× mode 
as an inverting amplifier to amplify a 
sine wave input by 5 while driving a 
120pF capacitive load.} -1100 -570 0 0 0.4 0.4 {}
T {CLOCK GENERATION} 340 -540 0 0 1 1 {}
T {Artificially generate a clock signal and ensure it 
turns off after around .425ms, which is when the 
scan in signal has fully propogated through the scan chain} 320 -470 0 0 0.4 0.4 {}
N -750 -330 -750 -290 {lab=CLK}
N -720 -330 -720 -290 {lab=SCAN_IN}
N 560 350 560 400 {lab=SCAN_IN}
N 560 460 560 500 {lab=GND}
N -900 -320 -900 -290 {lab=GND}
N -950 -330 -950 -310 {lab=GND}
N -950 -330 -900 -330 {lab=GND}
N -900 -330 -900 -320 {lab=GND}
N 410 460 410 500 {lab=GND}
N 410 350 410 400 {lab=VDD}
N -880 -330 -880 -290 {lab=VDD}
N -1130 0 -1040 0 {lab=#net1}
N -1130 0 -1130 100 {lab=#net1}
N -1130 160 -1130 190 {lab=VDD}
N -1210 -210 -1040 -210 {lab=INP_FOLDED}
N -1150 -180 -1040 -180 {lab=#net2}
N -560 -140 -510 -140 {lab=OUT_FOLDED}
N -510 -140 -380 -140 {lab=OUT_FOLDED}
N -430 -140 -430 340 {lab=OUT_FOLDED}
N -1230 0 -1230 340 {lab=#net2}
N -1230 -130 -1230 -60 {lab=#net2}
N -1710 120 -1710 150 {lab=GND}
N -380 -140 -320 -140 {lab=OUT_FOLDED}
N -1710 -210 -1710 -10 {lab=INP_FOLDED}
N -1570 -210 -1210 -210 {lab=INP_FOLDED}
N -1710 -10 -1710 20 {lab=INP_FOLDED}
N -360 -140 -360 -110 {lab=OUT_FOLDED}
N -360 -50 -360 -10 {lab=GND}
N -1710 20 -1710 60 {lab=INP_FOLDED}
N -1230 -60 -1230 0 {lab=#net2}
N -1230 -180 -1150 -180 {lab=#net2}
N -1230 -180 -1230 -130 {lab=#net2}
N -1310 -180 -1230 -180 {lab=#net2}
N -1420 -180 -1370 -180 {lab=INN_FOLDED}
N -1570 -180 -1570 -130 {lab=INN_FOLDED}
N -1570 120 -1570 150 {lab=GND}
N -640 440 -430 440 {lab=OUT_FOLDED}
N -430 340 -430 440 {lab=OUT_FOLDED}
N -770 440 -640 440 {lab=OUT_FOLDED}
N -1230 440 -830 440 {lab=#net2}
N -1230 340 -1230 440 {lab=#net2}
N -1710 -210 -1660 -210 {lab=INP_FOLDED}
N -1570 -180 -1530 -180 {lab=INN_FOLDED}
N -1660 -210 -1570 -210 {lab=INP_FOLDED}
N -1530 -180 -1420 -180 {lab=INN_FOLDED}
N -1570 -130 -1570 60 {lab=INN_FOLDED}
N -1100 50 -1040 50 {lab=PROG_ENA}
N 930 350 930 400 {lab=PROG_ENA}
N 930 460 930 500 {lab=GND}
N 930 340 930 350 {lab=PROG_ENA}
N 210 -170 210 -120 {lab=#net3}
N 210 -60 210 -20 {lab=GND}
N 210 -180 310 -180 {lab=#net3}
N 210 -180 210 -170 {lab=#net3}
N 480 -180 560 -180 {lab=CLK}
N 400 -310 400 -230 {lab=!CLK_ENA}
N 400 -330 500 -330 {lab=!CLK_ENA}
N 500 -330 500 -310 {lab=!CLK_ENA}
N 500 -250 500 -230 {lab=GND}
N 400 -330 400 -310 {lab=!CLK_ENA}
N 400 -160 400 -120 {lab=CLK_ENA}
N 400 -120 450 -120 {lab=CLK_ENA}
N 450 -120 450 -90 {lab=CLK_ENA}
N 450 -30 450 -10 {lab=GND}
N 360 -130 360 -110 {lab=GND}
N 350 -260 350 -230 {lab=VDD}
N 710 -180 710 -130 {lab=GND}
N 710 -130 710 -90 {lab=GND}
N 710 -190 810 -190 {lab=GND}
N 710 -190 710 -180 {lab=GND}
N 980 -190 1060 -190 {lab=CLK}
N 900 -170 900 -130 {lab=!CLK_ENA}
N 860 -140 860 -120 {lab=GND}
N 850 -270 850 -240 {lab=VDD}
N 900 -280 900 -240 {lab=CLK_ENA}
N 450 -120 520 -120 {lab=CLK_ENA}
N 500 -330 570 -330 {lab=!CLK_ENA}
C {gnd.sym} 560 500 0 0 {name=l1 lab=GND}
C {gnd.sym} -950 -310 0 0 {name=l2 lab=GND}
C {vsource.sym} 410 430 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 410 500 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 410 350 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -880 -330 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 560 350 0 1 {name=p2 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -720 -330 0 1 {name=p3 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -750 -330 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {isource.sym} -1130 130 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -1130 190 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -320 -140 0 1 {name=p11 sig_type=std_logic lab=OUT_FOLDED}
C {devices/code_shown.sym} 1390 -240 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
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
C {vsource.sym} -1570 90 0 0 {name=V6 value= "dc 1.65 ac 0 sin(1.65 10m 400k 1m)" savecurrent=false}
C {gnd.sym} -1570 150 0 0 {name=l10 lab=GND}
C {lab_pin.sym} -1570 -180 0 0 {name=p13 sig_type=std_logic lab=INN_FOLDED}
C {lab_pin.sym} -1710 -210 0 0 {name=p12 sig_type=std_logic lab=INP_FOLDED}
C {res.sym} -800 440 1 0 {name=R1
value=500k
footprint=1206
device=resistor
m=1}
C {libs/core_tb/schem/DUT.sym} -810 -80 0 0 {name=x1}
C {lab_pin.sym} -1100 50 3 0 {name=p7 sig_type=std_logic lab=PROG_ENA}
C {vsource.sym} 930 430 0 0 {name=V8 value=3.3 savecurrent=false}
C {gnd.sym} 930 500 0 0 {name=l11 lab=GND}
C {lab_pin.sym} 930 340 0 1 {name=p10 sig_type=std_logic lab=PROG_ENA}
C {vsource.sym} 210 -90 0 0 {name=V9 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} 210 -20 0 0 {name=l12 lab=GND}
C {lab_pin.sym} 560 -180 0 1 {name=p14 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 400 -180 0 0 {name=x3}
C {vsource.sym} 500 -280 0 0 {name=V10 value="PWL(0 0 0.42501m 0 0.42502m 3.3)" savecurrent=false}
C {gnd.sym} 500 -230 0 0 {name=l13 lab=GND}
C {vsource.sym} 450 -60 0 0 {name=V11 value="PWL(0 3.3 0.42501m 3.3 0.42502m 0)" savecurrent=false}
C {gnd.sym} 450 -10 0 0 {name=l14 lab=GND}
C {gnd.sym} 360 -110 0 0 {name=l15 lab=GND}
C {lab_pin.sym} 350 -260 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {gnd.sym} 710 -90 0 0 {name=l16 lab=GND}
C {lab_pin.sym} 1060 -190 0 1 {name=p16 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 900 -190 0 0 {name=x4}
C {gnd.sym} 860 -120 0 0 {name=l17 lab=GND}
C {lab_pin.sym} 850 -270 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 900 -280 0 1 {name=p18 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 900 -130 0 1 {name=p19 sig_type=std_logic lab=!CLK_ENA}
C {lab_pin.sym} 520 -120 0 1 {name=p20 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 570 -330 0 1 {name=p21 sig_type=std_logic lab=!CLK_ENA}
C {code_shown.sym} 1390 -70 0 0 {name=Simulation2 only_toplevel=false 

value=

"
.control
tran .1u 5m

meas tran vout_pp pp v(out_folded) from=2m to=5m
meas tran vin_pp pp v(inn_folded) from=2m to=5m
let gain = vout_pp / vin_pp
let gain_db = 20 * log(gain) / log(10)
print gain gain_db
.endc
"}
C {vsource.sym} 560 430 0 0 {name=V2 value="PWL(0 0 0.34999m 0 0.35m 3.3 0.399999m 3.3 0.4m 0)" savecurrent=false}

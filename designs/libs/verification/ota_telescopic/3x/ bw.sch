v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 600 100 600 380 {}
L 4 600 380 1290 380 {}
L 4 1380 100 1380 380 {}
L 4 600 100 1290 100 {}
L 4 1290 100 1380 100 {}
L 4 1290 380 1380 380 {}
L 4 450 -440 450 0 {}
L 4 450 0 1120 0 {}
L 4 1490 -440 1490 0 {}
L 4 450 -440 1120 -440 {}
L 4 1120 0 1490 0 {}
L 4 1120 -440 1490 -440 {}
T {Scan chain input artificially generated to enable telescopic cascode 3x sizing
} 590 50 0 0 0.4 0.4 {}
T {CLOCK GENERATION} 710 -600 0 0 1 1 {}
T {Artificially generate a clock signal and ensure it 
turns off after around .425ms, which is when the 
scan in signal has fully propogated through the scan chain} 690 -530 0 0 0.4 0.4 {}
N -490 50 -460 50 {lab=PROG_ENA}
N -490 50 -490 80 {lab=PROG_ENA}
N -320 -320 -320 -290 {lab=GND}
N -360 -320 -320 -320 {lab=GND}
N -360 -320 -360 -300 {lab=GND}
N -300 -320 -300 -290 {lab=VDD}
N -200 -320 -200 -300 {lab=CLK}
N -200 -320 -170 -320 {lab=CLK}
N -170 -320 -170 -290 {lab=CLK}
N -140 -320 -140 -290 {lab=SCAN_IN}
N -140 -320 -110 -320 {lab=SCAN_IN}
N -110 -320 -110 -300 {lab=SCAN_IN}
N 20 -20 150 -20 {lab=OUT_TELESCOPIC}
N 150 -20 150 10 {lab=OUT_TELESCOPIC}
N 150 -20 220 -20 {lab=OUT_TELESCOPIC}
N 150 70 150 100 {lab=GND}
N 80 -20 80 240 {lab=OUT_TELESCOPIC}
N -160 240 80 240 {lab=OUT_TELESCOPIC}
N -580 240 -220 240 {lab=#net1}
N -600 -60 -600 240 {lab=#net1}
N -670 -60 -460 -60 {lab=#net1}
N -800 -60 -730 -60 {lab=INN_TELESCOPIC}
N -830 -60 -800 -60 {lab=INN_TELESCOPIC}
N -830 -60 -830 0 {lab=INN_TELESCOPIC}
N -830 60 -830 140 {lab=GND}
N -990 60 -990 140 {lab=GND}
N -990 -90 -990 0 {lab=#net2}
N -930 -90 -460 -90 {lab=#net2}
N -990 -90 -930 -90 {lab=#net2}
N -540 150 -540 180 {lab=VDD}
N -600 240 -580 240 {lab=#net1}
N -540 0 -460 0 {lab=#net3}
N -540 0 -540 90 {lab=#net3}
N 900 170 900 220 {lab=SCAN_IN}
N 900 280 900 320 {lab=GND}
N 750 280 750 320 {lab=GND}
N 750 170 750 220 {lab=VDD}
N 1270 170 1270 220 {lab=PROG_ENA}
N 1270 280 1270 320 {lab=GND}
N 1270 160 1270 170 {lab=PROG_ENA}
N 580 -230 580 -180 {lab=#net4}
N 580 -120 580 -80 {lab=GND}
N 580 -240 680 -240 {lab=#net4}
N 580 -240 580 -230 {lab=#net4}
N 850 -240 930 -240 {lab=CLK}
N 770 -370 770 -290 {lab=!CLK_ENA}
N 770 -390 870 -390 {lab=!CLK_ENA}
N 870 -390 870 -370 {lab=!CLK_ENA}
N 870 -310 870 -290 {lab=GND}
N 770 -390 770 -370 {lab=!CLK_ENA}
N 770 -220 770 -180 {lab=CLK_ENA}
N 770 -180 820 -180 {lab=CLK_ENA}
N 820 -180 820 -150 {lab=CLK_ENA}
N 820 -90 820 -70 {lab=GND}
N 730 -190 730 -170 {lab=GND}
N 720 -320 720 -290 {lab=VDD}
N 1080 -240 1080 -190 {lab=GND}
N 1080 -190 1080 -150 {lab=GND}
N 1080 -250 1180 -250 {lab=GND}
N 1080 -250 1080 -240 {lab=GND}
N 1350 -250 1430 -250 {lab=CLK}
N 1270 -230 1270 -190 {lab=!CLK_ENA}
N 1230 -200 1230 -180 {lab=GND}
N 1220 -330 1220 -300 {lab=VDD}
N 1270 -340 1270 -300 {lab=CLK_ENA}
N 820 -180 890 -180 {lab=CLK_ENA}
N 870 -390 940 -390 {lab=!CLK_ENA}
C {libs/core_tb/schem/DUT.sym} -230 -80 0 0 {name=x1}
C {gnd.sym} -360 -300 0 1 {name=l1 lab=GND}
C {lab_pin.sym} -300 -320 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 1610 -80 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 1610 30 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control
tran 1u 5m

meas tran vout_pp pp v(out_telescopic) from=2m to=5m
meas tran vin_pp pp v(inn_telescopic) from=2m to=5m
let gain = vout_pp / vin_pp
let gain_db = 20 * log(gain) / log(10)
print gain gain_db
.endc
"}
C {capa.sym} 150 40 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 220 -20 0 1 {name=p11 sig_type=std_logic lab=OUT_TELESCOPIC}
C {gnd.sym} 150 100 0 0 {name=l8 lab=GND}
C {res.sym} -190 240 1 0 {name=R1
value=500k
footprint=1206
device=resistor
m=1}
C {res.sym} -700 -60 1 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -830 30 0 0 {name=V6 value= "dc 1.65 ac 0 sin(1.65 10m 500k 1m)" savecurrent=false}
C {gnd.sym} -830 140 0 0 {name=l6 lab=GND}
C {vsource.sym} -990 30 0 1 {name=V7 value=1.65 savecurrent=false}
C {gnd.sym} -990 140 0 1 {name=l7 lab=GND}
C {lab_pin.sym} -830 -60 0 0 {name=p13 sig_type=std_logic lab=INN_TELESCOPIC}
C {isource.sym} -540 120 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -540 180 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {gnd.sym} 900 320 0 0 {name=l9 lab=GND}
C {vsource.sym} 750 250 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} 750 320 0 0 {name=l10 lab=GND}
C {lab_pin.sym} 750 170 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 900 170 0 1 {name=p3 sig_type=std_logic lab=SCAN_IN}
C {vsource.sym} 1270 250 0 0 {name=V8 value=3.3 savecurrent=false}
C {gnd.sym} 1270 320 0 0 {name=l11 lab=GND}
C {lab_pin.sym} 1270 160 0 1 {name=p10 sig_type=std_logic lab=PROG_ENA}
C {vsource.sym} 580 -150 0 0 {name=V9 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} 580 -80 0 0 {name=l12 lab=GND}
C {lab_pin.sym} -200 -300 0 0 {name=p14 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 770 -240 0 0 {name=x3}
C {vsource.sym} 870 -340 0 0 {name=V10 value="PWL(0 0 0.42501m 0 0.42502m 3.3)" savecurrent=false}
C {gnd.sym} 870 -290 0 0 {name=l13 lab=GND}
C {vsource.sym} 820 -120 0 0 {name=V11 value="PWL(0 3.3 0.42501m 3.3 0.42502m 0)" savecurrent=false}
C {gnd.sym} 820 -70 0 0 {name=l14 lab=GND}
C {gnd.sym} 730 -170 0 0 {name=l15 lab=GND}
C {lab_pin.sym} 720 -320 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {gnd.sym} 1080 -150 0 0 {name=l16 lab=GND}
C {lab_pin.sym} 1430 -250 0 1 {name=p16 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 1270 -250 0 0 {name=x4}
C {gnd.sym} 1230 -180 0 0 {name=l17 lab=GND}
C {lab_pin.sym} 1220 -330 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1270 -340 0 1 {name=p18 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 1270 -190 0 1 {name=p19 sig_type=std_logic lab=!CLK_ENA}
C {lab_pin.sym} 890 -180 0 1 {name=p20 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 940 -390 0 1 {name=p21 sig_type=std_logic lab=!CLK_ENA}
C {lab_pin.sym} 930 -240 0 1 {name=p4 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -110 -300 0 1 {name=p5 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -490 80 1 1 {name=p6 sig_type=std_logic lab=PROG_ENA}
C {vsource.sym} 900 250 0 0 {name=V1 value=   "PWL(0 0 0.2499m 0 0.25m 3.3 0.34999m 3.3 0.35m 0)" savecurrent=false}

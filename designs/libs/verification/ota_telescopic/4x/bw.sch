v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 600 40 600 320 {}
L 4 600 320 1290 320 {}
L 4 1380 40 1380 320 {}
L 4 600 40 1290 40 {}
L 4 1290 40 1380 40 {}
L 4 1290 320 1380 320 {}
L 4 450 -500 450 -60 {}
L 4 450 -60 1120 -60 {}
L 4 1490 -500 1490 -60 {}
L 4 450 -500 1120 -500 {}
L 4 1120 -60 1490 -60 {}
L 4 1120 -500 1490 -500 {}
T {Scan chain input artificially generated to enable telescopic cascode 3x sizing
} 590 -10 0 0 0.4 0.4 {}
T {CLOCK GENERATION} 710 -660 0 0 1 1 {}
T {Artificially generate a clock signal and ensure it 
turns off after around .425ms, which is when the 
scan in signal has fully propogated through the scan chain} 690 -590 0 0 0.4 0.4 {}
N -490 -10 -460 -10 {lab=PROG_ENA}
N -490 -10 -490 20 {lab=PROG_ENA}
N -320 -380 -320 -350 {lab=GND}
N -360 -380 -320 -380 {lab=GND}
N -360 -380 -360 -360 {lab=GND}
N -300 -380 -300 -350 {lab=VDD}
N -200 -380 -200 -360 {lab=CLK}
N -200 -380 -170 -380 {lab=CLK}
N -170 -380 -170 -350 {lab=CLK}
N -140 -380 -140 -350 {lab=SCAN_IN}
N -140 -380 -110 -380 {lab=SCAN_IN}
N -110 -380 -110 -360 {lab=SCAN_IN}
N 20 -80 150 -80 {lab=OUT_TELESCOPIC}
N 150 -80 150 -50 {lab=OUT_TELESCOPIC}
N 150 -80 220 -80 {lab=OUT_TELESCOPIC}
N 150 10 150 40 {lab=GND}
N 80 -80 80 180 {lab=OUT_TELESCOPIC}
N -160 180 80 180 {lab=OUT_TELESCOPIC}
N -580 180 -220 180 {lab=#net1}
N -600 -120 -600 180 {lab=#net1}
N -670 -120 -460 -120 {lab=#net1}
N -800 -120 -730 -120 {lab=INN_TELESCOPIC}
N -830 -120 -800 -120 {lab=INN_TELESCOPIC}
N -830 -120 -830 -60 {lab=INN_TELESCOPIC}
N -830 0 -830 80 {lab=GND}
N -990 0 -990 80 {lab=GND}
N -990 -150 -990 -60 {lab=#net2}
N -930 -150 -460 -150 {lab=#net2}
N -990 -150 -930 -150 {lab=#net2}
N -540 90 -540 120 {lab=VDD}
N -600 180 -580 180 {lab=#net1}
N -540 -60 -460 -60 {lab=#net3}
N -540 -60 -540 30 {lab=#net3}
N 900 110 900 160 {lab=SCAN_IN}
N 900 220 900 260 {lab=GND}
N 750 220 750 260 {lab=GND}
N 750 110 750 160 {lab=VDD}
N 1270 110 1270 160 {lab=PROG_ENA}
N 1270 220 1270 260 {lab=GND}
N 1270 100 1270 110 {lab=PROG_ENA}
N 580 -290 580 -240 {lab=#net4}
N 580 -180 580 -140 {lab=GND}
N 580 -300 680 -300 {lab=#net4}
N 580 -300 580 -290 {lab=#net4}
N 850 -300 930 -300 {lab=CLK}
N 770 -430 770 -350 {lab=!CLK_ENA}
N 770 -450 870 -450 {lab=!CLK_ENA}
N 870 -450 870 -430 {lab=!CLK_ENA}
N 870 -370 870 -350 {lab=GND}
N 770 -450 770 -430 {lab=!CLK_ENA}
N 770 -280 770 -240 {lab=CLK_ENA}
N 770 -240 820 -240 {lab=CLK_ENA}
N 820 -240 820 -210 {lab=CLK_ENA}
N 820 -150 820 -130 {lab=GND}
N 730 -250 730 -230 {lab=GND}
N 720 -380 720 -350 {lab=VDD}
N 1080 -300 1080 -250 {lab=GND}
N 1080 -250 1080 -210 {lab=GND}
N 1080 -310 1180 -310 {lab=GND}
N 1080 -310 1080 -300 {lab=GND}
N 1350 -310 1430 -310 {lab=CLK}
N 1270 -290 1270 -250 {lab=!CLK_ENA}
N 1230 -260 1230 -240 {lab=GND}
N 1220 -390 1220 -360 {lab=VDD}
N 1270 -400 1270 -360 {lab=CLK_ENA}
N 820 -240 890 -240 {lab=CLK_ENA}
N 870 -450 940 -450 {lab=!CLK_ENA}
C {libs/core_tb/schem/DUT.sym} -230 -140 0 0 {name=x1}
C {gnd.sym} -360 -360 0 1 {name=l1 lab=GND}
C {lab_pin.sym} -300 -380 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 1610 -140 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 1610 -30 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control
tran .1u 5m
plot v(out_telescopic)
meas tran vout_pp pp v(out_telescopic) from=3.5m to=5m
meas tran vin_pp pp v(inn_telescopic) from=3.5m to=5m
let gain = vout_pp / vin_pp
let gain_db = 20 * log(gain) / log(10)
print gain gain_db
.endc
"}
C {capa.sym} 150 -20 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 220 -80 0 1 {name=p11 sig_type=std_logic lab=OUT_TELESCOPIC}
C {gnd.sym} 150 40 0 0 {name=l8 lab=GND}
C {res.sym} -190 180 1 0 {name=R1
value=500k
footprint=1206
device=resistor
m=1}
C {res.sym} -700 -120 1 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -830 -30 0 0 {name=V6 value= "dc 1.65 ac 0 sin(1.65 10m 1Meg 1m)" savecurrent=false}
C {gnd.sym} -830 80 0 0 {name=l6 lab=GND}
C {vsource.sym} -990 -30 0 1 {name=V7 value=1.65 savecurrent=false}
C {gnd.sym} -990 80 0 1 {name=l7 lab=GND}
C {lab_pin.sym} -830 -120 0 0 {name=p13 sig_type=std_logic lab=INN_TELESCOPIC}
C {isource.sym} -540 60 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -540 120 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {gnd.sym} 900 260 0 0 {name=l9 lab=GND}
C {vsource.sym} 750 190 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} 750 260 0 0 {name=l10 lab=GND}
C {lab_pin.sym} 750 110 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 900 110 0 1 {name=p3 sig_type=std_logic lab=SCAN_IN}
C {vsource.sym} 1270 190 0 0 {name=V8 value=3.3 savecurrent=false}
C {gnd.sym} 1270 260 0 0 {name=l11 lab=GND}
C {lab_pin.sym} 1270 100 0 1 {name=p10 sig_type=std_logic lab=PROG_ENA}
C {vsource.sym} 580 -210 0 0 {name=V9 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} 580 -140 0 0 {name=l12 lab=GND}
C {lab_pin.sym} -200 -360 0 0 {name=p14 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 770 -300 0 0 {name=x3}
C {vsource.sym} 870 -400 0 0 {name=V10 value="PWL(0 0 0.42501m 0 0.42502m 3.3)" savecurrent=false}
C {gnd.sym} 870 -350 0 0 {name=l13 lab=GND}
C {vsource.sym} 820 -180 0 0 {name=V11 value="PWL(0 3.3 0.42501m 3.3 0.42502m 0)" savecurrent=false}
C {gnd.sym} 820 -130 0 0 {name=l14 lab=GND}
C {gnd.sym} 730 -230 0 0 {name=l15 lab=GND}
C {lab_pin.sym} 720 -380 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {gnd.sym} 1080 -210 0 0 {name=l16 lab=GND}
C {lab_pin.sym} 1430 -310 0 1 {name=p16 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 1270 -310 0 0 {name=x4}
C {gnd.sym} 1230 -240 0 0 {name=l17 lab=GND}
C {lab_pin.sym} 1220 -390 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1270 -400 0 1 {name=p18 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 1270 -250 0 1 {name=p19 sig_type=std_logic lab=!CLK_ENA}
C {lab_pin.sym} 890 -240 0 1 {name=p20 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 940 -450 0 1 {name=p21 sig_type=std_logic lab=!CLK_ENA}
C {lab_pin.sym} 930 -300 0 1 {name=p4 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -110 -360 0 1 {name=p5 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -490 20 1 1 {name=p6 sig_type=std_logic lab=PROG_ENA}
C {vsource.sym} 900 190 0 0 {name=V3 value=  "PWL(0 0 0.2499m 0 0.25m 3.3 0.34999m 3.3 0.35m 0)" savecurrent=false}

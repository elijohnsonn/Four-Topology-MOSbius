v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -1860 -400 -1860 550 {}
L 4 -1860 550 -50 550 {}
L 4 -50 -460 -50 550 {}
L 4 -1860 -460 -50 -460 {}
L 4 -1860 -460 -1860 -390 {}
L 4 250 270 250 550 {}
L 4 250 550 940 550 {}
L 4 1030 270 1030 550 {}
L 4 250 270 940 270 {}
L 4 940 270 1030 270 {}
L 4 940 550 1030 550 {}
L 4 70 -390 70 50 {}
L 4 70 50 740 50 {}
L 4 1110 -390 1110 50 {}
L 4 70 -390 740 -390 {}
L 4 740 50 1110 50 {}
L 4 740 -390 1110 -390 {}
T {VDD, GND, SCAN INPUT, PROGRAMMABLE ENABLE} 10 140 0 0 1 1 {}
T {Scan chain input artificially generated to enable folded cascode 1x sizing
prog_ena sets default (low) or program (high)} 290 210 0 0 0.4 0.4 {}
T {CL = 120p} -290 -70 0 0 0.75 0.75 {}
T {IBIAS = 100u} -1210 210 0 0 0.4 0.4 {}
T {IMPLEMENTATION} -1120 -640 0 0 1 1 {}
T {Configure the folded cascode in 4× mode 
in unity and apply a triangular step while 
driving a 120pF capacitive load to test 
output swing.} -1110 -570 0 0 0.4 0.4 {}
T {CLOCK GENERATION} 330 -550 0 0 1 1 {}
T {Artificially generate a clock signal and ensure it 
turns off after around .425ms, which is when the 
scan in signal has fully propogated through the scan chain} 310 -480 0 0 0.4 0.4 {}
N -760 -340 -760 -300 {lab=CLK}
N -730 -340 -730 -300 {lab=SCAN_IN}
N 550 340 550 390 {lab=SCAN_IN}
N 550 450 550 490 {lab=GND}
N -910 -330 -910 -300 {lab=GND}
N -960 -340 -960 -320 {lab=GND}
N -960 -340 -910 -340 {lab=GND}
N -910 -340 -910 -330 {lab=GND}
N 400 450 400 490 {lab=GND}
N 400 340 400 390 {lab=VDD}
N -890 -340 -890 -300 {lab=VDD}
N -1140 -10 -1050 -10 {lab=#net1}
N -1140 -10 -1140 90 {lab=#net1}
N -1140 150 -1140 180 {lab=VDD}
N -1220 -220 -1050 -220 {lab=INP_FOLDED}
N -1160 -190 -1050 -190 {lab=OUT_FOLDED}
N -570 -150 -520 -150 {lab=OUT_FOLDED}
N -520 -150 -390 -150 {lab=OUT_FOLDED}
N -440 -150 -440 330 {lab=OUT_FOLDED}
N -1240 -10 -1240 330 {lab=OUT_FOLDED}
N -1240 -140 -1240 -70 {lab=OUT_FOLDED}
N -1720 110 -1720 140 {lab=GND}
N -390 -150 -330 -150 {lab=OUT_FOLDED}
N -1720 -220 -1720 -20 {lab=INP_FOLDED}
N -1580 -220 -1220 -220 {lab=INP_FOLDED}
N -1720 -20 -1720 10 {lab=INP_FOLDED}
N -370 -150 -370 -120 {lab=OUT_FOLDED}
N -370 -60 -370 -20 {lab=GND}
N -1720 10 -1720 50 {lab=INP_FOLDED}
N -1240 -70 -1240 -10 {lab=OUT_FOLDED}
N -1240 -190 -1160 -190 {lab=OUT_FOLDED}
N -1240 -190 -1240 -140 {lab=OUT_FOLDED}
N -650 430 -440 430 {lab=OUT_FOLDED}
N -440 330 -440 430 {lab=OUT_FOLDED}
N -780 430 -650 430 {lab=OUT_FOLDED}
N -1240 430 -840 430 {lab=OUT_FOLDED}
N -1240 330 -1240 430 {lab=OUT_FOLDED}
N -1720 -220 -1670 -220 {lab=INP_FOLDED}
N -1670 -220 -1580 -220 {lab=INP_FOLDED}
N -1110 40 -1050 40 {lab=PROG_ENA}
N 920 340 920 390 {lab=PROG_ENA}
N 920 450 920 490 {lab=GND}
N 920 330 920 340 {lab=PROG_ENA}
N 200 -180 200 -130 {lab=#net2}
N 200 -70 200 -30 {lab=GND}
N 200 -190 300 -190 {lab=#net2}
N 200 -190 200 -180 {lab=#net2}
N 470 -190 550 -190 {lab=CLK}
N 390 -320 390 -240 {lab=!CLK_ENA}
N 390 -340 490 -340 {lab=!CLK_ENA}
N 490 -340 490 -320 {lab=!CLK_ENA}
N 490 -260 490 -240 {lab=GND}
N 390 -340 390 -320 {lab=!CLK_ENA}
N 390 -170 390 -130 {lab=CLK_ENA}
N 390 -130 440 -130 {lab=CLK_ENA}
N 440 -130 440 -100 {lab=CLK_ENA}
N 440 -40 440 -20 {lab=GND}
N 350 -140 350 -120 {lab=GND}
N 340 -270 340 -240 {lab=VDD}
N 700 -190 700 -140 {lab=GND}
N 700 -140 700 -100 {lab=GND}
N 700 -200 800 -200 {lab=GND}
N 700 -200 700 -190 {lab=GND}
N 970 -200 1050 -200 {lab=CLK}
N 890 -180 890 -140 {lab=!CLK_ENA}
N 850 -150 850 -130 {lab=GND}
N 840 -280 840 -250 {lab=VDD}
N 890 -290 890 -250 {lab=CLK_ENA}
N 440 -130 510 -130 {lab=CLK_ENA}
N 490 -340 560 -340 {lab=!CLK_ENA}
N -840 430 -780 430 {lab=OUT_FOLDED}
C {gnd.sym} 550 490 0 0 {name=l1 lab=GND}
C {gnd.sym} -960 -320 0 0 {name=l2 lab=GND}
C {vsource.sym} 400 420 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 400 490 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 400 340 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -890 -340 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 550 340 0 1 {name=p2 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -730 -340 0 1 {name=p3 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -760 -340 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {isource.sym} -1140 120 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -1140 180 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -330 -150 0 1 {name=p11 sig_type=std_logic lab=OUT_FOLDED}
C {devices/code_shown.sym} 1370 -250 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {gnd.sym} -1720 140 0 0 {name=l9 lab=GND}
C {capa.sym} -370 -90 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -370 -20 0 0 {name=l8 lab=GND}
C {lab_pin.sym} -1720 -220 0 0 {name=p12 sig_type=std_logic lab=INP_FOLDED}
C {libs/core_tb/schem/DUT.sym} -820 -90 0 0 {name=x1}
C {lab_pin.sym} -1110 40 3 0 {name=p7 sig_type=std_logic lab=PROG_ENA}
C {vsource.sym} 920 420 0 0 {name=V8 value=3.3 savecurrent=false}
C {gnd.sym} 920 490 0 0 {name=l11 lab=GND}
C {lab_pin.sym} 920 330 0 1 {name=p10 sig_type=std_logic lab=PROG_ENA}
C {vsource.sym} 200 -100 0 0 {name=V9 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} 200 -30 0 0 {name=l12 lab=GND}
C {lab_pin.sym} 550 -190 0 1 {name=p14 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 390 -190 0 0 {name=x3}
C {vsource.sym} 490 -290 0 0 {name=V10 value="PWL(0 0 0.42501m 0 0.42502m 3.3)" savecurrent=false}
C {gnd.sym} 490 -240 0 0 {name=l13 lab=GND}
C {vsource.sym} 440 -70 0 0 {name=V11 value="PWL(0 3.3 0.42501m 3.3 0.42502m 0)" savecurrent=false}
C {gnd.sym} 440 -20 0 0 {name=l14 lab=GND}
C {gnd.sym} 350 -120 0 0 {name=l15 lab=GND}
C {lab_pin.sym} 340 -270 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {gnd.sym} 700 -100 0 0 {name=l16 lab=GND}
C {lab_pin.sym} 1050 -200 0 1 {name=p16 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 890 -200 0 0 {name=x4}
C {gnd.sym} 850 -130 0 0 {name=l17 lab=GND}
C {lab_pin.sym} 840 -280 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 890 -290 0 1 {name=p18 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 890 -140 0 1 {name=p19 sig_type=std_logic lab=!CLK_ENA}
C {lab_pin.sym} 510 -130 0 1 {name=p20 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 560 -340 0 1 {name=p21 sig_type=std_logic lab=!CLK_ENA}
C {vsource.sym} 550 420 0 0 {name=V2 value="PWL(0 0 0.34999m 0 0.35m 3.3 0.499999m 3.3 0.5m 0)" savecurrent=false}
C {vsource.sym} 490 -350 0 1 {name=V7 value="dc 1.65 ac 0 pulse(1.65 3.3 1m 2m 2m 0.01u 4m)" savecurrent=false}
C {code_shown.sym} 1360 -40 0 0 {name=Simulation2 only_toplevel=false 

value=

"
.control
tran 1u 5m

plot v(out_folded) v(inp_folded)

let error = v(out_folded) - v(inp_folded)
plot error

meas tran t_clip when error = 0.019 cross = 1
print t_clip

meas tran vout_clip find v(out_folded) at = t_clip
meas tran vin_clip find v(inp_folded) at = t_clip
print vout_clip vin_clip
.endc
"}
C {vsource.sym} -1720 80 0 0 {name=V3 value="dc 1.65 ac 0 pulse(1.65 0.3 1m 2m 2m 0.01u 4m)" savecurrent=false}

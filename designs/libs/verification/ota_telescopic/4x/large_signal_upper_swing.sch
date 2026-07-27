v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -410 20 -410 300 {}
L 4 -410 300 280 300 {}
L 4 370 20 370 300 {}
L 4 -410 20 280 20 {}
L 4 280 20 370 20 {}
L 4 280 300 370 300 {}
L 4 -560 -520 -560 -80 {}
L 4 -560 -80 110 -80 {}
L 4 480 -520 480 -80 {}
L 4 -560 -520 110 -520 {}
L 4 110 -80 480 -80 {}
L 4 110 -520 480 -520 {}
T {Scan chain input artificially generated to enable telescopic cascode 4x sizing
} -420 -30 0 0 0.4 0.4 {}
T {CLOCK GENERATION} -300 -680 0 0 1 1 {}
T {Artificially generate a clock signal and ensure it 
turns off after around .425ms, which is when the 
scan in signal has fully propogated through the scan chain} -320 -610 0 0 0.4 0.4 {}
N -1520 -40 -1490 -40 {lab=PROG_ENA}
N -1520 -40 -1520 -10 {lab=PROG_ENA}
N -1350 -410 -1350 -380 {lab=GND}
N -1390 -410 -1350 -410 {lab=GND}
N -1390 -410 -1390 -390 {lab=GND}
N -1330 -410 -1330 -380 {lab=VDD}
N -1230 -410 -1230 -390 {lab=CLK}
N -1230 -410 -1200 -410 {lab=CLK}
N -1200 -410 -1200 -380 {lab=CLK}
N -1170 -410 -1170 -380 {lab=SCAN_IN}
N -1170 -410 -1140 -410 {lab=SCAN_IN}
N -1140 -410 -1140 -390 {lab=SCAN_IN}
N -1010 -110 -880 -110 {lab=OUT_TELESCOPIC}
N -880 -110 -880 -80 {lab=OUT_TELESCOPIC}
N -880 -110 -810 -110 {lab=OUT_TELESCOPIC}
N -880 -20 -880 10 {lab=GND}
N -950 -110 -950 150 {lab=OUT_TELESCOPIC}
N -1190 150 -950 150 {lab=OUT_TELESCOPIC}
N -1610 150 -1250 150 {lab=OUT_TELESCOPIC}
N -1630 -80 -1630 150 {lab=OUT_TELESCOPIC}
N -2070 -30 -2070 50 {lab=GND}
N -2070 -180 -2070 -90 {lab=INP_TELESCOPIC}
N -1960 -180 -1490 -180 {lab=INP_TELESCOPIC}
N -2070 -180 -2010 -180 {lab=INP_TELESCOPIC}
N -1570 60 -1570 90 {lab=VDD}
N -1630 150 -1610 150 {lab=OUT_TELESCOPIC}
N -1570 -90 -1490 -90 {lab=#net1}
N -1570 -90 -1570 0 {lab=#net1}
N -2010 -180 -1960 -180 {lab=INP_TELESCOPIC}
N -1630 -150 -1490 -150 {lab=OUT_TELESCOPIC}
N -1630 -150 -1630 -80 {lab=OUT_TELESCOPIC}
N -1250 150 -1190 150 {lab=OUT_TELESCOPIC}
N -110 90 -110 140 {lab=SCAN_IN}
N -110 200 -110 240 {lab=GND}
N -260 200 -260 240 {lab=GND}
N -260 90 -260 140 {lab=VDD}
N 260 90 260 140 {lab=PROG_ENA}
N 260 200 260 240 {lab=GND}
N 260 80 260 90 {lab=PROG_ENA}
N -430 -310 -430 -260 {lab=#net2}
N -430 -200 -430 -160 {lab=GND}
N -430 -320 -330 -320 {lab=#net2}
N -430 -320 -430 -310 {lab=#net2}
N -160 -320 -80 -320 {lab=CLK}
N -240 -450 -240 -370 {lab=!CLK_ENA}
N -240 -470 -140 -470 {lab=!CLK_ENA}
N -140 -470 -140 -450 {lab=!CLK_ENA}
N -140 -390 -140 -370 {lab=GND}
N -240 -470 -240 -450 {lab=!CLK_ENA}
N -240 -300 -240 -260 {lab=CLK_ENA}
N -240 -260 -190 -260 {lab=CLK_ENA}
N -190 -260 -190 -230 {lab=CLK_ENA}
N -190 -170 -190 -150 {lab=GND}
N -280 -270 -280 -250 {lab=GND}
N -290 -400 -290 -370 {lab=VDD}
N 70 -320 70 -270 {lab=GND}
N 70 -270 70 -230 {lab=GND}
N 70 -330 170 -330 {lab=GND}
N 70 -330 70 -320 {lab=GND}
N 340 -330 420 -330 {lab=CLK}
N 260 -310 260 -270 {lab=!CLK_ENA}
N 220 -280 220 -260 {lab=GND}
N 210 -410 210 -380 {lab=VDD}
N 260 -420 260 -380 {lab=CLK_ENA}
N -190 -260 -120 -260 {lab=CLK_ENA}
N -140 -470 -70 -470 {lab=!CLK_ENA}
C {libs/core_tb/schem/DUT.sym} -1260 -170 0 0 {name=x1}
C {gnd.sym} -1390 -390 0 1 {name=l1 lab=GND}
C {lab_pin.sym} -1330 -410 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 690 -300 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 690 -190 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control
tran 1u 5m

plot v(out_telescopic) v(inp_telescopic)

let error = v(out_telescopic) - v(inp_telescopic)
plot error

meas tran t_clip when error = -0.019 cross = 1 td=.5m
print t_clip

meas tran vout_clip find v(out_telescopic) at = t_clip td=.5m
meas tran vin_clip find v(inp_telescopic) at = t_clip td=.5m
print vout_clip vin_clip
.endc
"}
C {capa.sym} -880 -50 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} -810 -110 0 1 {name=p11 sig_type=std_logic lab=OUT_TELESCOPIC}
C {gnd.sym} -880 10 0 0 {name=l8 lab=GND}
C {vsource.sym} -2070 -60 0 1 {name=V7 value="dc 1.65 ac 0 pulse(1.65 3.3 1m 2m 2m 0.01u 4m)" savecurrent=false}
C {gnd.sym} -2070 50 0 1 {name=l7 lab=GND}
C {lab_pin.sym} -2070 -180 0 0 {name=p13 sig_type=std_logic lab=INP_TELESCOPIC}
C {isource.sym} -1570 30 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -1570 90 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {vsource.sym} -110 170 0 0 {name=V3 value=  "PWL(0 0 0.2499m 0 0.25m 3.3 0.34999m 3.3 0.35m 0)" savecurrent=false}
C {gnd.sym} -110 240 0 0 {name=l6 lab=GND}
C {vsource.sym} -260 170 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} -260 240 0 0 {name=l9 lab=GND}
C {lab_pin.sym} -260 90 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -110 90 0 1 {name=p3 sig_type=std_logic lab=SCAN_IN}
C {vsource.sym} 260 170 0 0 {name=V8 value=3.3 savecurrent=false}
C {gnd.sym} 260 240 0 0 {name=l11 lab=GND}
C {lab_pin.sym} 260 80 0 1 {name=p10 sig_type=std_logic lab=PROG_ENA}
C {vsource.sym} -430 -230 0 0 {name=V9 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} -430 -160 0 0 {name=l12 lab=GND}
C {lab_pin.sym} -80 -320 0 1 {name=p14 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} -240 -320 0 0 {name=x3}
C {vsource.sym} -140 -420 0 0 {name=V10 value="PWL(0 0 0.42501m 0 0.42502m 3.3)" savecurrent=false}
C {gnd.sym} -140 -370 0 0 {name=l13 lab=GND}
C {vsource.sym} -190 -200 0 0 {name=V11 value="PWL(0 3.3 0.42501m 3.3 0.42502m 0)" savecurrent=false}
C {gnd.sym} -190 -150 0 0 {name=l14 lab=GND}
C {gnd.sym} -280 -250 0 0 {name=l15 lab=GND}
C {lab_pin.sym} -290 -400 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {gnd.sym} 70 -230 0 0 {name=l16 lab=GND}
C {lab_pin.sym} 420 -330 0 1 {name=p16 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 260 -330 0 0 {name=x4}
C {gnd.sym} 220 -260 0 0 {name=l17 lab=GND}
C {lab_pin.sym} 210 -410 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 260 -420 0 1 {name=p18 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 260 -270 0 1 {name=p19 sig_type=std_logic lab=!CLK_ENA}
C {lab_pin.sym} -120 -260 0 1 {name=p20 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} -70 -470 0 1 {name=p21 sig_type=std_logic lab=!CLK_ENA}
C {lab_pin.sym} -1230 -390 0 0 {name=p4 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -1140 -390 0 1 {name=p5 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -1520 -10 1 1 {name=p6 sig_type=std_logic lab=PROG_ENA}

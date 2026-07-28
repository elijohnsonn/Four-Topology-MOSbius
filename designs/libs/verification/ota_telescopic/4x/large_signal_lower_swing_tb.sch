v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 430 100 430 380 {}
L 4 430 380 1120 380 {}
L 4 1210 100 1210 380 {}
L 4 430 100 1120 100 {}
L 4 1120 100 1210 100 {}
L 4 1120 380 1210 380 {}
L 4 280 -440 280 0 {}
L 4 280 0 950 0 {}
L 4 1320 -440 1320 0 {}
L 4 280 -440 950 -440 {}
L 4 950 0 1320 0 {}
L 4 950 -440 1320 -440 {}
T {Scan chain input artificially generated to enable telescopic cascode 4x sizing
} 420 50 0 0 0.4 0.4 {}
T {CLOCK GENERATION} 540 -600 0 0 1 1 {}
T {Artificially generate a clock signal and ensure it 
turns off after around .425ms, which is when the 
scan in signal has fully propogated through the scan chain} 520 -530 0 0 0.4 0.4 {}
N -480 130 -450 130 {lab=VDD}
N -480 130 -480 160 {lab=VDD}
N -310 -240 -310 -210 {lab=GND}
N -350 -240 -310 -240 {lab=GND}
N -350 -240 -350 -220 {lab=GND}
N -290 -240 -290 -210 {lab=VDD}
N -190 -240 -190 -220 {lab=CLK}
N -190 -240 -160 -240 {lab=CLK}
N -160 -240 -160 -210 {lab=CLK}
N -130 -240 -130 -210 {lab=SCAN_IN}
N -130 -240 -100 -240 {lab=SCAN_IN}
N -100 -240 -100 -220 {lab=SCAN_IN}
N 30 60 160 60 {lab=OUT_TELESCOPIC}
N 160 60 160 90 {lab=OUT_TELESCOPIC}
N 160 60 230 60 {lab=OUT_TELESCOPIC}
N 160 150 160 180 {lab=GND}
N 90 60 90 320 {lab=OUT_TELESCOPIC}
N -150 320 90 320 {lab=OUT_TELESCOPIC}
N -570 320 -210 320 {lab=OUT_TELESCOPIC}
N -590 90 -590 320 {lab=OUT_TELESCOPIC}
N -1030 140 -1030 220 {lab=GND}
N -1030 -10 -1030 80 {lab=INP_TELESCOPIC}
N -920 -10 -450 -10 {lab=INP_TELESCOPIC}
N -1030 -10 -970 -10 {lab=INP_TELESCOPIC}
N -530 230 -530 260 {lab=VDD}
N -590 320 -570 320 {lab=OUT_TELESCOPIC}
N -530 80 -450 80 {lab=#net1}
N -530 80 -530 170 {lab=#net1}
N -970 -10 -920 -10 {lab=INP_TELESCOPIC}
N -590 20 -450 20 {lab=OUT_TELESCOPIC}
N -590 20 -590 90 {lab=OUT_TELESCOPIC}
N -210 320 -150 320 {lab=OUT_TELESCOPIC}
N 730 170 730 220 {lab=SCAN_IN}
N 730 280 730 320 {lab=GND}
N 580 280 580 320 {lab=GND}
N 580 170 580 220 {lab=VDD}
N 1100 170 1100 220 {lab=PROG_ENA}
N 1100 280 1100 320 {lab=GND}
N 1100 160 1100 170 {lab=PROG_ENA}
N 410 -230 410 -180 {lab=#net2}
N 410 -120 410 -80 {lab=GND}
N 410 -240 510 -240 {lab=#net2}
N 410 -240 410 -230 {lab=#net2}
N 680 -240 760 -240 {lab=CLK}
N 600 -370 600 -290 {lab=!CLK_ENA}
N 600 -390 700 -390 {lab=!CLK_ENA}
N 700 -390 700 -370 {lab=!CLK_ENA}
N 700 -310 700 -290 {lab=GND}
N 600 -390 600 -370 {lab=!CLK_ENA}
N 600 -220 600 -180 {lab=CLK_ENA}
N 600 -180 650 -180 {lab=CLK_ENA}
N 650 -180 650 -150 {lab=CLK_ENA}
N 650 -90 650 -70 {lab=GND}
N 560 -190 560 -170 {lab=GND}
N 550 -320 550 -290 {lab=VDD}
N 910 -240 910 -190 {lab=GND}
N 910 -190 910 -150 {lab=GND}
N 910 -250 1010 -250 {lab=GND}
N 910 -250 910 -240 {lab=GND}
N 1180 -250 1260 -250 {lab=CLK}
N 1100 -230 1100 -190 {lab=!CLK_ENA}
N 1060 -200 1060 -180 {lab=GND}
N 1050 -330 1050 -300 {lab=VDD}
N 1100 -340 1100 -300 {lab=CLK_ENA}
N 650 -180 720 -180 {lab=CLK_ENA}
N 700 -390 770 -390 {lab=!CLK_ENA}
C {libs/core_tb/schem/DUT.sym} -220 0 0 0 {name=x1}
C {gnd.sym} -350 -220 0 1 {name=l1 lab=GND}
C {lab_pin.sym} -290 -240 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 1400 -190 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 1400 -80 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control
tran 1u 5m

plot v(out_telescopic) v(inp_telescopic)

let error = v(out_telescopic) - v(inp_telescopic)
plot error

meas tran t_clip when error = 0.019 cross = 1 td=.5m
print t_clip

meas tran vout_clip find v(out_telescopic) at = t_clip td=.5m
meas tran vin_clip find v(inp_telescopic) at = t_clip td=.5m
print vout_clip vin_clip
.endc
"}
C {capa.sym} 160 120 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 230 60 0 1 {name=p11 sig_type=std_logic lab=OUT_TELESCOPIC}
C {gnd.sym} 160 180 0 0 {name=l8 lab=GND}
C {vsource.sym} -1030 110 0 1 {name=V7 value="dc 1.65 ac 0 pulse(1.65 0.3 1m 2m 2m 0.01u 4m)" savecurrent=false}
C {gnd.sym} -1030 220 0 1 {name=l7 lab=GND}
C {lab_pin.sym} -1030 -10 0 0 {name=p13 sig_type=std_logic lab=INP_TELESCOPIC}
C {isource.sym} -530 200 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -530 260 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {vsource.sym} 730 250 0 0 {name=V3 value=  "PWL(0 0 0.2499m 0 0.25m 3.3 0.34999m 3.3 0.35m 0)" savecurrent=false}
C {gnd.sym} 730 320 0 0 {name=l6 lab=GND}
C {vsource.sym} 580 250 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} 580 320 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 580 170 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 730 170 0 1 {name=p3 sig_type=std_logic lab=SCAN_IN}
C {vsource.sym} 1100 250 0 0 {name=V8 value=3.3 savecurrent=false}
C {gnd.sym} 1100 320 0 0 {name=l11 lab=GND}
C {lab_pin.sym} 1100 160 0 1 {name=p10 sig_type=std_logic lab=PROG_ENA}
C {vsource.sym} 410 -150 0 0 {name=V9 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} 410 -80 0 0 {name=l12 lab=GND}
C {lab_pin.sym} 760 -240 0 1 {name=p14 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 600 -240 0 0 {name=x3}
C {vsource.sym} 700 -340 0 0 {name=V10 value="PWL(0 0 0.42501m 0 0.42502m 3.3)" savecurrent=false}
C {gnd.sym} 700 -290 0 0 {name=l13 lab=GND}
C {vsource.sym} 650 -120 0 0 {name=V11 value="PWL(0 3.3 0.42501m 3.3 0.42502m 0)" savecurrent=false}
C {gnd.sym} 650 -70 0 0 {name=l14 lab=GND}
C {gnd.sym} 560 -170 0 0 {name=l15 lab=GND}
C {lab_pin.sym} 550 -320 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {gnd.sym} 910 -150 0 0 {name=l16 lab=GND}
C {lab_pin.sym} 1260 -250 0 1 {name=p16 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 1100 -250 0 0 {name=x4}
C {gnd.sym} 1060 -180 0 0 {name=l17 lab=GND}
C {lab_pin.sym} 1050 -330 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1100 -340 0 1 {name=p18 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 1100 -190 0 1 {name=p19 sig_type=std_logic lab=!CLK_ENA}
C {lab_pin.sym} 720 -180 0 1 {name=p20 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 770 -390 0 1 {name=p21 sig_type=std_logic lab=!CLK_ENA}
C {lab_pin.sym} -100 -220 0 1 {name=p4 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -190 -220 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -480 160 1 1 {name=p6 sig_type=std_logic lab=VDD}

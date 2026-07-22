v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 110 -320 110 120 {}
L 4 110 120 780 120 {}
L 4 1140 -320 1140 120 {}
L 4 110 -320 780 -320 {}
L 4 -1850 -390 -1850 560 {}
L 4 -1850 560 -40 560 {}
L 4 -40 -450 -40 560 {}
L 4 -1850 -450 -40 -450 {}
L 4 -1850 -450 -1850 -380 {}
L 4 120 280 120 560 {}
L 4 120 560 810 560 {}
L 4 810 280 810 560 {}
L 4 120 280 810 280 {}
L 4 780 -320 1140 -320 {}
L 4 780 120 1140 120 {}
T {CLOCK GENERATION} 160 -480 0 0 1 1 {}
T {Artificially generate a clock signal and ensure it 
turns off after around .425ms, which is when the 
scan in signal has fully propogated through the scan chain} 140 -410 0 0 0.4 0.4 {}
T {VDD, GND, SCAN INPUT} 150 150 0 0 1 1 {}
T {Scan chain input artificially generated to 
enable folded cascode 1x sizing} 230 220 0 0 0.4 0.4 {}
T {CL = 120p} -280 -60 0 0 0.75 0.75 {}
T {IBIAS = 100u} -1200 220 0 0 0.4 0.4 {}
T {IMPLEMENTATION} -1170 -620 0 0 1 1 {}
T {Configure the folded cascode in 1× mode 
as an inverting amplifier to amplify a 
sine wave input by 5 while driving a 
120pF capacitive load.} -1160 -560 0 0 0.4 0.4 {}
N -750 -330 -750 -290 {lab=CLK}
N -720 -330 -720 -290 {lab=SCAN_IN}
N 420 350 420 400 {lab=SCAN_IN}
N 420 460 420 500 {lab=GND}
N -900 -320 -900 -290 {lab=GND}
N -950 -330 -950 -310 {lab=GND}
N -950 -330 -900 -330 {lab=GND}
N -900 -330 -900 -320 {lab=GND}
N 270 460 270 500 {lab=GND}
N 270 350 270 400 {lab=VDD}
N -880 -330 -880 -290 {lab=VDD}
N 240 -110 240 -60 {lab=#net1}
N 240 0 240 40 {lab=GND}
N 240 -120 340 -120 {lab=#net1}
N 240 -120 240 -110 {lab=#net1}
N 510 -120 590 -120 {lab=CLK}
N 430 -250 430 -170 {lab=!CLK_ENA}
N 430 -270 530 -270 {lab=!CLK_ENA}
N 530 -270 530 -250 {lab=!CLK_ENA}
N 530 -190 530 -170 {lab=GND}
N 430 -270 430 -250 {lab=!CLK_ENA}
N 430 -100 430 -60 {lab=CLK_ENA}
N 430 -60 480 -60 {lab=CLK_ENA}
N 480 -60 480 -30 {lab=CLK_ENA}
N 480 30 480 50 {lab=GND}
N 390 -70 390 -50 {lab=GND}
N 380 -200 380 -170 {lab=VDD}
N -1130 0 -1040 0 {lab=#net2}
N -1130 0 -1130 100 {lab=#net2}
N -1130 160 -1130 190 {lab=VDD}
N -360 -140 -360 -110 {lab=SCAN_OUT}
N -360 -50 -360 -10 {lab=GND}
N -560 -200 -360 -200 {lab=SCAN_OUT}
N -360 -200 -360 -140 {lab=SCAN_OUT}
N 730 -130 730 -80 {lab=GND}
N 730 -80 730 -40 {lab=GND}
N 730 -140 830 -140 {lab=GND}
N 730 -140 730 -130 {lab=GND}
N 1000 -140 1080 -140 {lab=CLK}
N 920 -120 920 -80 {lab=!CLK_ENA}
N 880 -90 880 -70 {lab=GND}
N 870 -220 870 -190 {lab=VDD}
N 920 -230 920 -190 {lab=CLK_ENA}
N 670 350 670 400 {lab=PROG_ENA}
N 670 460 670 500 {lab=GND}
N 670 340 670 350 {lab=PROG_ENA}
N -1100 50 -1040 50 {lab=PROG_ENA}
C {vsource.sym} 420 430 0 0 {name=V3 value="PULSE(0 3.3 0 1n 1n 0.05m 0.1m)" savecurrent=false}
C {gnd.sym} 420 500 0 0 {name=l1 lab=GND}
C {gnd.sym} -950 -310 0 0 {name=l2 lab=GND}
C {vsource.sym} 270 430 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 270 500 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 270 350 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -880 -330 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 420 350 0 1 {name=p2 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -720 -330 0 1 {name=p3 sig_type=std_logic lab=SCAN_IN}
C {vsource.sym} 240 -30 0 0 {name=V2 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} 240 40 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 590 -120 0 1 {name=p4 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -750 -330 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 430 -120 0 0 {name=x2}
C {vsource.sym} 530 -220 0 0 {name=V4 value="PWL(0 0 0.8501m 0 0.8502m 3.3)" savecurrent=false}
C {gnd.sym} 530 -170 0 0 {name=l5 lab=GND}
C {vsource.sym} 480 0 0 0 {name=V5 value="PWL(0 3.3 0.8501m 3.3 0.8502m 0)" savecurrent=false}
C {gnd.sym} 480 50 0 0 {name=l6 lab=GND}
C {gnd.sym} 390 -50 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 380 -200 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {isource.sym} -1130 130 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -1130 190 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 950 330 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 950 440 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control
tran 1u 20m
plot v(SCAN_IN) 
plot v(SCAN_OUT)
.endc
"}
C {capa.sym} -360 -80 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -360 -10 0 0 {name=l8 lab=GND}
C {libs/core_tb/schem/DUT.sym} -810 -80 0 0 {name=x1}
C {lab_pin.sym} -360 -200 0 1 {name=p7 sig_type=std_logic lab=SCAN_OUT}
C {lab_pin.sym} 530 -270 0 1 {name=p10 sig_type=std_logic lab=!CLK_ENA}
C {gnd.sym} 730 -40 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 1080 -140 0 1 {name=p11 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 920 -140 0 0 {name=x3}
C {gnd.sym} 880 -70 0 0 {name=l12 lab=GND}
C {lab_pin.sym} 870 -220 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 480 -60 0 1 {name=p13 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 920 -220 0 1 {name=p14 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 920 -80 0 1 {name=p15 sig_type=std_logic lab=!CLK_ENA}
C {vsource.sym} 670 430 0 0 {name=V8 value=3.3 savecurrent=false}
C {gnd.sym} 670 500 0 0 {name=l11 lab=GND
value=3.3}
C {lab_pin.sym} 670 340 0 1 {name=p16 sig_type=std_logic lab=PROG_ENA
value=3.3}
C {lab_pin.sym} -1100 50 3 0 {name=p17 sig_type=std_logic lab=PROG_ENA}

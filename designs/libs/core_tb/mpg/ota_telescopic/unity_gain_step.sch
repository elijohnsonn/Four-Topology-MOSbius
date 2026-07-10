v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 150 -430 150 10 {}
L 4 150 10 820 10 {}
L 4 820 -430 820 10 {}
L 4 150 -430 820 -430 {}
L 4 -1810 -500 -1810 450 {}
L 4 -1810 450 0 450 {}
L 4 0 -560 0 450 {}
L 4 -1810 -560 0 -560 {}
L 4 -1810 -560 -1810 -490 {}
L 4 160 170 160 450 {}
L 4 160 450 850 450 {}
L 4 850 170 850 450 {}
L 4 160 170 850 170 {}
T {CLOCK GENERATION} 200 -590 0 0 1 1 {}
T {Artificially generate a clock signal and ensure it 
turns off after around .425ms, which is when the 
scan in signal has fully propogated through the scan chain} 180 -520 0 0 0.4 0.4 {}
T {VDD, GND, SCAN INPUT} 190 40 0 0 1 1 {}
T {Scan chain input artificially generated to 
enable telescopic cascode 1x sizing} 270 110 0 0 0.4 0.4 {}
T {CL = 100p} -240 -50 0 0 0.75 0.75 {}
T {IBIAS1=100u} -1160 120 0 0 0.4 0.4 {}
T {IMPLEMENTATION} -1130 -730 0 0 1 1 {}
T {xxxxxxxxxxxxxxxxx} -1120 -670 0 0 0.4 0.4 {}
N -710 -440 -710 -400 {lab=CLK}
N -680 -440 -680 -400 {lab=SCAN_IN}
N 460 240 460 290 {lab=SCAN_IN}
N 460 350 460 390 {lab=GND}
N -860 -430 -860 -400 {lab=GND}
N -910 -440 -910 -420 {lab=GND}
N -910 -440 -860 -440 {lab=GND}
N -860 -440 -860 -430 {lab=GND}
N 310 350 310 390 {lab=GND}
N 310 240 310 290 {lab=VDD}
N -840 -440 -840 -400 {lab=VDD}
N 280 -220 280 -170 {lab=#net1}
N 280 -110 280 -70 {lab=GND}
N 280 -230 380 -230 {lab=#net1}
N 280 -230 280 -220 {lab=#net1}
N 550 -230 630 -230 {lab=CLK}
N 470 -360 470 -280 {lab=#net2}
N 470 -380 570 -380 {lab=#net2}
N 570 -380 570 -360 {lab=#net2}
N 570 -300 570 -280 {lab=GND}
N 470 -380 470 -360 {lab=#net2}
N 470 -210 470 -170 {lab=#net3}
N 470 -170 520 -170 {lab=#net3}
N 520 -170 520 -140 {lab=#net3}
N 520 -80 520 -60 {lab=GND}
N 430 -180 430 -160 {lab=GND}
N 420 -310 420 -280 {lab=VDD}
N -1090 -110 -1000 -110 {lab=#net4}
N -1090 -110 -1090 -10 {lab=#net4}
N -1090 50 -1090 80 {lab=VDD}
N -1170 -200 -1000 -200 {lab=INP_TELESCOPIC}
N -520 -130 -470 -130 {lab=OUT_TELESCOPIC}
N -470 -130 -340 -130 {lab=OUT_TELESCOPIC}
N -1190 -120 -1190 -50 {lab=OUT_TELESCOPIC}
N -1670 250 -1670 280 {lab=GND}
N -340 -130 -280 -130 {lab=OUT_TELESCOPIC}
N -1670 -200 -1670 0 {lab=INP_TELESCOPIC}
N -1530 -200 -1170 -200 {lab=INP_TELESCOPIC}
N -1670 0 -1670 30 {lab=INP_TELESCOPIC}
N -320 -130 -320 -100 {lab=OUT_TELESCOPIC}
N -320 -40 -320 0 {lab=GND}
N -1670 30 -1670 70 {lab=INP_TELESCOPIC}
N -1190 -50 -1190 10 {lab=OUT_TELESCOPIC}
N -1190 -170 -1110 -170 {lab=OUT_TELESCOPIC}
N -1190 -170 -1190 -120 {lab=OUT_TELESCOPIC}
N -600 330 -390 330 {lab=OUT_TELESCOPIC}
N -390 230 -390 330 {lab=OUT_TELESCOPIC}
N -1190 330 -790 330 {lab=OUT_TELESCOPIC}
N -1670 -200 -1620 -200 {lab=INP_TELESCOPIC}
N -1620 -200 -1530 -200 {lab=INP_TELESCOPIC}
N -390 -130 -390 230 {lab=OUT_TELESCOPIC}
N -1190 10 -1190 330 {lab=OUT_TELESCOPIC}
N -1110 -170 -1000 -170 {lab=OUT_TELESCOPIC}
N -790 330 -600 330 {lab=OUT_TELESCOPIC}
N -1670 130 -1670 190 {lab=#net5}
C {vsource.sym} 460 320 0 0 {name=V3 value=  "PWL(0 0 0.2999m 0 0.3m 3.3 0.349999m 3.3 0.35m 0)" savecurrent=false}
C {gnd.sym} 460 390 0 0 {name=l1 lab=GND}
C {gnd.sym} -910 -420 0 0 {name=l2 lab=GND}
C {vsource.sym} 310 320 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 310 390 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 310 240 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -840 -440 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 460 240 0 1 {name=p2 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -680 -440 0 1 {name=p3 sig_type=std_logic lab=SCAN_IN}
C {vsource.sym} 280 -140 0 0 {name=V2 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} 280 -70 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 630 -230 0 1 {name=p4 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -710 -440 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 470 -230 0 0 {name=x2}
C {vsource.sym} 570 -330 0 0 {name=V4 value="PWL(0 0 0.42501m 0 0.42502m 3.3)" savecurrent=false}
C {gnd.sym} 570 -280 0 0 {name=l5 lab=GND}
C {vsource.sym} 520 -110 0 0 {name=V5 value="PWL(0 3.3 0.42501m 3.3 0.42502m 0)" savecurrent=false}
C {gnd.sym} 520 -60 0 0 {name=l6 lab=GND}
C {gnd.sym} 430 -160 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 420 -310 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {isource.sym} -1090 20 2 0 {name=IBIAS1 value=100u}
C {lab_pin.sym} -1090 80 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -280 -130 0 1 {name=p11 sig_type=std_logic lab=OUT_TELESCOPIC}
C {devices/code_shown.sym} 920 -170 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 920 -60 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control
tran 1n 50u
plot v(OUT_TELESCOPIC) v(INP_TELESCOPIC)
.endc
"}
C {gnd.sym} -1670 280 0 0 {name=l9 lab=GND}
C {capa.sym} -320 -70 0 0 {name=CLOAD
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -320 0 0 0 {name=l8 lab=GND}
C {lab_pin.sym} -1670 -200 0 0 {name=p12 sig_type=std_logic lab=INP_TELESCOPIC}
C {libs/core_tb/schem/DUT.sym} -770 -190 0 0 {name=x1}
C {vsource.sym} -1670 100 0 0 {name=VINP value= "PULSE(0 1 25u 1p 100n 2m 1)" savecurrent=false}
C {vsource.sym} -1670 220 0 0 {name=VCM value=1.65 savecurrent=false}

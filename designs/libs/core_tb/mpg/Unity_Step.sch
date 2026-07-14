v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 150 -590 150 -150 {}
L 4 150 -150 820 -150 {}
L 4 820 -590 820 -150 {}
L 4 150 -590 820 -590 {}
L 4 -1810 -660 -1810 290 {}
L 4 -1810 290 0 290 {}
L 4 0 -720 0 290 {}
L 4 -1810 -720 0 -720 {}
L 4 -1810 -720 -1810 -650 {}
L 4 160 10 160 290 {}
L 4 160 290 850 290 {}
L 4 850 10 850 290 {}
L 4 160 10 850 10 {}
T {CLOCK GENERATION} 200 -750 0 0 1 1 {}
T {Artificially generate a clock signal and ensure it 
turns off after around .425ms, which is when the 
scan in signal has fully propogated through the scan chain} 180 -680 0 0 0.4 0.4 {}
T {VDD, GND, SCAN INPUT} 190 -120 0 0 1 1 {}
T {Scan chain input artificially generated to 
enable telescopic cascode 1x sizing} 270 -50 0 0 0.4 0.4 {}
T {CL = 100p} -240 130 0 0 0.75 0.75 {}
T {IMPLEMENTATION} -1130 -890 0 0 1 1 {}
T {Configure the telescopic cascode in 1× mode, select C1 and R1 such that 
output waveform is normalized to the input waveform} -1120 -830 0 0 0.4 0.4 {}
T {IBIAS1=100u} -1080 -130 0 0 0.4 0.4 {}
T {DC = 1.65V
} -1750 200 0 0 0.5 0.5 {}
T {1 V step
with 500 ms delay} -1460 10 0 0 0.5 0.5 {}
N -710 -600 -710 -560 {lab=CLK}
N -680 -600 -680 -560 {lab=SCAN_IN}
N 460 80 460 130 {lab=SCAN_IN}
N 460 190 460 230 {lab=GND}
N -860 -590 -860 -560 {lab=GND}
N -910 -600 -910 -580 {lab=GND}
N -910 -600 -860 -600 {lab=GND}
N -860 -600 -860 -590 {lab=GND}
N 310 190 310 230 {lab=GND}
N 310 80 310 130 {lab=VDD}
N -840 -600 -840 -560 {lab=VDD}
N 280 -380 280 -330 {lab=#net1}
N 280 -270 280 -230 {lab=GND}
N 280 -390 380 -390 {lab=#net1}
N 280 -390 280 -380 {lab=#net1}
N 550 -390 630 -390 {lab=CLK}
N 470 -520 470 -440 {lab=#net2}
N 470 -540 570 -540 {lab=#net2}
N 570 -540 570 -520 {lab=#net2}
N 570 -460 570 -440 {lab=GND}
N 470 -540 470 -520 {lab=#net2}
N 470 -370 470 -330 {lab=#net3}
N 470 -330 520 -330 {lab=#net3}
N 520 -330 520 -300 {lab=#net3}
N 520 -240 520 -220 {lab=GND}
N 430 -340 430 -320 {lab=GND}
N 420 -470 420 -440 {lab=VDD}
N -1090 -270 -1000 -270 {lab=#net4}
N -1090 -270 -1090 -170 {lab=#net4}
N -1090 -110 -1090 -80 {lab=VDD}
N -1170 -360 -1000 -360 {lab=INP_TELESCOPIC}
N -1530 -360 -1170 -360 {lab=INP_TELESCOPIC}
N -320 80 -320 110 {lab=OUT_TELESCOPIC}
N -320 170 -320 210 {lab=GND}
N -1670 -360 -1620 -360 {lab=INP_TELESCOPIC}
N -1620 -360 -1530 -360 {lab=INP_TELESCOPIC}
N -1110 -330 -1000 -330 {lab=OUT_TELESCOPIC}
N -1190 -330 -1110 -330 {lab=OUT_TELESCOPIC}
N -1670 -360 -1670 -250 {lab=INP_TELESCOPIC}
N -1190 -330 -1190 -280 {lab=OUT_TELESCOPIC}
N -1670 80 -1670 110 {lab=#net5}
N -1670 -250 -1670 -10 {lab=INP_TELESCOPIC}
N -320 -60 -320 -50 {lab=OUT_TELESCOPIC}
N -520 -290 -510 -290 {lab=OUT_TELESCOPIC}
N -1190 -280 -1190 -20 {lab=OUT_TELESCOPIC}
N -510 -290 -320 -290 {lab=OUT_TELESCOPIC}
N -320 -290 -320 -60 {lab=OUT_TELESCOPIC}
N -320 -50 -320 80 {lab=OUT_TELESCOPIC}
N -1670 50 -1670 80 {lab=#net5}
N -1190 -20 -320 -20 {lab=OUT_TELESCOPIC}
C {vsource.sym} 460 160 0 0 {name=V3 value=    "PWL(0 0 0.2499m 0 0.25m 3.3 0.29999m 3.3 0.3m 0)" savecurrent=false}
C {gnd.sym} 460 230 0 0 {name=l1 lab=GND}
C {gnd.sym} -910 -580 0 0 {name=l2 lab=GND}
C {vsource.sym} 310 160 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 310 230 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 310 80 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -840 -600 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 460 80 0 1 {name=p2 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -680 -600 0 1 {name=p3 sig_type=std_logic lab=SCAN_IN}
C {vsource.sym} 280 -300 0 0 {name=V2 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} 280 -230 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 630 -390 0 1 {name=p4 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -710 -600 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 470 -390 0 0 {name=x2}
C {vsource.sym} 570 -490 0 0 {name=V4 value="PWL(0 0 0.42501m 0 0.42502m 3.3)" savecurrent=false}
C {gnd.sym} 570 -440 0 0 {name=l5 lab=GND}
C {vsource.sym} 520 -270 0 0 {name=V5 value="PWL(0 3.3 0.42501m 3.3 0.42502m 0)" savecurrent=false}
C {gnd.sym} 520 -220 0 0 {name=l6 lab=GND}
C {gnd.sym} 430 -320 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 420 -470 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {isource.sym} -1090 -140 2 0 {name=IBIAS1 value=100u}
C {lab_pin.sym} -1090 -80 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -320 -290 0 1 {name=p11 sig_type=std_logic lab=OUT_TELESCOPIC}
C {devices/code_shown.sym} 920 -330 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {capa.sym} -320 140 0 0 {name=CLOAD
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -320 210 0 0 {name=l8 lab=GND}
C {lab_pin.sym} -1670 -360 0 0 {name=p12 sig_type=std_logic lab=INP_TELESCOPIC}
C {libs/core_tb/schem/DUT.sym} -770 -350 0 0 {name=x1}
C {code_shown.sym} 930 -160 0 0 {name=Simulation1 only_toplevel=false 

value=
"
.control

set color0 = white
set color1 = black

tran 1u 30m

plot v(OUT_TELESCOPIC) v(INP_TELESCOPIC)

.endc"}
C {vsource.sym} -1670 140 0 0 {name=VINP2 value= "dc 1.65" savecurrent=false}
C {gnd.sym} -1670 170 0 0 {name=l9 lab=GND}
C {vsource.sym} -1670 20 0 0 {name=VINP value= "PULSE(0 1 500u 1p 100n 25m 1)" savecurrent=false}

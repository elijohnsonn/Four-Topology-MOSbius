v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 160 -330 160 110 {}
L 4 160 110 830 110 {}
L 4 830 -330 830 110 {}
L 4 160 -330 830 -330 {}
L 4 -1800 -400 -1800 550 {}
L 4 -1800 550 10 550 {}
L 4 10 -460 10 550 {}
L 4 -1800 -460 10 -460 {}
L 4 -1800 -460 -1800 -390 {}
L 4 170 270 170 550 {}
L 4 170 550 860 550 {}
L 4 860 270 860 550 {}
L 4 170 270 860 270 {}
T {CLOCK GENERATION} 210 -490 0 0 1 1 {}
T {Artificially generate a clock signal and ensure it 
turns off after around .425ms, which is when the 
scan in signal has fully propogated through the scan chain} 190 -420 0 0 0.4 0.4 {}
T {VDD, GND, SCAN INPUT} 200 140 0 0 1 1 {}
T {Scan chain input artificially generated to 
enable folded cascode 3x sizing} 280 210 0 0 0.4 0.4 {}
T {R2 = 500K} -830 350 0 0 0.75 0.75 {}
T {R1 = 100K} -1410 -120 0 0 0.75 0.75 {}
T {CL = 120p} -230 -70 0 0 0.75 0.75 {}
T {DC = 1.65V
500Hz Frequency 
50mV Amplitude
1ms Delay} -1540 190 0 0 0.5 0.5 {}
T {DC = 1.65V} -1730 190 0 0 0.5 0.5 {}
T {IBIAS1=IBIAS2=100u} -1150 210 0 0 0.4 0.4 {}
T {IMPLEMENTATION} -1120 -630 0 0 1 1 {}
T {Configure the folded cascode in 3× mode 
as an inverting amplifier to amplify a 
sine wave input by 5 while driving a 
120pF capacitive load.} -1110 -570 0 0 0.4 0.4 {}
N -700 -340 -700 -300 {lab=CLK}
N -670 -340 -670 -300 {lab=SCAN_IN}
N 470 340 470 390 {lab=SCAN_IN}
N 470 450 470 490 {lab=GND}
N -850 -330 -850 -300 {lab=GND}
N -900 -340 -900 -320 {lab=GND}
N -900 -340 -850 -340 {lab=GND}
N -850 -340 -850 -330 {lab=GND}
N 320 450 320 490 {lab=GND}
N 320 340 320 390 {lab=VDD}
N -830 -340 -830 -300 {lab=VDD}
N 290 -120 290 -70 {lab=#net1}
N 290 -10 290 30 {lab=GND}
N 290 -130 390 -130 {lab=#net1}
N 290 -130 290 -120 {lab=#net1}
N 560 -130 640 -130 {lab=CLK}
N 480 -260 480 -180 {lab=#net2}
N 480 -280 580 -280 {lab=#net2}
N 580 -280 580 -260 {lab=#net2}
N 580 -200 580 -180 {lab=GND}
N 480 -280 480 -260 {lab=#net2}
N 480 -110 480 -70 {lab=#net3}
N 480 -70 530 -70 {lab=#net3}
N 530 -70 530 -40 {lab=#net3}
N 530 20 530 40 {lab=GND}
N 440 -80 440 -60 {lab=GND}
N 430 -210 430 -180 {lab=VDD}
N -1080 -10 -990 -10 {lab=#net4}
N -1080 -10 -1080 90 {lab=#net4}
N -1030 20 -990 20 {lab=#net5}
N -1030 20 -1030 90 {lab=#net5}
N -1080 150 -1080 180 {lab=VDD}
N -1030 150 -1030 180 {lab=VDD}
N -1160 -220 -990 -220 {lab=INP_FOLDED}
N -1100 -190 -990 -190 {lab=#net6}
N -510 -150 -460 -150 {lab=OUT_FOLDED}
N -460 -150 -330 -150 {lab=OUT_FOLDED}
N -380 -150 -380 330 {lab=OUT_FOLDED}
N -1180 -10 -1180 330 {lab=#net6}
N -1180 -140 -1180 -70 {lab=#net6}
N -1660 110 -1660 140 {lab=GND}
N -330 -150 -270 -150 {lab=OUT_FOLDED}
N -1660 -220 -1660 -20 {lab=INP_FOLDED}
N -1520 -220 -1160 -220 {lab=INP_FOLDED}
N -1660 -20 -1660 10 {lab=INP_FOLDED}
N -310 -150 -310 -120 {lab=OUT_FOLDED}
N -310 -60 -310 -20 {lab=GND}
N -1660 10 -1660 50 {lab=INP_FOLDED}
N -1180 -70 -1180 -10 {lab=#net6}
N -1180 -190 -1100 -190 {lab=#net6}
N -1180 -190 -1180 -140 {lab=#net6}
N -1260 -190 -1180 -190 {lab=#net6}
N -1370 -190 -1320 -190 {lab=INN_FOLDED}
N -1520 -190 -1520 -140 {lab=INN_FOLDED}
N -1520 110 -1520 140 {lab=GND}
N -590 430 -380 430 {lab=OUT_FOLDED}
N -380 330 -380 430 {lab=OUT_FOLDED}
N -720 430 -590 430 {lab=OUT_FOLDED}
N -1180 430 -780 430 {lab=#net6}
N -1180 330 -1180 430 {lab=#net6}
N -1660 -220 -1610 -220 {lab=INP_FOLDED}
N -1520 -190 -1480 -190 {lab=INN_FOLDED}
N -1610 -220 -1520 -220 {lab=INP_FOLDED}
N -1480 -190 -1370 -190 {lab=INN_FOLDED}
N -1520 -140 -1520 50 {lab=INN_FOLDED}
C {vsource.sym} 470 420 0 0 {name=V3 value="PWL(0 0 0.34999m 0 0.35m 3.3 0.499999m 3.3 0.5m 0)" savecurrent=false}
C {gnd.sym} 470 490 0 0 {name=l1 lab=GND}
C {gnd.sym} -900 -320 0 0 {name=l2 lab=GND}
C {vsource.sym} 320 420 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 320 490 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 320 340 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -830 -340 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 470 340 0 1 {name=p2 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -670 -340 0 1 {name=p3 sig_type=std_logic lab=SCAN_IN}
C {vsource.sym} 290 -40 0 0 {name=V2 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} 290 30 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 640 -130 0 1 {name=p4 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -700 -340 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 480 -130 0 0 {name=x2}
C {vsource.sym} 580 -230 0 0 {name=V4 value="PWL(0 0 0.42501m 0 0.42502m 3.3)" savecurrent=false}
C {gnd.sym} 580 -180 0 0 {name=l5 lab=GND}
C {vsource.sym} 530 -10 0 0 {name=V5 value="PWL(0 3.3 0.42501m 3.3 0.42502m 0)" savecurrent=false}
C {gnd.sym} 530 40 0 0 {name=l6 lab=GND}
C {gnd.sym} 440 -60 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 430 -210 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {isource.sym} -1080 120 2 0 {name=IBIAS1 value=100u}
C {isource.sym} -1030 120 2 1 {name=IBIAS2 value=100u}
C {lab_pin.sym} -1080 180 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -1030 180 0 1 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -270 -150 0 1 {name=p11 sig_type=std_logic lab=OUT_FOLDED}
C {devices/code_shown.sym} 930 -70 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 930 40 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control
tran 1u 10m
plot v(OUT_FOLDED) v(INN_FOLDED)
meas tran vout_pp pp v(out_folded) from=5m to=10m
meas tran vin_pp pp v(inn_folded) from=5m to=10m
let gain = vout_pp / vin_pp
print gain
.endc
"}
C {gnd.sym} -1660 140 0 0 {name=l9 lab=GND}
C {vsource.sym} -1660 80 0 0 {name=V7 value=1.65 savecurrent=false}
C {capa.sym} -310 -90 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -310 -20 0 0 {name=l8 lab=GND}
C {res.sym} -1290 -190 1 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -1520 80 0 0 {name=V6 value= "dc 1.65 ac 0 sin(1.65 50m 500 1m)" savecurrent=false}
C {gnd.sym} -1520 140 0 0 {name=l10 lab=GND}
C {lab_pin.sym} -1520 -190 0 0 {name=p13 sig_type=std_logic lab=INN_FOLDED}
C {lab_pin.sym} -1660 -220 0 0 {name=p12 sig_type=std_logic lab=INP_FOLDED}
C {res.sym} -750 430 1 0 {name=R1
value=500k
footprint=1206
device=resistor
m=1}
C {libs/core_tb/schem/DUT.sym} -760 -90 0 0 {name=x1}

v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -1820 -400 -1820 550 {}
L 4 -1820 550 -10 550 {}
L 4 -10 -460 -10 550 {}
L 4 -1820 -460 -10 -460 {}
L 4 -1820 -460 -1820 -390 {}
L 4 290 270 290 550 {}
L 4 290 550 980 550 {}
L 4 1070 270 1070 550 {}
L 4 290 270 980 270 {}
L 4 980 270 1070 270 {}
L 4 980 550 1070 550 {}
L 4 110 -390 110 50 {}
L 4 110 50 780 50 {}
L 4 1150 -390 1150 50 {}
L 4 110 -390 780 -390 {}
L 4 780 50 1150 50 {}
L 4 780 -390 1150 -390 {}
T {Scan chain input artificially generated to enable telescopic cascode 2x sizing
} 330 210 0 0 0.4 0.4 {}
T {R2 = 500K} -850 350 0 0 0.75 0.75 {}
T {R1 = 100K} -1430 0 0 0 0.75 0.75 {}
T {CL = 120p} -250 50 0 0 0.75 0.75 {}
T {DC = 1.65V
500Hz Frequency 
50mV Amplitude
1ms Delay} -1560 310 0 0 0.5 0.5 {}
T {DC = 1.65V} -1750 310 0 0 0.5 0.5 {}
T {IBIAS = 100u} -1170 210 0 0 0.4 0.4 {}
T {IMPLEMENTATION} -1080 -640 0 0 1 1 {}
T {Check the outputs of the other amplifiers in one of our folded 
cascode amplifier configurations in order to see if there is any 
leakage or feedthrough} -1140 -570 0 0 0.4 0.4 {}
T {CLOCK GENERATION} 370 -550 0 0 1 1 {}
T {Artificially generate a clock signal and ensure it 
turns off after around .425ms, which is when the 
scan in signal has fully propogated through the scan chain} 350 -480 0 0 0.4 0.4 {}
N -720 -340 -720 -300 {lab=CLK}
N -690 -340 -690 -300 {lab=SCAN_IN}
N 590 340 590 390 {lab=SCAN_IN}
N 590 450 590 490 {lab=GND}
N -870 -330 -870 -300 {lab=GND}
N -920 -340 -920 -320 {lab=GND}
N -920 -340 -870 -340 {lab=GND}
N -870 -340 -870 -330 {lab=GND}
N 440 450 440 490 {lab=GND}
N 440 340 440 390 {lab=VDD}
N -850 -340 -850 -300 {lab=VDD}
N -1100 -10 -1010 -10 {lab=#net1}
N -1100 -10 -1100 90 {lab=#net1}
N -1100 150 -1100 180 {lab=VDD}
N -1180 -100 -1010 -100 {lab=INP_TELESCOPIC}
N -1120 -70 -1010 -70 {lab=#net2}
N -530 -30 -480 -30 {lab=OUT_TELE}
N -480 -30 -350 -30 {lab=OUT_TELE}
N -400 -30 -400 430 {lab=OUT_TELE}
N -1200 -10 -1200 330 {lab=#net2}
N -1680 230 -1680 260 {lab=GND}
N -350 -30 -290 -30 {lab=OUT_TELE}
N -1680 -100 -1680 100 {lab=INP_TELESCOPIC}
N -1540 -100 -1180 -100 {lab=INP_TELESCOPIC}
N -1680 100 -1680 130 {lab=INP_TELESCOPIC}
N -330 -30 -330 0 {lab=OUT_TELE}
N -330 60 -330 100 {lab=GND}
N -1680 130 -1680 170 {lab=INP_TELESCOPIC}
N -1200 -70 -1200 -10 {lab=#net2}
N -1200 -70 -1120 -70 {lab=#net2}
N -1280 -70 -1200 -70 {lab=#net2}
N -1390 -70 -1340 -70 {lab=INN_TELESCOPIC}
N -1540 -70 -1540 -20 {lab=INN_TELESCOPIC}
N -1540 230 -1540 260 {lab=GND}
N -610 430 -400 430 {lab=OUT_TELE}
N -740 430 -610 430 {lab=OUT_TELE}
N -1200 430 -800 430 {lab=#net2}
N -1200 330 -1200 430 {lab=#net2}
N -1680 -100 -1630 -100 {lab=INP_TELESCOPIC}
N -1540 -70 -1500 -70 {lab=INN_TELESCOPIC}
N -1630 -100 -1540 -100 {lab=INP_TELESCOPIC}
N -1500 -70 -1390 -70 {lab=INN_TELESCOPIC}
N -1540 -20 -1540 170 {lab=INN_TELESCOPIC}
N -1070 40 -1010 40 {lab=PROG_ENA}
N 960 340 960 390 {lab=PROG_ENA}
N 960 450 960 490 {lab=GND}
N 960 330 960 340 {lab=PROG_ENA}
N 240 -180 240 -130 {lab=#net3}
N 240 -70 240 -30 {lab=GND}
N 240 -190 340 -190 {lab=#net3}
N 240 -190 240 -180 {lab=#net3}
N 510 -190 590 -190 {lab=CLK}
N 430 -320 430 -240 {lab=!CLK_ENA}
N 430 -340 530 -340 {lab=!CLK_ENA}
N 530 -340 530 -320 {lab=!CLK_ENA}
N 530 -260 530 -240 {lab=GND}
N 430 -340 430 -320 {lab=!CLK_ENA}
N 430 -170 430 -130 {lab=CLK_ENA}
N 430 -130 480 -130 {lab=CLK_ENA}
N 480 -130 480 -100 {lab=CLK_ENA}
N 480 -40 480 -20 {lab=GND}
N 390 -140 390 -120 {lab=GND}
N 380 -270 380 -240 {lab=VDD}
N 740 -190 740 -140 {lab=GND}
N 740 -140 740 -100 {lab=GND}
N 740 -200 840 -200 {lab=GND}
N 740 -200 740 -190 {lab=GND}
N 1010 -200 1090 -200 {lab=CLK}
N 930 -180 930 -140 {lab=!CLK_ENA}
N 890 -150 890 -130 {lab=GND}
N 880 -280 880 -250 {lab=VDD}
N 930 -290 930 -250 {lab=CLK_ENA}
N 480 -130 550 -130 {lab=CLK_ENA}
N 530 -340 600 -340 {lab=!CLK_ENA}
N -530 -90 -520 -90 {lab=OUT_5T}
N -530 30 -520 30 {lab=OUT_CS}
N -530 -150 -520 -150 {lab=OUT_FOLDED}
C {gnd.sym} 590 490 0 0 {name=l1 lab=GND}
C {gnd.sym} -920 -320 0 0 {name=l2 lab=GND}
C {vsource.sym} 440 420 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 440 490 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 440 340 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -850 -340 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 590 340 0 1 {name=p2 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -690 -340 0 1 {name=p3 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -720 -340 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {isource.sym} -1100 120 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -1100 180 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -520 -150 0 1 {name=p11 sig_type=std_logic lab=OUT_FOLDED}
C {devices/code_shown.sym} 1420 -250 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 1420 -140 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control
tran 1u 5m

plot v(out_folded) v(out_5t) v(out_tele) v(out_cs)

meas tran folded_pp pp v(out_folded) from=2m to=5m
meas tran five_t_pp pp v(out_5t) from=2m to=5m
meas tran tele_pp pp v(out_tele) from=2m to=5m
meas tran cs_pp pp v(out_cs) from=2m to=5m

print folded_pp five_t_pp tele_pp cs_pp

let iso_5t = 20 * log(five_t_pp / tele_pp) / log(10)
let iso_folded = 20 * log(folded_pp / tele_pp) / log(10)
let iso_cs = 20 * log(cs_pp / tele_pp) / log(10)

print iso_5t iso_folded iso_cs
.endc
"}
C {gnd.sym} -1680 260 0 0 {name=l9 lab=GND}
C {vsource.sym} -1680 200 0 0 {name=V7 value=1.65 savecurrent=false}
C {capa.sym} -330 30 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -330 100 0 0 {name=l8 lab=GND}
C {res.sym} -1310 -70 1 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -1540 200 0 0 {name=V6 value= "dc 1.65 ac 0 sin(1.65 10m 500 1m)" savecurrent=false}
C {gnd.sym} -1540 260 0 0 {name=l10 lab=GND}
C {lab_pin.sym} -1540 -70 0 0 {name=p13 sig_type=std_logic lab=INN_TELESCOPIC}
C {lab_pin.sym} -1680 -100 0 0 {name=p12 sig_type=std_logic lab=INP_TELESCOPIC}
C {res.sym} -770 430 1 0 {name=R1
value=500k
footprint=1206
device=resistor
m=1}
C {libs/core_tb/schem/DUT.sym} -780 -90 0 0 {name=x1}
C {lab_pin.sym} -1070 40 3 0 {name=p7 sig_type=std_logic lab=PROG_ENA}
C {vsource.sym} 960 420 0 0 {name=V8 value=3.3 savecurrent=false}
C {gnd.sym} 960 490 0 0 {name=l11 lab=GND}
C {lab_pin.sym} 960 330 0 1 {name=p10 sig_type=std_logic lab=PROG_ENA}
C {vsource.sym} 240 -100 0 0 {name=V9 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} 240 -30 0 0 {name=l12 lab=GND}
C {lab_pin.sym} 590 -190 0 1 {name=p14 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 430 -190 0 0 {name=x3}
C {vsource.sym} 530 -290 0 0 {name=V10 value="PWL(0 0 0.42501m 0 0.42502m 3.3)" savecurrent=false}
C {gnd.sym} 530 -240 0 0 {name=l13 lab=GND}
C {vsource.sym} 480 -70 0 0 {name=V11 value="PWL(0 3.3 0.42501m 3.3 0.42502m 0)" savecurrent=false}
C {gnd.sym} 480 -20 0 0 {name=l14 lab=GND}
C {gnd.sym} 390 -120 0 0 {name=l15 lab=GND}
C {lab_pin.sym} 380 -270 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {gnd.sym} 740 -100 0 0 {name=l16 lab=GND}
C {lab_pin.sym} 1090 -200 0 1 {name=p16 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 930 -200 0 0 {name=x4}
C {gnd.sym} 890 -130 0 0 {name=l17 lab=GND}
C {lab_pin.sym} 880 -280 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 930 -290 0 1 {name=p18 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 930 -140 0 1 {name=p19 sig_type=std_logic lab=!CLK_ENA}
C {lab_pin.sym} 550 -130 0 1 {name=p20 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 600 -340 0 1 {name=p21 sig_type=std_logic lab=!CLK_ENA}
C {lab_pin.sym} -520 -90 0 1 {name=p4 sig_type=std_logic lab=OUT_5T}
C {lab_pin.sym} -290 -30 0 1 {name=p6 sig_type=std_logic lab=OUT_TELE}
C {lab_pin.sym} -520 30 0 1 {name=p22 sig_type=std_logic lab=OUT_CS}
C {vsource.sym} 590 420 0 0 {name=V3 value= "PWL(0 0 0.2999m 0 0.3m 3.3 0.349999m 3.3 0.35m 0)" savecurrent=false}

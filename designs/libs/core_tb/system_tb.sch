v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 50 -290 50 -250 {lab=CLK}
N 80 -290 80 -250 {lab=SCAN_IN}
N 770 -350 770 -300 {lab=SCAN_IN}
N 770 -240 770 -200 {lab=GND}
N -100 -280 -100 -250 {lab=GND}
N -150 -290 -150 -270 {lab=GND}
N -150 -290 -100 -290 {lab=GND}
N -100 -290 -100 -280 {lab=GND}
N 670 -240 670 -200 {lab=GND}
N 670 -350 670 -300 {lab=VDD}
N -80 -290 -80 -250 {lab=VDD}
N 560 70 560 120 {lab=#net1}
N 560 180 560 220 {lab=GND}
N 560 60 660 60 {lab=#net1}
N 560 60 560 70 {lab=#net1}
N 830 60 910 60 {lab=CLK}
N 750 -70 750 10 {lab=#net2}
N 750 -90 850 -90 {lab=#net2}
N 850 -90 850 -70 {lab=#net2}
N 850 -10 850 10 {lab=GND}
N 750 -90 750 -70 {lab=#net2}
N 750 80 750 120 {lab=#net3}
N 750 120 800 120 {lab=#net3}
N 800 120 800 150 {lab=#net3}
N 800 210 800 230 {lab=GND}
N 710 110 710 130 {lab=GND}
N 700 -20 700 10 {lab=VDD}
N 240 -160 290 -160 {lab=SCAN_OUT}
N -330 40 -240 40 {lab=#net4}
N -330 40 -330 140 {lab=#net4}
N -280 70 -240 70 {lab=#net5}
N -280 70 -280 140 {lab=#net5}
N -330 200 -330 230 {lab=VDD}
N -280 200 -280 230 {lab=VDD}
N -410 -170 -240 -170 {lab=#net6}
N -350 -140 -240 -140 {lab=INPUT}
N -350 -140 -350 -90 {lab=INPUT}
N -460 -90 -350 -90 {lab=INPUT}
N 240 -100 290 -100 {lab=OUT_FOLDED}
N 290 -100 420 -100 {lab=OUT_FOLDED}
N 370 -100 370 380 {lab=OUT_FOLDED}
N 40 380 370 380 {lab=OUT_FOLDED}
N -430 380 -20 380 {lab=#net7}
N -430 40 -430 380 {lab=#net7}
N -430 -90 -430 -20 {lab=INPUT}
N -540 -90 -460 -90 {lab=INPUT}
N -600 -90 -540 -90 {lab=INPUT}
N -680 -90 -600 -90 {lab=INPUT}
N -680 -90 -680 -50 {lab=INPUT}
N -730 160 -730 190 {lab=GND}
N 420 -100 480 -100 {lab=OUT_FOLDED}
N -770 -170 -770 30 {lab=#net6}
N -770 -170 -410 -170 {lab=#net6}
N -770 30 -770 60 {lab=#net6}
N -770 60 -680 60 {lab=#net6}
N -680 10 -680 60 {lab=#net6}
N -730 60 -730 100 {lab=#net6}
C {libs/core_tb/DUT.sym} -10 -40 0 0 {name=x1}
C {vsource.sym} 770 -270 0 0 {name=V3 value="PWL(0 0 0.1499m 0 0.15m 3.3 0.24999m 3.3 0.25m 0)" savecurrent=false}
C {gnd.sym} 770 -200 0 0 {name=l1 lab=GND}
C {gnd.sym} -150 -270 0 0 {name=l2 lab=GND}
C {vsource.sym} 670 -270 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 670 -200 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 670 -350 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -80 -290 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 770 -350 0 1 {name=p2 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} 80 -290 0 1 {name=p3 sig_type=std_logic lab=SCAN_IN}
C {vsource.sym} 560 150 0 0 {name=V2 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} 560 220 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 910 60 0 1 {name=p4 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 50 -290 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 750 60 0 0 {name=x2}
C {vsource.sym} 850 -40 0 0 {name=V4 value="PWL(0 0 0.42501m 0 0.42502m 3.3)" savecurrent=false}
C {gnd.sym} 850 10 0 0 {name=l5 lab=GND}
C {vsource.sym} 800 180 0 0 {name=V5 value="PWL(0 3.3 0.42501m 3.3 0.42502m 0)" savecurrent=false}
C {gnd.sym} 800 230 0 0 {name=l6 lab=GND}
C {gnd.sym} 710 130 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 700 -20 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 290 -160 0 1 {name=p7 sig_type=std_logic lab=SCAN_OUT}
C {isource.sym} -330 170 2 0 {name=IBIAS1 value=100u}
C {isource.sym} -280 170 2 1 {name=IBIAS2 value=100u}
C {lab_pin.sym} -330 230 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -280 230 0 1 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 480 -100 0 1 {name=p11 sig_type=std_logic lab=OUT_FOLDED}
C {devices/code_shown.sym} 1160 -340 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {res.sym} 10 380 1 0 {name=R1
value=100k
footprint=1206
device=resistor
m=1}
C {res.sym} -430 10 0 0 {name=R2
value=10k
footprint=1206
device=resistor
m=1}
C {code_shown.sym} 1160 -230 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control
tran 1u 2m
plot v(OUT_FOLDED) v(INPUT)
.endc
"}
C {vsource.sym} -680 -20 0 0 {name=V6 value= "sin(.1 100m 10k)" savecurrent=false}
C {gnd.sym} -730 190 0 0 {name=l9 lab=GND}
C {lab_pin.sym} -680 -90 0 0 {name=p12 sig_type=std_logic lab=INPUT}
C {vsource.sym} -730 130 0 0 {name=V7 value=1.65 savecurrent=false}

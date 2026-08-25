v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 540 130 540 410 {}
L 4 540 410 1230 410 {}
L 4 1320 130 1320 410 {}
L 4 540 130 1230 130 {}
L 4 1230 130 1320 130 {}
L 4 1230 410 1320 410 {}
L 4 390 -410 390 30 {}
L 4 390 30 1060 30 {}
L 4 1430 -410 1430 30 {}
L 4 390 -410 1060 -410 {}
L 4 1060 30 1430 30 {}
L 4 1060 -410 1430 -410 {}
T {Scan chain input artificially generated to enable telescopic cascode 3x sizing
} 530 80 0 0 0.4 0.4 {}
T {CLOCK GENERATION} 650 -570 0 0 1 1 {}
T {Artificially generate a clock signal and ensure it 
turns off after around .425ms, which is when the 
scan in signal has fully propogated through the scan chain} 630 -500 0 0 0.4 0.4 {}
T {CL = 120p} 220 240 0 0 0.75 0.75 {}
N -490 160 -460 160 {lab=PROG_ENA}
N -490 160 -490 190 {lab=PROG_ENA}
N -320 -210 -320 -180 {lab=GND}
N -360 -210 -320 -210 {lab=GND}
N -360 -210 -360 -190 {lab=GND}
N -300 -210 -300 -180 {lab=VDD}
N -200 -210 -200 -190 {lab=CLK}
N -200 -210 -170 -210 {lab=CLK}
N -170 -210 -170 -180 {lab=CLK}
N -140 -210 -140 -180 {lab=SCAN_IN}
N -140 -210 -110 -210 {lab=SCAN_IN}
N -110 -210 -110 -190 {lab=SCAN_IN}
N 20 90 150 90 {lab=#net1}
N 80 90 80 350 {lab=#net1}
N -160 350 80 350 {lab=#net1}
N -580 350 -220 350 {lab=#net2}
N -600 50 -600 350 {lab=#net2}
N -660 50 -460 50 {lab=#net2}
N -790 50 -720 50 {lab=INN_TELESCOPIC}
N -820 50 -790 50 {lab=INN_TELESCOPIC}
N -820 50 -820 110 {lab=INN_TELESCOPIC}
N -820 170 -820 250 {lab=GND}
N -990 170 -990 250 {lab=GND}
N -990 20 -990 110 {lab=#net3}
N -930 20 -460 20 {lab=#net3}
N -990 20 -930 20 {lab=#net3}
N -540 260 -540 290 {lab=VDD}
N -600 350 -580 350 {lab=#net2}
N -540 110 -460 110 {lab=#net4}
N -540 110 -540 200 {lab=#net4}
N 840 200 840 250 {lab=SCAN_IN}
N 840 310 840 350 {lab=GND}
N 690 310 690 350 {lab=GND}
N 690 200 690 250 {lab=VDD}
N 1210 200 1210 250 {lab=PROG_ENA}
N 1210 310 1210 350 {lab=GND}
N 1210 190 1210 200 {lab=PROG_ENA}
N 520 -200 520 -150 {lab=#net5}
N 520 -90 520 -50 {lab=GND}
N 520 -210 620 -210 {lab=#net5}
N 520 -210 520 -200 {lab=#net5}
N 790 -210 870 -210 {lab=CLK}
N 710 -340 710 -260 {lab=!CLK_ENA}
N 710 -360 810 -360 {lab=!CLK_ENA}
N 810 -360 810 -340 {lab=!CLK_ENA}
N 810 -280 810 -260 {lab=GND}
N 710 -360 710 -340 {lab=!CLK_ENA}
N 710 -190 710 -150 {lab=CLK_ENA}
N 710 -150 760 -150 {lab=CLK_ENA}
N 760 -150 760 -120 {lab=CLK_ENA}
N 760 -60 760 -40 {lab=GND}
N 670 -160 670 -140 {lab=GND}
N 660 -290 660 -260 {lab=VDD}
N 1020 -210 1020 -160 {lab=GND}
N 1020 -160 1020 -120 {lab=GND}
N 1020 -220 1120 -220 {lab=GND}
N 1020 -220 1020 -210 {lab=GND}
N 1290 -220 1370 -220 {lab=CLK}
N 1210 -200 1210 -160 {lab=!CLK_ENA}
N 1170 -170 1170 -150 {lab=GND}
N 1160 -300 1160 -270 {lab=VDD}
N 1210 -310 1210 -270 {lab=CLK_ENA}
N 760 -150 830 -150 {lab=CLK_ENA}
N 810 -360 880 -360 {lab=!CLK_ENA}
N 290 90 350 90 {lab=OUT_TELESCOPIC}
N 310 90 310 120 {lab=OUT_TELESCOPIC}
N 310 180 310 220 {lab=GND}
N 220 140 220 170 {lab=VDD}
N 240 140 240 150 {lab=!CLK_ENA}
N 200 140 200 150 {lab=CLK_ENA}
N 150 210 150 240 {lab=GND}
N 150 110 150 150 {lab=#net6}
C {gnd.sym} -360 -190 0 1 {name=l1 lab=GND}
C {lab_pin.sym} -300 -210 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 1480 -290 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 1480 -180 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.include /foss/designs/libs/pex/DUT.spice
.control
tran 1u 5m

plot v(out_telescopic) v(inn_telescopic)
wrdata /foss/designs/libs/pex/start_up_cir/tele/3x.csv v(out_telescopic) v(inn_telescopic)

meas tran vout_pp pp v(out_telescopic) from=2m to=5m
meas tran vin_pp pp v(inn_telescopic) from=2m to=5m
let gain = vout_pp / vin_pp
print gain

meas tran vout_dc avg v(out_telescopic) from=2m to=5m
meas tran vin_dc avg v(inn_telescopic) from=2m to=5m
let dc_offset = vout_dc - vin_dc
let input_offset = dc_offset / 6
print vout_dc vin_dc dc_offset input_offset

let ideal_gain = 5
let gain_error_pct = (ideal_gain - gain) / ideal_gain * 100
print gain_error_pct

meas tran idd avg i(v1) from=2m to=5m
let power = abs(idd) * 3.3
print idd power
.endc
"}
C {res.sym} -190 350 1 0 {name=R1
value=500k
footprint=1206
device=resistor
m=1}
C {res.sym} -690 50 1 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -820 140 0 0 {name=V6 value= "dc 1.65 ac 0 sin(1.65 10m 500 1m)" savecurrent=false}
C {gnd.sym} -820 250 0 0 {name=l6 lab=GND}
C {vsource.sym} -990 140 0 1 {name=V7 value=1.65 savecurrent=false}
C {gnd.sym} -990 250 0 1 {name=l7 lab=GND}
C {lab_pin.sym} -820 50 0 0 {name=p13 sig_type=std_logic lab=INN_TELESCOPIC}
C {isource.sym} -540 230 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -540 290 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {vsource.sym} 840 280 0 0 {name=V3 value=  "PWL(0 0 0.2499m 0 0.25m 3.3 0.29999m 3.3 0.3m 0)" savecurrent=false}
C {gnd.sym} 840 350 0 0 {name=l5 lab=GND}
C {vsource.sym} 690 280 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 690 350 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 690 200 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 840 200 0 1 {name=p2 sig_type=std_logic lab=SCAN_IN}
C {vsource.sym} 1210 280 0 0 {name=V8 value=3.3 savecurrent=false}
C {gnd.sym} 1210 350 0 0 {name=l11 lab=GND}
C {lab_pin.sym} 1210 190 0 1 {name=p10 sig_type=std_logic lab=PROG_ENA}
C {vsource.sym} 520 -120 0 0 {name=V9 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} 520 -50 0 0 {name=l12 lab=GND}
C {lab_pin.sym} 870 -210 0 1 {name=p14 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 710 -210 0 0 {name=x3}
C {vsource.sym} 810 -310 0 0 {name=V10 value="PWL(0 0 0.42501m 0 0.42502m 3.3)" savecurrent=false}
C {gnd.sym} 810 -260 0 0 {name=l13 lab=GND}
C {vsource.sym} 760 -90 0 0 {name=V11 value="PWL(0 3.3 0.42501m 3.3 0.42502m 0)" savecurrent=false}
C {gnd.sym} 760 -40 0 0 {name=l14 lab=GND}
C {gnd.sym} 670 -140 0 0 {name=l15 lab=GND}
C {lab_pin.sym} 660 -290 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {gnd.sym} 1020 -120 0 0 {name=l16 lab=GND}
C {lab_pin.sym} 1370 -220 0 1 {name=p16 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 1210 -220 0 0 {name=x4}
C {gnd.sym} 1170 -150 0 0 {name=l17 lab=GND}
C {lab_pin.sym} 1160 -300 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1210 -310 0 1 {name=p18 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 1210 -160 0 1 {name=p19 sig_type=std_logic lab=!CLK_ENA}
C {lab_pin.sym} 830 -150 0 1 {name=p20 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 880 -360 0 1 {name=p21 sig_type=std_logic lab=!CLK_ENA}
C {lab_pin.sym} -110 -190 0 1 {name=p3 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -200 -190 0 0 {name=p4 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -490 190 1 1 {name=p5 sig_type=std_logic lab=PROG_ENA}
C {libs/pex/DUT.sym} -230 30 0 0 {name=x1}
C {lab_pin.sym} 350 90 0 1 {name=p6 sig_type=std_logic lab=OUT_TELESCOPIC}
C {capa.sym} 310 150 0 0 {name=CLOAD1
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 310 220 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 200 150 1 1 {name=p7 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 220 170 3 0 {name=p22 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 240 150 1 1 {name=p23 sig_type=std_logic lab=!CLK_ENA}
C {gnd.sym} 150 240 0 0 {name=l2 lab=GND}
C {vsource.sym} 150 180 0 0 {name=V2 value=1.65 savecurrent=false}
C {libs/core_amps/start_up_cir/start_up_cir.sym} 220 100 0 0 {name=x2}

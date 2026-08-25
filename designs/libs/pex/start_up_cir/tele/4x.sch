v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 540 170 540 450 {}
L 4 540 450 1230 450 {}
L 4 1320 170 1320 450 {}
L 4 540 170 1230 170 {}
L 4 1230 170 1320 170 {}
L 4 1230 450 1320 450 {}
L 4 390 -370 390 70 {}
L 4 390 70 1060 70 {}
L 4 1430 -370 1430 70 {}
L 4 390 -370 1060 -370 {}
L 4 1060 70 1430 70 {}
L 4 1060 -370 1430 -370 {}
T {Scan chain input artificially generated to enable telescopic cascode 4x sizing
} 530 120 0 0 0.4 0.4 {}
T {CLOCK GENERATION} 650 -530 0 0 1 1 {}
T {Artificially generate a clock signal and ensure it 
turns off after around .425ms, which is when the 
scan in signal has fully propogated through the scan chain} 630 -460 0 0 0.4 0.4 {}
T {CL = 120p} 220 280 0 0 0.75 0.75 {}
N -490 200 -460 200 {lab=PROG_ENA}
N -490 200 -490 230 {lab=PROG_ENA}
N -320 -170 -320 -140 {lab=GND}
N -360 -170 -320 -170 {lab=GND}
N -360 -170 -360 -150 {lab=GND}
N -300 -170 -300 -140 {lab=VDD}
N -200 -170 -200 -150 {lab=CLK}
N -200 -170 -170 -170 {lab=CLK}
N -170 -170 -170 -140 {lab=CLK}
N -140 -170 -140 -140 {lab=SCAN_IN}
N -140 -170 -110 -170 {lab=SCAN_IN}
N -110 -170 -110 -150 {lab=SCAN_IN}
N 20 130 150 130 {lab=#net1}
N 80 130 80 390 {lab=#net1}
N -160 390 80 390 {lab=#net1}
N -580 390 -220 390 {lab=#net2}
N -600 90 -600 390 {lab=#net2}
N -660 90 -460 90 {lab=#net2}
N -790 90 -720 90 {lab=INN_TELESCOPIC}
N -820 90 -790 90 {lab=INN_TELESCOPIC}
N -820 90 -820 150 {lab=INN_TELESCOPIC}
N -820 210 -820 290 {lab=GND}
N -990 210 -990 290 {lab=GND}
N -990 60 -990 150 {lab=#net3}
N -930 60 -460 60 {lab=#net3}
N -990 60 -930 60 {lab=#net3}
N -540 300 -540 330 {lab=VDD}
N -600 390 -580 390 {lab=#net2}
N -540 150 -460 150 {lab=#net4}
N -540 150 -540 240 {lab=#net4}
N 840 240 840 290 {lab=SCAN_IN}
N 840 350 840 390 {lab=GND}
N 690 350 690 390 {lab=GND}
N 690 240 690 290 {lab=VDD}
N 1210 240 1210 290 {lab=PROG_ENA}
N 1210 350 1210 390 {lab=GND}
N 1210 230 1210 240 {lab=PROG_ENA}
N 520 -160 520 -110 {lab=#net5}
N 520 -50 520 -10 {lab=GND}
N 520 -170 620 -170 {lab=#net5}
N 520 -170 520 -160 {lab=#net5}
N 790 -170 870 -170 {lab=CLK}
N 710 -300 710 -220 {lab=!CLK_ENA}
N 710 -320 810 -320 {lab=!CLK_ENA}
N 810 -320 810 -300 {lab=!CLK_ENA}
N 810 -240 810 -220 {lab=GND}
N 710 -320 710 -300 {lab=!CLK_ENA}
N 710 -150 710 -110 {lab=CLK_ENA}
N 710 -110 760 -110 {lab=CLK_ENA}
N 760 -110 760 -80 {lab=CLK_ENA}
N 760 -20 760 0 {lab=GND}
N 670 -120 670 -100 {lab=GND}
N 660 -250 660 -220 {lab=VDD}
N 1020 -170 1020 -120 {lab=GND}
N 1020 -120 1020 -80 {lab=GND}
N 1020 -180 1120 -180 {lab=GND}
N 1020 -180 1020 -170 {lab=GND}
N 1290 -180 1370 -180 {lab=CLK}
N 1210 -160 1210 -120 {lab=!CLK_ENA}
N 1170 -130 1170 -110 {lab=GND}
N 1160 -260 1160 -230 {lab=VDD}
N 1210 -270 1210 -230 {lab=CLK_ENA}
N 760 -110 830 -110 {lab=CLK_ENA}
N 810 -320 880 -320 {lab=!CLK_ENA}
N 290 130 350 130 {lab=OUT_TELESCOPIC}
N 310 130 310 160 {lab=OUT_TELESCOPIC}
N 310 220 310 260 {lab=GND}
N 220 180 220 210 {lab=VDD}
N 240 180 240 190 {lab=!CLK_ENA}
N 200 180 200 190 {lab=CLK_ENA}
N 150 250 150 280 {lab=GND}
N 150 150 150 190 {lab=#net6}
C {gnd.sym} -360 -150 0 1 {name=l1 lab=GND}
C {lab_pin.sym} -300 -170 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 1480 -250 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 1480 -140 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.include /foss/designs/libs/pex/DUT.spice
.control
tran 1u 5m

plot v(out_telescopic) v(inn_telescopic)
wrdata /foss/designs/libs/pex/start_up_cir/tele/4x.csv v(out_telescopic) v(inn_telescopic)

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
C {res.sym} -190 390 1 0 {name=R1
value=500k
footprint=1206
device=resistor
m=1}
C {res.sym} -690 90 1 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -820 180 0 0 {name=V6 value= "dc 1.65 ac 0 sin(1.65 10m 500 1m)" savecurrent=false}
C {gnd.sym} -820 290 0 0 {name=l6 lab=GND}
C {vsource.sym} -990 180 0 1 {name=V7 value=1.65 savecurrent=false}
C {gnd.sym} -990 290 0 1 {name=l7 lab=GND}
C {lab_pin.sym} -820 90 0 0 {name=p13 sig_type=std_logic lab=INN_TELESCOPIC}
C {isource.sym} -540 270 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -540 330 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {vsource.sym} 840 320 0 0 {name=V3 value=  "PWL(0 0 0.2499m 0 0.25m 3.3 0.34999m 3.3 0.35m 0)" savecurrent=false}
C {gnd.sym} 840 390 0 0 {name=l5 lab=GND}
C {vsource.sym} 690 320 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 690 390 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 690 240 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 840 240 0 1 {name=p2 sig_type=std_logic lab=SCAN_IN}
C {vsource.sym} 1210 320 0 0 {name=V8 value=3.3 savecurrent=false}
C {gnd.sym} 1210 390 0 0 {name=l11 lab=GND}
C {lab_pin.sym} 1210 230 0 1 {name=p10 sig_type=std_logic lab=PROG_ENA}
C {vsource.sym} 520 -80 0 0 {name=V9 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} 520 -10 0 0 {name=l12 lab=GND}
C {lab_pin.sym} 870 -170 0 1 {name=p14 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 710 -170 0 0 {name=x3}
C {vsource.sym} 810 -270 0 0 {name=V10 value="PWL(0 0 0.42501m 0 0.42502m 3.3)" savecurrent=false}
C {gnd.sym} 810 -220 0 0 {name=l13 lab=GND}
C {vsource.sym} 760 -50 0 0 {name=V11 value="PWL(0 3.3 0.42501m 3.3 0.42502m 0)" savecurrent=false}
C {gnd.sym} 760 0 0 0 {name=l14 lab=GND}
C {gnd.sym} 670 -100 0 0 {name=l15 lab=GND}
C {lab_pin.sym} 660 -250 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {gnd.sym} 1020 -80 0 0 {name=l16 lab=GND}
C {lab_pin.sym} 1370 -180 0 1 {name=p16 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 1210 -180 0 0 {name=x4}
C {gnd.sym} 1170 -110 0 0 {name=l17 lab=GND}
C {lab_pin.sym} 1160 -260 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1210 -270 0 1 {name=p18 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 1210 -120 0 1 {name=p19 sig_type=std_logic lab=!CLK_ENA}
C {lab_pin.sym} 830 -110 0 1 {name=p20 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 880 -320 0 1 {name=p21 sig_type=std_logic lab=!CLK_ENA}
C {lab_pin.sym} -110 -150 0 1 {name=p3 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -200 -150 0 0 {name=p4 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -490 230 1 1 {name=p5 sig_type=std_logic lab=PROG_ENA}
C {libs/pex/DUT.sym} -230 70 0 0 {name=x1}
C {lab_pin.sym} 350 130 0 1 {name=p6 sig_type=std_logic lab=OUT_TELESCOPIC}
C {capa.sym} 310 190 0 0 {name=CLOAD1
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 310 260 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 200 190 1 1 {name=p7 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 220 210 3 0 {name=p22 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 240 190 1 1 {name=p23 sig_type=std_logic lab=!CLK_ENA}
C {gnd.sym} 150 280 0 0 {name=l2 lab=GND}
C {vsource.sym} 150 220 0 0 {name=V2 value=1.65 savecurrent=false}
C {libs/core_amps/start_up_cir/start_up_cir.sym} 220 140 0 0 {name=x2}

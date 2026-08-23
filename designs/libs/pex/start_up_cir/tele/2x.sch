v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 540 100 540 380 {}
L 4 540 380 1230 380 {}
L 4 1320 100 1320 380 {}
L 4 540 100 1230 100 {}
L 4 1230 100 1320 100 {}
L 4 1230 380 1320 380 {}
L 4 390 -440 390 0 {}
L 4 390 0 1060 0 {}
L 4 1430 -440 1430 0 {}
L 4 390 -440 1060 -440 {}
L 4 1060 0 1430 0 {}
L 4 1060 -440 1430 -440 {}
T {Scan chain input artificially generated to enable telescopic cascode 2x sizing
} 530 50 0 0 0.4 0.4 {}
T {CLOCK GENERATION} 650 -600 0 0 1 1 {}
T {Artificially generate a clock signal and ensure it 
turns off after around .425ms, which is when the 
scan in signal has fully propogated through the scan chain} 630 -530 0 0 0.4 0.4 {}
T {CL = 120p} 220 210 0 0 0.75 0.75 {}
N -490 130 -460 130 {lab=PROG_ENA}
N -490 130 -490 160 {lab=PROG_ENA}
N -320 -240 -320 -210 {lab=GND}
N -360 -240 -320 -240 {lab=GND}
N -360 -240 -360 -220 {lab=GND}
N -300 -240 -300 -210 {lab=VDD}
N -200 -240 -200 -220 {lab=CLK}
N -200 -240 -170 -240 {lab=CLK}
N -170 -240 -170 -210 {lab=CLK}
N -140 -240 -140 -210 {lab=SCAN_IN}
N -140 -240 -110 -240 {lab=SCAN_IN}
N -110 -240 -110 -220 {lab=SCAN_IN}
N 20 60 150 60 {lab=#net1}
N 80 60 80 320 {lab=#net1}
N -160 320 80 320 {lab=#net1}
N -580 320 -220 320 {lab=#net2}
N -600 20 -600 320 {lab=#net2}
N -660 20 -460 20 {lab=#net2}
N -790 20 -720 20 {lab=INN_TELESCOPIC}
N -820 20 -790 20 {lab=INN_TELESCOPIC}
N -820 20 -820 80 {lab=INN_TELESCOPIC}
N -820 140 -820 220 {lab=GND}
N -990 140 -990 220 {lab=GND}
N -990 -10 -990 80 {lab=#net3}
N -930 -10 -460 -10 {lab=#net3}
N -990 -10 -930 -10 {lab=#net3}
N -540 230 -540 260 {lab=VDD}
N -600 320 -580 320 {lab=#net2}
N -540 80 -460 80 {lab=#net4}
N -540 80 -540 170 {lab=#net4}
N 840 170 840 220 {lab=SCAN_IN}
N 840 280 840 320 {lab=GND}
N 690 280 690 320 {lab=GND}
N 690 170 690 220 {lab=VDD}
N 1210 170 1210 220 {lab=PROG_ENA}
N 1210 280 1210 320 {lab=GND}
N 1210 160 1210 170 {lab=PROG_ENA}
N 520 -230 520 -180 {lab=#net5}
N 520 -120 520 -80 {lab=GND}
N 520 -240 620 -240 {lab=#net5}
N 520 -240 520 -230 {lab=#net5}
N 790 -240 870 -240 {lab=CLK}
N 710 -370 710 -290 {lab=!CLK_ENA}
N 710 -390 810 -390 {lab=!CLK_ENA}
N 810 -390 810 -370 {lab=!CLK_ENA}
N 810 -310 810 -290 {lab=GND}
N 710 -390 710 -370 {lab=!CLK_ENA}
N 710 -220 710 -180 {lab=CLK_ENA}
N 710 -180 760 -180 {lab=CLK_ENA}
N 760 -180 760 -150 {lab=CLK_ENA}
N 760 -90 760 -70 {lab=GND}
N 670 -190 670 -170 {lab=GND}
N 660 -320 660 -290 {lab=VDD}
N 1020 -240 1020 -190 {lab=GND}
N 1020 -190 1020 -150 {lab=GND}
N 1020 -250 1120 -250 {lab=GND}
N 1020 -250 1020 -240 {lab=GND}
N 1290 -250 1370 -250 {lab=CLK}
N 1210 -230 1210 -190 {lab=!CLK_ENA}
N 1170 -200 1170 -180 {lab=GND}
N 1160 -330 1160 -300 {lab=VDD}
N 1210 -340 1210 -300 {lab=CLK_ENA}
N 760 -180 830 -180 {lab=CLK_ENA}
N 810 -390 880 -390 {lab=!CLK_ENA}
N 290 60 350 60 {lab=OUT_TELESCOPIC}
N 310 60 310 90 {lab=OUT_TELESCOPIC}
N 310 150 310 190 {lab=GND}
N 220 110 220 140 {lab=VDD}
N 240 110 240 120 {lab=!CLK_ENA}
N 200 110 200 120 {lab=CLK_ENA}
N 150 180 150 210 {lab=GND}
N 150 80 150 120 {lab=#net6}
C {gnd.sym} -360 -220 0 1 {name=l1 lab=GND}
C {lab_pin.sym} -300 -240 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 1480 -320 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 1480 -210 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.include /foss/designs/libs/pex/DUT.spice
.control
tran 1u 5m

plot v(out_telescopic) v(inn_telescopic)
wrdata /foss/designs/libs/pex/start_up_cir/tele/2x.csv v(out_telescopic) v(inn_telescopic)

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
C {res.sym} -190 320 1 0 {name=R1
value=500k
footprint=1206
device=resistor
m=1}
C {res.sym} -690 20 1 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -820 110 0 0 {name=V6 value= "dc 1.65 ac 0 sin(1.65 10m 500 1m)" savecurrent=false}
C {gnd.sym} -820 220 0 0 {name=l6 lab=GND}
C {vsource.sym} -990 110 0 1 {name=V7 value=1.65 savecurrent=false}
C {gnd.sym} -990 220 0 1 {name=l7 lab=GND}
C {lab_pin.sym} -820 20 0 0 {name=p13 sig_type=std_logic lab=INN_TELESCOPIC}
C {isource.sym} -540 200 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -540 260 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {vsource.sym} 840 250 0 0 {name=V3 value= "PWL(0 0 0.2999m 0 0.3m 3.3 0.349999m 3.3 0.35m 0)" savecurrent=false}
C {gnd.sym} 840 320 0 0 {name=l5 lab=GND}
C {vsource.sym} 690 250 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 690 320 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 690 170 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 840 170 0 1 {name=p2 sig_type=std_logic lab=SCAN_IN}
C {vsource.sym} 1210 250 0 0 {name=V8 value=3.3 savecurrent=false}
C {gnd.sym} 1210 320 0 0 {name=l11 lab=GND}
C {lab_pin.sym} 1210 160 0 1 {name=p10 sig_type=std_logic lab=PROG_ENA}
C {vsource.sym} 520 -150 0 0 {name=V9 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} 520 -80 0 0 {name=l12 lab=GND}
C {lab_pin.sym} 870 -240 0 1 {name=p14 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 710 -240 0 0 {name=x3}
C {vsource.sym} 810 -340 0 0 {name=V10 value="PWL(0 0 0.42501m 0 0.42502m 3.3)" savecurrent=false}
C {gnd.sym} 810 -290 0 0 {name=l13 lab=GND}
C {vsource.sym} 760 -120 0 0 {name=V11 value="PWL(0 3.3 0.42501m 3.3 0.42502m 0)" savecurrent=false}
C {gnd.sym} 760 -70 0 0 {name=l14 lab=GND}
C {gnd.sym} 670 -170 0 0 {name=l15 lab=GND}
C {lab_pin.sym} 660 -320 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {gnd.sym} 1020 -150 0 0 {name=l16 lab=GND}
C {lab_pin.sym} 1370 -250 0 1 {name=p16 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 1210 -250 0 0 {name=x4}
C {gnd.sym} 1170 -180 0 0 {name=l17 lab=GND}
C {lab_pin.sym} 1160 -330 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1210 -340 0 1 {name=p18 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 1210 -190 0 1 {name=p19 sig_type=std_logic lab=!CLK_ENA}
C {lab_pin.sym} 830 -180 0 1 {name=p20 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 880 -390 0 1 {name=p21 sig_type=std_logic lab=!CLK_ENA}
C {lab_pin.sym} -110 -220 0 1 {name=p3 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -200 -220 0 0 {name=p4 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -490 160 1 1 {name=p5 sig_type=std_logic lab=PROG_ENA}
C {libs/pex/DUT.sym} -230 0 0 0 {name=x1}
C {lab_pin.sym} 350 60 0 1 {name=p6 sig_type=std_logic lab=OUT_TELESCOPIC}
C {capa.sym} 310 120 0 0 {name=CLOAD1
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 310 190 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 200 120 1 1 {name=p7 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 220 140 3 0 {name=p22 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 240 120 1 1 {name=p23 sig_type=std_logic lab=!CLK_ENA}
C {gnd.sym} 150 210 0 0 {name=l2 lab=GND}
C {vsource.sym} 150 150 0 0 {name=V2 value=1.661 savecurrent=false}
C {libs/core_amps/start_up_cir/start_up_cir_cap.sym} 170 40 0 0 {name=x2}

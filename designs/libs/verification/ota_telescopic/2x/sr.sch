v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 530 100 530 380 {}
L 4 530 380 1220 380 {}
L 4 1310 100 1310 380 {}
L 4 530 100 1220 100 {}
L 4 1220 100 1310 100 {}
L 4 1220 380 1310 380 {}
L 4 380 -440 380 0 {}
L 4 380 0 1050 0 {}
L 4 1420 -440 1420 0 {}
L 4 380 -440 1050 -440 {}
L 4 1050 0 1420 0 {}
L 4 1050 -440 1420 -440 {}
T {Scan chain input artificially generated to enable telescopic cascode 2x sizing
} 520 50 0 0 0.4 0.4 {}
T {CLOCK GENERATION} 640 -600 0 0 1 1 {}
T {Artificially generate a clock signal and ensure it 
turns off after around .425ms, which is when the 
scan in signal has fully propogated through the scan chain} 620 -530 0 0 0.4 0.4 {}
N -490 100 -460 100 {lab=PROG_ENA}
N -490 100 -490 130 {lab=PROG_ENA}
N -320 -270 -320 -240 {lab=GND}
N -360 -270 -320 -270 {lab=GND}
N -360 -270 -360 -250 {lab=GND}
N -300 -270 -300 -240 {lab=VDD}
N -200 -270 -200 -250 {lab=CLK}
N -200 -270 -170 -270 {lab=CLK}
N -170 -270 -170 -240 {lab=CLK}
N -140 -270 -140 -240 {lab=#net1}
N -140 -270 -110 -270 {lab=#net1}
N -110 -270 -110 -250 {lab=#net1}
N 20 30 150 30 {lab=OUT_TELESCOPIC}
N 150 30 150 60 {lab=OUT_TELESCOPIC}
N 150 30 220 30 {lab=OUT_TELESCOPIC}
N 150 120 150 150 {lab=GND}
N 80 30 80 290 {lab=OUT_TELESCOPIC}
N -160 290 80 290 {lab=OUT_TELESCOPIC}
N -590 290 -220 290 {lab=OUT_TELESCOPIC}
N -590 60 -590 290 {lab=OUT_TELESCOPIC}
N -590 -10 -590 60 {lab=OUT_TELESCOPIC}
N -990 110 -990 190 {lab=GND}
N -990 -40 -990 50 {lab=INP_TELESCOPIC}
N -930 -40 -460 -40 {lab=INP_TELESCOPIC}
N -990 -40 -930 -40 {lab=INP_TELESCOPIC}
N -540 200 -540 230 {lab=VDD}
N -540 50 -460 50 {lab=#net2}
N -540 50 -540 140 {lab=#net2}
N -220 290 -160 290 {lab=OUT_TELESCOPIC}
N -590 -10 -460 -10 {lab=OUT_TELESCOPIC}
N 830 170 830 220 {lab=SCAN_IN}
N 830 280 830 320 {lab=GND}
N 680 280 680 320 {lab=GND}
N 680 170 680 220 {lab=VDD}
N 1200 170 1200 220 {lab=PROG_ENA}
N 1200 280 1200 320 {lab=GND}
N 1200 160 1200 170 {lab=PROG_ENA}
N 510 -230 510 -180 {lab=#net3}
N 510 -120 510 -80 {lab=GND}
N 510 -240 610 -240 {lab=#net3}
N 510 -240 510 -230 {lab=#net3}
N 780 -240 860 -240 {lab=CLK}
N 700 -370 700 -290 {lab=!CLK_ENA}
N 700 -390 800 -390 {lab=!CLK_ENA}
N 800 -390 800 -370 {lab=!CLK_ENA}
N 800 -310 800 -290 {lab=GND}
N 700 -390 700 -370 {lab=!CLK_ENA}
N 700 -220 700 -180 {lab=CLK_ENA}
N 700 -180 750 -180 {lab=CLK_ENA}
N 750 -180 750 -150 {lab=CLK_ENA}
N 750 -90 750 -70 {lab=GND}
N 660 -190 660 -170 {lab=GND}
N 650 -320 650 -290 {lab=VDD}
N 1010 -240 1010 -190 {lab=GND}
N 1010 -190 1010 -150 {lab=GND}
N 1010 -250 1110 -250 {lab=GND}
N 1010 -250 1010 -240 {lab=GND}
N 1280 -250 1360 -250 {lab=CLK}
N 1200 -230 1200 -190 {lab=!CLK_ENA}
N 1160 -200 1160 -180 {lab=GND}
N 1150 -330 1150 -300 {lab=VDD}
N 1200 -340 1200 -300 {lab=CLK_ENA}
N 750 -180 820 -180 {lab=CLK_ENA}
N 800 -390 870 -390 {lab=!CLK_ENA}
C {libs/core_tb/schem/DUT.sym} -230 -30 0 0 {name=x1}
C {gnd.sym} -360 -250 0 1 {name=l1 lab=GND}
C {lab_pin.sym} -300 -270 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 1550 -270 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 1550 -160 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control
tran 1u 5m

plot v(out_telescopic) v(inp_telescopic)

meas tran v_before find v(out_telescopic) at=0.99m
meas tran v_after find v(out_telescopic) at=2.5m

let delta = v_after - v_before
let t20_val = v_before + 0.2 * delta
let t80_val = v_before + 0.8 * delta

meas tran t_20 when v(out_telescopic) = t20_val rise = 1
meas tran t_80 when v(out_telescopic) = t80_val rise = 1
let sr_rise = delta / (t_80 - t_20)
print sr_rise

meas tran t_20f when v(out_telescopic) = t80_val fall = 1
meas tran t_80f when v(out_telescopic) = t20_val fall = 1
let sr_fall = delta / (t_80f - t_20f)
print sr_fall

meas tran vpeak max v(out_telescopic) from=1m to=3m
let overshoot = (vpeak - v_after) / delta * 100
print overshoot

meas tran t_settle when v(out_telescopic) = v_after td = 1m rise = 1
let settling = t_settle - 1m
print settling

print v_before v_after delta
.endc
"}
C {capa.sym} 150 90 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 220 30 0 1 {name=p11 sig_type=std_logic lab=OUT_TELESCOPIC}
C {gnd.sym} 150 150 0 0 {name=l8 lab=GND}
C {vsource.sym} -990 80 0 1 {name=V6 value= "dc 1.65 pulse(1.65 1.75 1m 1n 1n 2m 4m)" savecurrent=false}
C {gnd.sym} -990 190 0 1 {name=l7 lab=GND}
C {lab_pin.sym} -990 -40 0 0 {name=p13 sig_type=std_logic lab=INP_TELESCOPIC}
C {isource.sym} -540 170 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -540 230 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {vsource.sym} 830 250 0 0 {name=V3 value= "PWL(0 0 0.2999m 0 0.3m 3.3 0.349999m 3.3 0.35m 0)" savecurrent=false}
C {gnd.sym} 830 320 0 0 {name=l9 lab=GND}
C {vsource.sym} 680 250 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} 680 320 0 0 {name=l10 lab=GND}
C {lab_pin.sym} 680 170 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 830 170 0 1 {name=p3 sig_type=std_logic lab=SCAN_IN}
C {vsource.sym} 1200 250 0 0 {name=V8 value=3.3 savecurrent=false}
C {gnd.sym} 1200 320 0 0 {name=l11 lab=GND}
C {lab_pin.sym} -490 130 1 1 {name=p10 sig_type=std_logic lab=PROG_ENA}
C {vsource.sym} 510 -150 0 0 {name=V9 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} 510 -80 0 0 {name=l12 lab=GND}
C {libs/core_digital/schem/transmission_gate.sym} 700 -240 0 0 {name=x3}
C {vsource.sym} 800 -340 0 0 {name=V10 value="PWL(0 0 0.42501m 0 0.42502m 3.3)" savecurrent=false}
C {gnd.sym} 800 -290 0 0 {name=l13 lab=GND}
C {vsource.sym} 750 -120 0 0 {name=V11 value="PWL(0 3.3 0.42501m 3.3 0.42502m 0)" savecurrent=false}
C {gnd.sym} 750 -70 0 0 {name=l14 lab=GND}
C {gnd.sym} 660 -170 0 0 {name=l15 lab=GND}
C {lab_pin.sym} 650 -320 0 0 {name=p15 sig_type=std_logic lab=VDD}
C {gnd.sym} 1010 -150 0 0 {name=l16 lab=GND}
C {lab_pin.sym} 1360 -250 0 1 {name=p16 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 1200 -250 0 0 {name=x4}
C {gnd.sym} 1160 -180 0 0 {name=l17 lab=GND}
C {lab_pin.sym} 1150 -330 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1200 -340 0 1 {name=p18 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 1200 -190 0 1 {name=p19 sig_type=std_logic lab=!CLK_ENA}
C {lab_pin.sym} 820 -180 0 1 {name=p20 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 870 -390 0 1 {name=p21 sig_type=std_logic lab=!CLK_ENA}
C {lab_pin.sym} 860 -240 0 1 {name=p4 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 1200 160 0 1 {name=p5 sig_type=std_logic lab=PROG_ENA}
C {lab_pin.sym} -200 -250 0 0 {name=p6 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -110 -250 0 1 {name=p7 sig_type=std_logic lab=SCAN_IN}

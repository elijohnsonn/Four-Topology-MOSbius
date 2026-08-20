v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -260 -1240 -260 -960 {}
L 4 -260 -960 430 -960 {}
L 4 520 -1240 520 -960 {}
L 4 -260 -1240 430 -1240 {}
L 4 430 -1240 520 -1240 {}
L 4 430 -960 520 -960 {}
L 4 -410 -1780 -410 -1340 {}
L 4 -410 -1340 260 -1340 {}
L 4 630 -1780 630 -1340 {}
L 4 -410 -1780 260 -1780 {}
L 4 260 -1340 630 -1340 {}
L 4 260 -1780 630 -1780 {}
T {Scan chain input artificially generated to enable telescopic cascode 3x sizing
} -270 -1290 0 0 0.4 0.4 {}
T {CLOCK GENERATION} -150 -1940 0 0 1 1 {}
T {Artificially generate a clock signal and ensure it 
turns off after around .425ms, which is when the 
scan in signal has fully propogated through the scan chain} -170 -1870 0 0 0.4 0.4 {}
N -1280 -1240 -1250 -1240 {lab=PROG_ENA}
N -1280 -1240 -1280 -1210 {lab=PROG_ENA}
N -1110 -1610 -1110 -1580 {lab=GND}
N -1150 -1610 -1110 -1610 {lab=GND}
N -1150 -1610 -1150 -1590 {lab=GND}
N -1090 -1610 -1090 -1580 {lab=VDD}
N -990 -1610 -990 -1590 {lab=CLK}
N -990 -1610 -960 -1610 {lab=CLK}
N -960 -1610 -960 -1580 {lab=CLK}
N -930 -1610 -930 -1580 {lab=SCAN_IN}
N -930 -1610 -900 -1610 {lab=SCAN_IN}
N -900 -1610 -900 -1590 {lab=SCAN_IN}
N -770 -1310 -640 -1310 {lab=OUT_TELESCOPIC}
N -640 -1310 -640 -1280 {lab=OUT_TELESCOPIC}
N -640 -1310 -570 -1310 {lab=OUT_TELESCOPIC}
N -640 -1220 -640 -1190 {lab=GND}
N -710 -1310 -710 -1050 {lab=OUT_TELESCOPIC}
N -950 -1050 -710 -1050 {lab=OUT_TELESCOPIC}
N -1380 -1050 -1010 -1050 {lab=OUT_TELESCOPIC}
N -1380 -1280 -1380 -1050 {lab=OUT_TELESCOPIC}
N -1380 -1350 -1380 -1280 {lab=OUT_TELESCOPIC}
N -1780 -1230 -1780 -1150 {lab=GND}
N -1780 -1380 -1780 -1290 {lab=INP_TELESCOPIC}
N -1720 -1380 -1250 -1380 {lab=INP_TELESCOPIC}
N -1780 -1380 -1720 -1380 {lab=INP_TELESCOPIC}
N -1330 -1140 -1330 -1110 {lab=VDD}
N -1330 -1290 -1250 -1290 {lab=#net1}
N -1330 -1290 -1330 -1200 {lab=#net1}
N -1010 -1050 -950 -1050 {lab=OUT_TELESCOPIC}
N -1380 -1350 -1250 -1350 {lab=OUT_TELESCOPIC}
N 40 -1170 40 -1120 {lab=SCAN_IN}
N 40 -1060 40 -1020 {lab=GND}
N -110 -1060 -110 -1020 {lab=GND}
N -110 -1170 -110 -1120 {lab=VDD}
N 410 -1170 410 -1120 {lab=PROG_ENA}
N 410 -1060 410 -1020 {lab=GND}
N 410 -1180 410 -1170 {lab=PROG_ENA}
N -280 -1570 -280 -1520 {lab=#net2}
N -280 -1460 -280 -1420 {lab=GND}
N -280 -1580 -180 -1580 {lab=#net2}
N -280 -1580 -280 -1570 {lab=#net2}
N -10 -1580 70 -1580 {lab=CLK}
N -90 -1710 -90 -1630 {lab=!CLK_ENA}
N -90 -1730 10 -1730 {lab=!CLK_ENA}
N 10 -1730 10 -1710 {lab=!CLK_ENA}
N 10 -1650 10 -1630 {lab=GND}
N -90 -1730 -90 -1710 {lab=!CLK_ENA}
N -90 -1560 -90 -1520 {lab=CLK_ENA}
N -90 -1520 -40 -1520 {lab=CLK_ENA}
N -40 -1520 -40 -1490 {lab=CLK_ENA}
N -40 -1430 -40 -1410 {lab=GND}
N -130 -1530 -130 -1510 {lab=GND}
N -140 -1660 -140 -1630 {lab=VDD}
N 220 -1580 220 -1530 {lab=GND}
N 220 -1530 220 -1490 {lab=GND}
N 220 -1590 320 -1590 {lab=GND}
N 220 -1590 220 -1580 {lab=GND}
N 490 -1590 570 -1590 {lab=CLK}
N 410 -1570 410 -1530 {lab=!CLK_ENA}
N 370 -1540 370 -1520 {lab=GND}
N 360 -1670 360 -1640 {lab=VDD}
N 410 -1680 410 -1640 {lab=CLK_ENA}
N -40 -1520 30 -1520 {lab=CLK_ENA}
N 10 -1730 80 -1730 {lab=!CLK_ENA}
C {gnd.sym} -1150 -1590 0 1 {name=l2 lab=GND}
C {lab_pin.sym} -1090 -1610 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 760 -1610 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 760 -1500 0 0 {name=Simulation2 only_toplevel=false 

value=

"
.include /foss/designs/libs/pex/DUT.spice
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
C {capa.sym} -640 -1250 0 0 {name=CLOAD1
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} -570 -1310 0 1 {name=p12 sig_type=std_logic lab=OUT_TELESCOPIC}
C {gnd.sym} -640 -1190 0 0 {name=l3 lab=GND}
C {vsource.sym} -1780 -1260 0 1 {name=V3 value= "dc 1.65 pulse(1.65 1.75 1m 1n 1n 2m 4m)" savecurrent=false}
C {gnd.sym} -1780 -1150 0 1 {name=l4 lab=GND}
C {lab_pin.sym} -1780 -1380 0 0 {name=p14 sig_type=std_logic lab=INP_TELESCOPIC}
C {isource.sym} -1330 -1170 2 0 {name=IBIAS1 value=100u}
C {lab_pin.sym} -1330 -1110 0 1 {name=p22 sig_type=std_logic lab=VDD}
C {gnd.sym} 40 -1020 0 0 {name=l5 lab=GND}
C {vsource.sym} -110 -1090 0 0 {name=V5 value=3.3 savecurrent=false}
C {gnd.sym} -110 -1020 0 0 {name=l6 lab=GND}
C {lab_pin.sym} -110 -1170 0 0 {name=p23 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 40 -1170 0 1 {name=p24 sig_type=std_logic lab=SCAN_IN}
C {vsource.sym} 410 -1090 0 0 {name=V7 value=3.3 savecurrent=false}
C {gnd.sym} 410 -1020 0 0 {name=l18 lab=GND}
C {lab_pin.sym} -1280 -1210 1 1 {name=p25 sig_type=std_logic lab=PROG_ENA}
C {vsource.sym} -280 -1490 0 0 {name=V12 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} -280 -1420 0 0 {name=l19 lab=GND}
C {libs/core_digital/schem/transmission_gate.sym} -90 -1580 0 0 {name=x5}
C {vsource.sym} 10 -1680 0 0 {name=V13 value="PWL(0 0 0.42501m 0 0.42502m 3.3)" savecurrent=false}
C {gnd.sym} 10 -1630 0 0 {name=l20 lab=GND}
C {vsource.sym} -40 -1460 0 0 {name=V14 value="PWL(0 3.3 0.42501m 3.3 0.42502m 0)" savecurrent=false}
C {gnd.sym} -40 -1410 0 0 {name=l21 lab=GND}
C {gnd.sym} -130 -1510 0 0 {name=l22 lab=GND}
C {lab_pin.sym} -140 -1660 0 0 {name=p26 sig_type=std_logic lab=VDD}
C {gnd.sym} 220 -1490 0 0 {name=l23 lab=GND}
C {lab_pin.sym} 570 -1590 0 1 {name=p27 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 410 -1590 0 0 {name=x6}
C {gnd.sym} 370 -1520 0 0 {name=l24 lab=GND}
C {lab_pin.sym} 360 -1670 0 0 {name=p28 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 410 -1680 0 1 {name=p29 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 410 -1530 0 1 {name=p30 sig_type=std_logic lab=!CLK_ENA}
C {lab_pin.sym} 30 -1520 0 1 {name=p31 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 80 -1730 0 1 {name=p32 sig_type=std_logic lab=!CLK_ENA}
C {lab_pin.sym} 70 -1580 0 1 {name=p33 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 410 -1180 0 1 {name=p34 sig_type=std_logic lab=PROG_ENA}
C {lab_pin.sym} -990 -1590 0 0 {name=p35 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -900 -1590 0 1 {name=p36 sig_type=std_logic lab=SCAN_IN}
C {vsource.sym} 40 -1090 0 0 {name=V2 value=  "PWL(0 0 0.2499m 0 0.25m 3.3 0.29999m 3.3 0.3m 0" savecurrent=false}
C {libs/pex/DUT.sym} -1020 -1370 0 0 {name=x1}

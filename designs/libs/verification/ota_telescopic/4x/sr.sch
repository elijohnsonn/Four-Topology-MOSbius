v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 150 50 150 330 {}
L 4 150 330 840 330 {}
L 4 930 50 930 330 {}
L 4 150 50 840 50 {}
L 4 840 50 930 50 {}
L 4 840 330 930 330 {}
L 4 0 -490 0 -50 {}
L 4 0 -50 670 -50 {}
L 4 1040 -490 1040 -50 {}
L 4 0 -490 670 -490 {}
L 4 670 -50 1040 -50 {}
L 4 670 -490 1040 -490 {}
T {Scan chain input artificially generated to enable telescopic cascode 4x sizing
} 140 0 0 0 0.4 0.4 {}
T {CLOCK GENERATION} 260 -650 0 0 1 1 {}
T {Artificially generate a clock signal and ensure it 
turns off after around .425ms, which is when the 
scan in signal has fully propogated through the scan chain} 240 -580 0 0 0.4 0.4 {}
N -870 50 -840 50 {lab=PROG_ENA}
N -870 50 -870 80 {lab=PROG_ENA}
N -700 -320 -700 -290 {lab=GND}
N -740 -320 -700 -320 {lab=GND}
N -740 -320 -740 -300 {lab=GND}
N -680 -320 -680 -290 {lab=VDD}
N -580 -320 -580 -300 {lab=CLK}
N -580 -320 -550 -320 {lab=CLK}
N -550 -320 -550 -290 {lab=CLK}
N -520 -320 -520 -290 {lab=SCAN_IN}
N -520 -320 -490 -320 {lab=SCAN_IN}
N -490 -320 -490 -300 {lab=SCAN_IN}
N -360 -20 -230 -20 {lab=OUT_TELESCOPIC}
N -230 -20 -230 10 {lab=OUT_TELESCOPIC}
N -230 -20 -160 -20 {lab=OUT_TELESCOPIC}
N -230 70 -230 100 {lab=GND}
N -300 -20 -300 240 {lab=OUT_TELESCOPIC}
N -540 240 -300 240 {lab=OUT_TELESCOPIC}
N -970 240 -600 240 {lab=OUT_TELESCOPIC}
N -970 10 -970 240 {lab=OUT_TELESCOPIC}
N -970 -60 -970 10 {lab=OUT_TELESCOPIC}
N -1370 60 -1370 140 {lab=GND}
N -1370 -90 -1370 0 {lab=INP_TELESCOPIC}
N -1310 -90 -840 -90 {lab=INP_TELESCOPIC}
N -1370 -90 -1310 -90 {lab=INP_TELESCOPIC}
N -920 150 -920 180 {lab=VDD}
N -920 0 -840 0 {lab=#net1}
N -920 0 -920 90 {lab=#net1}
N -600 240 -540 240 {lab=OUT_TELESCOPIC}
N -970 -60 -840 -60 {lab=OUT_TELESCOPIC}
N 450 120 450 170 {lab=SCAN_IN}
N 450 230 450 270 {lab=GND}
N 300 230 300 270 {lab=GND}
N 300 120 300 170 {lab=VDD}
N 820 120 820 170 {lab=PROG_ENA}
N 820 230 820 270 {lab=GND}
N 820 110 820 120 {lab=PROG_ENA}
N 130 -280 130 -230 {lab=#net2}
N 130 -170 130 -130 {lab=GND}
N 130 -290 230 -290 {lab=#net2}
N 130 -290 130 -280 {lab=#net2}
N 400 -290 480 -290 {lab=CLK}
N 320 -420 320 -340 {lab=!CLK_ENA}
N 320 -440 420 -440 {lab=!CLK_ENA}
N 420 -440 420 -420 {lab=!CLK_ENA}
N 420 -360 420 -340 {lab=GND}
N 320 -440 320 -420 {lab=!CLK_ENA}
N 320 -270 320 -230 {lab=CLK_ENA}
N 320 -230 370 -230 {lab=CLK_ENA}
N 370 -230 370 -200 {lab=CLK_ENA}
N 370 -140 370 -120 {lab=GND}
N 280 -240 280 -220 {lab=GND}
N 270 -370 270 -340 {lab=VDD}
N 630 -290 630 -240 {lab=GND}
N 630 -240 630 -200 {lab=GND}
N 630 -300 730 -300 {lab=GND}
N 630 -300 630 -290 {lab=GND}
N 900 -300 980 -300 {lab=CLK}
N 820 -280 820 -240 {lab=!CLK_ENA}
N 780 -250 780 -230 {lab=GND}
N 770 -380 770 -350 {lab=VDD}
N 820 -390 820 -350 {lab=CLK_ENA}
N 370 -230 440 -230 {lab=CLK_ENA}
N 420 -440 490 -440 {lab=!CLK_ENA}
C {libs/core_tb/schem/DUT.sym} -610 -80 0 0 {name=x2}
C {gnd.sym} -740 -300 0 1 {name=l2 lab=GND}
C {lab_pin.sym} -680 -320 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 1170 -320 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 1170 -210 0 0 {name=Simulation2 only_toplevel=false 

value=

"
.control
tran 1u 5m

plot v(out_telescopic) v(inp_telescopic)

meas tran v_before find v(out_telescopic) at=0.99m
meas tran v_after find v(out_telescopic) at=2.5m
print t_20
print t_80
let delta = v_after - v_before
let t20_val = v_before + 0.2 * delta
let t80_val = v_before + 0.8 * delta

meas tran t_20 when v(out_telescopic) = t20_val rise = 1 td=.99m
meas tran t_80 when v(out_telescopic) = t80_val rise = 1 td=.99m
let sr_rise = delta / (t_80 - t_20)
print sr_rise

meas tran t_20f when v(out_telescopic) = t80_val fall = 1 td=.99m
meas tran t_80f when v(out_telescopic) = t20_val fall = 1 td=.99m
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
C {capa.sym} -230 40 0 0 {name=CLOAD1
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} -160 -20 0 1 {name=p12 sig_type=std_logic lab=OUT_TELESCOPIC}
C {gnd.sym} -230 100 0 0 {name=l3 lab=GND}
C {vsource.sym} -1370 30 0 1 {name=V3 value= "dc 1.65 pulse(1.65 1.75 1m 1n 1n 2m 4m)" savecurrent=false}
C {gnd.sym} -1370 140 0 1 {name=l4 lab=GND}
C {lab_pin.sym} -1370 -90 0 0 {name=p14 sig_type=std_logic lab=INP_TELESCOPIC}
C {isource.sym} -920 120 2 0 {name=IBIAS1 value=100u}
C {lab_pin.sym} -920 180 0 1 {name=p22 sig_type=std_logic lab=VDD}
C {gnd.sym} 450 270 0 0 {name=l5 lab=GND}
C {vsource.sym} 300 200 0 0 {name=V5 value=3.3 savecurrent=false}
C {gnd.sym} 300 270 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 300 120 0 0 {name=p23 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 450 120 0 1 {name=p24 sig_type=std_logic lab=SCAN_IN}
C {vsource.sym} 820 200 0 0 {name=V7 value=3.3 savecurrent=false}
C {gnd.sym} 820 270 0 0 {name=l18 lab=GND}
C {lab_pin.sym} -870 80 1 1 {name=p25 sig_type=std_logic lab=PROG_ENA}
C {vsource.sym} 130 -200 0 0 {name=V12 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} 130 -130 0 0 {name=l19 lab=GND}
C {libs/core_digital/schem/transmission_gate.sym} 320 -290 0 0 {name=x5}
C {vsource.sym} 420 -390 0 0 {name=V13 value="PWL(0 0 0.42501m 0 0.42502m 3.3)" savecurrent=false}
C {gnd.sym} 420 -340 0 0 {name=l20 lab=GND}
C {vsource.sym} 370 -170 0 0 {name=V14 value="PWL(0 3.3 0.42501m 3.3 0.42502m 0)" savecurrent=false}
C {gnd.sym} 370 -120 0 0 {name=l21 lab=GND}
C {gnd.sym} 280 -220 0 0 {name=l22 lab=GND}
C {lab_pin.sym} 270 -370 0 0 {name=p26 sig_type=std_logic lab=VDD}
C {gnd.sym} 630 -200 0 0 {name=l23 lab=GND}
C {lab_pin.sym} 980 -300 0 1 {name=p27 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 820 -300 0 0 {name=x6}
C {gnd.sym} 780 -230 0 0 {name=l24 lab=GND}
C {lab_pin.sym} 770 -380 0 0 {name=p28 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 820 -390 0 1 {name=p29 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 820 -240 0 1 {name=p30 sig_type=std_logic lab=!CLK_ENA}
C {lab_pin.sym} 440 -230 0 1 {name=p31 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 490 -440 0 1 {name=p32 sig_type=std_logic lab=!CLK_ENA}
C {lab_pin.sym} 480 -290 0 1 {name=p33 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 820 110 0 1 {name=p34 sig_type=std_logic lab=PROG_ENA}
C {lab_pin.sym} -580 -300 0 0 {name=p35 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -490 -300 0 1 {name=p36 sig_type=std_logic lab=SCAN_IN}
C {vsource.sym} 450 200 0 0 {name=V1 value=  "PWL(0 0 0.2499m 0 0.25m 3.3 0.34999m 3.3 0.35m 0)" savecurrent=false}

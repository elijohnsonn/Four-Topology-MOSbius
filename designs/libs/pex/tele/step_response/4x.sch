v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 160 50 160 330 {}
L 4 160 330 850 330 {}
L 4 940 50 940 330 {}
L 4 160 50 850 50 {}
L 4 850 50 940 50 {}
L 4 850 330 940 330 {}
L 4 10 -490 10 -50 {}
L 4 10 -50 680 -50 {}
L 4 1050 -490 1050 -50 {}
L 4 10 -490 680 -490 {}
L 4 680 -50 1050 -50 {}
L 4 680 -490 1050 -490 {}
T {Scan chain input artificially generated to enable telescopic cascode 4x sizing
} 150 0 0 0 0.4 0.4 {}
T {CLOCK GENERATION} 270 -650 0 0 1 1 {}
T {Artificially generate a clock signal and ensure it 
turns off after around .425ms, which is when the 
scan in signal has fully propogated through the scan chain} 250 -580 0 0 0.4 0.4 {}
N -860 50 -830 50 {lab=PROG_ENA}
N -860 50 -860 80 {lab=PROG_ENA}
N -690 -320 -690 -290 {lab=GND}
N -730 -320 -690 -320 {lab=GND}
N -730 -320 -730 -300 {lab=GND}
N -670 -320 -670 -290 {lab=VDD}
N -570 -320 -570 -300 {lab=CLK}
N -570 -320 -540 -320 {lab=CLK}
N -540 -320 -540 -290 {lab=CLK}
N -510 -320 -510 -290 {lab=SCAN_IN}
N -510 -320 -480 -320 {lab=SCAN_IN}
N -480 -320 -480 -300 {lab=SCAN_IN}
N -350 -20 -220 -20 {lab=OUT_TELESCOPIC}
N -220 -20 -220 10 {lab=OUT_TELESCOPIC}
N -220 -20 -150 -20 {lab=OUT_TELESCOPIC}
N -220 70 -220 100 {lab=GND}
N -290 -20 -290 240 {lab=OUT_TELESCOPIC}
N -530 240 -290 240 {lab=OUT_TELESCOPIC}
N -960 240 -590 240 {lab=OUT_TELESCOPIC}
N -960 10 -960 240 {lab=OUT_TELESCOPIC}
N -960 -60 -960 10 {lab=OUT_TELESCOPIC}
N -1360 60 -1360 140 {lab=GND}
N -1360 -90 -1360 0 {lab=INP_TELESCOPIC}
N -1300 -90 -830 -90 {lab=INP_TELESCOPIC}
N -1360 -90 -1300 -90 {lab=INP_TELESCOPIC}
N -910 150 -910 180 {lab=VDD}
N -910 0 -830 0 {lab=#net1}
N -910 0 -910 90 {lab=#net1}
N -590 240 -530 240 {lab=OUT_TELESCOPIC}
N -960 -60 -830 -60 {lab=OUT_TELESCOPIC}
N 460 120 460 170 {lab=SCAN_IN}
N 460 230 460 270 {lab=GND}
N 310 230 310 270 {lab=GND}
N 310 120 310 170 {lab=VDD}
N 830 120 830 170 {lab=PROG_ENA}
N 830 230 830 270 {lab=GND}
N 830 110 830 120 {lab=PROG_ENA}
N 140 -280 140 -230 {lab=#net2}
N 140 -170 140 -130 {lab=GND}
N 140 -290 240 -290 {lab=#net2}
N 140 -290 140 -280 {lab=#net2}
N 410 -290 490 -290 {lab=CLK}
N 330 -420 330 -340 {lab=!CLK_ENA}
N 330 -440 430 -440 {lab=!CLK_ENA}
N 430 -440 430 -420 {lab=!CLK_ENA}
N 430 -360 430 -340 {lab=GND}
N 330 -440 330 -420 {lab=!CLK_ENA}
N 330 -270 330 -230 {lab=CLK_ENA}
N 330 -230 380 -230 {lab=CLK_ENA}
N 380 -230 380 -200 {lab=CLK_ENA}
N 380 -140 380 -120 {lab=GND}
N 290 -240 290 -220 {lab=GND}
N 280 -370 280 -340 {lab=VDD}
N 640 -290 640 -240 {lab=GND}
N 640 -240 640 -200 {lab=GND}
N 640 -300 740 -300 {lab=GND}
N 640 -300 640 -290 {lab=GND}
N 910 -300 990 -300 {lab=CLK}
N 830 -280 830 -240 {lab=!CLK_ENA}
N 790 -250 790 -230 {lab=GND}
N 780 -380 780 -350 {lab=VDD}
N 830 -390 830 -350 {lab=CLK_ENA}
N 380 -230 450 -230 {lab=CLK_ENA}
N 430 -440 500 -440 {lab=!CLK_ENA}
C {gnd.sym} -730 -300 0 1 {name=l2 lab=GND}
C {lab_pin.sym} -670 -320 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 1180 -320 0 0 {name=MODELS1 only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 1180 -210 0 0 {name=Simulation2 only_toplevel=false 

value=

"
.include /foss/designs/libs/pex/DUT.spice
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
C {capa.sym} -220 40 0 0 {name=CLOAD1
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} -150 -20 0 1 {name=p12 sig_type=std_logic lab=OUT_TELESCOPIC}
C {gnd.sym} -220 100 0 0 {name=l3 lab=GND}
C {vsource.sym} -1360 30 0 1 {name=V3 value= "dc 1.65 pulse(1.65 1.75 1m 1n 1n 2m 4m)" savecurrent=false}
C {gnd.sym} -1360 140 0 1 {name=l4 lab=GND}
C {lab_pin.sym} -1360 -90 0 0 {name=p14 sig_type=std_logic lab=INP_TELESCOPIC}
C {isource.sym} -910 120 2 0 {name=IBIAS1 value=100u}
C {lab_pin.sym} -910 180 0 1 {name=p22 sig_type=std_logic lab=VDD}
C {gnd.sym} 460 270 0 0 {name=l5 lab=GND}
C {vsource.sym} 310 200 0 0 {name=V5 value=3.3 savecurrent=false}
C {gnd.sym} 310 270 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 310 120 0 0 {name=p23 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 460 120 0 1 {name=p24 sig_type=std_logic lab=SCAN_IN}
C {vsource.sym} 830 200 0 0 {name=V7 value=3.3 savecurrent=false}
C {gnd.sym} 830 270 0 0 {name=l18 lab=GND}
C {lab_pin.sym} -860 80 1 1 {name=p25 sig_type=std_logic lab=PROG_ENA}
C {vsource.sym} 140 -200 0 0 {name=V12 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} 140 -130 0 0 {name=l19 lab=GND}
C {libs/core_digital/schem/transmission_gate.sym} 330 -290 0 0 {name=x5}
C {vsource.sym} 430 -390 0 0 {name=V13 value="PWL(0 0 0.42501m 0 0.42502m 3.3)" savecurrent=false}
C {gnd.sym} 430 -340 0 0 {name=l20 lab=GND}
C {vsource.sym} 380 -170 0 0 {name=V14 value="PWL(0 3.3 0.42501m 3.3 0.42502m 0)" savecurrent=false}
C {gnd.sym} 380 -120 0 0 {name=l21 lab=GND}
C {gnd.sym} 290 -220 0 0 {name=l22 lab=GND}
C {lab_pin.sym} 280 -370 0 0 {name=p26 sig_type=std_logic lab=VDD}
C {gnd.sym} 640 -200 0 0 {name=l23 lab=GND}
C {lab_pin.sym} 990 -300 0 1 {name=p27 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 830 -300 0 0 {name=x6}
C {gnd.sym} 790 -230 0 0 {name=l24 lab=GND}
C {lab_pin.sym} 780 -380 0 0 {name=p28 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 830 -390 0 1 {name=p29 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 830 -240 0 1 {name=p30 sig_type=std_logic lab=!CLK_ENA}
C {lab_pin.sym} 450 -230 0 1 {name=p31 sig_type=std_logic lab=CLK_ENA}
C {lab_pin.sym} 500 -440 0 1 {name=p32 sig_type=std_logic lab=!CLK_ENA}
C {lab_pin.sym} 490 -290 0 1 {name=p33 sig_type=std_logic lab=CLK}
C {lab_pin.sym} 830 110 0 1 {name=p34 sig_type=std_logic lab=PROG_ENA}
C {lab_pin.sym} -570 -300 0 0 {name=p35 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -480 -300 0 1 {name=p36 sig_type=std_logic lab=SCAN_IN}
C {vsource.sym} 460 200 0 0 {name=V1 value=  "PWL(0 0 0.2499m 0 0.25m 3.3 0.34999m 3.3 0.35m 0)" savecurrent=false}
C {libs/pex/DUT.sym} -600 -80 0 0 {name=x1}

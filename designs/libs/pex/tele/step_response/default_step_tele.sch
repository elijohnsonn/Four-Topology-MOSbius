v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -490 100 -460 100 {lab=GND}
N -490 100 -490 130 {lab=GND}
N -320 -270 -320 -240 {lab=GND}
N -360 -270 -320 -270 {lab=GND}
N -360 -270 -360 -250 {lab=GND}
N -300 -270 -300 -240 {lab=VDD}
N -200 -270 -200 -250 {lab=GND}
N -200 -270 -170 -270 {lab=GND}
N -170 -270 -170 -240 {lab=GND}
N -140 -270 -140 -240 {lab=GND}
N -140 -270 -110 -270 {lab=GND}
N -110 -270 -110 -250 {lab=GND}
N 510 -10 510 30 {lab=GND}
N 510 -120 510 -70 {lab=VDD}
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
N -540 50 -460 50 {lab=#net1}
N -540 50 -540 140 {lab=#net1}
N -220 290 -160 290 {lab=OUT_TELESCOPIC}
N -590 -10 -460 -10 {lab=OUT_TELESCOPIC}
C {gnd.sym} -490 130 0 1 {name=l2 lab=GND}
C {gnd.sym} -360 -250 0 1 {name=l1 lab=GND}
C {lab_pin.sym} -300 -270 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {gnd.sym} -200 -250 0 1 {name=l3 lab=GND}
C {gnd.sym} -110 -250 0 0 {name=l4 lab=GND}
C {vsource.sym} 510 -40 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 510 30 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 510 -120 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 710 -230 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 710 -120 0 0 {name=Simulation1 only_toplevel=false 

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
C {libs/pex/DUT.sym} -230 -30 0 0 {name=x1}

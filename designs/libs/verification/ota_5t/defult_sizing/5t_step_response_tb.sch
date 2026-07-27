v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -540 70 -510 70 {lab=GND}
N -540 70 -540 100 {lab=GND}
N -370 -300 -370 -270 {lab=GND}
N -410 -300 -370 -300 {lab=GND}
N -410 -300 -410 -280 {lab=GND}
N -350 -300 -350 -270 {lab=VDD}
N -250 -300 -250 -280 {lab=GND}
N -250 -300 -220 -300 {lab=GND}
N -220 -300 -220 -270 {lab=GND}
N -190 -300 -190 -270 {lab=GND}
N -190 -300 -160 -300 {lab=GND}
N -160 -300 -160 -280 {lab=GND}
N -880 200 -880 240 {lab=GND}
N -880 90 -880 140 {lab=VDD}
N -30 -60 100 -60 {lab=OUT_5T}
N 100 -60 100 -30 {lab=OUT_5T}
N 100 -60 170 -60 {lab=OUT_5T}
N 100 30 100 60 {lab=GND}
N -210 260 30 260 {lab=OUT_5T}
N -630 260 -270 260 {lab=OUT_5T}
N -650 -90 -650 260 {lab=OUT_5T}
N -990 20 -990 100 {lab=GND}
N -990 -130 -990 -40 {lab=INP_5T}
N -590 170 -590 200 {lab=VDD}
N -650 260 -630 260 {lab=OUT_5T}
N -590 20 -510 20 {lab=#net1}
N -590 20 -590 110 {lab=#net1}
N -270 260 -210 260 {lab=OUT_5T}
N -650 -100 -650 -90 {lab=OUT_5T}
N -650 -100 -510 -100 {lab=OUT_5T}
N -990 -130 -510 -130 {lab=INP_5T}
N 30 -60 30 260 {lab=OUT_5T}
C {libs/core_tb/schem/DUT.sym} -280 -60 0 0 {name=x1}
C {gnd.sym} -540 100 0 1 {name=l2 lab=GND}
C {gnd.sym} -410 -280 0 1 {name=l1 lab=GND}
C {lab_pin.sym} -350 -300 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {gnd.sym} -250 -280 0 1 {name=l3 lab=GND}
C {gnd.sym} -160 -280 0 0 {name=l4 lab=GND}
C {vsource.sym} -880 170 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -880 240 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -880 90 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 260 -290 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 260 -180 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control
tran 1u 5m

plot v(out_5t) v(inp_5t)

meas tran v_before find v(out_5t) at=0.99m
meas tran v_after find v(out_5t) at=2.5m

let delta = v_after - v_before
let t20_val = v_before + 0.2 * delta
let t80_val = v_before + 0.8 * delta

meas tran t_20 when v(out_5t) = t20_val rise = 1
meas tran t_80 when v(out_5t) = t80_val rise = 1
let sr_rise = delta / (t_80 - t_20)
print sr_rise

meas tran t_20f when v(out_5t) = t80_val fall = 1
meas tran t_80f when v(out_5t) = t20_val fall = 1
let sr_fall = delta / (t_80f - t_20f)
print sr_fall

meas tran vpeak max v(out_5t) from=1m to=3m
let overshoot = (vpeak - v_after) / delta * 100
print overshoot

meas tran t_settle when v(out_5t) = v_after td = 1m rise = 1
let settling = t_settle - 1m
print settling

print v_before v_after delta
.endc
"}
C {capa.sym} 100 0 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 170 -60 0 1 {name=p11 sig_type=std_logic lab=OUT_5T}
C {gnd.sym} 100 60 0 0 {name=l8 lab=GND}
C {vsource.sym} -990 -10 0 1 {name=V6 value= "dc 1.65 pulse(1.65 1.75 1m 1n 1n 2m 4m)" savecurrent=false}
C {gnd.sym} -990 100 0 1 {name=l7 lab=GND}
C {lab_pin.sym} -990 -130 0 0 {name=p13 sig_type=std_logic lab=INP_5T}
C {isource.sym} -590 140 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -590 200 0 1 {name=p9 sig_type=std_logic lab=VDD}

v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -1850 -390 -1850 560 {}
L 4 -1850 560 -40 560 {}
L 4 -40 -450 -40 560 {}
L 4 -1850 -450 -40 -450 {}
L 4 -1850 -450 -1850 -380 {}
T {CL = 120p} -280 0 0 0 0.75 0.75 {}
T {IBIAS1=100u} -1200 220 0 0 0.4 0.4 {}
T {IMPLEMENTATION} -1170 -620 0 0 1 1 {}
T {Configure the 5t OTA in default mode 
as an unity buffer while driving a 
120pF capacitive load.} -1160 -560 0 0 0.4 0.4 {}
T {OFFSET ISSUE} 90 -490 0 0 1 1 {}
N -900 -320 -900 -290 {lab=GND}
N -950 -330 -950 -310 {lab=GND}
N -950 -330 -900 -330 {lab=GND}
N -900 -330 -900 -320 {lab=GND}
N -880 -330 -880 -290 {lab=VDD}
N -1130 0 -1040 0 {lab=#net1}
N -1130 0 -1130 100 {lab=#net1}
N -1130 160 -1130 190 {lab=VDD}
N -1210 -150 -1040 -150 {lab=INP_5T}
N -1150 -120 -1040 -120 {lab=OUT_5T}
N -560 -80 -510 -80 {lab=OUT_5T}
N -510 -80 -380 -80 {lab=OUT_5T}
N -1230 0 -1230 340 {lab=OUT_5T}
N -380 -80 -320 -80 {lab=OUT_5T}
N -1570 -150 -1210 -150 {lab=INP_5T}
N -360 -80 -360 -50 {lab=OUT_5T}
N -360 10 -360 50 {lab=GND}
N -1230 -120 -1150 -120 {lab=OUT_5T}
N -1710 190 -1710 220 {lab=GND}
N -1710 -150 -1660 -150 {lab=INP_5T}
N -1660 -150 -1570 -150 {lab=INP_5T}
N -1710 -150 -1710 130 {lab=INP_5T}
N -1230 -120 -1230 0 {lab=OUT_5T}
N -1230 340 -390 340 {lab=OUT_5T}
N -390 -80 -390 340 {lab=OUT_5T}
N -1080 50 -1080 100 {lab=GND}
N -1080 50 -1040 50 {lab=GND}
N -1080 160 -1080 180 {lab=GND}
N -1080 100 -1080 160 {lab=GND}
N -750 -320 -750 -290 {lab=GND}
N -800 -330 -800 -310 {lab=GND}
N -800 -330 -750 -330 {lab=GND}
N -750 -330 -750 -320 {lab=GND}
N -720 -320 -720 -290 {lab=GND}
N -670 -330 -670 -310 {lab=GND}
N -720 -330 -670 -330 {lab=GND}
N -720 -330 -720 -320 {lab=GND}
C {gnd.sym} -950 -310 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -880 -330 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {isource.sym} -1130 130 2 0 {name=IBIAS1 value=100u}
C {lab_pin.sym} -1130 190 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -320 -80 0 1 {name=p11 sig_type=std_logic lab=OUT_5T}
C {devices/code_shown.sym} 60 -290 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 60 -90 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control
set color0 = white
set color1 = black
tran 1u 10m
plot v(OUT_5T) v(INP_5T)

meas tran v_before find v(out_5t) at=0.99m
meas tran v_after find v(out_5t) at=2.5m

let delta = v_after - v_before
let t20_val = v_before + 0.2*delta
let t80_val = v_before + 0.8*delta

meas tran t_20 when v(out_5t) = t20_val rise = 1
meas tran t_80 when v(out_5t) = t80_val rise = 1
let sr_rise = delta / (t_80 - t_20)
print sr_rise

meas tran t_20f when v(out_5t) = t20_val fall = 1
meas tran t_80f when v(out_5t) = t80_val fall = 1
let sr_rise = delta / (t_80f - t_20f)
print sr_fall

meas tran vpeak max v(out_5t) from=1m to=3m
let overshoot = (vpeak - v_after)/delta * 100
print overshoot

meas tran t_settle when v(out_5t) = v_after td = 1m rise = 1
let settling = t_settle -1m
print settling

print v_before v_after delta

.endc
"}
C {capa.sym} -360 -20 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -360 50 0 0 {name=l8 lab=GND}
C {vsource.sym} -1710 160 0 0 {name=V6 value= "dc 1.65 ac 0 Pulse(1.65 1.70 1m 1n)" savecurrent=false
}
C {gnd.sym} -1710 220 0 0 {name=l10 lab=GND}
C {lab_pin.sym} -1710 -150 0 0 {name=p12 sig_type=std_logic lab=INP_5T}
C {libs/core_tb/schem/DUT.sym} -810 -80 0 0 {name=x1}
C {gnd.sym} -1080 180 0 0 {name=l11 lab=GND}
C {gnd.sym} -800 -310 0 0 {name=l1 lab=GND}
C {gnd.sym} -670 -310 0 1 {name=l3 lab=GND}

v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -270 70 -240 70 {lab=GND}
N -270 70 -270 100 {lab=GND}
N -100 -300 -100 -270 {lab=GND}
N -140 -300 -100 -300 {lab=GND}
N -140 -300 -140 -280 {lab=GND}
N -80 -300 -80 -270 {lab=VDD}
N 20 -300 20 -280 {lab=GND}
N 20 -300 50 -300 {lab=GND}
N 50 -300 50 -270 {lab=GND}
N 80 -300 80 -270 {lab=GND}
N 80 -300 110 -300 {lab=GND}
N 110 -300 110 -280 {lab=GND}
N 520 160 520 200 {lab=GND}
N 520 50 520 100 {lab=VDD}
N 240 -60 370 -60 {lab=OUT_5t}
N 370 -60 370 -30 {lab=OUT_5t}
N 370 -60 440 -60 {lab=OUT_5t}
N 370 30 370 60 {lab=GND}
N 60 260 300 260 {lab=OUT_5t}
N -360 260 0 260 {lab=#net1}
N -440 -100 -240 -100 {lab=#net1}
N -380 -100 -380 -30 {lab=#net1}
N -570 -100 -500 -100 {lab=INN_5t}
N -600 -100 -570 -100 {lab=INN_5t}
N -600 -100 -600 -40 {lab=INN_5t}
N -600 20 -600 100 {lab=GND}
N -770 20 -770 100 {lab=GND}
N -770 -130 -770 -40 {lab=#net2}
N -710 -130 -240 -130 {lab=#net2}
N -770 -130 -710 -130 {lab=#net2}
N -320 170 -320 200 {lab=VDD}
N -380 260 -360 260 {lab=#net1}
N -320 20 -240 20 {lab=#net3}
N -320 20 -320 110 {lab=#net3}
N 300 -60 300 260 {lab=OUT_5t}
N -380 -30 -380 260 {lab=#net1}
C {gnd.sym} -270 100 0 1 {name=l2 lab=GND}
C {gnd.sym} -140 -280 0 1 {name=l1 lab=GND}
C {lab_pin.sym} -80 -300 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {gnd.sym} 20 -280 0 1 {name=l3 lab=GND}
C {gnd.sym} 110 -280 0 0 {name=l4 lab=GND}
C {vsource.sym} 520 130 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 520 200 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 520 50 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 590 -290 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 590 -190 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.include /foss/designs/libs/pex/DUT.spice
.control
tran 1u 5m

set color0 = white
set color1 = black

plot v(out_5t) v(inn_5t)
wrdata /foss/designs/libs/pex/start_up_cir/5t/default.csv v(out_5T) v(inn_5T)

meas tran vout_pp pp v(out_5t) from=2m to=5m
meas tran vin_pp pp v(inn_5t) from=2m to=5m
let gain = vout_pp / vin_pp
print gain

meas tran vout_dc avg v(out_5t) from=2m to=5m
meas tran vin_dc avg v(inn_5t) from=2m to=5m
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
C {capa.sym} 370 0 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 440 -60 0 1 {name=p11 sig_type=std_logic lab=OUT_5t}
C {gnd.sym} 370 60 0 0 {name=l8 lab=GND}
C {res.sym} 30 260 1 0 {name=R1
value=500k
footprint=1206
device=resistor
m=1}
C {res.sym} -470 -100 1 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -600 -10 0 0 {name=V6 value= "dc 1.65 ac 0 sin(1.65 10m 500 1m)" savecurrent=false}
C {gnd.sym} -600 100 0 0 {name=l6 lab=GND}
C {vsource.sym} -770 -10 0 1 {name=V7 value=1.65 savecurrent=false}
C {gnd.sym} -770 100 0 1 {name=l7 lab=GND}
C {lab_pin.sym} -600 -100 0 0 {name=p13 sig_type=std_logic lab=INN_5t}
C {isource.sym} -320 140 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -320 200 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {libs/pex/DUT.sym} -10 -60 0 0 {name=x1}

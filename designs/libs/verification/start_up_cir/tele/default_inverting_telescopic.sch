v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -240 90 -210 90 {lab=GND}
N -240 90 -240 120 {lab=GND}
N -70 -280 -70 -250 {lab=GND}
N -110 -280 -70 -280 {lab=GND}
N -110 -280 -110 -260 {lab=GND}
N -50 -280 -50 -250 {lab=VDD}
N 50 -280 50 -260 {lab=GND}
N 50 -280 80 -280 {lab=GND}
N 80 -280 80 -250 {lab=GND}
N 110 -280 110 -250 {lab=GND}
N 110 -280 140 -280 {lab=GND}
N 140 -280 140 -260 {lab=GND}
N 760 -20 760 20 {lab=GND}
N 760 -130 760 -80 {lab=VDD}
N 270 20 400 20 {lab=OUT_TELESCOPIC}
N 400 20 400 50 {lab=OUT_TELESCOPIC}
N 400 20 470 20 {lab=OUT_TELESCOPIC}
N 400 110 400 140 {lab=GND}
N 330 20 330 280 {lab=OUT_TELESCOPIC}
N 90 280 330 280 {lab=OUT_TELESCOPIC}
N -330 280 30 280 {lab=#net1}
N -350 -20 -350 280 {lab=#net1}
N -410 -20 -210 -20 {lab=#net1}
N -540 -20 -470 -20 {lab=INN_TELESCOPIC}
N -570 -20 -540 -20 {lab=INN_TELESCOPIC}
N -570 -20 -570 40 {lab=INN_TELESCOPIC}
N -570 100 -570 180 {lab=GND}
N -740 100 -740 180 {lab=GND}
N -740 -50 -740 40 {lab=#net2}
N -680 -50 -210 -50 {lab=#net2}
N -740 -50 -680 -50 {lab=#net2}
N -290 190 -290 220 {lab=VDD}
N -350 280 -330 280 {lab=#net1}
N -290 40 -210 40 {lab=#net3}
N -290 40 -290 130 {lab=#net3}
C {gnd.sym} -240 120 0 1 {name=l2 lab=GND}
C {gnd.sym} -110 -260 0 1 {name=l1 lab=GND}
C {lab_pin.sym} -50 -280 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {gnd.sym} 50 -260 0 1 {name=l3 lab=GND}
C {gnd.sym} 140 -260 0 0 {name=l4 lab=GND}
C {vsource.sym} 760 -50 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 760 20 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 760 -130 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {capa.sym} 400 80 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 470 20 0 1 {name=p11 sig_type=std_logic lab=OUT_TELESCOPIC}
C {gnd.sym} 400 140 0 0 {name=l8 lab=GND}
C {res.sym} 60 280 1 0 {name=R1
value=500k
footprint=1206
device=resistor
m=1}
C {res.sym} -440 -20 1 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -570 70 0 0 {name=V6 value= "dc 1.65 ac 0 sin(1.65 10m 500 1m)" savecurrent=false}
C {gnd.sym} -570 180 0 0 {name=l6 lab=GND}
C {vsource.sym} -740 70 0 1 {name=V7 value=1.65 savecurrent=false}
C {gnd.sym} -740 180 0 1 {name=l7 lab=GND}
C {lab_pin.sym} -570 -20 0 0 {name=p13 sig_type=std_logic lab=INN_TELESCOPIC}
C {isource.sym} -290 160 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -290 220 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {libs/pex/DUT.sym} 20 -40 0 0 {name=x1}
C {devices/code_shown.sym} 900 -210 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical

"}
C {code_shown.sym} 910 -60 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.include /foss/designs/libs/pex/DUT.spice
.control
tran 1u 5m

plot v(out_telescopic) v(inn_telescopic)
wrdata /foss/designs/libs/verification/start_up_cir/tele/default.csv v(out_telescopic) v(inn_telescopic)

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

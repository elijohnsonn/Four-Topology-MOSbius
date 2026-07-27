v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -490 130 -460 130 {lab=GND}
N -490 130 -490 160 {lab=GND}
N -320 -240 -320 -210 {lab=GND}
N -360 -240 -320 -240 {lab=GND}
N -360 -240 -360 -220 {lab=GND}
N -300 -240 -300 -210 {lab=VDD}
N -200 -240 -200 -220 {lab=GND}
N -200 -240 -170 -240 {lab=GND}
N -170 -240 -170 -210 {lab=GND}
N -140 -240 -140 -210 {lab=GND}
N -140 -240 -110 -240 {lab=GND}
N -110 -240 -110 -220 {lab=GND}
N 510 20 510 60 {lab=GND}
N 510 -90 510 -40 {lab=VDD}
N 20 60 150 60 {lab=OUT_TELESCOPIC}
N 150 60 150 90 {lab=OUT_TELESCOPIC}
N 150 60 220 60 {lab=OUT_TELESCOPIC}
N 150 150 150 180 {lab=GND}
N 80 60 80 320 {lab=OUT_TELESCOPIC}
N -160 320 80 320 {lab=OUT_TELESCOPIC}
N -580 320 -220 320 {lab=#net1}
N -600 20 -600 320 {lab=#net1}
N -660 20 -460 20 {lab=#net1}
N -790 20 -720 20 {lab=INN_TELESCOPIC}
N -820 20 -790 20 {lab=INN_TELESCOPIC}
N -820 20 -820 80 {lab=INN_TELESCOPIC}
N -820 140 -820 220 {lab=GND}
N -990 140 -990 220 {lab=GND}
N -990 -10 -990 80 {lab=#net2}
N -930 -10 -460 -10 {lab=#net2}
N -990 -10 -930 -10 {lab=#net2}
N -540 230 -540 260 {lab=VDD}
N -600 320 -580 320 {lab=#net1}
N -540 80 -460 80 {lab=#net3}
N -540 80 -540 170 {lab=#net3}
C {libs/core_tb/schem/DUT.sym} -230 0 0 0 {name=x1}
C {gnd.sym} -490 160 0 1 {name=l2 lab=GND}
C {gnd.sym} -360 -220 0 1 {name=l1 lab=GND}
C {lab_pin.sym} -300 -240 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {gnd.sym} -200 -220 0 1 {name=l3 lab=GND}
C {gnd.sym} -110 -220 0 0 {name=l4 lab=GND}
C {vsource.sym} 510 -10 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 510 60 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 510 -90 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 710 -200 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 710 -90 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control
tran 1u 5m

plot v(out_telescopic) v(inn_telescopic)

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
C {capa.sym} 150 120 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 220 60 0 1 {name=p11 sig_type=std_logic lab=OUT_TELESCOPIC}
C {gnd.sym} 150 180 0 0 {name=l8 lab=GND}
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

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
N 730 -40 730 0 {lab=GND}
N 730 -150 730 -100 {lab=VDD}
N 240 -120 370 -120 {lab=OUT_FOLDED}
N 370 -120 370 -90 {lab=OUT_FOLDED}
N 370 -120 440 -120 {lab=OUT_FOLDED}
N 370 -30 370 -0 {lab=GND}
N 300 -120 300 260 {lab=OUT_FOLDED}
N 60 260 300 260 {lab=OUT_FOLDED}
N -360 260 -0 260 {lab=#net1}
N -380 -90 -380 260 {lab=#net1}
N -440 -160 -240 -160 {lab=#net1}
N -380 -160 -380 -90 {lab=#net1}
N -570 -160 -500 -160 {lab=INN_FOLDED}
N -600 -160 -570 -160 {lab=INN_FOLDED}
N -600 -160 -600 -100 {lab=INN_FOLDED}
N -600 -40 -600 40 {lab=GND}
N -770 -40 -770 40 {lab=GND}
N -770 -190 -770 -100 {lab=#net2}
N -710 -190 -240 -190 {lab=#net2}
N -770 -190 -710 -190 {lab=#net2}
N -320 170 -320 200 {lab=VDD}
N -380 260 -360 260 {lab=#net1}
N -320 20 -240 20 {lab=#net3}
N -320 20 -320 110 {lab=#net3}
C {libs/core_tb/schem/DUT.sym} -10 -60 0 0 {name=x1}
C {gnd.sym} -270 100 0 1 {name=l2 lab=GND}
C {gnd.sym} -140 -280 0 1 {name=l1 lab=GND}
C {lab_pin.sym} -80 -300 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {gnd.sym} 20 -280 0 1 {name=l3 lab=GND}
C {gnd.sym} 110 -280 0 0 {name=l4 lab=GND}
C {vsource.sym} 730 -70 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 730 0 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 730 -150 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 930 -260 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 930 -150 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control
tran 1u 5m

plot v(out_folded) v(inn_folded)

meas tran vout_pp pp v(out_folded) from=2m to=5m
meas tran vin_pp pp v(inn_folded) from=2m to=5m
let gain = vout_pp / vin_pp
print gain

meas tran vout_dc avg v(out_folded) from=2m to=5m
meas tran vin_dc avg v(inn_folded) from=2m to=5m
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
C {capa.sym} 370 -60 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 440 -120 0 1 {name=p11 sig_type=std_logic lab=OUT_FOLDED}
C {gnd.sym} 370 0 0 0 {name=l8 lab=GND}
C {res.sym} 30 260 1 0 {name=R1
value=500k
footprint=1206
device=resistor
m=1}
C {res.sym} -470 -160 1 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -600 -70 0 0 {name=V6 value= "dc 1.65 ac 0 sin(1.65 10m 500 1m)" savecurrent=false}
C {gnd.sym} -600 40 0 0 {name=l6 lab=GND}
C {vsource.sym} -770 -70 0 1 {name=V7 value=1.65 savecurrent=false}
C {gnd.sym} -770 40 0 1 {name=l7 lab=GND}
C {lab_pin.sym} -600 -160 0 0 {name=p13 sig_type=std_logic lab=INN_FOLDED}
C {isource.sym} -320 140 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -320 200 0 1 {name=p9 sig_type=std_logic lab=VDD}

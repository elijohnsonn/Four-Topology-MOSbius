v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -490 -40 -460 -40 {lab=GND}
N -490 -40 -490 -10 {lab=GND}
N -320 -410 -320 -380 {lab=GND}
N -360 -410 -320 -410 {lab=GND}
N -360 -410 -360 -390 {lab=GND}
N -300 -410 -300 -380 {lab=VDD}
N -200 -410 -200 -390 {lab=GND}
N -200 -410 -170 -410 {lab=GND}
N -170 -410 -170 -380 {lab=GND}
N -140 -410 -140 -380 {lab=GND}
N -140 -410 -110 -410 {lab=GND}
N -110 -410 -110 -390 {lab=GND}
N 510 -150 510 -110 {lab=GND}
N 510 -260 510 -210 {lab=VDD}
N 20 -110 150 -110 {lab=OUT_TELESCOPIC}
N 150 -110 150 -80 {lab=OUT_TELESCOPIC}
N 150 -110 220 -110 {lab=OUT_TELESCOPIC}
N 150 -20 150 10 {lab=GND}
N 80 -110 80 150 {lab=OUT_TELESCOPIC}
N -160 150 80 150 {lab=OUT_TELESCOPIC}
N -580 150 -220 150 {lab=#net1}
N -600 -150 -600 150 {lab=#net1}
N -670 -150 -460 -150 {lab=#net1}
N -800 -150 -730 -150 {lab=INN_TELESCOPIC}
N -830 -150 -800 -150 {lab=INN_TELESCOPIC}
N -830 -150 -830 -90 {lab=INN_TELESCOPIC}
N -830 -30 -830 50 {lab=GND}
N -990 -30 -990 50 {lab=GND}
N -990 -180 -990 -90 {lab=#net2}
N -930 -180 -460 -180 {lab=#net2}
N -990 -180 -930 -180 {lab=#net2}
N -540 60 -540 90 {lab=VDD}
N -600 150 -580 150 {lab=#net1}
N -540 -90 -460 -90 {lab=#net3}
N -540 -90 -540 0 {lab=#net3}
C {libs/core_tb/schem/DUT.sym} -230 -170 0 0 {name=x1}
C {gnd.sym} -490 -10 0 1 {name=l2 lab=GND}
C {gnd.sym} -360 -390 0 1 {name=l1 lab=GND}
C {lab_pin.sym} -300 -410 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {gnd.sym} -200 -390 0 1 {name=l3 lab=GND}
C {gnd.sym} -110 -390 0 0 {name=l4 lab=GND}
C {vsource.sym} 510 -180 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 510 -110 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 510 -260 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 710 -370 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 710 -260 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control
tran 1u 5m

meas tran vout_pp pp v(out_telescopic) from=2m to=5m
meas tran vin_pp pp v(inn_telescopic) from=2m to=5m
let gain = vout_pp / vin_pp
let gain_db = 20 * log(gain) / log(10)
print gain gain_db
.endc
"}
C {capa.sym} 150 -50 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 220 -110 0 1 {name=p11 sig_type=std_logic lab=OUT_TELESCOPIC}
C {gnd.sym} 150 10 0 0 {name=l8 lab=GND}
C {res.sym} -190 150 1 0 {name=R1
value=500k
footprint=1206
device=resistor
m=1}
C {res.sym} -700 -150 1 0 {name=R2
value=100k
footprint=1206
device=resistor
m=1}
C {vsource.sym} -830 -60 0 0 {name=V6 value= "dc 1.65 ac 0 sin(1.65 10m 210k 1m)" savecurrent=false}
C {gnd.sym} -830 50 0 0 {name=l6 lab=GND}
C {vsource.sym} -990 -60 0 1 {name=V7 value=1.65 savecurrent=false}
C {gnd.sym} -990 50 0 1 {name=l7 lab=GND}
C {lab_pin.sym} -830 -150 0 0 {name=p13 sig_type=std_logic lab=INN_TELESCOPIC}
C {isource.sym} -540 30 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -540 90 0 1 {name=p9 sig_type=std_logic lab=VDD}

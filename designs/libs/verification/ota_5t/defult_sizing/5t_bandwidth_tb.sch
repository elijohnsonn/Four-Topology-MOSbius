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
N 510 190 510 230 {lab=GND}
N 510 80 510 130 {lab=VDD}
N 240 -60 370 -60 {lab=OUT_5T}
N 370 -60 370 -30 {lab=OUT_5T}
N 370 -60 440 -60 {lab=OUT_5T}
N 370 30 370 60 {lab=GND}
N 60 260 300 260 {lab=OUT_5T}
N -360 260 0 260 {lab=#net1}
N -440 -100 -240 -100 {lab=#net1}
N -380 -100 -380 -30 {lab=#net1}
N -570 -100 -500 -100 {lab=INN_5T}
N -600 -100 -570 -100 {lab=INN_5T}
N -600 -100 -600 -40 {lab=INN_5T}
N -600 20 -600 100 {lab=GND}
N -770 20 -770 100 {lab=GND}
N -770 -130 -770 -40 {lab=#net2}
N -710 -130 -240 -130 {lab=#net2}
N -770 -130 -710 -130 {lab=#net2}
N -320 170 -320 200 {lab=VDD}
N -380 260 -360 260 {lab=#net1}
N -320 20 -240 20 {lab=#net3}
N -320 20 -320 110 {lab=#net3}
N -380 -30 -380 260 {lab=#net1}
N 300 -60 300 260 {lab=OUT_5T}
C {libs/core_tb/schem/DUT.sym} -10 -60 0 0 {name=x1}
C {gnd.sym} -270 100 0 1 {name=l2 lab=GND}
C {gnd.sym} -140 -280 0 1 {name=l1 lab=GND}
C {lab_pin.sym} -80 -300 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {gnd.sym} 20 -280 0 1 {name=l3 lab=GND}
C {gnd.sym} 110 -280 0 0 {name=l4 lab=GND}
C {vsource.sym} 510 160 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 510 230 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 510 80 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 590 -250 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 590 -140 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control
tran 1u 5m

meas tran vout_pp pp v(out_5T) from=2m to=5m
meas tran vin_pp pp v(inn_5T) from=2m to=5m
let gain = vout_pp / vin_pp
let gain_db = 20 * log(gain) / log(10)
print gain gain_db
.endc
"}
C {capa.sym} 370 0 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 440 -60 0 1 {name=p11 sig_type=std_logic lab=OUT_5T}
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
C {vsource.sym} -600 -10 0 0 {name=V6 value= "dc 1.65 ac 0 sin(1.65 10m 1k 1m)" savecurrent=false}
C {gnd.sym} -600 100 0 0 {name=l6 lab=GND}
C {vsource.sym} -770 -10 0 1 {name=V7 value=1.65 savecurrent=false}
C {gnd.sym} -770 100 0 1 {name=l7 lab=GND}
C {lab_pin.sym} -600 -100 0 0 {name=p13 sig_type=std_logic lab=INN_5T}
C {isource.sym} -320 140 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -320 200 0 1 {name=p9 sig_type=std_logic lab=VDD}

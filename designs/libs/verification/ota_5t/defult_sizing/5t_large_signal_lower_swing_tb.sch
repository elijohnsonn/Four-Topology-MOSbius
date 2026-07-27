v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -270 50 -240 50 {lab=GND}
N -270 50 -270 80 {lab=GND}
N -100 -320 -100 -290 {lab=GND}
N -140 -320 -100 -320 {lab=GND}
N -140 -320 -140 -300 {lab=GND}
N -80 -320 -80 -290 {lab=VDD}
N 20 -320 20 -300 {lab=GND}
N 20 -320 50 -320 {lab=GND}
N 50 -320 50 -290 {lab=GND}
N 80 -320 80 -290 {lab=GND}
N 80 -320 110 -320 {lab=GND}
N 110 -320 110 -300 {lab=GND}
N 490 160 490 200 {lab=GND}
N 490 50 490 100 {lab=VDD}
N 240 -80 370 -80 {lab=OUT_5T}
N 370 -80 370 -50 {lab=OUT_5T}
N 370 -80 440 -80 {lab=OUT_5T}
N 370 10 370 40 {lab=GND}
N 60 240 300 240 {lab=OUT_5T}
N -360 240 0 240 {lab=OUT_5T}
N -820 0 -820 80 {lab=GND}
N -820 -150 -820 -60 {lab=INP_5T}
N -710 -150 -240 -150 {lab=INP_5T}
N -820 -150 -760 -150 {lab=INP_5T}
N -320 150 -320 180 {lab=VDD}
N -380 240 -360 240 {lab=OUT_5T}
N -320 0 -240 0 {lab=#net1}
N -320 0 -320 90 {lab=#net1}
N -760 -150 -710 -150 {lab=INP_5T}
N -380 -120 -240 -120 {lab=OUT_5T}
N 0 240 60 240 {lab=OUT_5T}
N -380 -120 -380 240 {lab=OUT_5T}
N 300 -80 300 240 {lab=OUT_5T}
C {libs/core_tb/schem/DUT.sym} -10 -80 0 0 {name=x1}
C {gnd.sym} -270 80 0 1 {name=l2 lab=GND}
C {gnd.sym} -140 -300 0 1 {name=l1 lab=GND}
C {lab_pin.sym} -80 -320 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {gnd.sym} 20 -300 0 1 {name=l3 lab=GND}
C {gnd.sym} 110 -300 0 0 {name=l4 lab=GND}
C {vsource.sym} 490 130 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 490 200 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 490 50 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 600 -250 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 600 -140 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control
tran 1u 5m

set color0 = white
set color1 = black
plot v(out_5T) v(inp_5T)

let error = v(out_5T) - v(inp_5T)
plot error

meas tran t_clip when error = 0.019 cross = 1
print t_clip

meas tran vout_clip find v(out_5T) at = t_clip
meas tran vin_clip find v(inp_5T) at = t_clip
print vout_clip vin_clip
.endc
"}
C {capa.sym} 370 -20 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 440 -80 0 1 {name=p11 sig_type=std_logic lab=OUT_5T}
C {gnd.sym} 370 40 0 0 {name=l8 lab=GND}
C {vsource.sym} -820 -30 0 1 {name=V7 value="dc 1.65 ac 0 pulse(1.65 0.3 1m 2m 2m 0.01u 4m)" savecurrent=false}
C {gnd.sym} -820 80 0 1 {name=l7 lab=GND}
C {lab_pin.sym} -820 -150 0 0 {name=p13 sig_type=std_logic lab=INP_5T}
C {isource.sym} -320 120 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -320 180 0 1 {name=p9 sig_type=std_logic lab=VDD}

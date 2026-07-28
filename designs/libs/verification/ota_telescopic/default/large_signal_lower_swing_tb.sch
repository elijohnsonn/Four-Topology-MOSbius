v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -490 50 -460 50 {lab=GND}
N -490 50 -490 80 {lab=GND}
N -320 -320 -320 -290 {lab=GND}
N -360 -320 -320 -320 {lab=GND}
N -360 -320 -360 -300 {lab=GND}
N -300 -320 -300 -290 {lab=VDD}
N -200 -320 -200 -300 {lab=GND}
N -200 -320 -170 -320 {lab=GND}
N -170 -320 -170 -290 {lab=GND}
N -140 -320 -140 -290 {lab=GND}
N -140 -320 -110 -320 {lab=GND}
N -110 -320 -110 -300 {lab=GND}
N 510 -60 510 -20 {lab=GND}
N 510 -170 510 -120 {lab=VDD}
N 20 -20 150 -20 {lab=OUT_TELESCOPIC}
N 150 -20 150 10 {lab=OUT_TELESCOPIC}
N 150 -20 220 -20 {lab=OUT_TELESCOPIC}
N 150 70 150 100 {lab=GND}
N 80 -20 80 240 {lab=OUT_TELESCOPIC}
N -160 240 80 240 {lab=OUT_TELESCOPIC}
N -580 240 -220 240 {lab=OUT_TELESCOPIC}
N -600 10 -600 240 {lab=OUT_TELESCOPIC}
N -1040 60 -1040 140 {lab=GND}
N -1040 -90 -1040 0 {lab=INP_TELESCOPIC}
N -930 -90 -460 -90 {lab=INP_TELESCOPIC}
N -1040 -90 -980 -90 {lab=INP_TELESCOPIC}
N -540 150 -540 180 {lab=VDD}
N -600 240 -580 240 {lab=OUT_TELESCOPIC}
N -540 0 -460 0 {lab=#net1}
N -540 0 -540 90 {lab=#net1}
N -980 -90 -930 -90 {lab=INP_TELESCOPIC}
N -600 -60 -460 -60 {lab=OUT_TELESCOPIC}
N -600 -60 -600 10 {lab=OUT_TELESCOPIC}
N -220 240 -160 240 {lab=OUT_TELESCOPIC}
C {libs/core_tb/schem/DUT.sym} -230 -80 0 0 {name=x1}
C {gnd.sym} -490 80 0 1 {name=l2 lab=GND}
C {gnd.sym} -360 -300 0 1 {name=l1 lab=GND}
C {lab_pin.sym} -300 -320 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {gnd.sym} -200 -300 0 1 {name=l3 lab=GND}
C {gnd.sym} -110 -300 0 0 {name=l4 lab=GND}
C {vsource.sym} 510 -90 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 510 -20 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 510 -170 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {capa.sym} 150 40 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 220 -20 0 1 {name=p11 sig_type=std_logic lab=OUT_TELESCOPIC}
C {gnd.sym} 150 100 0 0 {name=l8 lab=GND}
C {vsource.sym} -1040 30 0 1 {name=V7 value="dc 1.65 ac 0 pulse(1.65 3.3 1m 2m 2m 0.01u 4m)" savecurrent=false}
C {gnd.sym} -1040 140 0 1 {name=l7 lab=GND}
C {lab_pin.sym} -1040 -90 0 0 {name=p13 sig_type=std_logic lab=INP_TELESCOPIC}
C {isource.sym} -540 120 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -540 180 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {devices/code_shown.sym} 650 -160 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 650 -50 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control
tran 1u 5m

plot v(out_telescopic) v(inp_telescopic)

let error = v(out_telescopic) - v(inp_telescopic)
plot error

meas tran t_clip when error = 0.019 cross = 1
print t_clip

meas tran vout_clip find v(out_telescopic) at = t_clip
meas tran vin_clip find v(inp_telescopic) at = t_clip
print vout_clip vin_clip
.endc
"}

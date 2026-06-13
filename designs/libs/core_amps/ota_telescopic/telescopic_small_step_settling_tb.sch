v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 320 -410 {}
N 350 -10 350 50 {lab=GND}
N -100 -240 -100 -180 {lab=VDD}
N -220 -240 -220 -180 {lab=GND}
N -220 -120 -220 -70 {lab=GND}
N -100 -120 -100 -70 {lab=GND}
N -100 -70 -100 -60 {lab=GND}
N -220 -180 -220 -120 {lab=GND}
N 370 -270 370 -210 {lab=VDD}
N 400 40 400 60 {lab=#net1}
N 400 120 400 160 {lab=VDD}
N 480 -120 600 -120 {lab=output}
N 550 -120 550 -70 {lab=output}
N 550 -10 550 20 {lab=GND}
N 160 -180 230 -180 {lab=input}
N 70 -90 70 -50 {lab=#net2}
N 160 50 160 90 {lab=output}
N 70 190 70 220 {lab=GND}
N 400 -30 400 40 {lab=#net1}
N 160 -30 230 -30 {lab=output}
N 160 -30 160 -10 {lab=output}
N 70 -180 160 -180 {lab=input}
N 70 -180 70 -150 {lab=input}
N 70 -50 70 90 {lab=#net2}
N 160 -10 160 50 {lab=output}
N 160 90 160 250 {lab=output}
N 160 250 480 250 {lab=output}
N 480 -120 480 250 {lab=output}
N 70 90 70 130 {lab=#net2}
N 350 -170 370 -210 {lab=VDD}
N 230 -180 300 -140 {lab=input}
N 230 -30 300 -100 {lab=output}
N 350 -70 400 -30 {lab=#net1}
N 400 -120 480 -120 {lab=output}
C {isource.sym} 400 90 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -100 -240 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} -100 -150 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} -220 -240 0 0 {name=p3 sig_type=std_logic lab=GND}
C {gnd.sym} -220 -70 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -100 -60 0 0 {name=p4 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} -870 -270 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} -890 -160 0 0 {name=Simulation only_toplevel=false 

value=

"
.control
tran 1n 50u
meas tran v_input find v(input) at=40u
meas tran v_output find v(output) at=40u
let v_error = v_input - v_output
print v_error

meas tran vpeak max v(output) from=10u to=50u
meas tran vfinal find v(output) at=40u

let target_low = vfinal * 0.999
meas tran settle_01 when v(output) = target_low rise = last

print v_input v_output
print vpeak vfinal
print settle_01

plot v(input) v(output)
plot v(output) - v(input)
.endc
"}
C {lab_pin.sym} 370 -270 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 350 50 0 0 {name=p5 sig_type=std_logic lab=GND}
C {capa.sym} 550 -40 0 0 {name=CLOAD
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 550 20 0 0 {name=p7 sig_type=std_logic lab=GND}
C {lab_pin.sym} 600 -120 0 1 {name=p8 sig_type=std_logic lab=output}
C {lab_pin.sym} 400 160 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {vsource.sym} 70 -120 0 0 {name=VINP value= "PULSE(0 .1 25u 1p 100n 2m 1)" savecurrent=false}
C {vsource.sym} 70 160 0 0 {name=VCM value= 1.65 savecurrent=false}
C {lab_pin.sym} 70 220 0 0 {name=p9 sig_type=std_logic lab=GND}
C {lab_pin.sym} 120 -180 1 0 {name=p10 sig_type=std_logic lab=input}
C {libs/core_amps/ota_telescopic/telescopic_cascode.sym} 230 -130 0 0 {name=X1}

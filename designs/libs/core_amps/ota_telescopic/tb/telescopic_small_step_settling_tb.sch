v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 320 -410 {}
N 300 -40 300 20 {lab=GND}
N -140 -240 -140 -180 {lab=VDD}
N -230 -240 -230 -180 {lab=GND}
N -230 -120 -230 -70 {lab=GND}
N -140 -120 -140 -70 {lab=GND}
N -140 -70 -140 -60 {lab=GND}
N -230 -180 -230 -120 {lab=GND}
N 280 -260 280 -200 {lab=VDD}
N 280 30 280 50 {lab=#net1}
N 280 110 280 150 {lab=VDD}
N 480 -120 600 -120 {lab=output}
N 550 -120 550 -70 {lab=output}
N 550 -10 550 20 {lab=GND}
N 150 -160 220 -160 {lab=input}
N 70 -80 70 -40 {lab=#net2}
N 160 50 160 90 {lab=output}
N 70 200 70 230 {lab=GND}
N 280 -40 280 30 {lab=#net1}
N 160 -30 160 -10 {lab=output}
N 70 -40 70 100 {lab=#net2}
N 160 -10 160 50 {lab=output}
N 160 90 160 250 {lab=output}
N 160 250 480 250 {lab=output}
N 480 -120 480 250 {lab=output}
N 70 100 70 140 {lab=#net2}
N 400 -120 480 -120 {lab=output}
N 70 -160 150 -160 {lab=input}
N 70 -160 70 -140 {lab=input}
N 160 -90 220 -90 {lab=output}
N 160 -90 160 -30 {lab=output}
C {isource.sym} 280 80 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -140 -240 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} -140 -150 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} -230 -240 0 0 {name=p3 sig_type=std_logic lab=GND}
C {gnd.sym} -230 -70 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -140 -60 0 0 {name=p4 sig_type=std_logic lab=GND}
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
C {lab_pin.sym} 280 -260 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 300 20 0 1 {name=p5 sig_type=std_logic lab=GND}
C {capa.sym} 550 -40 0 0 {name=CLOAD
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 550 20 0 0 {name=p7 sig_type=std_logic lab=GND}
C {lab_pin.sym} 600 -120 0 1 {name=p8 sig_type=std_logic lab=output}
C {lab_pin.sym} 280 150 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {vsource.sym} 70 -110 0 1 {name=VINP value= "PULSE(0 .1 25u 1p 100n 2m 1)" savecurrent=false}
C {vsource.sym} 70 170 0 0 {name=VCM value= 1.65 savecurrent=false}
C {lab_pin.sym} 70 230 0 0 {name=p9 sig_type=std_logic lab=GND}
C {lab_pin.sym} 120 -160 1 0 {name=p10 sig_type=std_logic lab=input}
C {libs/core_amps/ota_telescopic/telescopic_cascode.sym} 280 -120 0 0 {name=X1}

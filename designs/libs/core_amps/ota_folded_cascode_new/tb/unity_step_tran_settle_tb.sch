v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -1040 -270 -1040 180 {}
L 4 -1040 200 -200 200 {}
L 4 -200 -280 -200 180 {}
L 4 -1040 -280 -200 -280 {}
L 4 -1040 -280 -1040 -270 {}
L 4 -1040 180 -1040 200 {}
L 4 -200 180 -200 200 {}
P 4 1 320 -410 {}
T {Amplifier Performance} -920 -240 0 0 1 1 {}
T {-Driving Ideal 120 pF load capacitance 
-Intended load of 100 pF off-chip, 
	10-20 pF added for parasitic modeling

Small-Step Settling (100mV step, 1.65V → 1.75V):

Settled Output: 1.75002V (22µV error from ideal)
0.1% Settling Time: 0.54µs
} -1010 -150 0 0 0.6 0.6 {}
N 360 -60 360 0 {lab=GND}
N -10 -230 -10 -170 {lab=VDD}
N -130 -230 -130 -170 {lab=GND}
N -130 -110 -130 -60 {lab=GND}
N -10 -110 -10 -60 {lab=GND}
N -10 -60 -10 -50 {lab=GND}
N -130 -170 -130 -110 {lab=GND}
N 370 -240 370 -180 {lab=VDD}
N 380 10 380 30 {lab=#net1}
N 380 90 380 130 {lab=VDD}
N 480 -120 600 -120 {lab=output}
N 550 -120 550 -70 {lab=output}
N 550 -10 550 20 {lab=GND}
N 160 -150 230 -150 {lab=input}
N 70 -60 70 -20 {lab=#net2}
N 70 80 70 110 {lab=GND}
N 380 -60 380 10 {lab=#net1}
N 70 -150 160 -150 {lab=input}
N 70 -150 70 -120 {lab=input}
N 70 -20 70 20 {lab=#net2}
N 440 -120 480 -120 {lab=output}
N 270 -90 300 -90 {lab=output}
N 270 -90 270 170 {lab=output}
N 270 170 450 170 {lab=output}
N 450 170 480 170 {lab=output}
N 480 -120 480 170 {lab=output}
N 230 -150 300 -150 {lab=input}
C {isource.sym} 380 60 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -10 -230 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} -10 -140 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} -130 -230 0 0 {name=p3 sig_type=std_logic lab=GND}
C {gnd.sym} -130 -60 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -10 -50 0 0 {name=p4 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} 710 -200 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 710 -90 0 0 {name=Simulation only_toplevel=false 

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
C {lab_pin.sym} 370 -240 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 360 0 0 0 {name=p5 sig_type=std_logic lab=GND}
C {capa.sym} 550 -40 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 550 20 0 0 {name=p7 sig_type=std_logic lab=GND}
C {lab_pin.sym} 600 -120 0 1 {name=p8 sig_type=std_logic lab=output}
C {lab_pin.sym} 380 130 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {vsource.sym} 70 -90 0 0 {name=VINP value= "PULSE(0 .1 25u 1p 100n 2m 1)" savecurrent=false}
C {vsource.sym} 70 50 0 0 {name=VCM value= 1.65 savecurrent=false}
C {lab_pin.sym} 70 110 0 0 {name=p9 sig_type=std_logic lab=GND}
C {lab_pin.sym} 120 -150 1 0 {name=p10 sig_type=std_logic lab=input}
C {libs/core_amps/ota_folded_cascode_new/schem/ota_folded_cascode.sym} 360 -50 0 0 {name=x1}

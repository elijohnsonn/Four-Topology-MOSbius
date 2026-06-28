v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -1120 -290 -1120 160 {}
L 4 -1120 160 -280 160 {}
L 4 -280 -300 -280 160 {}
L 4 -1120 -300 -280 -300 {}
L 4 -1120 -300 -1120 -290 {}
T {Amplifier Performance} -1000 -260 0 0 1 1 {}
T {-Driving Ideal 120 pF load capacitance 
-Intended load of 100 pF off-chip, 
	10-20 pF added for parasitic modeling

Unity Step Response (1V step, 1.65V → 2.65V):

Slew Rate: 1.27 V/µs
} -1060 -160 0 0 0.6 0.6 {}
N 330 -100 330 -40 {lab=GND}
N -80 -240 -80 -180 {lab=VDD}
N -200 -240 -200 -180 {lab=GND}
N -200 -120 -200 -70 {lab=GND}
N -80 -120 -80 -70 {lab=GND}
N -80 -70 -80 -60 {lab=GND}
N -200 -180 -200 -120 {lab=GND}
N 340 -280 340 -220 {lab=VDD}
N 350 -30 350 -10 {lab=#net1}
N 350 50 350 90 {lab=VDD}
N 460 -160 580 -160 {lab=output}
N 530 -160 530 -110 {lab=output}
N 530 -50 530 -20 {lab=GND}
N 120 -190 190 -190 {lab=input}
N 30 -100 30 -60 {lab=#net2}
N 30 40 30 70 {lab=GND}
N 350 -100 350 -30 {lab=#net1}
N 30 -190 120 -190 {lab=input}
N 30 -190 30 -160 {lab=input}
N 30 -60 30 -20 {lab=#net2}
N 410 -160 460 -160 {lab=output}
N 250 -130 270 -130 {lab=output}
N 230 -130 250 -130 {lab=output}
N 230 -130 230 140 {lab=output}
N 230 140 440 140 {lab=output}
N 440 -160 440 140 {lab=output}
N 190 -190 270 -190 {lab=input}
C {isource.sym} 350 20 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -80 -240 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} -80 -150 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} -200 -240 0 0 {name=p3 sig_type=std_logic lab=GND}
C {gnd.sym} -200 -70 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -80 -60 0 0 {name=p4 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} 700 -260 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 700 -150 0 0 {name=Simulation only_toplevel=false 

value=

"
.control
tran 1n 100u
meas tran v_before find v(output) at=24u
meas tran v_after find v(output) at=90u
let v_20 = v_before + 0.2 * (v_after - v_before)
let v_80 = v_before + 0.8 * (v_after - v_before)
meas tran t_20 when v(output) = v_20 rise = 1 from = 25u
meas tran t_80 when v(output) = v_80 rise = 1 from = 25u
let slew_rate = (v_80 - v_20) / (t_80 - t_20)
print v_before v_after
print slew_rate

plot v(input) v(output)
.endc

"}
C {lab_pin.sym} 340 -280 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 330 -40 0 0 {name=p5 sig_type=std_logic lab=GND}
C {capa.sym} 530 -80 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 530 -20 0 0 {name=p7 sig_type=std_logic lab=GND}
C {lab_pin.sym} 580 -160 0 1 {name=p8 sig_type=std_logic lab=output}
C {lab_pin.sym} 350 90 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {vsource.sym} 30 -130 0 0 {name=VINP value= "PULSE(0 1 25u 1p 100n 2m 1)" savecurrent=false}
C {vsource.sym} 30 10 0 0 {name=VCM value= 1.65 savecurrent=false}
C {lab_pin.sym} 30 70 0 0 {name=p9 sig_type=std_logic lab=GND}
C {lab_pin.sym} 80 -190 1 0 {name=p10 sig_type=std_logic lab=input}
C {libs/core_amps/ota_folded_cascode_new/schem/ota_folded_cascode.sym} 330 -90 0 0 {name=x1}

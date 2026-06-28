v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -1340 -290 -1340 160 {}
L 4 -1340 160 -500 160 {}
L 4 -500 -300 -500 160 {}
L 4 -1340 -300 -500 -300 {}
L 4 -1340 -300 -1340 -290 {}
T {Amplifier Performance} -1220 -260 0 0 1 1 {}
T {-Driving Ideal 120 pF load capacitance 
-Intended load of 100 pF off-chip, 
	10-20 pF added for parasitic modeling

ICMR: 0.700V – 3.059V (2.36V range)
Output Swing: 0.704V – 3.049V (2.35V range)
} -1280 -160 0 0 0.6 0.6 {}
N -260 -180 -260 -120 {lab=VDD}
N -380 -180 -380 -120 {lab=GND}
N -380 -60 -380 -10 {lab=GND}
N -260 -60 -260 -10 {lab=GND}
N -260 -10 -260 0 {lab=GND}
N -380 -120 -380 -60 {lab=GND}
N 60 -290 60 -230 {lab=VDD}
N 70 -10 70 10 {lab=#net1}
N 70 70 70 110 {lab=VDD}
N 170 -140 290 -140 {lab=output}
N 240 -140 240 -90 {lab=output}
N 240 -30 240 0 {lab=GND}
N -170 120 -170 150 {lab=GND}
N 70 -80 70 -10 {lab=#net1}
N -170 20 -170 60 {lab=#net2}
N -80 -110 -80 -100 {lab=output}
N -80 -110 -10 -110 {lab=output}
N -80 -170 -10 -170 {lab=#net3}
N 60 -230 60 -200 {lab=VDD}
N 130 -140 170 -140 {lab=output}
N -170 -80 -170 20 {lab=#net2}
N -170 -170 -170 -140 {lab=#net3}
N -80 -100 -80 180 {lab=output}
N -80 180 170 180 {lab=output}
N 170 -140 170 180 {lab=output}
N 50 -80 50 -40 {lab=GND}
N -170 -170 -80 -170 {lab=#net3}
C {isource.sym} 70 40 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -260 -180 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} -260 -90 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} -380 -180 0 0 {name=p3 sig_type=std_logic lab=GND}
C {gnd.sym} -380 -10 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -260 0 0 0 {name=p4 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} 430 -240 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 420 -130 0 0 {name=Simulation only_toplevel=false 

value=

"
.control

dc VINP 0 4 0.001
let gain = deriv(v(output))
meas dc icmr_low when gain = 0.95 rise = 1
meas dc icmr_high when gain = 0.95 fall = 1
print icmr_low icmr_high
print icmr_high - icmr_low
meas dc out_swing_low find v(output) when gain = 0.95 rise = 1
meas dc out_swing_high find v(output) when gain = 0.95 fall = 1
print out_swing_low out_swing_high
print out_swing_high - out_swing_low
plot v(output) gain

.endc
"}
C {lab_pin.sym} 60 -290 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 50 -40 0 0 {name=p5 sig_type=std_logic lab=GND}
C {capa.sym} 240 -60 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 240 0 0 0 {name=p7 sig_type=std_logic lab=GND}
C {lab_pin.sym} 290 -140 0 1 {name=p8 sig_type=std_logic lab=output}
C {lab_pin.sym} 70 110 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {vsource.sym} -170 -110 0 0 {name=VINP value= 0 savecurrent=false}
C {vsource.sym} -170 90 0 0 {name=VCM value= 0 savecurrent=false}
C {lab_pin.sym} -170 150 0 0 {name=p9 sig_type=std_logic lab=GND}
C {libs/core_amps/ota_folded_cascode_new/schem/ota_folded_cascode.sym} 50 -70 0 0 {name=x1}

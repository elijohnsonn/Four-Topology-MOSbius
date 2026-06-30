v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -1420 -260 -1420 190 {}
L 4 -1420 190 -580 190 {}
L 4 -580 -270 -580 190 {}
L 4 -1420 -270 -580 -270 {}
L 4 -1420 -270 -1420 -260 {}
P 4 1 -50 -390 {}
T {Amplifier Performance} -1300 -230 0 0 1 1 {}
T {-Driving Ideal 120 pF load capacitance 
-Intended load of 100 pF off-chip, 
	10-20 pF added for parasitic modeling

DC Gain: 85.7 dB
GBW: 1.5 MHz
PM: 89.6 Degrees} -1290 -130 0 0 0.6 0.6 {}
N -340 -200 -340 -140 {lab=VDD}
N -460 -200 -460 -140 {lab=GND}
N -460 -80 -460 -30 {lab=GND}
N -340 -80 -340 -30 {lab=GND}
N -340 -30 -340 -20 {lab=GND}
N -460 -140 -460 -80 {lab=GND}
N 50 -320 50 -260 {lab=VDD}
N 60 -50 60 -30 {lab=#net1}
N 60 30 60 70 {lab=VDD}
N 160 -170 280 -170 {lab=output}
N 230 -170 230 -120 {lab=output}
N 230 -60 230 -30 {lab=GND}
N -250 -110 -250 -70 {lab=#net2}
N -160 0 -160 40 {lab=#net3}
N -250 170 -250 200 {lab=GND}
N -160 -80 -160 -60 {lab=#net3}
N -250 -200 -250 -170 {lab=#net4}
N -250 -70 -250 70 {lab=#net2}
N -160 -60 -160 0 {lab=#net3}
N -250 70 -250 110 {lab=#net2}
N -160 40 -160 170 {lab=#net3}
N -160 170 -20 170 {lab=#net3}
N -160 230 -160 260 {lab=GND}
N 40 170 160 170 {lab=#net5}
N 160 170 160 210 {lab=#net5}
N 160 270 160 310 {lab=GND}
N 160 290 200 290 {lab=GND}
N 200 260 200 290 {lab=GND}
N 280 -170 370 -170 {lab=output}
N 200 220 330 220 {lab=output}
N 330 -170 330 220 {lab=output}
N -90 -200 -20 -200 {lab=#net4}
N -90 -140 -20 -140 {lab=#net3}
N 40 -110 40 -70 {lab=GND}
N 60 -110 60 -80 {lab=#net1}
N 120 -170 160 -170 {lab=output}
N 50 -260 50 -230 {lab=VDD}
N -160 -140 -90 -140 {lab=#net3}
N -160 -140 -160 -80 {lab=#net3}
N 60 -80 60 -50 {lab=#net1}
N -250 -200 -90 -200 {lab=#net4}
C {isource.sym} 60 0 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -340 -200 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} -340 -110 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} -460 -200 0 0 {name=p3 sig_type=std_logic lab=GND}
C {gnd.sym} -460 -30 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -340 -20 0 0 {name=p4 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} 540 -180 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 540 -70 0 0 {name=Simulation only_toplevel=false 

value=

"
.control
ac dec 100 1 1G

plot vdb(output) ph(v(output))*180/3.14159

meas ac dc_gain find vdb(output) at=1
meas ac gbw when vdb(output)=0
let gain_db = vdb(output)
let phase = 180/3.14159*ph(v(output))
meas ac phase_at_gbw find phase when vdb(output)=0
let pm = 180 + phase_at_gbw
print pm

.endc

"}
C {lab_pin.sym} 50 -320 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 40 -70 0 0 {name=p5 sig_type=std_logic lab=GND}
C {capa.sym} 230 -90 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 230 -30 0 0 {name=p7 sig_type=std_logic lab=GND}
C {lab_pin.sym} 370 -170 0 1 {name=p8 sig_type=std_logic lab=output}
C {lab_pin.sym} 60 70 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {vsource.sym} -250 -140 0 0 {name=VINP value= AC 1 savecurrent=false}
C {vsource.sym} -250 140 0 0 {name=VCM value= 1.65 savecurrent=false}
C {lab_pin.sym} -250 200 0 0 {name=p9 sig_type=std_logic lab=GND}
C {ind.sym} 10 170 1 0 {name=L2
m=1
value=1T
footprint=1206
device=inductor}
C {capa.sym} -160 200 0 0 {name=CLOAD1
m=1
value=1T
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} -160 260 0 0 {name=p11 sig_type=std_logic lab=GND}
C {vcvs.sym} 160 240 0 1 {name=E1 value=1}
C {lab_pin.sym} 160 310 0 0 {name=p10 sig_type=std_logic lab=GND}
C {libs/core_amps/ota_folded_cascode/schem/ota_folded_cascode.sym} 40 -100 0 0 {name=x1}

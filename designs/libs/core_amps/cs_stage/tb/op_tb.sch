v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 30 -100 30 -60 {lab=VDD}
N 30 40 30 70 {lab=GND}
N 100 -10 170 -10 {lab=#net1}
N 170 -10 170 20 {lab=#net1}
N -260 -80 -260 -20 {lab=VDD}
N -380 -80 -380 -20 {lab=GND}
N -380 40 -380 90 {lab=GND}
N -260 40 -260 90 {lab=GND}
N -260 90 -260 100 {lab=GND}
N -380 -20 -380 40 {lab=GND}
N -80 100 -80 120 {lab=#net2}
N -80 180 -80 220 {lab=VDD}
N -80 30 -80 100 {lab=#net2}
N -80 30 -40 30 {lab=#net2}
N 170 80 170 110 {lab=GND}
N -140 -30 -40 -30 {lab=#net3}
N -140 -30 -140 10 {lab=#net3}
N -140 70 -140 100 {lab=GND}
C {libs/core_amps/cs_stage/cs_schematic.sym} 30 -20 0 0 {name=x1}
C {lab_pin.sym} -260 -80 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} -260 10 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} -380 -80 0 0 {name=p3 sig_type=std_logic lab=GND}
C {gnd.sym} -380 90 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -260 100 0 0 {name=p4 sig_type=std_logic lab=GND}
C {isource.sym} -80 150 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -80 220 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 30 70 0 0 {name=p2 sig_type=std_logic lab=GND}
C {lab_pin.sym} 30 -100 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {capa.sym} 170 50 0 0 {name=CLOAD
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 170 110 0 0 {name=p7 sig_type=std_logic lab=GND}
C {vsource.sym} -140 40 0 0 {name=VCM value= 2.35 savecurrent=false}
C {lab_pin.sym} -140 100 0 0 {name=p9 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} 260 -110 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 260 0 0 0 {name=Simulation only_toplevel=false 

value=

"
.control
op

let gmid_m1  = @m.x1.xm1.m0[gm]/@m.x1.xm1.m0[id]
let gmid_m2  = @m.x1.xm2.m0[gm]/@m.x1.xm2.m0[id]
let gmid_m3  = @m.x1.xm4.m0[gm]/@m.x1.xm4.m0[id]

print gmid_m1 gmid_m2 gmid_m3

.endc
"}

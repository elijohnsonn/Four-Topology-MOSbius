v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -1270 -340 -1270 110 {}
L 4 -1270 610 -430 610 {}
L 4 -430 -350 -430 110 {}
L 4 -1270 -350 -430 -350 {}
L 4 -1270 -350 -1270 -340 {}
L 4 -1270 100 -1270 610 {}
L 4 -430 110 -430 590 {}
L 4 -430 590 -430 610 {}
T {Amplifier Performance} -1150 -310 0 0 1 1 {}
T {Input Pair Targeting gm/id of 15
Mirrors and Sources Targeting gm/id of 8

Signal Path:

Input pair (XM10/XM11): 15.1
Tail (XM12): 8.0
PMOS current sources (XM2/XM5): 7.9
PMOS cascodes (XM3/XM4): 13.3–13.5
NMOS cascodes (XM6/XM7): 7.7–7.8
NMOS mirrors (XM8/XM9): 7.8

Bias devices:

XM28: 8.0
XM29: 8.0
XM30: 13.9 (cascode bias, matches XM3/XM4)
XM31: 8.0
XM32: 7.9
XM33: 8.0
XM34: 7.9
XM35: 8.0
} -1210 -210 0 0 0.6 0.6 {}
N 40 -40 40 20 {lab=GND}
N -240 -130 -240 -70 {lab=VDD}
N -360 -130 -360 -70 {lab=GND}
N -360 -10 -360 40 {lab=GND}
N -240 -10 -240 40 {lab=GND}
N -240 40 -240 50 {lab=GND}
N -360 -70 -360 -10 {lab=GND}
N 50 -220 50 -160 {lab=VDD}
N 60 30 60 50 {lab=#net1}
N 60 110 60 150 {lab=VDD}
N 160 -100 280 -100 {lab=output}
N 230 -100 230 -50 {lab=output}
N 230 10 230 40 {lab=GND}
N -180 110 -180 140 {lab=GND}
N 60 -40 60 30 {lab=#net1}
N -180 -130 -20 -130 {lab=#net2}
N -180 -130 -180 20 {lab=#net2}
N -180 20 -180 50 {lab=#net2}
N 120 -100 160 -100 {lab=output}
N -80 -70 -20 -70 {lab=output}
N -80 -70 -80 190 {lab=output}
N -80 190 160 190 {lab=output}
N 160 -100 160 190 {lab=output}
C {isource.sym} 60 80 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -240 -130 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} -240 -40 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} -360 -130 0 0 {name=p3 sig_type=std_logic lab=GND}
C {gnd.sym} -360 40 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -240 50 0 0 {name=p4 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} 440 -260 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} 50 -220 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 40 20 0 0 {name=p5 sig_type=std_logic lab=GND}
C {capa.sym} 230 -20 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 230 40 0 0 {name=p7 sig_type=std_logic lab=GND}
C {lab_pin.sym} 280 -100 0 1 {name=p8 sig_type=std_logic lab=output}
C {lab_pin.sym} 60 150 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {vsource.sym} -180 80 0 0 {name=VCM value= 1.65 savecurrent=false}
C {lab_pin.sym} -180 140 0 0 {name=p9 sig_type=std_logic lab=GND}
C {code_shown.sym} 440 -120 0 0 {name=Simulation only_toplevel=false 

value=

"
.control
op

let gmid_xm28 = @m.x1.xm28.m0[gm]/@m.x1.xm28.m0[id]
let gmid_xm33 = @m.x1.xm33.m0[gm]/@m.x1.xm33.m0[id]
let gmid_xm32 = @m.x1.xm32.m0[gm]/@m.x1.xm32.m0[id]
let gmid_xm29 = @m.x1.xm29.m0[gm]/@m.x1.xm29.m0[id]
let gmid_xm30 = @m.x1.xm30.m0[gm]/@m.x1.xm30.m0[id]
let gmid_xm31 = @m.x1.xm31.m0[gm]/@m.x1.xm31.m0[id]
let gmid_xm34 = @m.x1.xm34.m0[gm]/@m.x1.xm34.m0[id]
let gmid_xm35 = @m.x1.xm35.m0[gm]/@m.x1.xm35.m0[id]
let gmid_xm11 = @m.x1.xm11.m0[gm]/@m.x1.xm11.m0[id]
let gmid_xm10 = @m.x1.xm10.m0[gm]/@m.x1.xm10.m0[id]
let gmid_xm12 = @m.x1.xm12.m0[gm]/@m.x1.xm12.m0[id]
let gmid_xm2  = @m.x1.xm2.m0[gm]/@m.x1.xm2.m0[id]
let gmid_xm3  = @m.x1.xm3.m0[gm]/@m.x1.xm3.m0[id]
let gmid_xm4  = @m.x1.xm4.m0[gm]/@m.x1.xm4.m0[id]
let gmid_xm5  = @m.x1.xm5.m0[gm]/@m.x1.xm5.m0[id]
let gmid_xm6  = @m.x1.xm6.m0[gm]/@m.x1.xm6.m0[id]
let gmid_xm7  = @m.x1.xm7.m0[gm]/@m.x1.xm7.m0[id]
let gmid_xm8  = @m.x1.xm8.m0[gm]/@m.x1.xm8.m0[id]
let gmid_xm9  = @m.x1.xm9.m0[gm]/@m.x1.xm9.m0[id]
print gmid_xm28 gmid_xm33 gmid_xm32 gmid_xm29
print gmid_xm30 gmid_xm31 gmid_xm34 gmid_xm35
print gmid_xm11 gmid_xm10 gmid_xm12
print gmid_xm2 gmid_xm3 gmid_xm4 gmid_xm5
print gmid_xm6 gmid_xm7 gmid_xm8 gmid_xm9

.endc
"}
C {libs/core_amps/ota_folded_cascode/schem/ota_folded_cascode.sym} 40 -30 0 0 {name=x1}

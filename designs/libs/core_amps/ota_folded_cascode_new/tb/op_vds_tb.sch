v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -1340 -340 -1340 110 {}
L 4 -1340 610 -500 610 {}
L 4 -450 -350 -450 110 {}
L 4 -1340 -350 -500 -350 {}
L 4 -1340 -350 -1340 -340 {}
L 4 -1340 100 -1340 610 {}
L 4 -450 110 -450 590 {}
L 4 -450 590 -450 610 {}
L 4 -500 610 -450 610 {}
L 4 -500 -350 -450 -350 {}
T {Amplifier Performance} -1220 -310 0 0 1 1 {}
T {Measuring Vds - Vdsat

Signal Path:

Input pair (XM10/XM11): 1.50V
Tail (XM12): 0.48V
PMOS current sources (XM2/XM5): 0.80V
PMOS cascodes (XM3/XM4): 0.52V / 0.10V a little tight
NMOS cascodes (XM6/XM7): 0.94V / 0.53V
NMOS mirrors (XM8/XM9): 0.68V

Bias devices:

XM28: 0.68V
XM29: 0.80V
XM30: 1.09V
XM31: 0.86V
XM32: 0.68V
XM33: 2.21V
XM34: 0.81V
XM35: 2.08V
} -1320 -210 0 0 0.6 0.6 {}
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

let sat_xm28 = abs(@m.x1.xm28.m0[vds]) - abs(@m.x1.xm28.m0[vdsat])
let sat_xm33 = abs(@m.x1.xm33.m0[vds]) - abs(@m.x1.xm33.m0[vdsat])
let sat_xm32 = abs(@m.x1.xm32.m0[vds]) - abs(@m.x1.xm32.m0[vdsat])
let sat_xm29 = abs(@m.x1.xm29.m0[vds]) - abs(@m.x1.xm29.m0[vdsat])
let sat_xm30 = abs(@m.x1.xm30.m0[vds]) - abs(@m.x1.xm30.m0[vdsat])
let sat_xm31 = abs(@m.x1.xm31.m0[vds]) - abs(@m.x1.xm31.m0[vdsat])
let sat_xm34 = abs(@m.x1.xm34.m0[vds]) - abs(@m.x1.xm34.m0[vdsat])
let sat_xm35 = abs(@m.x1.xm35.m0[vds]) - abs(@m.x1.xm35.m0[vdsat])
let sat_xm11 = abs(@m.x1.xm11.m0[vds]) - abs(@m.x1.xm11.m0[vdsat])
let sat_xm10 = abs(@m.x1.xm10.m0[vds]) - abs(@m.x1.xm10.m0[vdsat])
let sat_xm12 = abs(@m.x1.xm12.m0[vds]) - abs(@m.x1.xm12.m0[vdsat])
let sat_xm2  = abs(@m.x1.xm2.m0[vds]) - abs(@m.x1.xm2.m0[vdsat])
let sat_xm3  = abs(@m.x1.xm3.m0[vds]) - abs(@m.x1.xm3.m0[vdsat])
let sat_xm4  = abs(@m.x1.xm4.m0[vds]) - abs(@m.x1.xm4.m0[vdsat])
let sat_xm5  = abs(@m.x1.xm5.m0[vds]) - abs(@m.x1.xm5.m0[vdsat])
let sat_xm6  = abs(@m.x1.xm6.m0[vds]) - abs(@m.x1.xm6.m0[vdsat])
let sat_xm7  = abs(@m.x1.xm7.m0[vds]) - abs(@m.x1.xm7.m0[vdsat])
let sat_xm8  = abs(@m.x1.xm8.m0[vds]) - abs(@m.x1.xm8.m0[vdsat])
let sat_xm9  = abs(@m.x1.xm9.m0[vds]) - abs(@m.x1.xm9.m0[vdsat])
print sat_xm28 sat_xm33 sat_xm32 sat_xm29
print sat_xm30 sat_xm31 sat_xm34 sat_xm35
print sat_xm11 sat_xm10 sat_xm12
print sat_xm2 sat_xm3 sat_xm4 sat_xm5
print sat_xm6 sat_xm7 sat_xm8 sat_xm9

.endc
"}
C {libs/core_amps/ota_folded_cascode_new/schem/ota_folded_cascode.sym} 40 -30 0 0 {name=x1}

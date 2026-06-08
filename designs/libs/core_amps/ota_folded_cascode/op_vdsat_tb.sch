v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 10 30 10 90 {lab=GND}
N -440 -200 -440 -140 {lab=VDD}
N -560 -200 -560 -140 {lab=GND}
N -560 -80 -560 -30 {lab=GND}
N -440 -80 -440 -30 {lab=GND}
N -440 -30 -440 -20 {lab=GND}
N -560 -140 -560 -80 {lab=GND}
N 30 -230 30 -170 {lab=VDD}
N 60 80 60 100 {lab=#net1}
N 60 160 60 200 {lab=VDD}
N 140 -80 260 -80 {lab=output}
N 210 -80 210 -30 {lab=output}
N 210 30 210 60 {lab=GND}
N -270 100 -270 130 {lab=GND}
N 60 10 60 80 {lab=#net1}
N -270 -140 -110 -140 {lab=#net2}
N -270 -140 -270 10 {lab=#net2}
N -270 10 -110 10 {lab=#net2}
N -270 10 -270 40 {lab=#net2}
C {isource.sym} 60 130 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -440 -200 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} -440 -110 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} -560 -200 0 0 {name=p3 sig_type=std_logic lab=GND}
C {gnd.sym} -560 -30 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -440 -20 0 0 {name=p4 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} 420 -240 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} 30 -230 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 10 90 0 0 {name=p5 sig_type=std_logic lab=GND}
C {capa.sym} 210 0 0 0 {name=CLOAD
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 210 60 0 0 {name=p7 sig_type=std_logic lab=GND}
C {lab_pin.sym} 260 -80 0 1 {name=p8 sig_type=std_logic lab=output}
C {lab_pin.sym} 60 200 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {vsource.sym} -270 70 0 0 {name=VCM value= 1.65 savecurrent=false}
C {lab_pin.sym} -270 130 0 0 {name=p9 sig_type=std_logic lab=GND}
C {code_shown.sym} 420 -100 0 0 {name=Simulation only_toplevel=false 

value=

"
.control
op

let sat_m1  = abs(@m.x1.xm1.m0[vds]) - abs(@m.x1.xm1.m0[vdsat])
let sat_m2  = abs(@m.x1.xm2.m0[vds]) - abs(@m.x1.xm2.m0[vdsat])
let sat_m3  = abs(@m.x1.xm3.m0[vds]) - abs(@m.x1.xm3.m0[vdsat])
let sat_m4  = abs(@m.x1.xm4.m0[vds]) - abs(@m.x1.xm4.m0[vdsat])
let sat_m5  = abs(@m.x1.xm5.m0[vds]) - abs(@m.x1.xm5.m0[vdsat])
let sat_m6  = abs(@m.x1.xm6.m0[vds]) - abs(@m.x1.xm6.m0[vdsat])
let sat_m7  = abs(@m.x1.xm7.m0[vds]) - abs(@m.x1.xm7.m0[vdsat])
let sat_m8  = abs(@m.x1.xm8.m0[vds]) - abs(@m.x1.xm8.m0[vdsat])
let sat_m9  = abs(@m.x1.xm9.m0[vds]) - abs(@m.x1.xm9.m0[vdsat])
let sat_m10 = abs(@m.x1.xm10.m0[vds]) - abs(@m.x1.xm10.m0[vdsat])
let sat_m11 = abs(@m.x1.xm11.m0[vds]) - abs(@m.x1.xm11.m0[vdsat])
let sat_m12 = abs(@m.x1.xm12.m0[vds]) - abs(@m.x1.xm12.m0[vdsat])
let sat_m13 = abs(@m.x1.xm13.m0[vds]) - abs(@m.x1.xm13.m0[vdsat])
let sat_m18 = abs(@m.x1.xm18.m0[vds]) - abs(@m.x1.xm18.m0[vdsat])

print sat_m1 sat_m2 sat_m3 sat_m4 sat_m5
print sat_m6 sat_m7 sat_m8 sat_m9 sat_m10
print sat_m11 sat_m12 sat_m13 sat_m18

.endc

"
}
C {ota_folded_cascode.sym} 120 -100 0 0 {name=x1}

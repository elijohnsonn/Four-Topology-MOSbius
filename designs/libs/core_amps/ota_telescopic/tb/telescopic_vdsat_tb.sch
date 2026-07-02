v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 110 40 110 100 {lab=GND}
N -390 -140 -390 -80 {lab=VDD}
N -510 -140 -510 30 {lab=GND}
N -390 -20 -390 40 {lab=GND}
N 120 -190 120 -80 {lab=VDD}
N 130 190 130 230 {lab=VDD}
N 260 -20 310 -20 {lab=output}
N 260 -20 260 30 {lab=output}
N 260 90 260 120 {lab=GND}
N -110 190 -110 220 {lab=GND}
N 130 40 130 130 {lab=#net1}
N -110 -50 50 -50 {lab=#net2}
N -110 -50 -110 100 {lab=#net2}
N -110 100 -110 130 {lab=#net2}
N 190 -20 260 -20 {lab=output}
N -110 10 50 10 {lab=#net2}
C {isource.sym} 130 160 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -390 -140 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} -390 -50 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} -510 -140 0 0 {name=p3 sig_type=std_logic lab=GND}
C {gnd.sym} -510 30 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -390 40 0 0 {name=p4 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} 470 -180 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} 120 -190 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 110 100 0 0 {name=p5 sig_type=std_logic lab=GND}
C {capa.sym} 260 60 0 0 {name=CLOAD
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 260 120 0 0 {name=p7 sig_type=std_logic lab=GND}
C {lab_pin.sym} 310 -20 0 1 {name=p8 sig_type=std_logic lab=output}
C {lab_pin.sym} 130 230 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {vsource.sym} -110 160 0 0 {name=VCM value= 1.65 savecurrent=false}
C {lab_pin.sym} -110 220 0 0 {name=p9 sig_type=std_logic lab=GND}
C {code_shown.sym} 470 -40 0 0 {name=Simulation only_toplevel=false 

value=

"
.control
op
print v(x1.vbn)
print v(x1.vbp)
let sat_m1  = abs(@m.X1.m.xm1.m0[vds]) - abs(@m.X1.m.xm1.m0[vdsat])
let sat_m2  = abs(@m.x1.m.xm2.m0[vds]) - abs(@m.x1.m.xm2.m0[vdsat])
let sat_m3  = abs(@m.x1.m.xm3.m0[vds]) - abs(@m.x1.m.xm3.m0[vdsat])
let sat_m4  = abs(@m.x1.m.xm4.m0[vds]) - abs(@m.x1.m.xm4.m0[vdsat])
let sat_m5  = abs(@m.x1.m.xm5.m0[vds]) - abs(@m.x1.m.xm5.m0[vdsat])
let sat_m6  = abs(@m.x1.m.xm6.m0[vds]) - abs(@m.x1.m.xm6.m0[vdsat])
let sat_m7  = abs(@m.x1.m.xm7.m0[vds]) - abs(@m.x1.m.xm7.m0[vdsat])
let sat_m8  = abs(@m.x1.m.xm8.m0[vds]) - abs(@m.x1.m.xm8.m0[vdsat])
let sat_m9  = abs(@m.x1.m.xm9.m0[vds]) - abs(@m.x1.m.xm9.m0[vdsat])
let sat_m10 = abs(@m.x1.m.xm10.m0[vds]) - abs(@m.x1.m.xm10.m0[vdsat])

print sat_m1 sat_m2 sat_m3 sat_m4 sat_m5
print sat_m6 sat_m7 sat_m8 sat_m9 sat_m10

.endc

"
}
C {libs/core_amps/ota_telescopic/ota_telescopic schematics/telescopic_cascode.sym} 110 50 0 0 {name=x1}

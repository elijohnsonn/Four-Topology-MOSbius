v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 170 -40 170 20 {lab=GND}
N -280 -270 -280 -210 {lab=VDD}
N -400 -270 -400 -210 {lab=GND}
N -400 -150 -400 -100 {lab=GND}
N -280 -150 -280 -100 {lab=GND}
N -280 -100 -280 -90 {lab=GND}
N -400 -210 -400 -150 {lab=GND}
N 190 -300 190 -240 {lab=VDD}
N 220 10 220 30 {lab=#net1}
N 220 90 220 130 {lab=VDD}
N 300 -150 420 -150 {lab=output}
N 370 -150 370 -100 {lab=output}
N 370 -40 370 -10 {lab=GND}
N -110 30 -110 60 {lab=GND}
N 220 -60 220 10 {lab=#net1}
N -110 -210 50 -210 {lab=#net2}
N -110 -210 -110 -60 {lab=#net2}
N -110 -60 50 -60 {lab=#net2}
N -110 -60 -110 -30 {lab=#net2}
N -440 -200 -440 -140 {lab=VDD}
N -440 -80 -440 -30 {lab=GND}
N -440 -30 -440 -20 {lab=GND}
C {isource.sym} 220 60 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -280 -270 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} -280 -180 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} -400 -270 0 0 {name=p3 sig_type=std_logic lab=GND}
C {gnd.sym} -400 -100 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -280 -90 0 0 {name=p4 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} 580 -310 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} 190 -300 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 170 20 0 0 {name=p5 sig_type=std_logic lab=GND}
C {capa.sym} 370 -70 0 0 {name=CLOAD
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 370 -10 0 0 {name=p7 sig_type=std_logic lab=GND}
C {lab_pin.sym} 420 -150 0 1 {name=p8 sig_type=std_logic lab=output}
C {lab_pin.sym} 220 130 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {vsource.sym} -110 0 0 0 {name=VCM value= 1.65 savecurrent=false}
C {lab_pin.sym} -110 60 0 0 {name=p9 sig_type=std_logic lab=GND}
C {code_shown.sym} 580 -170 0 0 {name=Simulation only_toplevel=false 

value=

"
.control
op

* --- gm/id on every device (target ~10) ---
let gmid_m1  = @m.x1.xm1.m0[gm]/@m.x1.xm1.m0[id]
let gmid_m2  = @m.x1.xm2.m0[gm]/@m.x1.xm2.m0[id]
let gmid_m3  = @m.x1.xm3.m0[gm]/@m.x1.xm3.m0[id]
let gmid_m4  = @m.x1.xm4.m0[gm]/@m.x1.xm4.m0[id]
let gmid_m5  = @m.x1.xm5.m0[gm]/@m.x1.xm5.m0[id]
let gmid_m6  = @m.x1.xm6.m0[gm]/@m.x1.xm6.m0[id]
let gmid_m7  = @m.x1.xm7.m0[gm]/@m.x1.xm7.m0[id]
let gmid_m8  = @m.x1.xm8.m0[gm]/@m.x1.xm8.m0[id]
let gmid_m9  = @m.x1.xm9.m0[gm]/@m.x1.xm9.m0[id]
let gmid_m10 = @m.x1.xm10.m0[gm]/@m.x1.xm10.m0[id]
let gmid_m11 = @m.x1.xm11.m0[gm]/@m.x1.xm11.m0[id]
let gmid_m12 = @m.x1.xm12.m0[gm]/@m.x1.xm12.m0[id]
let gmid_m13 = @m.x1.xm13.m0[gm]/@m.x1.xm13.m0[id]
let gmid_m18 = @m.x1.xm18.m0[gm]/@m.x1.xm18.m0[id]
print gmid_m1 gmid_m2 gmid_m3 gmid_m4 gmid_m5
print gmid_m6 gmid_m7 gmid_m8 gmid_m9 gmid_m10
print gmid_m11 gmid_m12 gmid_m13 gmid_m18

.endc
"}
C {libs/core_amps/ota_folded_cascode/ota_folded_cascode.sym} 280 -170 0 0 {name=x1}
C {lab_pin.sym} -440 -200 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {vsource.sym} -440 -110 0 0 {name=V1 value= 3.3 savecurrent=false}
C {lab_pin.sym} -440 -20 0 0 {name=p11 sig_type=std_logic lab=GND}

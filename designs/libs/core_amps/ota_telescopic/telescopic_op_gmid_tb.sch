v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -620 -240 -620 -180 {lab=GND}
N -1070 -470 -1070 -410 {lab=VDD}
N -1190 -470 -1190 -410 {lab=GND}
N -1190 -350 -1190 -300 {lab=GND}
N -1070 -350 -1070 -300 {lab=GND}
N -1070 -300 -1070 -290 {lab=GND}
N -1190 -410 -1190 -350 {lab=GND}
N -600 -500 -600 -440 {lab=VDD}
N -570 -190 -570 -170 {lab=#net1}
N -570 -110 -570 -70 {lab=VDD}
N -490 -350 -370 -350 {lab=output}
N -420 -350 -420 -300 {lab=output}
N -420 -240 -420 -210 {lab=GND}
N -900 -170 -900 -140 {lab=GND}
N -570 -260 -570 -190 {lab=#net1}
N -900 -410 -740 -410 {lab=#net2}
N -900 -410 -900 -260 {lab=#net2}
N -900 -260 -740 -260 {lab=#net2}
N -900 -260 -900 -230 {lab=#net2}
N -620 -400 -600 -440 {lab=VDD}
N -740 -410 -670 -370 {lab=#net2}
N -740 -260 -670 -330 {lab=#net2}
N -620 -300 -570 -260 {lab=#net1}
N -570 -350 -480 -350 {lab=output}
C {isource.sym} -570 -140 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -1070 -470 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} -1070 -380 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} -1190 -470 0 0 {name=p3 sig_type=std_logic lab=GND}
C {gnd.sym} -1190 -300 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -1070 -290 0 0 {name=p4 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} -210 -510 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} -600 -500 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -620 -180 0 0 {name=p5 sig_type=std_logic lab=GND}
C {capa.sym} -420 -270 0 0 {name=CLOAD
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} -420 -210 0 0 {name=p7 sig_type=std_logic lab=GND}
C {lab_pin.sym} -370 -350 0 1 {name=p8 sig_type=std_logic lab=output}
C {lab_pin.sym} -570 -70 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {vsource.sym} -900 -200 0 0 {name=VCM value= 1.65 savecurrent=false}
C {lab_pin.sym} -900 -140 0 0 {name=p9 sig_type=std_logic lab=GND}
C {code_shown.sym} -210 -370 0 0 {name=Simulation only_toplevel=false 

value=

"
.control
op

* --- gm/id on every device (target ~10) ---
let gmid_m1  = @m.x1.m.xm1.m0[gm]/@m.x1.m.xm1.m0[id]
let gmid_m2  = @m.x1.m.xm2.m0[gm]/@m.x1.m.xm2.m0[id]
let gmid_m3  = @m.x1.m.xm3.m0[gm]/@m.x1.m.xm3.m0[id]
let gmid_m4  = @m.x1.m.xm4.m0[gm]/@m.x1.m.xm4.m0[id]
let gmid_m5  = @m.x1.m.xm5.m0[gm]/@m.x1.m.xm5.m0[id]
let gmid_m6  = @m.x1.m.xm6.m0[gm]/@m.x1.m.xm6.m0[id]
let gmid_m7  = @m.x1.m.xm7.m0[gm]/@m.x1.m.xm7.m0[id]
let gmid_m8  = @m.x1.m.xm8.m0[gm]/@m.x1.m.xm8.m0[id]
let gmid_m9  = @m.x1.m.xm9.m0[gm]/@m.x1.m.xm9.m0[id]
let gmid_m10 = @m.x1.m.xm10.m0[gm]/@m.x1.m.xm10.m0[id]
print gmid_m1 gmid_m2 gmid_m3 gmid_m4 gmid_m5
print gmid_m6 gmid_m7 gmid_m8 gmid_m9 gmid_m10

.endc
"}
C {libs/core_amps/ota_telescopic/telescopic_cascode.sym} -740 -360 0 0 {name=X1}

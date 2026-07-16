v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -680 -320 -680 -260 {lab=GND}
N -1070 -470 -1070 -410 {lab=VDD}
N -1190 -470 -1190 -410 {lab=GND}
N -1190 -350 -1190 -300 {lab=GND}
N -1070 -350 -1070 -300 {lab=GND}
N -1070 -300 -1070 -290 {lab=GND}
N -1190 -410 -1190 -350 {lab=GND}
N -670 -500 -670 -440 {lab=VDD}
N -660 -250 -660 -230 {lab=#net1}
N -660 -170 -660 -130 {lab=VDD}
N -600 -380 -480 -380 {lab=output}
N -530 -380 -530 -330 {lab=output}
N -530 -270 -530 -240 {lab=GND}
N -900 -170 -900 -140 {lab=GND}
N -660 -320 -660 -250 {lab=#net1}
N -900 -410 -740 -410 {lab=#net2}
N -740 -350 -740 -260 {lab=output}
N -900 -410 -900 -230 {lab=#net2}
N -740 -260 -740 -80 {lab=output}
N -740 -80 -580 -80 {lab=output}
N -580 -380 -580 -80 {lab=output}
C {isource.sym} -660 -200 2 0 {name=IBIAS value=100u}
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
C {lab_pin.sym} -670 -500 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -680 -260 0 0 {name=p5 sig_type=std_logic lab=GND}
C {capa.sym} -530 -300 0 0 {name=CLOAD
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} -530 -240 0 0 {name=p7 sig_type=std_logic lab=GND}
C {lab_pin.sym} -480 -380 0 1 {name=p8 sig_type=std_logic lab=output}
C {lab_pin.sym} -660 -130 0 0 {name=p6 sig_type=std_logic lab=VDD}
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
let gmid_m11 = @m.x1.m.xm11.m0[gm]/@m.x1.m.xm11.m0[id]
let gmid_m12 = @m.x1.m.xm12.m0[gm]/@m.x1.m.xm12.m0[id]
let gmid_m13 = @m.x1.m.xm13.m0[gm]/@m.x1.m.xm13.m0[id]
let gmid_m14 = @m.x1.m.xm14.m0[gm]/@m.x1.m.xm14.m0[id]
print gmid_m1 gmid_m2 gmid_m3 gmid_m4 gmid_m5
print gmid_m6 gmid_m7 gmid_m8 gmid_m9 gmid_m10
print gmid_m11 gmid_m12 gmid_m13 gmid_m14
print i(V2)
print @m.x1.m.xm9.m0[id]
print @m.x1.m.xm10.m0[id]
print @m.x1.m.xm11.m0[id]
print @m.x1.m.xm12.m0[id]
print @m.x1.m.xm1.m0[gm]
print @m.x1.m.xm1.m0[gds]
print @m.x1.m.xm2.m0[gm]
print @m.x1.m.xm2.m0[gds]
print @m.x1.m.xm6.m0[gm]
print @m.x1.m.xm6.m0[gds]
print @m.x1.m.xm7.m0[gm]
print @m.x1.m.xm7.m0[gds]

.endc
"}
C {libs/core_amps/ota_telescopic/ota_telescopic schematics/telescopic_cascode.sym} -680 -310 0 0 {name=x1}

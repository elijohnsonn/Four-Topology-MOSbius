v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 90 -270 90 -240 {lab=GND}
N 90 -380 90 -330 {lab=VSS}
N 90 -500 90 -440 {lab=VDD}
N 263.359375 -378.125 263.359375 -328.125 {lab=VDD}
N 170 -380 170 -330 {lab=VSS}
N 170 -500 170 -440 {lab=vin}
N 390 -340 430 -340 {lab=vout}
N 390 -340 390 -260 {lab=vout}
N 620 -360 730 -360 {lab=vout}
N 650 -360 650 -320 {lab=vout}
N 650 -260 650 -220 {lab=GND}
N 570 -360 620 -360 {lab=vout}
N 350 -380 430 -380 {lab=vin}
N 313.359375 -320 430 -320 {lab=i_bias}
N 263.359375 -460 263.359375 -438.125 {lab=i_bias}
N 263.359375 -460 290 -460 {lab=i_bias}
N 500.0390625 -300 500.0390625 -276.25 {lab=VSS}
N 467.5 -276.25 500.0390625 -276.25 {lab=VSS}
N 590 -360 590 -260 {lab=vout}
N 390 -260 590 -260 {lab=vout}
C {devices/code_shown.sym} 20 -950 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {title.sym} 190 -70 0 0 {name=l1 author="Songhang Li"}
C {devices/vsource.sym} 90 -300 0 0 {name=V1 value=0 savecurrent=false}
C {devices/gnd.sym} 90 -240 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 90 -410 0 0 {name=V2 value=3.3 savecurrent=false}
C {devices/lab_wire.sym} 90 -350 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 90 -470 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/isource.sym} 263.359375 -408.125 2 0 {name=I0 value=100u}
C {devices/lab_wire.sym} 263.359375 -338.125 3 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 170 -410 0 0 {name=vin value=1.5 savecurrent=false}
C {devices/lab_wire.sym} 170 -350 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 170 -470 0 0 {name=p8 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 370 -380 0 0 {name=p9 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 720 -360 0 0 {name=p1 sig_type=std_logic lab=vout}
C {devices/lab_wire.sym} 500 -420 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 650 -220 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} 1240 -1310 0 0 {name=Simulation only_toplevel=false value="
.control
op
show all

show m.x1.xm1.m0 m.x1.xm2.m0 m.x1.xm3.m0 m.x1.xm4.m0 m.x1.xm5.m0 m.x1.xm6.m0 : gm id vdsat vds

print @m.x1.xm4.m0[gm]
let gm4 = @m.x1.xm4.m0[gm]
let id4 = @m.x1.xm4.m0[id]
print gm4/id4
print @m.x1.xm4.m0[id]

let gm1 = @m.x1.xm1.m0[gm]
let id1 = @m.x1.xm1.m0[id]
print gm1/id1

let gm2 = @m.x1.xm2.m0[gm]
let id2 = @m.x1.xm2.m0[id]
print gm2/id2

let gm3 = @m.x1.xm3.m0[gm]
let id3 = @m.x1.xm3.m0[id]
print gm3/id3

let gm4 = @m.x1.xm1.m0[gm]
let id4 = @m.x1.xm1.m0[id]
print gm4/id4

let gm5 = @m.x1.xm1.m0[gm]
let id5 = @m.x1.xm1.m0[id]
print gm5/id5

let gm6 = @m.x1.xm1.m0[gm]
let id6 = @m.x1.xm1.m0[id]
print gm6/id6

let vsat1 = @m.x1.xm1.m0[vdsat]
print vsat1

let vsat2 = @m.x1.xm2.m0[vdsat]
print vsat2

let vsat3 = @m.x1.xm3.m0[vdsat]
print vsat3

let vsat4 = @m.x1.xm4.m0[vdsat]
print vsat4

let vsat5 = @m.x1.xm5.m0[vdsat]
print vsat5

let vsat6 = @m.x1.xm6.m0[vdsat]
print vsat6

print v(vout)

*DC Unity
dc vin 0 4 0.001
let gain = deriv(v(vout))
meas dc icmr_low when gain = 0.95 rise = 1
meas dc icmr_high when gain = 0.95 fall = 1
let swing_low = icmr_low
let swing_high = icmr_high
print icmr_low icmr_high
print swing_high - swing_low
plot v(vout) gain

.endc
"}
C {devices/lab_wire.sym} 340 -320 0 0 {name=p10 sig_type=std_logic lab=i_bias}
C {devices/lab_wire.sym} 280 -460 0 0 {name=p11 sig_type=std_logic lab=i_bias}
C {devices/lab_wire.sym} 468.75 -276.25 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {capa.sym} 650 -290 0 0 {name=C2
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {libs/core_amps/ota_5t/5tOTA.sym} 500 -360 0 0 {name=x1}

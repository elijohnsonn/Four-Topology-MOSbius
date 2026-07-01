v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 4 20 -600 830 -150 {fill=0}
T {Amplifier Performance} 210 -570 0 0 0.8 0.8 {}
T {
Targeting gm/id of ~10 V⁻¹ across all devices

Signal Path:
  Input pair (XM1/XM2): 10.2 / 10.0 V⁻¹
  PMOS active load (XM3/XM4): 9.4 / 9.3 V⁻¹
  Tail current source (XM5): 10.0 V⁻¹

Bias devices:
  Reference diode (XM6): ~10.0 V⁻¹ (1:1 mirror with XM5)} 60 -500 0 0 0.5 0.5 {}
N 130 -700 130 -670 {lab=GND}
N 130 -810 130 -760 {lab=VSS}
N 130 -930 130 -870 {lab=VDD}
N 303.359375 -808.125 303.359375 -758.125 {lab=VDD}
N 210 -810 210 -760 {lab=VSS}
N 210 -930 210 -870 {lab=vin}
N 430 -770 470 -770 {lab=vout}
N 430 -770 430 -690 {lab=vout}
N 660 -790 770 -790 {lab=vout}
N 690 -790 690 -750 {lab=vout}
N 690 -690 690 -650 {lab=GND}
N 610 -790 660 -790 {lab=vout}
N 390 -810 470 -810 {lab=vin}
N 353.359375 -750 470 -750 {lab=i_bias}
N 303.359375 -890 303.359375 -868.125 {lab=i_bias}
N 303.359375 -890 330 -890 {lab=i_bias}
N 540.0390625 -730 540.0390625 -706.25 {lab=VSS}
N 507.5 -706.25 540.0390625 -706.25 {lab=VSS}
N 630 -790 630 -690 {lab=vout}
N 430 -690 630 -690 {lab=vout}
C {devices/code_shown.sym} 860 -790 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {title.sym} 190 -70 0 0 {name=l1 author="Songhang Li"}
C {devices/vsource.sym} 130 -730 0 0 {name=V1 value=0 savecurrent=false}
C {devices/gnd.sym} 130 -670 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 130 -840 0 0 {name=V2 value=3.3 savecurrent=false}
C {devices/lab_wire.sym} 130 -780 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 130 -900 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/isource.sym} 303.359375 -838.125 2 0 {name=I0 value=100u}
C {devices/lab_wire.sym} 303.359375 -768.125 3 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 210 -840 0 0 {name=vin value=1.5 savecurrent=false}
C {devices/lab_wire.sym} 210 -780 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 210 -900 0 0 {name=p8 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 410 -810 0 0 {name=p9 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 760 -790 0 0 {name=p1 sig_type=std_logic lab=vout}
C {devices/lab_wire.sym} 540 -850 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 690 -650 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} 870 -650 0 0 {name=Simulation only_toplevel=false value="
.control

op
let gmid_xm1  = @m.x1.xm1.m0[gm]/@m.x1.xm1.m0[id]
let gmid_xm2  = @m.x1.xm2.m0[gm]/@m.x1.xm2.m0[id]
let gmid_xm3  = @m.x1.xm3.m0[gm]/@m.x1.xm3.m0[id]
let gmid_xm4  = @m.x1.xm4.m0[gm]/@m.x1.xm4.m0[id]
let gmid_xm5  = @m.x1.xm5.m0[gm]/@m.x1.xm5.m0[id]
let gmid_xm6  = @m.x1.xm6.m0[gm]/@m.x1.xm6.m0[id]

print gmid_xm1 gmid_xm2 gmid_xm3 gmid_xm4 gmid_xm5

.endc
"}
C {devices/lab_wire.sym} 380 -750 0 0 {name=p10 sig_type=std_logic lab=i_bias}
C {devices/lab_wire.sym} 320 -890 0 0 {name=p11 sig_type=std_logic lab=i_bias}
C {devices/lab_wire.sym} 508.75 -706.25 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {capa.sym} 690 -720 0 0 {name=C2
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {libs/core_amps/ota_5t/schem/5tOTA.sym} 540 -790 0 0 {name=x1}

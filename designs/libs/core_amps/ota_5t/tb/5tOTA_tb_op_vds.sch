v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 4 60 -640 750 -140 {fill=0
}
T {Amplifier Performance} 190 -610 0 0 0.8 0.8 {}
T {Measuring Vds - Vdsat (Saturation Margin)

Signal Path:
  Input Pair (XM1): 1.67V
  Input Pair (XM2): 0.83V
  PMOS (XM3): 0.78V
  PMOS (XM4): 1.61V
  Tail Current Source (XM5): 0.34V

Bias Device:
  Reference Diode (XM6): 0.68V.} 130 -510 0 0 0.5 0.5 {}
N 120 -770 120 -740 {lab=GND}
N 120 -880 120 -830 {lab=VSS}
N 120 -1000 120 -940 {lab=VDD}
N 293.359375 -878.125 293.359375 -828.125 {lab=VDD}
N 200 -880 200 -830 {lab=VSS}
N 200 -1000 200 -940 {lab=vin}
N 420 -840 460 -840 {lab=vout}
N 420 -840 420 -760 {lab=vout}
N 650 -860 760 -860 {lab=vout}
N 680 -860 680 -820 {lab=vout}
N 680 -760 680 -720 {lab=GND}
N 600 -860 650 -860 {lab=vout}
N 380 -880 460 -880 {lab=vin}
N 343.359375 -820 460 -820 {lab=i_bias}
N 293.359375 -960 293.359375 -938.125 {lab=i_bias}
N 293.359375 -960 320 -960 {lab=i_bias}
N 530.0390625 -800 530.0390625 -776.25 {lab=VSS}
N 497.5 -776.25 530.0390625 -776.25 {lab=VSS}
N 620 -860 620 -760 {lab=vout}
N 420 -760 620 -760 {lab=vout}
C {devices/code_shown.sym} 820 -980 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {title.sym} 190 -70 0 0 {name=l1 author="Songhang Li"}
C {devices/vsource.sym} 120 -800 0 0 {name=V1 value=0 savecurrent=false}
C {devices/gnd.sym} 120 -740 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 120 -910 0 0 {name=V2 value=3.3 savecurrent=false}
C {devices/lab_wire.sym} 120 -850 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 120 -970 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/isource.sym} 293.359375 -908.125 2 0 {name=I0 value=100u}
C {devices/lab_wire.sym} 293.359375 -838.125 3 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 200 -910 0 0 {name=vin value=1.5 savecurrent=false}
C {devices/lab_wire.sym} 200 -850 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 200 -970 0 0 {name=p8 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 400 -880 0 0 {name=p9 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 750 -860 0 0 {name=p1 sig_type=std_logic lab=vout}
C {devices/lab_wire.sym} 530 -920 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 680 -720 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} 820 -840 0 0 {name=Simulation only_toplevel=false value="
.control

op
let sat_xm1  = abs(@m.x1.xm1.m0[vds]) - abs(@m.x1.xm1.m0[vdsat])
let sat_xm2  = abs(@m.x1.xm2.m0[vds]) - abs(@m.x1.xm2.m0[vdsat])
let sat_xm3  = abs(@m.x1.xm3.m0[vds]) - abs(@m.x1.xm3.m0[vdsat])
let sat_xm4  = abs(@m.x1.xm4.m0[vds]) - abs(@m.x1.xm4.m0[vdsat])
let sat_xm5  = abs(@m.x1.xm5.m0[vds]) - abs(@m.x1.xm5.m0[vdsat])

*Biasing
let sat_xm6  = abs(@m.x1.xm6.m0[vds]) - abs(@m.x1.xm6.m0[vdsat])


print sat_xm1 sat_xm2 sat_xm3 sat_xm4 sat_xm5 sat_xm6
 
.endc
"}
C {devices/lab_wire.sym} 370 -820 0 0 {name=p10 sig_type=std_logic lab=i_bias}
C {devices/lab_wire.sym} 310 -960 0 0 {name=p11 sig_type=std_logic lab=i_bias}
C {devices/lab_wire.sym} 498.75 -776.25 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {capa.sym} 680 -790 0 0 {name=C2
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {core_amps/ota_5t/5tOTA.sym} 530 -860 0 0 {name=x1}

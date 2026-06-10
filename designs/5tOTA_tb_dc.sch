v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 590 -260 590 -230 {lab=GND}
N 590 -370 590 -320 {lab=VSS}
N 590 -490 590 -430 {lab=VDD}
N 763.359375 -368.125 763.359375 -318.125 {lab=VDD}
N 670 -370 670 -320 {lab=VSS}
N 670 -490 670 -430 {lab=vin}
N 890 -330 930 -330 {lab=#net1}
N 890 -330 890 -250 {lab=#net1}
N 1120 -350 1230 -350 {lab=vout}
N 1150 -350 1150 -310 {lab=vout}
N 1150 -250 1150 -210 {lab=GND}
N 1070 -350 1120 -350 {lab=vout}
N 850 -370 930 -370 {lab=vin}
N 813.359375 -310 930 -310 {lab=i_bias}
N 763.359375 -450 763.359375 -428.125 {lab=i_bias}
N 763.359375 -450 790 -450 {lab=i_bias}
N 1000.0390625 -290 1000.0390625 -266.25 {lab=VSS}
N 967.5 -266.25 1000.0390625 -266.25 {lab=VSS}
N 1090 -350 1090 -250 {lab=vout}
C {5tOTA.sym} 1000 -350 0 0 {name=x1}
C {devices/code_shown.sym} 20 -630 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {title.sym} 190 -70 0 0 {name=l1 author="Songhang Li"}
C {devices/vsource.sym} 590 -290 0 0 {name=V1 value=0 savecurrent=false}
C {devices/gnd.sym} 590 -230 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 590 -400 0 0 {name=V2 value=3.3 savecurrent=false}
C {devices/lab_wire.sym} 590 -340 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 590 -460 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/isource.sym} 763.359375 -398.125 2 0 {name=I0 value=100u}
C {devices/lab_wire.sym} 763.359375 -328.125 3 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 670 -400 0 0 {name=vin value=1.5 savecurrent=false}
C {devices/lab_wire.sym} 670 -340 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 670 -460 0 0 {name=p8 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 870 -370 0 0 {name=p9 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 1220 -350 0 0 {name=p1 sig_type=std_logic lab=vout}
C {devices/lab_wire.sym} 1000 -410 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 1150 -210 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} 30 -490 0 0 {name=Simulation only_toplevel=false value="
.control

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
C {devices/lab_wire.sym} 840 -310 0 0 {name=p10 sig_type=std_logic lab=i_bias}
C {devices/lab_wire.sym} 780 -450 0 0 {name=p11 sig_type=std_logic lab=i_bias}
C {devices/lab_wire.sym} 968.75 -266.25 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {capa.sym} 1150 -280 0 0 {name=C2
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 890 -260 0 0 {name=p12 sig_type=std_logic lab=vin}

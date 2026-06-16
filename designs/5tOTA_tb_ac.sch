v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 520 -375 520 -345 {lab=GND}
N 520 -485 520 -435 {lab=VSS}
N 520 -605 520 -545 {lab=VDD}
N 693.359375 -483.125 693.359375 -433.125 {lab=VDD}
N 600 -485 600 -435 {lab=VSS}
N 600 -605 600 -545 {lab=vin}
N 820 -445 860 -445 {lab=#net1}
N 820 -445 820 -365 {lab=#net1}
N 1080 -465 1080 -425 {lab=vout}
N 1080 -365 1080 -325 {lab=GND}
N 1000 -465 1050 -465 {lab=vout}
N 780 -485 860 -485 {lab=vin}
N 743.359375 -425 860 -425 {lab=i_bias}
N 693.359375 -565 693.359375 -543.125 {lab=i_bias}
N 693.359375 -565 720 -565 {lab=i_bias}
N 930.0390625 -405 930.0390625 -381.25 {lab=VSS}
N 897.5 -381.25 930.0390625 -381.25 {lab=VSS}
N 1050 -465 1260 -465 {lab=vout}
N 1170 -265 1210 -265 {lab=vout}
N 1210 -465 1210 -265 {lab=vout}
N 820 -215 820 -190 {lab=GND}
N 1130 -215 1130 -195 {lab=GND}
N 1170 -225 1170 -205 {lab=GND}
N 1130 -205 1170 -205 {lab=GND}
N 820 -275 910 -275 {lab=#net1}
N 970 -275 1130 -275 {lab=#net2}
N 820 -365 820 -275 {lab=#net1}
C {5tOTA.sym} 930 -465 0 0 {name=x1}
C {devices/code_shown.sym} 80 -720 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {title.sym} 190 -70 0 0 {name=l1 author="Songhang Li"}
C {devices/vsource.sym} 520 -405 0 0 {name=V1 value=0 savecurrent=false}
C {devices/gnd.sym} 520 -345 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 520 -515 0 0 {name=V2 value=3.3 savecurrent=false}
C {devices/lab_wire.sym} 520 -455 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 520 -575 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/isource.sym} 693.359375 -513.125 2 0 {name=I0 value=100u}
C {devices/lab_wire.sym} 693.359375 -443.125 3 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 600 -515 0 0 {name=vin value="DC 1.5 AC 1" savecurrent=false}
C {devices/lab_wire.sym} 600 -455 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 600 -575 0 0 {name=p8 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 800 -485 0 0 {name=p9 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 1190 -465 0 0 {name=p1 sig_type=std_logic lab=vout}
C {devices/lab_wire.sym} 930 -525 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 1080 -325 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} 80 -580 0 0 {name=Simulation only_toplevel=false value="
.control

* AC Unity
ac dec 100 1 1G
*meas ac cl_bw when vdb(vout) = -3
*meas ac cl_peak max vdb(vout)
*print cl_bw cl_peak
*plot vdb(vout)

* AC open loop
plot vdb(vout) ph(v(vout))*180/3.14159
meas ac dc_gain find vdb(vout) at=100
let bw_level = dc_gain - 3
meas ac bw when vdb(vout) = bw_level fall=1


.endc
"}
C {devices/lab_wire.sym} 770 -425 0 0 {name=p10 sig_type=std_logic lab=i_bias}
C {devices/lab_wire.sym} 710 -565 0 0 {name=p11 sig_type=std_logic lab=i_bias}
C {devices/lab_wire.sym} 898.75 -381.25 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {capa.sym} 1080 -395 0 0 {name=C2
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {ind.sym} 940 -275 1 0 {name=L4
m=1
value=1
footprint=1206
device=inductor}
C {vcvs.sym} 1130 -245 0 1 {name=E1 value=1}
C {capa.sym} 820 -245 0 0 {name=C1
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 820 -190 0 0 {name=l5 lab=GND}
C {gnd.sym} 1130 -195 0 0 {name=l6 lab=GND}

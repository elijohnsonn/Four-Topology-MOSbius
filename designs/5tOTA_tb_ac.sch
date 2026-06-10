v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 640 -280 640 -250 {lab=GND}
N 640 -390 640 -340 {lab=VSS}
N 640 -510 640 -450 {lab=VDD}
N 813.359375 -388.125 813.359375 -338.125 {lab=VDD}
N 720 -390 720 -340 {lab=VSS}
N 720 -510 720 -450 {lab=vin}
N 940 -350 980 -350 {lab=vin}
N 940 -350 940 -270 {lab=vin}
N 1170 -370 1280 -370 {lab=vout}
N 1200 -370 1200 -330 {lab=vout}
N 1200 -270 1200 -230 {lab=GND}
N 1120 -370 1170 -370 {lab=vout}
N 900 -390 980 -390 {lab=vin}
N 863.359375 -330 980 -330 {lab=i_bias}
N 813.359375 -470 813.359375 -448.125 {lab=i_bias}
N 813.359375 -470 840 -470 {lab=i_bias}
N 1050.0390625 -310 1050.0390625 -286.25 {lab=VSS}
N 1017.5 -286.25 1050.0390625 -286.25 {lab=VSS}
C {5tOTA.sym} 1050 -370 0 0 {name=x1}
C {devices/code_shown.sym} 120 -710 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {title.sym} 190 -70 0 0 {name=l1 author="Songhang Li"}
C {devices/vsource.sym} 640 -310 0 0 {name=V1 value=0 savecurrent=false}
C {devices/gnd.sym} 640 -250 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 640 -420 0 0 {name=V2 value=3.3 savecurrent=false}
C {devices/lab_wire.sym} 640 -360 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 640 -480 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/isource.sym} 813.359375 -418.125 2 0 {name=I0 value=100u}
C {devices/lab_wire.sym} 813.359375 -348.125 3 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 720 -420 0 0 {name=vin value="DC 1.5 AC 1" savecurrent=false}
C {devices/lab_wire.sym} 720 -360 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 720 -480 0 0 {name=p8 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 920 -390 0 0 {name=p9 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 1270 -370 0 0 {name=p1 sig_type=std_logic lab=vout}
C {devices/lab_wire.sym} 1050 -430 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 1200 -230 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} 80 -580 0 0 {name=Simulation only_toplevel=false value="
.control

print v(vout)

* AC

* AC Unity
*ac dec 100 1 1G
*meas ac cl_bw when vdb(vout) = -3
*meas ac cl_peak max vdb(vout)
*print cl_bw cl_peak
*plot vdb(vout)

* AC open loop
plot vdb(vout) ph(vout)j*180/3.14159
meas ac dc_gain find vdb(vout) at-100
let bw_level = dc_gain - 3
meas ac bw when vdb(vout) = bw level fall=1


.endc
"}
C {devices/lab_wire.sym} 890 -330 0 0 {name=p10 sig_type=std_logic lab=i_bias}
C {devices/lab_wire.sym} 830 -470 0 0 {name=p11 sig_type=std_logic lab=i_bias}
C {devices/lab_wire.sym} 1018.75 -286.25 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {capa.sym} 1200 -300 0 0 {name=C2
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {devices/lab_wire.sym} 940 -280 0 0 {name=p12 sig_type=std_logic lab=vin}

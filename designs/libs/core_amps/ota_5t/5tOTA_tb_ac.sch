v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 4 30 -680 800 -260 {fill=0
}
T {Amplifier Performance} 180 -630 0 0 0.8 0.8 {}
T {-Driving Ideal 100 pF load capacitance

DC Gain: 39.8 dB
3-dB BW: 24.2 kHz
GBW: 2.4 MHz
PM: ~90.0 Degrees} 120 -520 0 0 0.5 0.5 {}
N 115 -900 115 -870 {lab=GND}
N 115 -1010 115 -960 {lab=VSS}
N 115 -1130 115 -1070 {lab=VDD}
N 198.359375 -838.125 198.359375 -788.125 {lab=VDD}
N 195 -1010 195 -960 {lab=VSS}
N 195 -1130 195 -1070 {lab=vin}
N 380 -1050 420 -1050 {lab=#net1}
N 380 -1050 380 -970 {lab=#net1}
N 640 -1070 640 -1030 {lab=vout}
N 640 -970 640 -930 {lab=GND}
N 560 -1070 610 -1070 {lab=vout}
N 340 -1090 420 -1090 {lab=vin}
N 198.359375 -920 198.359375 -898.125 {lab=i_bias}
N 198.359375 -920 225 -920 {lab=i_bias}
N 490.0390625 -1010 490.0390625 -986.25 {lab=VSS}
N 457.5 -986.25 490.0390625 -986.25 {lab=VSS}
N 610 -1070 820 -1070 {lab=vout}
N 730 -870 770 -870 {lab=vout}
N 770 -1070 770 -870 {lab=vout}
N 380 -820 380 -795 {lab=GND}
N 690 -820 690 -800 {lab=GND}
N 730 -830 730 -810 {lab=GND}
N 690 -810 730 -810 {lab=GND}
N 380 -880 470 -880 {lab=#net1}
N 530 -880 690 -880 {lab=#net2}
N 380 -970 380 -880 {lab=#net1}
N 400 -1030 419.84375 -1030 {lab=i_bias}
C {devices/code_shown.sym} 875 -1110 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {title.sym} 190 -70 0 0 {name=l1 author="Songhang Li"}
C {devices/vsource.sym} 115 -930 0 0 {name=V1 value=0 savecurrent=false}
C {devices/gnd.sym} 115 -870 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 115 -1040 0 0 {name=V2 value=3.3 savecurrent=false}
C {devices/lab_wire.sym} 115 -980 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 115 -1100 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/isource.sym} 198.359375 -868.125 2 0 {name=I0 value=100u}
C {devices/lab_wire.sym} 198.359375 -798.125 3 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 195 -1040 0 0 {name=vin value="DC 1.5 AC 1" savecurrent=false}
C {devices/lab_wire.sym} 195 -980 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 195 -1100 0 0 {name=p8 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 360 -1090 0 0 {name=p9 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 750 -1070 0 0 {name=p1 sig_type=std_logic lab=vout}
C {devices/lab_wire.sym} 490 -1130 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 640 -930 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} 875 -970 0 0 {name=Simulation only_toplevel=false value="
.control


ac dec 100 1 1G
*meas ac cl_bw when vdb(vout) = -3
*meas ac cl_peak max vdb(vout)
*print cl_bw cl_peak

* AC open loop
plot vdb(vout) ph(v(vout))*180/3.14159
meas ac dc_gain find vdb(vout) at=100
let bw_level = dc_gain - 3
meas ac bw when vdb(vout) = bw_level fall=1


.endc
"}
C {devices/lab_wire.sym} 405 -1030 3 0 {name=p10 sig_type=std_logic lab=i_bias}
C {devices/lab_wire.sym} 215 -920 0 0 {name=p11 sig_type=std_logic lab=i_bias}
C {devices/lab_wire.sym} 458.75 -986.25 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {capa.sym} 640 -1000 0 0 {name=C2
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {ind.sym} 500 -880 1 0 {name=L4
m=1
value=1
footprint=1206
device=inductor}
C {vcvs.sym} 690 -850 0 1 {name=E1 value=1}
C {capa.sym} 380 -850 0 0 {name=C1
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 380 -795 0 0 {name=l5 lab=GND}
C {gnd.sym} 690 -800 0 0 {name=l6 lab=GND}
C {libs/core_amps/ota_5t/5tOTA.sym} 490 -1070 0 0 {name=x1}

v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 4 50 -490 740 -130 {fill=0
}
T {Amplifier Performance} 180 -460 0 0 0.8 0.8 {}
T {-Driving Ideal 100 pF load capacitance

DC Gain: 39.8 dB
3-dB BW: 24.2 kHz
GBW: 2.4 MHz
PM: ~90.0 Degrees} 120 -350 0 0 0.5 0.5 {}
N 115 -730 115 -700 {lab=GND}
N 115 -840 115 -790 {lab=VSS}
N 115 -960 115 -900 {lab=VDD}
N 198.359375 -668.125 198.359375 -618.125 {lab=VDD}
N 195 -840 195 -790 {lab=VSS}
N 195 -960 195 -900 {lab=vin}
N 380 -880 420 -880 {lab=#net1}
N 380 -880 380 -800 {lab=#net1}
N 640 -900 640 -860 {lab=vout}
N 640 -800 640 -760 {lab=GND}
N 560 -900 610 -900 {lab=vout}
N 340 -920 420 -920 {lab=vin}
N 198.359375 -750 198.359375 -728.125 {lab=i_bias}
N 198.359375 -750 225 -750 {lab=i_bias}
N 490.0390625 -840 490.0390625 -816.25 {lab=VSS}
N 457.5 -816.25 490.0390625 -816.25 {lab=VSS}
N 610 -900 820 -900 {lab=vout}
N 730 -700 770 -700 {lab=vout}
N 770 -900 770 -700 {lab=vout}
N 380 -650 380 -625 {lab=GND}
N 690 -650 690 -630 {lab=GND}
N 730 -660 730 -640 {lab=GND}
N 690 -640 730 -640 {lab=GND}
N 380 -710 470 -710 {lab=#net1}
N 530 -710 690 -710 {lab=#net2}
N 380 -800 380 -710 {lab=#net1}
N 400 -860 419.84375 -860 {lab=i_bias}
C {devices/code_shown.sym} 875 -940 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {title.sym} 190 -70 0 0 {name=l1 author="Songhang Li"}
C {devices/vsource.sym} 115 -760 0 0 {name=V1 value=0 savecurrent=false}
C {devices/gnd.sym} 115 -700 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 115 -870 0 0 {name=V2 value=3.3 savecurrent=false}
C {devices/lab_wire.sym} 115 -810 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 115 -930 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/isource.sym} 198.359375 -698.125 2 0 {name=I0 value=100u}
C {devices/lab_wire.sym} 198.359375 -628.125 3 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 195 -870 0 0 {name=vin value="DC 1.5 AC 1" savecurrent=false}
C {devices/lab_wire.sym} 195 -810 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 195 -930 0 0 {name=p8 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 360 -920 0 0 {name=p9 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 750 -900 0 0 {name=p1 sig_type=std_logic lab=vout}
C {devices/lab_wire.sym} 490 -960 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 640 -760 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} 875 -800 0 0 {name=Simulation only_toplevel=false value="
.control
set color0 = white
set color1 = black

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
C {devices/lab_wire.sym} 405 -860 3 0 {name=p10 sig_type=std_logic lab=i_bias}
C {devices/lab_wire.sym} 215 -750 0 0 {name=p11 sig_type=std_logic lab=i_bias}
C {devices/lab_wire.sym} 458.75 -816.25 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {capa.sym} 640 -830 0 0 {name=C2
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {ind.sym} 500 -710 1 0 {name=L4
m=1
value=1
footprint=1206
device=inductor}
C {vcvs.sym} 690 -680 0 1 {name=E1 value=1}
C {capa.sym} 380 -680 0 0 {name=C1
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 380 -625 0 0 {name=l5 lab=GND}
C {gnd.sym} 690 -630 0 0 {name=l6 lab=GND}
C {libs/core_amps/ota_5t/schem/5tOTA.sym} 490 -900 0 0 {name=x1}

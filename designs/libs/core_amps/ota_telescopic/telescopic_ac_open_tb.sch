v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 -1210 -930 {}
N -1180 -530 -1180 -470 {lab=GND}
N -1600 -680 -1600 -620 {lab=VDD}
N -1720 -680 -1720 -620 {lab=GND}
N -1720 -560 -1720 -510 {lab=GND}
N -1600 -560 -1600 -510 {lab=GND}
N -1600 -510 -1600 -500 {lab=GND}
N -1720 -620 -1720 -560 {lab=GND}
N -1160 -790 -1160 -730 {lab=VDD}
N -1130 -480 -1130 -460 {lab=#net1}
N -1130 -400 -1130 -360 {lab=VDD}
N -1050 -640 -930 -640 {lab=output}
N -980 -640 -980 -590 {lab=output}
N -980 -530 -980 -500 {lab=GND}
N -1370 -700 -1300 -700 {lab=#net2}
N -1460 -610 -1460 -570 {lab=#net3}
N -1370 -470 -1370 -430 {lab=#net4}
N -1460 -330 -1460 -300 {lab=GND}
N -1130 -550 -1130 -480 {lab=#net1}
N -1370 -550 -1300 -550 {lab=#net4}
N -1370 -550 -1370 -530 {lab=#net4}
N -1460 -700 -1370 -700 {lab=#net2}
N -1460 -700 -1460 -670 {lab=#net2}
N -1460 -570 -1460 -430 {lab=#net3}
N -1370 -530 -1370 -470 {lab=#net4}
N -1460 -430 -1460 -390 {lab=#net3}
N -1370 -430 -1370 -300 {lab=#net4}
N -1370 -300 -1230 -300 {lab=#net4}
N -1370 -240 -1370 -210 {lab=GND}
N -1170 -300 -1050 -300 {lab=#net5}
N -1050 -300 -1050 -260 {lab=#net5}
N -1050 -200 -1050 -160 {lab=GND}
N -1050 -180 -1010 -180 {lab=GND}
N -1010 -210 -1010 -180 {lab=GND}
N -930 -640 -840 -640 {lab=output}
N -1010 -250 -880 -250 {lab=output}
N -880 -640 -880 -250 {lab=output}
N -1180 -690 -1160 -730 {lab=VDD}
N -1300 -700 -1230 -660 {lab=#net2}
N -1300 -550 -1230 -620 {lab=#net4}
N -1180 -590 -1130 -550 {lab=#net1}
N -1130 -640 -1040 -640 {lab=output}
C {isource.sym} -1130 -430 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -1600 -680 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} -1600 -590 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} -1720 -680 0 0 {name=p3 sig_type=std_logic lab=GND}
C {gnd.sym} -1720 -510 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -1600 -500 0 0 {name=p4 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} -660 -660 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} -660 -550 0 0 {name=Simulation only_toplevel=false 

value=

"
.control
ac dec 100 1 1G

plot vdb(output) ph(v(output))*180/3.14159

meas ac dc_gain find vdb(output) at=100
let bw_level = dc_gain - 3
meas ac bw when vdb(output) = bw_level fall=1

.endc

"}
C {lab_pin.sym} -1160 -790 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -1180 -470 0 0 {name=p5 sig_type=std_logic lab=GND}
C {capa.sym} -980 -560 0 0 {name=CLOAD
m=1
value=270p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} -980 -500 0 0 {name=p7 sig_type=std_logic lab=GND}
C {lab_pin.sym} -840 -640 0 1 {name=p8 sig_type=std_logic lab=output}
C {lab_pin.sym} -1130 -360 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {vsource.sym} -1460 -640 0 0 {name=VINP value= AC 1 savecurrent=false}
C {vsource.sym} -1460 -360 0 0 {name=VCM value= 1.65 savecurrent=false}
C {lab_pin.sym} -1460 -300 0 0 {name=p9 sig_type=std_logic lab=GND}
C {ind.sym} -1200 -300 1 0 {name=L2
m=1
value=1
footprint=1206
device=inductor}
C {capa.sym} -1370 -270 0 0 {name=CLOAD1
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} -1370 -210 0 0 {name=p11 sig_type=std_logic lab=GND}
C {vcvs.sym} -1050 -230 0 1 {name=E1 value=1}
C {lab_pin.sym} -1050 -160 0 0 {name=p10 sig_type=std_logic lab=GND}
C {libs/core_amps/ota_telescopic/telescopic_cascode.sym} -1300 -650 0 0 {name=X1}

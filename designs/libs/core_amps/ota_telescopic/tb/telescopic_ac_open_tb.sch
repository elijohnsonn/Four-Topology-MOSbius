v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 -1210 -930 {}
N -1250 -590 -1250 -530 {lab=GND}
N -1600 -680 -1600 -620 {lab=VDD}
N -1720 -680 -1720 -620 {lab=GND}
N -1720 -560 -1720 -510 {lab=GND}
N -1600 -560 -1600 -510 {lab=GND}
N -1600 -510 -1600 -500 {lab=GND}
N -1720 -620 -1720 -560 {lab=GND}
N -1240 -770 -1240 -710 {lab=VDD}
N -1230 -520 -1230 -500 {lab=#net1}
N -1230 -440 -1230 -400 {lab=VDD}
N -1080 -650 -960 -650 {lab=output}
N -1010 -650 -1010 -600 {lab=output}
N -1010 -540 -1010 -510 {lab=GND}
N -1470 -590 -1470 -550 {lab=#net2}
N -1370 -470 -1370 -430 {lab=#net3}
N -1470 -310 -1470 -280 {lab=GND}
N -1230 -590 -1230 -520 {lab=#net1}
N -1370 -550 -1370 -530 {lab=#net3}
N -1470 -680 -1380 -680 {lab=#net4}
N -1470 -680 -1470 -650 {lab=#net4}
N -1470 -550 -1470 -410 {lab=#net2}
N -1370 -530 -1370 -470 {lab=#net3}
N -1470 -410 -1470 -370 {lab=#net2}
N -1370 -430 -1370 -300 {lab=#net3}
N -1370 -300 -1230 -300 {lab=#net3}
N -1370 -240 -1370 -210 {lab=GND}
N -1170 -300 -1050 -300 {lab=#net5}
N -1050 -300 -1050 -260 {lab=#net5}
N -1050 -200 -1050 -160 {lab=GND}
N -1050 -180 -1010 -180 {lab=GND}
N -1010 -210 -1010 -180 {lab=GND}
N -960 -650 -870 -650 {lab=output}
N -1010 -250 -880 -250 {lab=output}
N -880 -640 -880 -250 {lab=output}
N -1170 -650 -1080 -650 {lab=output}
N -1370 -620 -1310 -620 {lab=#net3}
N -1370 -610 -1370 -550 {lab=#net3}
N -1380 -680 -1310 -680 {lab=#net4}
N -1370 -620 -1370 -610 {lab=#net3}
N -880 -650 -880 -640 {lab=output}
C {isource.sym} -1230 -470 2 0 {name=IBIAS value=100u}
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
C {lab_pin.sym} -1240 -770 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -1250 -530 0 0 {name=p5 sig_type=std_logic lab=GND}
C {capa.sym} -1010 -570 0 0 {name=CLOAD
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} -1010 -510 0 0 {name=p7 sig_type=std_logic lab=GND}
C {lab_pin.sym} -870 -650 0 1 {name=p8 sig_type=std_logic lab=output}
C {lab_pin.sym} -1230 -400 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {vsource.sym} -1470 -620 0 0 {name=VINP value= AC 1 savecurrent=false}
C {vsource.sym} -1470 -340 0 0 {name=VCM value= 1.65 savecurrent=false}
C {lab_pin.sym} -1470 -280 0 0 {name=p9 sig_type=std_logic lab=GND}
C {ind.sym} -1200 -300 1 0 {name=L2
m=1
value=1T
footprint=1206
device=inductor}
C {capa.sym} -1370 -270 0 0 {name=CLOAD1
m=1
value=1T
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} -1370 -210 0 0 {name=p11 sig_type=std_logic lab=GND}
C {vcvs.sym} -1050 -230 0 1 {name=E1 value=1}
C {lab_pin.sym} -1050 -160 0 0 {name=p10 sig_type=std_logic lab=GND}
C {libs/core_amps/ota_telescopic/ota_telescopic schematics/telescopic_cascode.sym} -1250 -580 0 0 {name=x1}

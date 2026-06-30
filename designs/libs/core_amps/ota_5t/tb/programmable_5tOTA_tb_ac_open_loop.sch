v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 380 -410 {}
P 4 1 460 -400 {}
N 440 -290 440 -250 {lab=VG_BIAS}
N 440 -250 440 -230 {lab=VG_BIAS}
N 440 -260 510 -260 {lab=VG_BIAS}
N 510 -260 510 -200 {lab=VG_BIAS}
N 480 -200 510 -200 {lab=VG_BIAS}
N 440 -170 440 -130 {lab=GND}
N 370 -200 440 -200 {lab=GND}
N 370 -200 370 -150 {lab=GND}
N 370 -150 440 -150 {lab=GND}
N 440 -130 440 -110 {lab=GND}
N 440 -320 440 -290 {lab=VG_BIAS}
N 510 -200 570 -200 {lab=VG_BIAS}
N 1130 -440 1130 -370 {lab=VG_BIAS}
N 440 -430 440 -380 {lab=VDD}
N 240 -350 240 -290 {lab=VDD}
N 120 -350 120 -290 {lab=GND}
N 120 -230 120 -180 {lab=GND}
N 240 -230 240 -180 {lab=GND}
N 240 -180 240 -170 {lab=GND}
N 120 -290 120 -230 {lab=GND}
N 1080 -640 1080 -610 {lab=VDD}
N 1080 -430 1080 -400 {lab=GND}
N 910 -560 970 -560 {lab=GND}
N 910 -540 970 -540 {lab=VDD}
N 910 -580 970 -580 {lab=GND}
N 910 -600 970 -600 {lab=VDD}
N 810 -410 810 -370 {lab=#net1}
N 810 -130 810 -100 {lab=GND}
N 810 -500 810 -470 {lab=#net2}
N 810 -370 810 -230 {lab=#net1}
N 810 -230 810 -190 {lab=#net1}
N 810 -500 970 -500 {lab=#net2}
N 930 -210 1070 -210 {lab=#net3}
N 930 -130 930 -100 {lab=GND}
N 1130 -210 1250 -210 {lab=#net4}
N 1250 -210 1250 -170 {lab=#net4}
N 1250 -110 1250 -70 {lab=GND}
N 1250 -90 1290 -90 {lab=GND}
N 1290 -120 1290 -90 {lab=GND}
N 1200 -520 1490 -520 {lab=output}
N 1330 -420 1330 -390 {lab=GND}
N 1330 -520 1330 -490 {lab=output}
N 1330 -490 1330 -480 {lab=output}
N 930 -440 970 -440 {lab=#net3}
N 930 -440 930 -190 {lab=#net3}
N 1290 -160 1420 -160 {lab=output}
N 1420 -520 1420 -160 {lab=output}
C {symbols/nfet_03v3.sym} 460 -200 0 1 {name=M1
L=.5u
W=23u
nf=1
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 570 -200 0 1 {name=p1 sig_type=std_logic lab=VG_BIAS}
C {lab_pin.sym} 1130 -370 0 1 {name=p2 sig_type=std_logic lab=VG_BIAS}
C {isource.sym} 440 -350 0 0 {name=I0 value=100u}
C {lab_pin.sym} 240 -350 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {vsource.sym} 240 -260 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} 120 -350 0 0 {name=p4 sig_type=std_logic lab=GND}
C {gnd.sym} 120 -180 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 240 -170 0 0 {name=p6 sig_type=std_logic lab=GND}
C {lab_pin.sym} 440 -110 0 0 {name=p5 sig_type=std_logic lab=GND}
C {lab_pin.sym} 440 -430 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1080 -640 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1080 -400 0 0 {name=p9 sig_type=std_logic lab=GND}
C {lab_pin.sym} 910 -540 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 910 -560 0 0 {name=p11 sig_type=std_logic lab=GND}
C {vsource.sym} 810 -440 0 0 {name=VINP value= AC 1 savecurrent=false}
C {vsource.sym} 810 -160 0 0 {name=VCM value= 1.65 savecurrent=false}
C {lab_pin.sym} 810 -100 0 0 {name=p14 sig_type=std_logic lab=GND}
C {ind.sym} 1100 -210 1 0 {name=L2
m=1
value=1
footprint=1206
device=inductor}
C {capa.sym} 930 -160 0 0 {name=CLOAD1
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 930 -100 0 0 {name=p15 sig_type=std_logic lab=GND}
C {vcvs.sym} 1250 -140 0 1 {name=E1 value=1}
C {lab_pin.sym} 1250 -70 0 0 {name=p16 sig_type=std_logic lab=GND}
C {lab_pin.sym} 1490 -520 0 1 {name=p17 sig_type=std_logic lab=output}
C {capa.sym} 1330 -450 0 0 {name=CLOAD
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1330 -390 0 0 {name=p18 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} 90 -820 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 90 -710 0 0 {name=Simulation only_toplevel=false 

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
C {lab_pin.sym} 910 -580 0 0 {name=p12 sig_type=std_logic lab=GND}
C {lab_pin.sym} 910 -600 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {libs/core_amps/ota_5t/programmable_5tOTA.sym} 1120 -520 0 0 {name=x1}

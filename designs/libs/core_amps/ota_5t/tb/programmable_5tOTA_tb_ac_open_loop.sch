v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 4 1460 -900 2150 -140 {fill=0
}
P 4 1 330 -440 {}
P 4 1 410 -430 {}
T {Amplifier Performance(AC)} 1540 -870 0 0 0.8 0.8 {}
T {-Driving Ideal 100 pF load capacitance

1xW/L
DC Gain: 37.5 dB
3-dB BW: 54.8 kHz
GBW: 4.12 MHz
PM: ~90.0 Degrees

2xW/L
DC Gain: 37.5 dB
3-dB BW: 107.3 kHz
GBW: 8.08 MHz
PM: ~90.0 Degrees

3xW/L
DC Gain: 37.5 dB
3-dB BW: 159.8 kHz
GBW: 12.0 MHz
PM: ~90.0 Degrees} 1530 -760 0 0 0.5 0.5 {}
N 390 -320 390 -280 {lab=VG_BIAS}
N 390 -280 390 -260 {lab=VG_BIAS}
N 390 -290 460 -290 {lab=VG_BIAS}
N 460 -290 460 -230 {lab=VG_BIAS}
N 430 -230 460 -230 {lab=VG_BIAS}
N 390 -200 390 -160 {lab=GND}
N 320 -230 390 -230 {lab=GND}
N 320 -230 320 -180 {lab=GND}
N 320 -180 390 -180 {lab=GND}
N 390 -160 390 -140 {lab=GND}
N 390 -350 390 -320 {lab=VG_BIAS}
N 460 -230 520 -230 {lab=VG_BIAS}
N 1000 -480 1000 -410 {lab=VG_BIAS}
N 390 -460 390 -410 {lab=VDD}
N 240 -370 240 -310 {lab=VDD}
N 120 -370 120 -310 {lab=GND}
N 120 -250 120 -200 {lab=GND}
N 240 -250 240 -200 {lab=GND}
N 240 -200 240 -190 {lab=GND}
N 120 -310 120 -250 {lab=GND}
N 950 -680 950 -650 {lab=VDD}
N 950 -470 950 -440 {lab=GND}
N 780 -600 840 -600 {lab=GND}
N 780 -580 840 -580 {lab=VDD}
N 780 -620 840 -620 {lab=GND}
N 780 -640 840 -640 {lab=VDD}
N 680 -450 680 -410 {lab=#net1}
N 680 -170 680 -140 {lab=GND}
N 680 -540 680 -510 {lab=#net2}
N 680 -410 680 -270 {lab=#net1}
N 680 -270 680 -230 {lab=#net1}
N 680 -540 840 -540 {lab=#net2}
N 800 -250 940 -250 {lab=#net3}
N 800 -170 800 -140 {lab=GND}
N 1000 -250 1120 -250 {lab=#net4}
N 1120 -250 1120 -210 {lab=#net4}
N 1120 -150 1120 -110 {lab=GND}
N 1120 -130 1160 -130 {lab=GND}
N 1160 -160 1160 -130 {lab=GND}
N 1070 -560 1360 -560 {lab=output}
N 1200 -460 1200 -430 {lab=GND}
N 1200 -560 1200 -530 {lab=output}
N 1200 -530 1200 -520 {lab=output}
N 800 -480 840 -480 {lab=#net3}
N 800 -480 800 -230 {lab=#net3}
N 1160 -200 1290 -200 {lab=output}
N 1290 -560 1290 -200 {lab=output}
C {symbols/nfet_03v3.sym} 410 -230 0 1 {name=M1
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
C {lab_pin.sym} 520 -230 0 1 {name=p1 sig_type=std_logic lab=VG_BIAS}
C {lab_pin.sym} 1000 -410 0 1 {name=p2 sig_type=std_logic lab=VG_BIAS}
C {isource.sym} 390 -380 0 0 {name=I0 value=100u}
C {lab_pin.sym} 240 -370 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {vsource.sym} 240 -280 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} 120 -370 0 0 {name=p4 sig_type=std_logic lab=GND}
C {gnd.sym} 120 -200 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 240 -190 0 0 {name=p6 sig_type=std_logic lab=GND}
C {lab_pin.sym} 390 -140 0 0 {name=p5 sig_type=std_logic lab=GND}
C {lab_pin.sym} 390 -460 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 950 -680 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 950 -440 0 0 {name=p9 sig_type=std_logic lab=GND}
C {lab_pin.sym} 780 -640 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 780 -620 0 0 {name=p11 sig_type=std_logic lab=GND}
C {vsource.sym} 680 -480 0 0 {name=VINP value= AC 1 savecurrent=false}
C {vsource.sym} 680 -200 0 0 {name=VCM value= 1.65 savecurrent=false}
C {lab_pin.sym} 680 -140 0 0 {name=p14 sig_type=std_logic lab=GND}
C {ind.sym} 970 -250 1 0 {name=L2
m=1
value=1
footprint=1206
device=inductor}
C {capa.sym} 800 -200 0 0 {name=CLOAD1
m=1
value=1T
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 800 -140 0 0 {name=p15 sig_type=std_logic lab=GND}
C {vcvs.sym} 1120 -180 0 1 {name=E1 value=1}
C {lab_pin.sym} 1120 -110 0 0 {name=p16 sig_type=std_logic lab=GND}
C {lab_pin.sym} 1360 -560 0 1 {name=p17 sig_type=std_logic lab=output}
C {capa.sym} 1200 -490 0 0 {name=CLOAD
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1200 -430 0 0 {name=p18 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} 70 -860 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 70 -750 0 0 {name=Simulation only_toplevel=false 

value=

"
.control
ac dec 100 1 1G

plot vdb(output) ph(v(output))*180/3.14159

meas ac dc_gain find vdb(output) at=1
let bw_level = dc_gain - 3
meas ac bw when vdb(output) = bw_level fall=1
meas ac gbw when vdb(output)=0
let gain_db = vdb(output)


.endc

"}
C {lab_pin.sym} 780 -600 0 0 {name=p12 sig_type=std_logic lab=GND}
C {lab_pin.sym} 780 -580 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {libs/core_amps/ota_5t/schem/programmable_5tOTA.sym} 990 -560 0 0 {name=x1}

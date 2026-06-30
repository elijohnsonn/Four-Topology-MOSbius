v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -1600 -680 -1600 -620 {lab=VDD}
N -1720 -680 -1720 -620 {lab=GND}
N -1720 -560 -1720 -510 {lab=GND}
N -1600 -560 -1600 -510 {lab=GND}
N -1600 -510 -1600 -500 {lab=GND}
N -1720 -620 -1720 -560 {lab=GND}
N -1970 -550 -1970 -530 {lab=Ibias}
N -1970 -650 -1970 -610 {lab=VDD}
N -1050 -640 -930 -640 {lab=output}
N -980 -640 -980 -590 {lab=output}
N -980 -530 -980 -500 {lab=GND}
N -1440 -600 -1440 -560 {lab=#net1}
N -1370 -470 -1370 -430 {lab=#net2}
N -1440 -320 -1440 -290 {lab=GND}
N -1370 -550 -1370 -530 {lab=#net2}
N -1440 -690 -1350 -690 {lab=#net3}
N -1440 -690 -1440 -660 {lab=#net3}
N -1440 -560 -1440 -420 {lab=#net1}
N -1370 -530 -1370 -470 {lab=#net2}
N -1440 -420 -1440 -380 {lab=#net1}
N -1370 -430 -1370 -300 {lab=#net2}
N -1370 -300 -1230 -300 {lab=#net2}
N -1370 -240 -1370 -210 {lab=GND}
N -1170 -300 -1050 -300 {lab=#net4}
N -1050 -300 -1050 -260 {lab=#net4}
N -1050 -200 -1050 -160 {lab=GND}
N -1050 -180 -1010 -180 {lab=GND}
N -1010 -210 -1010 -180 {lab=GND}
N -930 -640 -840 -640 {lab=output}
N -1010 -250 -880 -250 {lab=output}
N -880 -640 -880 -250 {lab=output}
N -1920 -410 -1920 -390 {lab=GND}
N -1920 -500 -1840 -500 {lab=Ibias}
N -1840 -500 -1840 -440 {lab=Ibias}
N -1970 -500 -1920 -500 {lab=Ibias}
N -1970 -530 -1970 -500 {lab=Ibias}
N -1920 -500 -1920 -470 {lab=Ibias}
N -1980 -440 -1920 -440 {lab=GND}
N -1980 -440 -1980 -390 {lab=GND}
N -1980 -390 -1920 -390 {lab=GND}
N -1370 -590 -1350 -590 {lab=#net2}
N -1370 -590 -1370 -550 {lab=#net2}
N -1880 -440 -1840 -440 {lab=Ibias}
N -1180 -560 -1180 -440 {lab=GND}
N -1840 -440 -1260 -440 {lab=Ibias}
N -1210 -560 -1210 -440 {lab=Ibias}
N -1260 -440 -1210 -440 {lab=Ibias}
C {isource.sym} -1970 -580 0 0 {name=IBIAS value=100u}
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
C {lab_pin.sym} -1180 -440 0 1 {name=p5 sig_type=std_logic lab=GND}
C {capa.sym} -980 -560 0 0 {name=CLOAD
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} -980 -500 0 0 {name=p7 sig_type=std_logic lab=GND}
C {lab_pin.sym} -840 -640 0 1 {name=p8 sig_type=std_logic lab=output}
C {lab_pin.sym} -1970 -650 2 0 {name=p6 sig_type=std_logic lab=VDD}
C {vsource.sym} -1440 -630 0 0 {name=VINP value= AC 1 savecurrent=false}
C {vsource.sym} -1440 -350 0 0 {name=VCM value= 1.65 savecurrent=false}
C {lab_pin.sym} -1440 -290 0 0 {name=p9 sig_type=std_logic lab=GND}
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
C {symbols/nfet_03v3.sym} -1900 -440 0 1 {name=M10
L=.5u
W=20u
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
C {lab_pin.sym} -1970 -530 0 0 {name=p12 sig_type=std_logic lab=Ibias}
C {lab_pin.sym} -1350 -670 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -1350 -630 0 0 {name=p13 sig_type=std_logic lab=GND}
C {lab_pin.sym} -1350 -610 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -1350 -650 0 0 {name=p15 sig_type=std_logic lab=GND}
C {libs/core_amps/ota_telescopic/programmable_telescopic_cascode.sym} -1200 -620 0 0 {name=x1}
C {lab_pin.sym} -1210 -720 1 0 {name=p16 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -1980 -390 0 0 {name=p17 sig_type=std_logic lab=GND}

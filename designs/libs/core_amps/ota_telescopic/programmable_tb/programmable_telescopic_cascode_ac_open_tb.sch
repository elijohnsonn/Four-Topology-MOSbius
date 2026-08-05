v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -2730 -820 -2020 -820 {}
L 4 -2020 -820 -2020 -500 {}
L 4 -2730 -500 -2020 -500 {}
L 4 -2730 -820 -2730 -500 {}
T {Amplifier Permformance} -2640 -890 0 0 0.9 0.9 {}
T {- Amplifier driven by off chip current modeled by IBIAS, 
driving an off chip 100 pf capacitor} -2640 -800 0 0 0.4 0.4 {}
T {- 1x | DC Gain: 79.16 | GBW: 2.19 MHz | PM: 88.88} -2650 -730 0 0 0.4 0.4 {}
T {- 2x | DC Gain: 79.16 | GBW: 4.38 MHz | PM: 87.27} -2650 -680 0 0 0.4 0.4 {}
T {- 3x | DC Gain: 79.16 | GBW: 6.57 MHz | PM: 86.56} -2650 -630 0 0 0.4 0.4 {}
T {- GBW increase by 2x and 3x as expected by 
driving 2x and 3x current respectively} -2640 -580 0 0 0.4 0.4 {}
N -1530 -520 -1530 -460 {lab=VDD}
N -1650 -520 -1650 -460 {lab=GND}
N -1650 -400 -1650 -350 {lab=GND}
N -1530 -400 -1530 -350 {lab=GND}
N -1530 -350 -1530 -340 {lab=GND}
N -1650 -460 -1650 -400 {lab=GND}
N -1910 -490 -1910 -470 {lab=VG}
N -1910 -590 -1910 -550 {lab=VDD}
N -1050 -640 -930 -640 {lab=output}
N -980 -640 -980 -590 {lab=output}
N -980 -530 -980 -500 {lab=GND}
N -1400 -520 -1400 -480 {lab=#net1}
N -1330 -470 -1330 -430 {lab=#net2}
N -1400 -240 -1400 -210 {lab=GND}
N -1330 -550 -1330 -530 {lab=#net2}
N -1400 -610 -1310 -610 {lab=#net3}
N -1400 -610 -1400 -580 {lab=#net3}
N -1400 -480 -1400 -340 {lab=#net1}
N -1330 -530 -1330 -470 {lab=#net2}
N -1400 -340 -1400 -300 {lab=#net1}
N -1330 -430 -1330 -300 {lab=#net2}
N -1330 -240 -1330 -210 {lab=GND}
N -1170 -300 -1050 -300 {lab=#net4}
N -1050 -300 -1050 -260 {lab=#net4}
N -1050 -200 -1050 -160 {lab=GND}
N -1050 -180 -1010 -180 {lab=GND}
N -1010 -210 -1010 -180 {lab=GND}
N -930 -640 -840 -640 {lab=output}
N -1010 -250 -880 -250 {lab=output}
N -880 -640 -880 -250 {lab=output}
N -1860 -350 -1860 -330 {lab=GND}
N -1860 -440 -1780 -440 {lab=VG}
N -1780 -440 -1780 -380 {lab=VG}
N -1910 -440 -1860 -440 {lab=VG}
N -1910 -470 -1910 -440 {lab=VG}
N -1860 -440 -1860 -410 {lab=VG}
N -1920 -380 -1860 -380 {lab=GND}
N -1920 -380 -1920 -330 {lab=GND}
N -1920 -330 -1860 -330 {lab=GND}
N -1330 -590 -1310 -590 {lab=#net2}
N -1330 -590 -1330 -550 {lab=#net2}
N -1820 -380 -1780 -380 {lab=VG}
N -1260 -570 -1260 -450 {lab=GND}
N -1330 -300 -1230 -300 {lab=#net2}
N -1230 -580 -1230 -550 {lab=VG}
N -1780 -380 -1750 -380 {lab=VG}
N -1150 -640 -1050 -640 {lab=output}
C {isource.sym} -1910 -520 0 0 {name=IBIAS value=100u}
C {lab_pin.sym} -1530 -520 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} -1530 -430 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} -1650 -520 0 0 {name=p3 sig_type=std_logic lab=GND}
C {gnd.sym} -1650 -350 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -1530 -340 0 0 {name=p4 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} -660 -660 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} -1260 -450 0 1 {name=p5 sig_type=std_logic lab=GND}
C {capa.sym} -980 -560 0 0 {name=CLOAD
m=1
value=100u
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} -980 -500 0 0 {name=p7 sig_type=std_logic lab=GND}
C {lab_pin.sym} -840 -640 0 1 {name=p8 sig_type=std_logic lab=output}
C {lab_pin.sym} -1910 -590 2 0 {name=p6 sig_type=std_logic lab=VDD}
C {vsource.sym} -1400 -550 0 0 {name=VINP value= AC 1 savecurrent=false}
C {vsource.sym} -1400 -270 0 0 {name=VCM value= 1.65 savecurrent=false}
C {lab_pin.sym} -1400 -210 0 0 {name=p9 sig_type=std_logic lab=GND}
C {ind.sym} -1200 -300 1 0 {name=L2
m=1
value=1T
footprint=1206
device=inductor}
C {capa.sym} -1330 -270 0 0 {name=CLOAD1
m=1
value=1T
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} -1330 -210 0 0 {name=p11 sig_type=std_logic lab=GND}
C {vcvs.sym} -1050 -230 0 1 {name=E1 value=1}
C {lab_pin.sym} -1050 -160 0 0 {name=p10 sig_type=std_logic lab=GND}
C {symbols/nfet_03v3.sym} -1840 -380 0 1 {name=M10
L=1u
W=27.1u
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
C {lab_pin.sym} -1310 -690 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -1310 -650 0 0 {name=p13 sig_type=std_logic lab=GND}
C {lab_pin.sym} -1310 -630 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -1310 -670 0 0 {name=p15 sig_type=std_logic lab=GND}
C {lab_pin.sym} -1260 -710 1 0 {name=p16 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -1920 -330 0 0 {name=p17 sig_type=std_logic lab=GND}
C {libs/core_amps/ota_telescopic/programmable_ota_telescopic schematics/programmable_telescopic_cascode.sym} -1290 -640 0 0 {name=x1}
C {lab_pin.sym} -1750 -380 0 1 {name=p18 sig_type=std_logic lab=VG}
C {lab_pin.sym} -1230 -550 0 1 {name=p19 sig_type=std_logic lab=VG}
C {code_shown.sym} -660 -540 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control
ac dec 100 1 1G

plot vdb(output) ph(v(output))*180/3.14159

meas ac dc_gain find vdb(output) at=1
meas ac gbw when vdb(output)=0
let gain_db = vdb(output)
let phase = 180/3.14159*ph(v(output))
meas ac phase_at_gbw find phase when vdb(output)=0
let pm = 180 + phase_at_gbw
print pm

.endc

"}

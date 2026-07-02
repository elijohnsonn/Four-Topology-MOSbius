v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -1490 -320 -780 -320 {}
L 4 -780 -320 -780 -100 {}
L 4 -1490 -100 -780 -100 {}
L 4 -1490 -320 -1490 -100 {}
T {Amplifier Permformance} -1420 -390 0 0 0.9 0.9 {}
T {- Amplifier driven by off chip current modeled by IBIAS, 
driving an off chip 100 pf capacitor} -1430 -300 0 0 0.4 0.4 {}
T {- Performance identical across 1x, 2x, and 3x enabling} -1430 -220 0 0 0.4 0.4 {}
T {- ICMR = 2.58 - .293 = 2.28 V
- Usable Ouput Range = 2.57 - .305 = 2.27 V
- Systematic Offset = 82 uV} -1430 -190 0 0 0.4 0.4 {}
N -80 -70 -80 -10 {lab=GND}
N -410 -260 -410 -200 {lab=VDD}
N -530 -260 -530 -200 {lab=GND}
N -530 -140 -530 -90 {lab=GND}
N -410 -140 -410 -90 {lab=GND}
N -410 -90 -410 -80 {lab=GND}
N -530 -200 -530 -140 {lab=GND}
N -80 -270 -80 -210 {lab=VDD}
N 170 -140 290 -140 {lab=output}
N 240 -140 240 -90 {lab=output}
N 240 -30 240 0 {lab=GND}
N -220 -20 -220 20 {lab=#net1}
N -150 30 -150 70 {lab=output}
N -220 260 -220 290 {lab=GND}
N -150 -50 -150 -30 {lab=output}
N -220 -110 -130 -110 {lab=#net2}
N -220 -110 -220 -80 {lab=#net2}
N -220 20 -220 160 {lab=#net1}
N -150 -30 -150 30 {lab=output}
N -150 70 -150 230 {lab=output}
N -150 230 170 230 {lab=output}
N 170 -140 170 230 {lab=output}
N -220 160 -220 200 {lab=#net1}
N -150 -90 -130 -90 {lab=output}
N -150 -90 -150 -50 {lab=output}
N -700 -20 -700 0 {lab=VG}
N -700 -120 -700 -80 {lab=VDD}
N -650 120 -650 140 {lab=GND}
N -650 30 -570 30 {lab=VG}
N -570 30 -570 90 {lab=VG}
N -700 30 -650 30 {lab=VG}
N -700 0 -700 30 {lab=VG}
N -650 30 -650 60 {lab=VG}
N -710 90 -650 90 {lab=GND}
N -710 90 -710 140 {lab=GND}
N -710 140 -650 140 {lab=GND}
N -610 90 -570 90 {lab=VG}
N 30 -140 170 -140 {lab=output}
N -50 -80 -50 -20 {lab=VG}
C {lab_pin.sym} -410 -260 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} -410 -170 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} -530 -260 0 0 {name=p3 sig_type=std_logic lab=GND}
C {gnd.sym} -530 -90 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -410 -80 0 0 {name=p4 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} 370 -240 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} -80 -270 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -80 -10 0 0 {name=p5 sig_type=std_logic lab=GND}
C {capa.sym} 240 -60 0 0 {name=CLOAD
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 240 0 0 0 {name=p7 sig_type=std_logic lab=GND}
C {lab_pin.sym} 290 -140 0 1 {name=p8 sig_type=std_logic lab=output}
C {vsource.sym} -220 -50 0 0 {name=VINP value= 0 savecurrent=false}
C {vsource.sym} -220 230 0 0 {name=VCM value= 0 savecurrent=false}
C {lab_pin.sym} -220 290 0 0 {name=p9 sig_type=std_logic lab=GND}
C {lab_pin.sym} -130 -190 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -130 -130 0 0 {name=p11 sig_type=std_logic lab=GND}
C {lab_pin.sym} -130 -150 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -130 -170 0 0 {name=p13 sig_type=std_logic lab=GND}
C {isource.sym} -700 -50 0 0 {name=IBIAS value=100u}
C {lab_pin.sym} -700 -120 2 0 {name=p6 sig_type=std_logic lab=VDD}
C {symbols/nfet_03v3.sym} -630 90 0 1 {name=M10
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
C {lab_pin.sym} -710 140 0 0 {name=p17 sig_type=std_logic lab=GND}
C {lab_pin.sym} -570 90 0 1 {name=p15 sig_type=std_logic lab=VG}
C {libs/core_amps/ota_telescopic/programmable_ota_telescopic schematics/programmable_telescopic_cascode.sym} -110 -140 0 0 {name=x1}
C {lab_pin.sym} -50 -20 0 1 {name=p16 sig_type=std_logic lab=VG}
C {code_shown.sym} 340 270 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control

dc VINP 0 4 0.001
let gain = deriv(v(output))
meas dc icmr_low when gain = 0.95 rise = 1
meas dc icmr_high when gain=0.95 fall=1 from=2
meas dc out_swing_high when gain=0.95 fall=1 from=2


print icmr_low icmr_high
print icmr_high - icmr_low
meas dc out_swing_low find v(output) when gain = 0.95 rise = 1
print out_swing_low out_swing_high
print out_swing_high - out_swing_low
plot v(output) gain
meas dc vos find v(output) at=1.65
let offset = vos - 1.65
print offset

.endc
"}

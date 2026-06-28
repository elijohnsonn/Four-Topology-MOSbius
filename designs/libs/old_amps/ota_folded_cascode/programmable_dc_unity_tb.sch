v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 -620 -200 {}
P 4 1 -540 -190 {}
N -560 -80 -560 -40 {lab=VG_BIAS}
N -560 -40 -560 -20 {lab=VG_BIAS}
N -560 -50 -490 -50 {lab=VG_BIAS}
N -490 -50 -490 10 {lab=VG_BIAS}
N -520 10 -490 10 {lab=VG_BIAS}
N -560 40 -560 80 {lab=GND}
N -630 10 -560 10 {lab=GND}
N -630 10 -630 60 {lab=GND}
N -630 60 -560 60 {lab=GND}
N -560 80 -560 100 {lab=GND}
N -560 -110 -560 -80 {lab=VG_BIAS}
N -490 10 -430 10 {lab=VG_BIAS}
N 160 50 160 120 {lab=VG_BIAS}
N -560 -220 -560 -170 {lab=VDD}
N -760 -140 -760 -80 {lab=VDD}
N -880 -140 -880 -80 {lab=GND}
N -880 -20 -880 30 {lab=GND}
N -760 -20 -760 30 {lab=GND}
N -760 30 -760 40 {lab=GND}
N -880 -80 -880 -20 {lab=GND}
N 110 -160 110 -130 {lab=VDD}
N 110 70 110 100 {lab=GND}
N -80 -90 -20 -90 {lab=VDD}
N -80 -70 -20 -70 {lab=GND}
N -80 -110 -20 -110 {lab=GND}
N -80 -130 -20 -130 {lab=VDD}
N -180 -10 -20 -10 {lab=#net1}
N -60 300 80 300 {lab=output}
N 140 300 260 300 {lab=output}
N 240 -30 530 -30 {lab=output}
N 370 70 370 100 {lab=GND}
N 370 -30 370 0 {lab=output}
N 370 0 370 10 {lab=output}
N -60 50 -20 50 {lab=output}
N -60 50 -60 300 {lab=output}
N 80 300 140 300 {lab=output}
N 260 300 500 300 {lab=output}
N 500 -30 500 300 {lab=output}
N -180 80 -180 120 {lab=#net2}
N -180 360 -180 390 {lab=GND}
N -180 -10 -180 20 {lab=#net1}
N -180 120 -180 260 {lab=#net2}
N -180 260 -180 300 {lab=#net2}
C {libs/core_amps/ota_folded_cascode/programmable_folded.sym} 330 -30 0 0 {name=x1}
C {symbols/nfet_03v3.sym} -540 10 0 1 {name=M1
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
C {lab_pin.sym} -430 10 0 1 {name=p1 sig_type=std_logic lab=VG_BIAS}
C {lab_pin.sym} 160 120 0 1 {name=p2 sig_type=std_logic lab=VG_BIAS}
C {isource.sym} -560 -140 0 0 {name=I0 value=100u}
C {lab_pin.sym} -760 -140 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {vsource.sym} -760 -50 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} -880 -140 0 0 {name=p4 sig_type=std_logic lab=GND}
C {gnd.sym} -880 30 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -760 40 0 0 {name=p6 sig_type=std_logic lab=GND}
C {lab_pin.sym} -560 100 0 0 {name=p5 sig_type=std_logic lab=GND}
C {lab_pin.sym} -560 -220 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 110 -160 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 110 100 0 0 {name=p9 sig_type=std_logic lab=GND}
C {lab_pin.sym} -80 -90 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -80 -70 0 0 {name=p11 sig_type=std_logic lab=GND}
C {lab_pin.sym} 530 -30 0 1 {name=p17 sig_type=std_logic lab=output}
C {capa.sym} 370 40 0 0 {name=CLOAD
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 370 100 0 0 {name=p18 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} 710 -100 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} -80 -110 0 0 {name=p12 sig_type=std_logic lab=GND}
C {lab_pin.sym} -80 -130 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {code_shown.sym} 710 40 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control

dc VINP 0 4 0.001
let gain = deriv(v(output))
meas dc icmr_low when gain = 0.95 rise = 1
meas dc icmr_high when gain = 0.95 fall = 1
let swing_low = icmr_low
let swing_high = icmr_high
print icmr_low icmr_high
print swing_high - swing_low

plot v(output) gain

.endc
"}
C {vsource.sym} -180 50 0 0 {name=VINP value= 0 savecurrent=false}
C {vsource.sym} -180 330 0 0 {name=VCM value= 0 savecurrent=false}
C {lab_pin.sym} -180 390 0 0 {name=p14 sig_type=std_logic lab=GND}

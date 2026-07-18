v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -1430 -170 -1430 280 {}
L 4 -1430 310 -590 310 {}
L 4 -590 -180 -590 280 {}
L 4 -1430 -180 -590 -180 {}
L 4 -1430 -180 -1430 -170 {}
L 4 -590 280 -590 310 {}
L 4 -1430 280 -1430 310 {}
P 4 1 -530 -200 {}
P 4 1 -450 -190 {}
T {Amplifier Performance} -1310 -140 0 0 1 1 {}
T {-Driving Ideal 120 pF load capacitance 
-Intended load of 100 pF off-chip, 
	10-20 pF added for parasitic modeling

Identical Across 1×/2×/3×:

ICMR: 0.795V – 3.007V (2.21V range)
Output Swing: 0.803V – 2.997V (2.19V range)
Systematic Offset: 1.95mV
} -1370 -40 0 0 0.6 0.6 {}
N 140 30 140 100 {lab=VG_BIAS}
N 110 -130 110 -100 {lab=VDD}
N 110 40 110 70 {lab=GND}
N 0 -40 60 -40 {lab=VDD}
N 0 -20 60 -20 {lab=GND}
N 0 -60 60 -60 {lab=GND}
N 0 -80 60 -80 {lab=VDD}
N -180 0 -20 0 {lab=#net1}
N -60 300 80 300 {lab=output}
N 140 300 260 300 {lab=output}
N 240 -30 530 -30 {lab=output}
N 370 70 370 100 {lab=GND}
N 370 -30 370 0 {lab=output}
N 370 0 370 10 {lab=output}
N -60 50 -60 300 {lab=output}
N 80 300 140 300 {lab=output}
N 260 300 500 300 {lab=output}
N 500 -30 500 300 {lab=output}
N -180 90 -180 130 {lab=#net2}
N -180 230 -180 260 {lab=GND}
N -180 0 -180 30 {lab=#net1}
N -180 130 -180 170 {lab=#net2}
N -470 -80 -470 -40 {lab=VG_BIAS}
N -470 -40 -470 -20 {lab=VG_BIAS}
N -470 -50 -400 -50 {lab=VG_BIAS}
N -400 -50 -400 10 {lab=VG_BIAS}
N -430 10 -400 10 {lab=VG_BIAS}
N -470 40 -470 80 {lab=GND}
N -540 10 -470 10 {lab=GND}
N -540 10 -540 60 {lab=GND}
N -540 60 -470 60 {lab=GND}
N -470 80 -470 100 {lab=GND}
N -470 -110 -470 -80 {lab=VG_BIAS}
N -400 10 -340 10 {lab=VG_BIAS}
N -470 -220 -470 -170 {lab=VDD}
N -390 160 -390 220 {lab=VDD}
N -510 160 -510 220 {lab=GND}
N -510 280 -510 330 {lab=GND}
N -390 280 -390 330 {lab=GND}
N -390 330 -390 340 {lab=GND}
N -510 220 -510 280 {lab=GND}
N -20 -0 60 0 {lab=#net1}
N -60 20 60 20 {lab=output}
N -60 20 -60 50 {lab=output}
N 220 -30 240 -30 {lab=output}
C {lab_pin.sym} 140 100 0 1 {name=p2 sig_type=std_logic lab=VG_BIAS}
C {lab_pin.sym} 110 -130 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 110 70 0 0 {name=p9 sig_type=std_logic lab=GND}
C {lab_pin.sym} 0 -40 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 0 -20 0 0 {name=p11 sig_type=std_logic lab=GND}
C {lab_pin.sym} 530 -30 0 1 {name=p17 sig_type=std_logic lab=output}
C {capa.sym} 370 40 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 370 100 0 0 {name=p18 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} 630 -100 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} 0 -60 0 0 {name=p12 sig_type=std_logic lab=GND}
C {lab_pin.sym} 0 -80 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {code_shown.sym} 630 40 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control

dc VINP 0 4 0.001
let gain = deriv(v(output))
meas dc icmr_low when gain = 0.95 rise = 1
meas dc icmr_high when gain = 0.95 fall = 1
print icmr_low icmr_high
print icmr_high - icmr_low
meas dc out_swing_low find v(output) when gain = 0.95 rise = 1
meas dc out_swing_high find v(output) when gain = 0.95 fall = 1
print out_swing_low out_swing_high
print out_swing_high - out_swing_low
plot v(output) gain
meas dc vos find v(output) at=1.65
let offset = vos - 1.65
print offset

.endc
"}
C {vsource.sym} -180 60 0 0 {name=VINP value= 0 savecurrent=false}
C {vsource.sym} -180 200 0 0 {name=VCM value= 0 savecurrent=false}
C {lab_pin.sym} -180 260 0 0 {name=p14 sig_type=std_logic lab=GND}
C {libs/core_amps/ota_folded_cascode/prgrm_schem/programmable_folded_cascode.sym} 80 -30 0 0 {name=x1}
C {symbols/nfet_03v3.sym} -450 10 0 1 {name=M1
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
C {lab_pin.sym} -340 10 0 1 {name=p1 sig_type=std_logic lab=VG_BIAS}
C {isource.sym} -470 -140 0 0 {name=I0 value=100u}
C {lab_pin.sym} -390 160 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {vsource.sym} -390 250 0 0 {name=V1 value= 3.3 savecurrent=false}
C {lab_pin.sym} -510 160 0 0 {name=p7 sig_type=std_logic lab=GND}
C {gnd.sym} -510 330 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -390 340 0 0 {name=p15 sig_type=std_logic lab=GND}
C {lab_pin.sym} -470 100 0 0 {name=p16 sig_type=std_logic lab=GND}
C {lab_pin.sym} -470 -220 0 0 {name=p19 sig_type=std_logic lab=VDD}

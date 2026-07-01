v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 4 670 -360 1470 230 {fill=0
}
P 4 1 -580 60 {}
P 4 1 -500 70 {}
T {Amplifier Performance(Transient)} 720 -300 0 0 0.8 0.8 {}
T {-Driving Ideal 100 pF load capacitance

Unity Step Response (1V step, 1.65V → 2.65V):

1xW/L
Slew Rate: 8.15 V/µs

2xW/L
Slew Rate: 17.05 V/µs

3xW/L
Slew Rate: 26.70 V/µs} 780 -200 0 0 0.5 0.5 {}
N -520 180 -520 220 {lab=VG_BIAS}
N -520 220 -520 240 {lab=VG_BIAS}
N -520 210 -450 210 {lab=VG_BIAS}
N -450 210 -450 270 {lab=VG_BIAS}
N -480 270 -450 270 {lab=VG_BIAS}
N -520 300 -520 340 {lab=GND}
N -590 270 -520 270 {lab=GND}
N -590 270 -590 320 {lab=GND}
N -590 320 -520 320 {lab=GND}
N -520 340 -520 360 {lab=GND}
N -520 150 -520 180 {lab=VG_BIAS}
N -450 270 -390 270 {lab=VG_BIAS}
N 150 -10 150 60 {lab=VG_BIAS}
N -520 40 -520 90 {lab=VDD}
N -640 40 -640 100 {lab=VDD}
N -760 40 -760 100 {lab=GND}
N -760 160 -760 210 {lab=GND}
N -640 160 -640 210 {lab=GND}
N -640 210 -640 220 {lab=GND}
N -760 100 -760 160 {lab=GND}
N 100 -210 100 -180 {lab=VDD}
N 100 0 100 30 {lab=GND}
N -70 -130 -10 -130 {lab=GND}
N -70 -110 -10 -110 {lab=VDD}
N -70 -150 -10 -150 {lab=GND}
N -70 -170 -10 -170 {lab=VDD}
N -170 -70 -10 -70 {lab=input}
N -50 240 90 240 {lab=output}
N 150 240 270 240 {lab=output}
N 380 10 380 40 {lab=GND}
N 380 -90 380 -60 {lab=output}
N 380 -60 380 -50 {lab=output}
N -50 -10 -10 -10 {lab=output}
N -50 -10 -50 240 {lab=output}
N 90 240 150 240 {lab=output}
N 270 240 510 240 {lab=output}
N 510 -90 510 240 {lab=output}
N -260 50 -260 90 {lab=#net1}
N -260 330 -260 360 {lab=GND}
N -260 -40 -260 -10 {lab=input}
N -260 90 -260 230 {lab=#net1}
N -260 230 -260 270 {lab=#net1}
N -260 -70 -170 -70 {lab=input}
N -260 -70 -260 -40 {lab=input}
N 220 -90 540 -90 {lab=output}
C {symbols/nfet_03v3.sym} -500 270 0 1 {name=M1
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
C {lab_pin.sym} -390 270 0 1 {name=p1 sig_type=std_logic lab=VG_BIAS}
C {lab_pin.sym} 150 60 0 1 {name=p2 sig_type=std_logic lab=VG_BIAS}
C {isource.sym} -520 120 0 0 {name=I0 value=100u}
C {lab_pin.sym} -640 40 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {vsource.sym} -640 130 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} -760 40 0 0 {name=p4 sig_type=std_logic lab=GND}
C {gnd.sym} -760 210 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -640 220 0 0 {name=p6 sig_type=std_logic lab=GND}
C {lab_pin.sym} -520 360 0 0 {name=p5 sig_type=std_logic lab=GND}
C {lab_pin.sym} -520 40 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 100 -210 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 100 30 0 0 {name=p9 sig_type=std_logic lab=GND}
C {lab_pin.sym} -70 -170 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -70 -150 0 0 {name=p11 sig_type=std_logic lab=GND}
C {lab_pin.sym} 540 -90 0 1 {name=p17 sig_type=std_logic lab=output}
C {capa.sym} 380 -20 0 0 {name=CLOAD
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 380 40 0 0 {name=p18 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} -820 -490 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} -70 -130 0 0 {name=p12 sig_type=std_logic lab=GND}
C {lab_pin.sym} -70 -110 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {vsource.sym} -260 20 0 0 {name=VINP value= "PULSE(0 1 25u 1p 100n 2m 1)" savecurrent=false}
C {vsource.sym} -260 300 0 0 {name=VCM value= 1.65 savecurrent=false}
C {lab_pin.sym} -260 360 0 0 {name=p14 sig_type=std_logic lab=GND}
C {lab_pin.sym} -210 -70 1 0 {name=p15 sig_type=std_logic lab=input}
C {code_shown.sym} -830 -350 0 0 {name=Simulation only_toplevel=false 

value=

"
.control
tran 1n 100u
meas tran v_before find v(output) at=24u
meas tran v_after find v(output) at=90u
let v_20 = v_before + 0.2 * (v_after - v_before)
let v_80 = v_before + 0.8 * (v_after - v_before)
meas tran t_20 when v(output) = v_20 rise = 1 from = 25u
meas tran t_80 when v(output) = v_80 rise = 1 from = 25u
let slew_rate = (v_80 - v_20) / (t_80 - t_20)
print v_before v_after
print slew_rate

plot v(input) v(output)
.endc

"}
C {libs/core_amps/ota_5t/schem/programmable_5tOTA.sym} 140 -90 0 0 {name=x1}

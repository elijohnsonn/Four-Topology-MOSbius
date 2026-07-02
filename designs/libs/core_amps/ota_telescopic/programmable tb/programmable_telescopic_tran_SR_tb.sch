v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -950 -350 -240 -350 {}
L 4 -240 -350 -240 -130 {}
L 4 -950 -130 -240 -130 {}
L 4 -950 -350 -950 -130 {}
T {Amplifier Permformance} -880 -420 0 0 0.9 0.9 {}
T {- Amplifier driven by off chip current modeled by IBIAS, 
driving an off chip 100 pf capacitor, 1 V step applied
 to input} -890 -330 0 0 0.4 0.4 {}
T {- 1x | Slew Rate: 1.87 V/us
- 2x | Slew Rate: 3.80 V/us
- 3x | Slew Rate: 5.75 V/us} -890 -240 0 0 0.4 0.4 {}
N 330 -190 330 -130 {lab=GND}
N -70 -400 -70 -340 {lab=VDD}
N -190 -400 -190 -340 {lab=GND}
N -190 -280 -190 -230 {lab=GND}
N -70 -280 -70 -230 {lab=GND}
N -70 -230 -70 -220 {lab=GND}
N -190 -340 -190 -280 {lab=GND}
N 330 -390 330 -330 {lab=VDD}
N 490 -260 610 -260 {lab=output}
N 560 -260 560 -210 {lab=output}
N 560 -150 560 -120 {lab=GND}
N 190 -230 280 -230 {lab=input}
N 100 -140 100 -100 {lab=#net1}
N 100 140 100 170 {lab=GND}
N 100 -230 190 -230 {lab=input}
N 100 -230 100 -200 {lab=input}
N 100 -100 100 40 {lab=#net1}
N 100 40 100 80 {lab=#net1}
N 440 -260 490 -260 {lab=output}
N 370 -70 490 -70 {lab=output}
N -160 -90 -160 -70 {lab=VG}
N -160 -190 -160 -150 {lab=VDD}
N -110 50 -110 70 {lab=GND}
N -110 -40 -30 -40 {lab=VG}
N -30 -40 -30 20 {lab=VG}
N -160 -40 -110 -40 {lab=VG}
N -160 -70 -160 -40 {lab=VG}
N -110 -40 -110 -10 {lab=VG}
N -170 20 -110 20 {lab=GND}
N -170 20 -170 70 {lab=GND}
N -170 70 -110 70 {lab=GND}
N -70 20 -30 20 {lab=VG}
N 360 -200 360 -160 {lab=VG}
N 250 -210 280 -210 {lab=output}
N 250 -70 370 -70 {lab=output}
N 250 -210 250 -70 {lab=output}
N 490 -260 490 -70 {lab=output}
C {lab_pin.sym} -70 -400 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} -70 -310 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} -190 -400 0 0 {name=p3 sig_type=std_logic lab=GND}
C {gnd.sym} -190 -230 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -70 -220 0 0 {name=p4 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} 730 -290 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 710 -180 0 0 {name=Simulation only_toplevel=false 

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
C {lab_pin.sym} 330 -390 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 330 -130 0 0 {name=p5 sig_type=std_logic lab=GND}
C {capa.sym} 560 -180 0 0 {name=CLOAD
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 560 -120 0 0 {name=p7 sig_type=std_logic lab=GND}
C {lab_pin.sym} 610 -260 0 1 {name=p8 sig_type=std_logic lab=output}
C {vsource.sym} 100 -170 0 1 {name=VINP value= "PULSE(0 1 25u 1p 100n 2m 1)" savecurrent=false}
C {vsource.sym} 100 110 0 0 {name=VCM value= 1.65 savecurrent=false}
C {lab_pin.sym} 100 170 0 0 {name=p9 sig_type=std_logic lab=GND}
C {lab_pin.sym} 150 -230 1 0 {name=p10 sig_type=std_logic lab=input}
C {isource.sym} -160 -120 0 0 {name=IBIAS value=100u}
C {lab_pin.sym} -160 -190 2 0 {name=p6 sig_type=std_logic lab=VDD}
C {symbols/nfet_03v3.sym} -90 20 0 1 {name=M10
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
C {lab_pin.sym} -170 70 0 0 {name=p17 sig_type=std_logic lab=GND}
C {lab_pin.sym} 280 -310 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 280 -290 0 0 {name=p12 sig_type=std_logic lab=GND}
C {lab_pin.sym} 280 -270 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 280 -250 0 0 {name=p15 sig_type=std_logic lab=GND}
C {libs/core_amps/ota_telescopic/programmable_ota_telescopic schematics/programmable_telescopic_cascode.sym} 300 -260 0 0 {name=x1}
C {lab_pin.sym} -30 20 2 0 {name=p16 sig_type=std_logic lab=VG}
C {lab_pin.sym} 360 -160 2 0 {name=p18 sig_type=std_logic lab=VG}

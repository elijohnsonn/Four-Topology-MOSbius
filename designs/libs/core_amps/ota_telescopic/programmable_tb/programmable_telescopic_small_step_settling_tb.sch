v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -1010 -240 -300 -240 {}
L 4 -300 -240 -300 -20 {}
L 4 -1010 -20 -300 -20 {}
L 4 -1010 -240 -1010 -20 {}
T {Amplifier Permformance} -940 -310 0 0 0.9 0.9 {}
T {- Amplifier driven by off chip current modeled by IBIAS, 
driving an off chip 100 pf capacitor, 100 mV step applied
 to input} -950 -220 0 0 0.4 0.4 {}
T {- 1x | Overshoot:    None   | Settle Time: .253 us
- 2x | Overshoot: .028 mV | Settle Time: .251 us
- 3x | Overshoot:    None   | Settle Time: .251 us} -950 -140 0 0 0.4 0.4 {}
N 360 -50 360 10 {lab=GND}
N -110 -310 -110 -250 {lab=VDD}
N -230 -310 -230 -250 {lab=GND}
N -230 -190 -230 -140 {lab=GND}
N -110 -190 -110 -140 {lab=GND}
N -110 -140 -110 -130 {lab=GND}
N -230 -250 -230 -190 {lab=GND}
N 360 -250 360 -190 {lab=VDD}
N 550 -120 670 -120 {lab=output}
N 620 -120 620 -70 {lab=output}
N 620 -10 620 20 {lab=GND}
N 240 -90 310 -90 {lab=input}
N 150 0 150 40 {lab=#net1}
N 250 40 250 80 {lab=output}
N 150 280 150 310 {lab=GND}
N 250 -70 250 -50 {lab=output}
N 150 -90 240 -90 {lab=input}
N 150 -90 150 -60 {lab=input}
N 150 40 150 180 {lab=#net1}
N 250 -20 250 40 {lab=output}
N 250 80 250 240 {lab=output}
N 250 240 570 240 {lab=output}
N 150 180 150 220 {lab=#net1}
N 470 -120 550 -120 {lab=output}
N 250 -70 310 -70 {lab=output}
N 250 -50 250 -20 {lab=output}
N -210 10 -210 30 {lab=VG}
N -210 -90 -210 -50 {lab=VDD}
N -160 150 -160 170 {lab=GND}
N -160 60 -80 60 {lab=VG}
N -80 60 -80 120 {lab=VG}
N -210 60 -160 60 {lab=VG}
N -210 30 -210 60 {lab=VG}
N -160 60 -160 90 {lab=VG}
N -220 120 -160 120 {lab=GND}
N -220 120 -220 170 {lab=GND}
N -220 170 -160 170 {lab=GND}
N -120 120 -80 120 {lab=VG}
N 570 -110 570 240 {lab=output}
N 570 -120 570 -110 {lab=output}
N 390 -60 390 -50 {lab=VG}
N 390 -50 390 -40 {lab=VG}
C {lab_pin.sym} -110 -310 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} -110 -220 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} -230 -310 0 0 {name=p3 sig_type=std_logic lab=GND}
C {gnd.sym} -230 -140 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -110 -130 0 0 {name=p4 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} 820 -250 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} 360 -250 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 360 10 0 1 {name=p5 sig_type=std_logic lab=GND}
C {capa.sym} 620 -40 0 0 {name=CLOAD
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 620 20 0 0 {name=p7 sig_type=std_logic lab=GND}
C {lab_pin.sym} 670 -120 0 1 {name=p8 sig_type=std_logic lab=output}
C {vsource.sym} 150 -30 0 1 {name=VINP value= "PULSE(0 .1 25u 1p 100n 2m 1)" savecurrent=false}
C {vsource.sym} 150 250 0 0 {name=VCM value= 1.65 savecurrent=false}
C {lab_pin.sym} 150 310 0 0 {name=p9 sig_type=std_logic lab=GND}
C {lab_pin.sym} 200 -90 1 0 {name=p10 sig_type=std_logic lab=input}
C {isource.sym} -210 -20 0 0 {name=IBIAS value=100u}
C {lab_pin.sym} -210 -90 2 0 {name=p6 sig_type=std_logic lab=VDD}
C {symbols/nfet_03v3.sym} -140 120 0 1 {name=M10
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
C {lab_pin.sym} -220 170 0 0 {name=p17 sig_type=std_logic lab=GND}
C {lab_pin.sym} 310 -170 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 310 -110 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 310 -130 0 0 {name=p13 sig_type=std_logic lab=GND}
C {lab_pin.sym} 310 -150 0 0 {name=p15 sig_type=std_logic lab=GND}
C {libs/core_amps/ota_telescopic/programmable_ota_telescopic schematics/programmable_telescopic_cascode.sym} 330 -120 0 0 {name=x1}
C {lab_pin.sym} -80 120 0 1 {name=p16 sig_type=std_logic lab=VG}
C {lab_pin.sym} 390 -40 0 1 {name=p18 sig_type=std_logic lab=VG}
C {code_shown.sym} 810 -130 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control
tran 1n 50u
meas tran v_input find v(input) at=40u
meas tran v_output find v(output) at=40u
let v_error = v_input - v_output
print v_error

meas tran vpeak max v(output) from=10u to=50u
meas tran vfinal find v(output) at=40u

let target_low = vfinal * 0.999
meas tran settle_01 when v(output) = target_low rise = last

print v_input v_output
print vpeak vfinal
print settle_01

plot v(input) v(output)
plot v(output) - v(input)
.endc
"}

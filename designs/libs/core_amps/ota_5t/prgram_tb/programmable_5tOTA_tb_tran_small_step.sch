v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 -610 -280 {}
P 4 1 -530 -270 {}
N -550 -160 -550 -120 {lab=VG_BIAS}
N -550 -120 -550 -100 {lab=VG_BIAS}
N -550 -130 -480 -130 {lab=VG_BIAS}
N -480 -130 -480 -70 {lab=VG_BIAS}
N -510 -70 -480 -70 {lab=VG_BIAS}
N -550 -40 -550 0 {lab=GND}
N -620 -70 -550 -70 {lab=GND}
N -620 -70 -620 -20 {lab=GND}
N -620 -20 -550 -20 {lab=GND}
N -550 0 -550 20 {lab=GND}
N -550 -190 -550 -160 {lab=VG_BIAS}
N -480 -70 -420 -70 {lab=VG_BIAS}
N 150 -30 150 40 {lab=VG_BIAS}
N -550 -300 -550 -250 {lab=VDD}
N -750 -220 -750 -160 {lab=VDD}
N -870 -220 -870 -160 {lab=GND}
N -870 -100 -870 -50 {lab=GND}
N -750 -100 -750 -50 {lab=GND}
N -750 -50 -750 -40 {lab=GND}
N -870 -160 -870 -100 {lab=GND}
N 100 -230 100 -200 {lab=VDD}
N 100 -20 100 10 {lab=GND}
N -70 -150 -10 -150 {lab=VDD}
N -70 -130 -10 -130 {lab=GND}
N -70 -170 -10 -170 {lab=VDD}
N -70 -190 -10 -190 {lab=GND}
N -170 -90 -10 -90 {lab=input}
N -50 220 90 220 {lab=output}
N 150 220 270 220 {lab=output}
N 220 -110 510 -110 {lab=output}
N 350 -10 350 20 {lab=GND}
N 350 -110 350 -80 {lab=output}
N 350 -80 350 -70 {lab=output}
N -50 -30 -10 -30 {lab=output}
N -50 -30 -50 220 {lab=output}
N 90 220 150 220 {lab=output}
N 440 -110 440 220 {lab=output}
N -260 -90 -170 -90 {lab=input}
N -260 -90 -260 -60 {lab=input}
N -260 0 -260 40 {lab=#net1}
N -260 280 -260 310 {lab=GND}
N -260 40 -260 180 {lab=#net1}
N -260 180 -260 220 {lab=#net1}
N 270 220 440 220 {lab=output}
C {symbols/nfet_03v3.sym} -530 -70 0 1 {name=M1
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
C {lab_pin.sym} -420 -70 0 1 {name=p1 sig_type=std_logic lab=VG_BIAS}
C {lab_pin.sym} 150 40 0 1 {name=p2 sig_type=std_logic lab=VG_BIAS}
C {isource.sym} -550 -220 0 0 {name=I0 value=100u}
C {lab_pin.sym} -750 -220 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {vsource.sym} -750 -130 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} -870 -220 0 0 {name=p4 sig_type=std_logic lab=GND}
C {gnd.sym} -870 -50 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -750 -40 0 0 {name=p6 sig_type=std_logic lab=GND}
C {lab_pin.sym} -550 20 0 0 {name=p5 sig_type=std_logic lab=GND}
C {lab_pin.sym} -550 -300 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 100 -230 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 100 10 0 0 {name=p9 sig_type=std_logic lab=GND}
C {lab_pin.sym} -70 -170 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -70 -190 0 0 {name=p11 sig_type=std_logic lab=GND}
C {lab_pin.sym} 510 -110 0 1 {name=p17 sig_type=std_logic lab=output}
C {capa.sym} 350 -40 0 0 {name=CLOAD
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 350 20 0 0 {name=p18 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} 720 -180 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} -70 -130 0 0 {name=p12 sig_type=std_logic lab=GND}
C {lab_pin.sym} -70 -150 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -210 -90 1 0 {name=p15 sig_type=std_logic lab=input}
C {vsource.sym} -260 -30 0 0 {name=VINP value= "PULSE(0 .1 25u 1p 100n 2m 1)" savecurrent=false}
C {vsource.sym} -260 250 0 0 {name=VCM value= 1.65 savecurrent=false}
C {lab_pin.sym} -260 310 0 0 {name=p14 sig_type=std_logic lab=GND}
C {code_shown.sym} 710 -50 0 0 {name=Simulation only_toplevel=false 

value=

"
.control

set color0 = white
set color1 = black
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
C {libs/core_amps/ota_5t/prgram_schem/programmable_5tOTA.sym} 140 -110 0 0 {name=x1}

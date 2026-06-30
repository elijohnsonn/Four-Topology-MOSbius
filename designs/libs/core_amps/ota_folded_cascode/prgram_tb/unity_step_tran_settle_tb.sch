v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -1410 -230 -1410 220 {}
L 4 -1410 240 -570 240 {}
L 4 -570 -240 -570 220 {}
L 4 -1410 -240 -570 -240 {}
L 4 -1410 -240 -1410 -230 {}
L 4 -1410 220 -1410 240 {}
L 4 -570 220 -570 240 {}
P 4 1 -520 -300 {}
P 4 1 -440 -290 {}
T {Amplifier Performance} -1290 -200 0 0 1 1 {}
T {-Driving Ideal 120 pF load capacitance 
-Intended load of 100 pF off-chip, 
	10-20 pF added for parasitic modeling

Small-Step Settling (100mV step, 1.65V → 1.75V):

1×: 0.42µs settling, no overshoot
2×: 0.19µs settling, 0.19mV overshoot
3×: 0.12µs settling, 0.35mV overshoot
} -1380 -110 0 0 0.6 0.6 {}
N 150 -50 150 20 {lab=VG_BIAS}
N 120 -210 120 -180 {lab=VDD}
N 120 -40 120 -10 {lab=GND}
N 10 -120 70 -120 {lab=VDD}
N 10 -100 70 -100 {lab=GND}
N 10 -140 70 -140 {lab=GND}
N 10 -160 70 -160 {lab=VDD}
N 250 -110 540 -110 {lab=output}
N 380 -10 380 20 {lab=GND}
N 380 -110 380 -80 {lab=output}
N 380 -80 380 -70 {lab=output}
N -170 20 -170 60 {lab=#net1}
N -170 160 -170 190 {lab=GND}
N -170 60 -170 100 {lab=#net1}
N -460 -180 -460 -140 {lab=VG_BIAS}
N -460 -140 -460 -120 {lab=VG_BIAS}
N -460 -150 -390 -150 {lab=VG_BIAS}
N -390 -150 -390 -90 {lab=VG_BIAS}
N -420 -90 -390 -90 {lab=VG_BIAS}
N -460 -60 -460 -20 {lab=GND}
N -530 -90 -460 -90 {lab=GND}
N -530 -90 -530 -40 {lab=GND}
N -530 -40 -460 -40 {lab=GND}
N -450 -10 -450 10 {lab=GND}
N -460 -210 -460 -180 {lab=VG_BIAS}
N -390 -90 -330 -90 {lab=VG_BIAS}
N -460 -320 -460 -270 {lab=VDD}
N -370 70 -370 130 {lab=VDD}
N -490 70 -490 130 {lab=GND}
N -490 190 -490 240 {lab=GND}
N -370 190 -370 240 {lab=GND}
N -370 240 -370 250 {lab=GND}
N -490 130 -490 190 {lab=GND}
N 230 -110 250 -110 {lab=output}
N 20 -60 70 -60 {lab=output}
N 20 -60 20 60 {lab=output}
N 20 60 480 60 {lab=output}
N 480 -110 480 60 {lab=output}
N -120 -80 70 -80 {lab=input}
N -170 -80 -120 -80 {lab=input}
N -170 -80 -170 -60 {lab=input}
N -170 -60 -170 -40 {lab=input}
C {lab_pin.sym} 150 20 0 1 {name=p2 sig_type=std_logic lab=VG_BIAS}
C {lab_pin.sym} 120 -210 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 120 -10 0 0 {name=p9 sig_type=std_logic lab=GND}
C {lab_pin.sym} 10 -120 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 10 -100 0 0 {name=p11 sig_type=std_logic lab=GND}
C {lab_pin.sym} 540 -110 0 1 {name=p17 sig_type=std_logic lab=output}
C {capa.sym} 380 -40 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 380 20 0 0 {name=p18 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} 640 -180 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} 10 -140 0 0 {name=p12 sig_type=std_logic lab=GND}
C {lab_pin.sym} 10 -160 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -170 -80 2 1 {name=p15 sig_type=std_logic lab=input}
C {vsource.sym} -170 -10 0 0 {name=VINP value= "PULSE(0 .1 25u 1p 100n 2m 1)" savecurrent=false}
C {vsource.sym} -170 130 0 0 {name=VCM value= 1.65 savecurrent=false}
C {lab_pin.sym} -170 190 0 0 {name=p14 sig_type=std_logic lab=GND}
C {code_shown.sym} 630 -50 0 0 {name=Simulation only_toplevel=false 

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
C {symbols/nfet_03v3.sym} -440 -90 0 1 {name=M2
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
C {lab_pin.sym} -330 -90 0 1 {name=p16 sig_type=std_logic lab=VG_BIAS}
C {isource.sym} -460 -240 0 0 {name=I1 value=100u}
C {lab_pin.sym} -370 70 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {vsource.sym} -370 160 0 0 {name=V1 value= 3.3 savecurrent=false}
C {lab_pin.sym} -490 70 0 0 {name=p20 sig_type=std_logic lab=GND}
C {gnd.sym} -490 240 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -370 250 0 0 {name=p21 sig_type=std_logic lab=GND}
C {lab_pin.sym} -450 10 0 0 {name=p22 sig_type=std_logic lab=GND}
C {lab_pin.sym} -460 -320 0 0 {name=p23 sig_type=std_logic lab=VDD}
C {libs/core_amps/ota_folded_cascode/prgrm_schem/programmable_folded_cascode.sym} 90 -110 0 0 {name=x1}

v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 -1340 -220 -1340 230 {}
L 4 -1340 260 -500 260 {}
L 4 -500 -230 -500 230 {}
L 4 -1340 -230 -500 -230 {}
L 4 -1340 -230 -1340 -220 {}
L 4 -1340 230 -1340 260 {}
L 4 -500 230 -500 260 {}
P 4 1 -440 -290 {}
P 4 1 -360 -280 {}
T {Amplifier Performance} -1220 -190 0 0 1 1 {}
T {-Driving Ideal 120 pF load capacitance 
-Intended load of 100 pF off-chip, 
	10-20 pF added for parasitic modeling

Unity Step Response (1V step, 1.65V → 2.65V):

Slew Rate 1×: 1.26 V/µs
Slew Rate 2×: 2.47 V/µs
Slew Rate 3×: 3.67 V/µs
} -1280 -90 0 0 0.6 0.6 {}
N 150 -30 150 40 {lab=VG_BIAS}
N 120 -190 120 -160 {lab=VDD}
N 120 -20 120 10 {lab=GND}
N 10 -100 70 -100 {lab=GND}
N 10 -80 70 -80 {lab=VDD}
N 10 -120 70 -120 {lab=GND}
N 10 -140 70 -140 {lab=VDD}
N -90 -60 70 -60 {lab=input}
N 250 -90 540 -90 {lab=output}
N 380 10 380 40 {lab=GND}
N 380 -90 380 -60 {lab=output}
N 380 -60 380 -50 {lab=output}
N -90 60 -90 100 {lab=#net1}
N -90 200 -90 230 {lab=GND}
N -90 -30 -90 0 {lab=input}
N -90 100 -90 140 {lab=#net1}
N -90 -60 -90 -30 {lab=input}
N 230 -90 250 -90 {lab=output}
N 20 -40 70 -40 {lab=output}
N 20 -40 20 100 {lab=output}
N 20 100 510 100 {lab=output}
N 510 -90 510 100 {lab=output}
N -380 -170 -380 -130 {lab=VG_BIAS}
N -380 -130 -380 -110 {lab=VG_BIAS}
N -380 -140 -310 -140 {lab=VG_BIAS}
N -310 -140 -310 -80 {lab=VG_BIAS}
N -340 -80 -310 -80 {lab=VG_BIAS}
N -380 -50 -380 -10 {lab=GND}
N -450 -80 -380 -80 {lab=GND}
N -450 -80 -450 -30 {lab=GND}
N -450 -30 -380 -30 {lab=GND}
N -380 -10 -380 10 {lab=GND}
N -380 -200 -380 -170 {lab=VG_BIAS}
N -310 -80 -250 -80 {lab=VG_BIAS}
N -380 -310 -380 -260 {lab=VDD}
N -300 70 -300 130 {lab=VDD}
N -420 70 -420 130 {lab=GND}
N -420 190 -420 240 {lab=GND}
N -300 190 -300 240 {lab=GND}
N -300 240 -300 250 {lab=GND}
N -420 130 -420 190 {lab=GND}
C {lab_pin.sym} 150 40 0 1 {name=p2 sig_type=std_logic lab=VG_BIAS}
C {lab_pin.sym} 120 -190 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 120 10 0 0 {name=p9 sig_type=std_logic lab=GND}
C {lab_pin.sym} 10 -80 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 10 -100 0 0 {name=p11 sig_type=std_logic lab=GND}
C {lab_pin.sym} 540 -90 0 1 {name=p17 sig_type=std_logic lab=output}
C {capa.sym} 380 -20 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 380 40 0 0 {name=p18 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} 650 -160 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} 10 -120 0 0 {name=p12 sig_type=std_logic lab=GND}
C {lab_pin.sym} 10 -140 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {vsource.sym} -90 30 0 0 {name=VINP value= "PULSE(0 1 25u 1p 100n 2m 1)" savecurrent=false}
C {vsource.sym} -90 170 0 0 {name=VCM value= 1.65 savecurrent=false}
C {lab_pin.sym} -90 230 0 0 {name=p14 sig_type=std_logic lab=GND}
C {lab_pin.sym} -90 -60 2 1 {name=p15 sig_type=std_logic lab=input}
C {code_shown.sym} 640 -20 0 0 {name=Simulation only_toplevel=false 

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
C {libs/core_amps/ota_folded_cascode/prgrm_schem/programmable_folded_cascode.sym} 90 -90 0 0 {name=x1}
C {symbols/nfet_03v3.sym} -360 -80 0 1 {name=M2
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
C {lab_pin.sym} -250 -80 0 1 {name=p16 sig_type=std_logic lab=VG_BIAS}
C {isource.sym} -380 -230 0 0 {name=I1 value=100u}
C {lab_pin.sym} -300 70 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {vsource.sym} -300 160 0 0 {name=V1 value= 3.3 savecurrent=false}
C {lab_pin.sym} -420 70 0 0 {name=p20 sig_type=std_logic lab=GND}
C {gnd.sym} -420 240 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -300 250 0 0 {name=p21 sig_type=std_logic lab=GND}
C {lab_pin.sym} -380 10 0 0 {name=p22 sig_type=std_logic lab=GND}
C {lab_pin.sym} -380 -310 0 0 {name=p23 sig_type=std_logic lab=VDD}

v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 -600 -210 {}
P 4 1 -520 -200 {}
N -540 -90 -540 -50 {lab=VG_BIAS}
N -540 -50 -540 -30 {lab=VG_BIAS}
N -540 -60 -470 -60 {lab=VG_BIAS}
N -470 -60 -470 0 {lab=VG_BIAS}
N -500 0 -470 0 {lab=VG_BIAS}
N -540 30 -540 70 {lab=GND}
N -610 0 -540 0 {lab=GND}
N -610 0 -610 50 {lab=GND}
N -610 50 -540 50 {lab=GND}
N -540 70 -540 90 {lab=GND}
N -540 -120 -540 -90 {lab=VG_BIAS}
N -470 0 -410 0 {lab=VG_BIAS}
N 70 30 70 100 {lab=VG_BIAS}
N -540 -230 -540 -180 {lab=VDD}
N -460 150 -460 210 {lab=VDD}
N -580 150 -580 210 {lab=GND}
N -580 270 -580 320 {lab=GND}
N -460 270 -460 320 {lab=GND}
N -460 320 -460 330 {lab=GND}
N -580 210 -580 270 {lab=GND}
N 40 -130 40 -100 {lab=VDD}
N 40 40 40 70 {lab=GND}
N -70 -40 -10 -40 {lab=GND}
N -70 -20 -10 -20 {lab=VDD}
N -70 -60 -10 -60 {lab=GND}
N -70 -80 -10 -80 {lab=VDD}
N -250 100 -250 140 {lab=#net1}
N -250 240 -250 270 {lab=GND}
N -250 10 -250 40 {lab=#net2}
N -250 140 -250 180 {lab=#net1}
N -130 300 10 300 {lab=#net3}
N -130 360 -130 390 {lab=GND}
N 70 300 190 300 {lab=#net4}
N 190 300 190 340 {lab=#net4}
N 190 400 190 440 {lab=GND}
N 190 420 230 420 {lab=GND}
N 230 390 230 420 {lab=GND}
N 170 -30 460 -30 {lab=output}
N 230 350 410 350 {lab=output}
N 410 -30 410 350 {lab=output}
N 300 70 300 100 {lab=GND}
N 300 -30 300 0 {lab=output}
N 300 0 300 10 {lab=output}
N -130 50 -130 300 {lab=#net3}
N -130 20 -10 20 {lab=#net3}
N -130 20 -130 50 {lab=#net3}
N 150 -30 170 -30 {lab=output}
N -250 0 -10 -0 {lab=#net2}
N -250 -0 -250 10 {lab=#net2}
C {symbols/nfet_03v3.sym} -520 0 0 1 {name=M1
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
C {lab_pin.sym} -410 0 0 1 {name=p1 sig_type=std_logic lab=VG_BIAS}
C {lab_pin.sym} 70 100 0 1 {name=p2 sig_type=std_logic lab=VG_BIAS}
C {isource.sym} -540 -150 0 0 {name=I0 value=100u}
C {lab_pin.sym} -460 150 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {vsource.sym} -460 240 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} -580 150 0 0 {name=p4 sig_type=std_logic lab=GND}
C {gnd.sym} -580 320 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -460 330 0 0 {name=p6 sig_type=std_logic lab=GND}
C {lab_pin.sym} -540 90 0 0 {name=p5 sig_type=std_logic lab=GND}
C {lab_pin.sym} -540 -230 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 40 -130 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 40 70 0 0 {name=p9 sig_type=std_logic lab=GND}
C {lab_pin.sym} -70 -20 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -70 -40 0 0 {name=p11 sig_type=std_logic lab=GND}
C {vsource.sym} -250 70 0 0 {name=VINP value= AC 1 savecurrent=false}
C {vsource.sym} -250 210 0 0 {name=VCM value= 1.65 savecurrent=false}
C {lab_pin.sym} -250 270 0 0 {name=p14 sig_type=std_logic lab=GND}
C {ind.sym} 40 300 1 0 {name=L2
m=1
value=1T
footprint=1206
device=inductor}
C {capa.sym} -130 330 0 0 {name=CLOAD1
m=1
value=1T
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} -130 390 0 0 {name=p15 sig_type=std_logic lab=GND}
C {vcvs.sym} 190 370 0 1 {name=E1 value=1}
C {lab_pin.sym} 190 440 0 0 {name=p16 sig_type=std_logic lab=GND}
C {lab_pin.sym} 460 -30 0 1 {name=p17 sig_type=std_logic lab=output}
C {capa.sym} 300 40 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 300 100 0 0 {name=p18 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} 640 -100 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 640 10 0 0 {name=Simulation only_toplevel=false 

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
C {lab_pin.sym} -70 -60 0 0 {name=p12 sig_type=std_logic lab=GND}
C {lab_pin.sym} -70 -80 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {libs/core_amps/ota_folded_cascode/prgrm_schem/programmable_folded_cascode.sym} 10 -30 0 0 {name=x1}

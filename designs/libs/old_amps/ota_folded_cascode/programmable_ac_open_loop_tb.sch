v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 -690 -200 {}
P 4 1 -610 -190 {}
N -630 -80 -630 -40 {lab=VG_BIAS}
N -630 -40 -630 -20 {lab=VG_BIAS}
N -630 -50 -560 -50 {lab=VG_BIAS}
N -560 -50 -560 10 {lab=VG_BIAS}
N -590 10 -560 10 {lab=VG_BIAS}
N -630 40 -630 80 {lab=GND}
N -700 10 -630 10 {lab=GND}
N -700 10 -700 60 {lab=GND}
N -700 60 -630 60 {lab=GND}
N -630 80 -630 100 {lab=GND}
N -630 -110 -630 -80 {lab=VG_BIAS}
N -560 10 -500 10 {lab=VG_BIAS}
N 90 50 90 120 {lab=VG_BIAS}
N -630 -220 -630 -170 {lab=VDD}
N -830 -140 -830 -80 {lab=VDD}
N -950 -140 -950 -80 {lab=GND}
N -950 -20 -950 30 {lab=GND}
N -830 -20 -830 30 {lab=GND}
N -830 30 -830 40 {lab=GND}
N -950 -80 -950 -20 {lab=GND}
N 40 -160 40 -130 {lab=VDD}
N 40 70 40 100 {lab=GND}
N -150 -90 -90 -90 {lab=VDD}
N -150 -70 -90 -70 {lab=GND}
N -150 -110 -90 -110 {lab=GND}
N -150 -130 -90 -130 {lab=VDD}
N -250 80 -250 120 {lab=#net1}
N -250 360 -250 390 {lab=GND}
N -250 -10 -250 20 {lab=#net2}
N -250 120 -250 260 {lab=#net1}
N -250 260 -250 300 {lab=#net1}
N -250 -10 -90 -10 {lab=#net2}
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
N -130 50 -90 50 {lab=#net3}
N -130 50 -130 300 {lab=#net3}
C {libs/core_amps/ota_folded_cascode/programmable_folded.sym} 260 -30 0 0 {name=x1}
C {symbols/nfet_03v3.sym} -610 10 0 1 {name=M1
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
C {lab_pin.sym} -500 10 0 1 {name=p1 sig_type=std_logic lab=VG_BIAS}
C {lab_pin.sym} 90 120 0 1 {name=p2 sig_type=std_logic lab=VG_BIAS}
C {isource.sym} -630 -140 0 0 {name=I0 value=100u}
C {lab_pin.sym} -830 -140 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {vsource.sym} -830 -50 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} -950 -140 0 0 {name=p4 sig_type=std_logic lab=GND}
C {gnd.sym} -950 30 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -830 40 0 0 {name=p6 sig_type=std_logic lab=GND}
C {lab_pin.sym} -630 100 0 0 {name=p5 sig_type=std_logic lab=GND}
C {lab_pin.sym} -630 -220 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 40 -160 0 1 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 40 100 0 0 {name=p9 sig_type=std_logic lab=GND}
C {lab_pin.sym} -150 -90 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -150 -70 0 0 {name=p11 sig_type=std_logic lab=GND}
C {vsource.sym} -250 50 0 0 {name=VINP value= AC 1 savecurrent=false}
C {vsource.sym} -250 330 0 0 {name=VCM value= 1.65 savecurrent=false}
C {lab_pin.sym} -250 390 0 0 {name=p14 sig_type=std_logic lab=GND}
C {ind.sym} 40 300 1 0 {name=L2
m=1
value=10T
footprint=1206
device=inductor}
C {capa.sym} -130 330 0 0 {name=CLOAD1
m=1
value=10T
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} -130 390 0 0 {name=p15 sig_type=std_logic lab=GND}
C {vcvs.sym} 190 370 0 1 {name=E1 value=1}
C {lab_pin.sym} 190 440 0 0 {name=p16 sig_type=std_logic lab=GND}
C {lab_pin.sym} 460 -30 0 1 {name=p17 sig_type=std_logic lab=output}
C {capa.sym} 300 40 0 0 {name=CLOAD
m=1
value=100p
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

meas ac dc_gain find vdb(output) at=100
let bw_level = dc_gain - 3
meas ac bw when vdb(output) = bw_level fall=1

.endc

"}
C {lab_pin.sym} -150 -110 0 0 {name=p12 sig_type=std_logic lab=GND}
C {lab_pin.sym} -150 -130 0 0 {name=p13 sig_type=std_logic lab=VDD}

v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 450 -100 450 -40 {lab=GND}
N -70 -400 -70 -340 {lab=VDD}
N -190 -400 -190 -340 {lab=GND}
N -190 -280 -190 -230 {lab=GND}
N -70 -280 -70 -230 {lab=GND}
N -70 -230 -70 -220 {lab=GND}
N -190 -340 -190 -280 {lab=GND}
N 420 -320 420 -260 {lab=VDD}
N 630 -180 750 -180 {lab=output}
N 700 -180 700 -130 {lab=output}
N 700 -70 700 -40 {lab=GND}
N 190 -230 280 -230 {lab=input}
N 100 -140 100 -100 {lab=#net1}
N 190 10 190 50 {lab=output}
N 100 140 100 170 {lab=GND}
N 190 -70 190 -50 {lab=output}
N 100 -230 190 -230 {lab=input}
N 100 -230 100 -200 {lab=input}
N 100 -100 100 40 {lab=#net1}
N 190 -50 190 10 {lab=output}
N 190 50 190 210 {lab=output}
N 190 210 510 210 {lab=output}
N 630 -180 630 190 {lab=output}
N 100 40 100 80 {lab=#net1}
N 190 -130 280 -130 {lab=output}
N 190 -130 190 -70 {lab=output}
N 580 -180 630 -180 {lab=output}
N 510 210 630 210 {lab=output}
N 630 190 630 210 {lab=output}
N -160 -90 -160 -70 {lab=Ibias}
N -160 -190 -160 -150 {lab=VDD}
N -110 50 -110 70 {lab=GND}
N -110 -40 -30 -40 {lab=Ibias}
N -30 -40 -30 20 {lab=Ibias}
N -160 -40 -110 -40 {lab=Ibias}
N -160 -70 -160 -40 {lab=Ibias}
N -110 -40 -110 -10 {lab=Ibias}
N -170 20 -110 20 {lab=GND}
N -170 20 -170 70 {lab=GND}
N -170 70 -110 70 {lab=GND}
N -70 20 -30 20 {lab=Ibias}
N -30 20 420 20 {lab=Ibias}
N 420 -100 420 20 {lab=Ibias}
C {lab_pin.sym} -70 -400 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} -70 -310 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} -190 -400 0 0 {name=p3 sig_type=std_logic lab=GND}
C {gnd.sym} -190 -230 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -70 -220 0 0 {name=p4 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} -850 -270 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} -870 -160 0 0 {name=Simulation only_toplevel=false 

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
C {lab_pin.sym} 420 -320 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 450 -40 0 1 {name=p5 sig_type=std_logic lab=GND}
C {capa.sym} 700 -100 0 0 {name=CLOAD
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 700 -40 0 0 {name=p7 sig_type=std_logic lab=GND}
C {lab_pin.sym} 750 -180 0 1 {name=p8 sig_type=std_logic lab=output}
C {vsource.sym} 100 -170 0 1 {name=VINP value= "PULSE(0 1 25u 1p 100n 2m 1)" savecurrent=false}
C {vsource.sym} 100 110 0 0 {name=VCM value= 1.65 savecurrent=false}
C {lab_pin.sym} 100 170 0 0 {name=p9 sig_type=std_logic lab=GND}
C {lab_pin.sym} 150 -230 1 0 {name=p10 sig_type=std_logic lab=input}
C {libs/core_amps/ota_telescopic/programmable_telescopic_cascode.sym} 430 -160 0 0 {name=x1}
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
C {lab_pin.sym} -160 -70 0 0 {name=p14 sig_type=std_logic lab=Ibias}
C {lab_pin.sym} -170 70 0 0 {name=p17 sig_type=std_logic lab=GND}
C {lab_pin.sym} 280 -190 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 280 -210 0 0 {name=p12 sig_type=std_logic lab=GND}
C {lab_pin.sym} 280 -170 0 0 {name=p13 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 280 -150 0 0 {name=p15 sig_type=std_logic lab=GND}

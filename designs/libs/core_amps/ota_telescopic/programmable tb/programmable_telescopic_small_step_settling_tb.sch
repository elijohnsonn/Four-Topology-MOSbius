v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 390 -30 390 30 {lab=GND}
N -110 -360 -110 -300 {lab=VDD}
N -230 -360 -230 -300 {lab=GND}
N -230 -240 -230 -190 {lab=GND}
N -110 -240 -110 -190 {lab=GND}
N -110 -190 -110 -180 {lab=GND}
N -230 -300 -230 -240 {lab=GND}
N 360 -250 360 -190 {lab=VDD}
N 600 -110 720 -110 {lab=output}
N 670 -110 670 -60 {lab=output}
N 670 0 670 30 {lab=GND}
N 150 -160 220 -160 {lab=input}
N 60 -70 60 -30 {lab=#net1}
N 160 50 160 90 {lab=output}
N 60 210 60 240 {lab=GND}
N 160 -30 160 -10 {lab=output}
N 60 -160 150 -160 {lab=input}
N 60 -160 60 -130 {lab=input}
N 60 -30 60 110 {lab=#net1}
N 160 -10 160 50 {lab=output}
N 160 90 160 250 {lab=output}
N 160 250 480 250 {lab=output}
N 60 110 60 150 {lab=#net1}
N 520 -110 600 -110 {lab=output}
N 160 -60 220 -60 {lab=output}
N 160 -60 160 -30 {lab=output}
N -210 10 -210 30 {lab=Ibias}
N -210 -90 -210 -50 {lab=VDD}
N -160 150 -160 170 {lab=GND}
N -160 60 -80 60 {lab=Ibias}
N -80 60 -80 120 {lab=Ibias}
N -210 60 -160 60 {lab=Ibias}
N -210 30 -210 60 {lab=Ibias}
N -160 60 -160 90 {lab=Ibias}
N -220 120 -160 120 {lab=GND}
N -220 120 -220 170 {lab=GND}
N -220 170 -160 170 {lab=GND}
N -120 120 -80 120 {lab=Ibias}
N -80 120 360 120 {lab=Ibias}
N 360 -30 360 120 {lab=Ibias}
N 480 250 570 250 {lab=output}
N 570 -110 570 250 {lab=output}
C {lab_pin.sym} -110 -360 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} -110 -270 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} -230 -360 0 0 {name=p3 sig_type=std_logic lab=GND}
C {gnd.sym} -230 -190 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -110 -180 0 0 {name=p4 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} -870 -270 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} -890 -160 0 0 {name=Simulation only_toplevel=false 

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
C {lab_pin.sym} 360 -250 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 390 30 0 1 {name=p5 sig_type=std_logic lab=GND}
C {capa.sym} 670 -30 0 0 {name=CLOAD
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 670 30 0 0 {name=p7 sig_type=std_logic lab=GND}
C {lab_pin.sym} 720 -110 0 1 {name=p8 sig_type=std_logic lab=output}
C {vsource.sym} 60 -100 0 1 {name=VINP value= "PULSE(0 .1 25u 1p 100n 2m 1)" savecurrent=false}
C {vsource.sym} 60 180 0 0 {name=VCM value= 1.65 savecurrent=false}
C {lab_pin.sym} 60 240 0 0 {name=p9 sig_type=std_logic lab=GND}
C {lab_pin.sym} 110 -160 1 0 {name=p10 sig_type=std_logic lab=input}
C {libs/core_amps/ota_telescopic/programmable_telescopic_cascode.sym} 370 -90 0 0 {name=x1}
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
C {lab_pin.sym} -210 30 0 0 {name=p14 sig_type=std_logic lab=Ibias}
C {lab_pin.sym} -220 170 0 0 {name=p17 sig_type=std_logic lab=GND}
C {lab_pin.sym} 220 -120 0 0 {name=p11 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 220 -100 0 0 {name=p12 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 220 -80 0 0 {name=p13 sig_type=std_logic lab=GND}
C {lab_pin.sym} 220 -140 0 0 {name=p15 sig_type=std_logic lab=GND}

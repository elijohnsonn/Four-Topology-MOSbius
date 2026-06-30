v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 360 -110 360 -50 {lab=GND}
N -70 -310 -70 -250 {lab=VDD}
N -190 -310 -190 -250 {lab=GND}
N -190 -190 -190 -140 {lab=GND}
N -70 -190 -70 -140 {lab=GND}
N -70 -140 -70 -130 {lab=GND}
N -190 -250 -190 -190 {lab=GND}
N 340 -330 340 -270 {lab=VDD}
N 340 -40 340 -20 {lab=#net1}
N 340 40 340 80 {lab=VDD}
N 510 -190 630 -190 {lab=output}
N 580 -190 580 -140 {lab=output}
N 580 -80 580 -50 {lab=GND}
N 190 -230 280 -230 {lab=input}
N 100 -140 100 -100 {lab=#net2}
N 190 -20 190 20 {lab=output}
N 100 140 100 170 {lab=GND}
N 340 -110 340 -40 {lab=#net1}
N 190 -100 190 -80 {lab=output}
N 100 -230 190 -230 {lab=input}
N 100 -230 100 -200 {lab=input}
N 100 -100 100 40 {lab=#net2}
N 190 -80 190 -20 {lab=output}
N 190 20 190 180 {lab=output}
N 190 180 510 180 {lab=output}
N 510 -190 510 180 {lab=output}
N 100 40 100 80 {lab=#net2}
N 190 -160 280 -160 {lab=output}
N 190 -160 190 -100 {lab=output}
N 460 -190 510 -190 {lab=output}
C {isource.sym} 340 10 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -70 -310 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} -70 -220 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} -190 -310 0 0 {name=p3 sig_type=std_logic lab=GND}
C {gnd.sym} -190 -140 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -70 -130 0 0 {name=p4 sig_type=std_logic lab=GND}
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
C {lab_pin.sym} 340 -330 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 360 -50 0 1 {name=p5 sig_type=std_logic lab=GND}
C {capa.sym} 580 -110 0 0 {name=CLOAD
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 580 -50 0 0 {name=p7 sig_type=std_logic lab=GND}
C {lab_pin.sym} 630 -190 0 1 {name=p8 sig_type=std_logic lab=output}
C {lab_pin.sym} 340 80 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {vsource.sym} 100 -170 0 1 {name=VINP value= "PULSE(0 .1 25u 1p 100n 2m 1)" savecurrent=false}
C {vsource.sym} 100 110 0 0 {name=VCM value= 1.65 savecurrent=false}
C {lab_pin.sym} 100 170 0 0 {name=p9 sig_type=std_logic lab=GND}
C {lab_pin.sym} 150 -230 1 0 {name=p10 sig_type=std_logic lab=input}
C {libs/core_amps/ota_telescopic/telescopic_cascode.sym} 340 -190 0 0 {name=x1}

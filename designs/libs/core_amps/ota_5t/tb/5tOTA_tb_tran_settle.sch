v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 4 50 -500 760 -130 {fill=0
}
T {Amplifier Performance} 180 -480 0 0 0.8 0.8 {}
T {} 100 -380 0 0 0.5 0.5 {}
T {-Driving Ideal 120 pF load capacitance
-Intended load of 100 pF off-chip,
    10-20 pF added for parasitic modeling

Small-Step Settling (100mV step, 1.65V → 1.75V):

Settled Output: 1.75607V (6.07mV error from ideal)
0.1% Settling Time: 0.32µs} 70 -400 0 0 0.5 0.5 {}
N 120 -620 120 -590 {lab=GND}
N 120 -730 120 -680 {lab=VSS}
N 120 -850 120 -790 {lab=VDD}
N 293.359375 -728.125 293.359375 -678.125 {lab=VDD}
N 200 -730 200 -680 {lab=#net1}
N 200 -850 200 -790 {lab=vin}
N 420 -690 460 -690 {lab=vout}
N 420 -690 420 -610 {lab=vout}
N 650 -710 760 -710 {lab=vout}
N 680 -710 680 -670 {lab=vout}
N 680 -610 680 -570 {lab=GND}
N 600 -710 650 -710 {lab=vout}
N 380 -730 460 -730 {lab=vin}
N 343.359375 -670 460 -670 {lab=i_bias}
N 293.359375 -810 293.359375 -788.125 {lab=i_bias}
N 293.359375 -810 320 -810 {lab=i_bias}
N 530.0390625 -650 530.0390625 -626.25 {lab=VSS}
N 497.5 -626.25 530.0390625 -626.25 {lab=VSS}
N 620 -710 620 -610 {lab=vout}
N 420 -610 620 -610 {lab=vout}
C {devices/code_shown.sym} 810 -800 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {title.sym} 190 -70 0 0 {name=l1 author="Songhang Li"}
C {devices/vsource.sym} 120 -650 0 0 {name=V1 value=0 savecurrent=false}
C {devices/gnd.sym} 120 -590 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 120 -760 0 0 {name=V2 value=3.3 savecurrent=false}
C {devices/lab_wire.sym} 120 -700 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 120 -820 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/isource.sym} 293.359375 -758.125 2 0 {name=I0 value=100u}
C {devices/lab_wire.sym} 293.359375 -688.125 3 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 200 -760 0 0 {name=vin value="PULSE(0 .1 25u 1p 100n 2m 1)" savecurrent=false}
C {devices/lab_wire.sym} 200 -820 0 0 {name=p8 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 400 -730 0 0 {name=p9 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 750 -710 0 0 {name=p1 sig_type=std_logic lab=vout}
C {devices/lab_wire.sym} 530 -770 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 680 -570 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} 810 -700 0 0 {name=Simulation only_toplevel=false value="
.control

*10mA transient

tran 1n 50u
meas tran v_input find v(vin) at=40u 
meas tran v_output find v(vout) at=40u
let v_error = v_input - v_output 
print v_error

meas tran vpeak max v(vout) from=10u to=50u
meas tran vfinal find v(vout) at=40u 
let target_low = vfinal * 0.999
meas tran settle_01 when v(vout) = target_low rise = last

print v_input v_output
print vpeak vfinal 
print settle_01

plot v(vin) v(vout)
plot v(vout) - v(vin) 

.endc
"}
C {devices/lab_wire.sym} 370 -670 0 0 {name=p10 sig_type=std_logic lab=i_bias}
C {devices/lab_wire.sym} 310 -810 0 0 {name=p11 sig_type=std_logic lab=i_bias}
C {devices/lab_wire.sym} 498.75 -626.25 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {capa.sym} 680 -640 0 0 {name=C2
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 200 -650 0 0 {name=V3 value=1.65 savecurrent=false}
C {devices/gnd.sym} 200 -620 0 0 {name=l4 lab=GND}
C {libs/core_amps/ota_5t/schem/5tOTA.sym} 530 -710 0 0 {name=x1}

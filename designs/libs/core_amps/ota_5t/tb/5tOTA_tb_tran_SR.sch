v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 4 60 -480 740 -120 {fill=0
}
T {Amplifier Performance} 170 -450 0 0 0.8 0.8 {}
T {-Driving Ideal 120 pF load capacitance
-Intended load of 100 pF off-chip,
    10-20 pF added for parasitic modeling

Unity Step Response (1V step, 1.65V →  2.65V):

Slew Rate: 2.54 V/µs} 90 -360 0 0 0.5 0.5 {}
N 120 -570 120 -540 {lab=GND}
N 120 -680 120 -630 {lab=VSS}
N 120 -800 120 -740 {lab=VDD}
N 293.359375 -678.125 293.359375 -628.125 {lab=VDD}
N 200 -680 200 -630 {lab=#net1}
N 200 -800 200 -740 {lab=vin}
N 420 -640 460 -640 {lab=vout}
N 420 -640 420 -560 {lab=vout}
N 650 -660 760 -660 {lab=vout}
N 680 -660 680 -620 {lab=vout}
N 680 -560 680 -520 {lab=GND}
N 600 -660 650 -660 {lab=vout}
N 380 -680 460 -680 {lab=vin}
N 343.359375 -620 460 -620 {lab=i_bias}
N 293.359375 -760 293.359375 -738.125 {lab=i_bias}
N 293.359375 -760 320 -760 {lab=i_bias}
N 530.0390625 -600 530.0390625 -576.25 {lab=VSS}
N 497.5 -576.25 530.0390625 -576.25 {lab=VSS}
N 620 -660 620 -560 {lab=vout}
N 420 -560 620 -560 {lab=vout}
C {devices/code_shown.sym} 830 -800 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {title.sym} 190 -70 0 0 {name=l1 author="Songhang Li"}
C {devices/vsource.sym} 120 -600 0 0 {name=V1 value=0 savecurrent=false}
C {devices/gnd.sym} 120 -540 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 120 -710 0 0 {name=V2 value=3.3 savecurrent=false}
C {devices/lab_wire.sym} 120 -650 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 120 -770 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/isource.sym} 293.359375 -708.125 2 0 {name=I0 value=100u}
C {devices/lab_wire.sym} 293.359375 -638.125 3 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 200 -710 0 0 {name=vin value="PULSE(0 1 25u 1p 100n 2m 1)" savecurrent=false}
C {devices/lab_wire.sym} 200 -770 0 0 {name=p8 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 400 -680 0 0 {name=p9 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 660 -660 0 0 {name=p1 sig_type=std_logic lab=vout}
C {devices/lab_wire.sym} 530 -720 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 680 -520 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} 840 -650 0 0 {name=Simulation only_toplevel=false value="
.control
set color0 = white
set color1 = black
*1V transient

tran 1n 100u
meas tran v_before find v(vout) at=24u
meas tran v_after find v(vout) at=90u
let v_20 = v_before + 0.2 * (v_after - v_before)
let v_80 = v_before + 0.8 * (v_after - v_before)
meas tran t_20 when v(vout) = v_20 rise = 1 from=25u
meas tran t_80 when v(vout) = v_80 rise = 1 from=25u
let slew_rate = (v_80 - v_20) / (t_80 - t_20)
print v_before v_after
print slew_rate

plot v(vin) v(vout)
plot v(vout) - v(vin) 

.endc
"}
C {devices/lab_wire.sym} 370 -620 0 0 {name=p10 sig_type=std_logic lab=i_bias}
C {devices/lab_wire.sym} 310 -760 0 0 {name=p11 sig_type=std_logic lab=i_bias}
C {devices/lab_wire.sym} 498.75 -576.25 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {capa.sym} 680 -590 0 0 {name=C2
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {vsource.sym} 200 -600 0 0 {name=V3 value=1.65 savecurrent=false}
C {devices/gnd.sym} 200 -570 0 0 {name=l4 lab=GND}
C {libs/core_amps/ota_5t/schem/5tOTA.sym} 530 -660 0 0 {name=x1}

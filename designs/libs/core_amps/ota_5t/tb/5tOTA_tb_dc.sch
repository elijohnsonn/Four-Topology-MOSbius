v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 4 50 -500 740 -180 {fill=0
}
T {Amplifier Performance} 180 -470 0 0 0.8 0.8 {}
T {-Driving Ideal 100 pF load capacitance

ICMR: 0.228V – 3.072V (2.844V range)
Output Swing: 0.253V – 3.060V (2.807V range)} 100 -350 0 0 0.5 0.5 {}
N 140 -590 140 -560 {lab=GND}
N 140 -700 140 -650 {lab=VSS}
N 140 -820 140 -760 {lab=VDD}
N 313.359375 -698.125 313.359375 -648.125 {lab=VDD}
N 220 -700 220 -650 {lab=VSS}
N 220 -820 220 -760 {lab=vin}
N 440 -660 480 -660 {lab=vout}
N 440 -660 440 -580 {lab=vout}
N 670 -680 780 -680 {lab=vout}
N 700 -680 700 -640 {lab=vout}
N 700 -580 700 -540 {lab=GND}
N 620 -680 670 -680 {lab=vout}
N 400 -700 480 -700 {lab=vin}
N 363.359375 -640 480 -640 {lab=i_bias}
N 313.359375 -780 313.359375 -758.125 {lab=i_bias}
N 313.359375 -780 340 -780 {lab=i_bias}
N 550.0390625 -620 550.0390625 -596.25 {lab=VSS}
N 517.5 -596.25 550.0390625 -596.25 {lab=VSS}
N 640 -680 640 -580 {lab=vout}
N 440 -580 640 -580 {lab=vout}
C {devices/code_shown.sym} 820 -780 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {title.sym} 190 -70 0 0 {name=l1 author="Songhang Li"}
C {devices/vsource.sym} 140 -620 0 0 {name=V1 value=0 savecurrent=false}
C {devices/gnd.sym} 140 -560 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 140 -730 0 0 {name=V2 value=3.3 savecurrent=false}
C {devices/lab_wire.sym} 140 -670 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 140 -790 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/isource.sym} 313.359375 -728.125 2 0 {name=I0 value=100u}
C {devices/lab_wire.sym} 313.359375 -658.125 3 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 220 -730 0 0 {name=vin value=1.5 savecurrent=false}
C {devices/lab_wire.sym} 220 -670 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 220 -790 0 0 {name=p8 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 420 -700 0 0 {name=p9 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 770 -680 0 0 {name=p1 sig_type=std_logic lab=vout}
C {devices/lab_wire.sym} 550 -740 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {devices/gnd.sym} 700 -540 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} 830 -640 0 0 {name=Simulation only_toplevel=false value="
.control
set color0 = white
set color1 = black

*DC Unity
dc vin 0 4 0.001
let gain = deriv(v(vout))
meas dc icmr_low when gain = 0.95 rise = 1
meas dc icmr_high when gain = 0.95 fall = last
let swing_low = icmr_low
let swing_high = icmr_high
print icmr_low icmr_high
print swing_high - swing_low

meas dc out_swing_low find v(vout) when gain = 0.95 rise = 1
meas dc out_swing_high find v(vout) when gain = 0.95 fall = last
print out_swing_low out_swing_high
print out_swing_high - out_swing_low

plot v(vout) gain

.endc
"}
C {devices/lab_wire.sym} 390 -640 0 0 {name=p10 sig_type=std_logic lab=i_bias}
C {devices/lab_wire.sym} 330 -780 0 0 {name=p11 sig_type=std_logic lab=i_bias}
C {devices/lab_wire.sym} 518.75 -596.25 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {capa.sym} 700 -610 0 0 {name=C2
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {libs/core_amps/ota_5t/schem/5tOTA.sym} 550 -680 0 0 {name=x1}

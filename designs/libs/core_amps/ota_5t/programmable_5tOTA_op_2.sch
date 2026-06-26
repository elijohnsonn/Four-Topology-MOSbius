v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 440 -530 {}
P 4 1 520 -520 {}
N 500 -410 500 -370 {lab=V_bias}
N 500 -370 500 -350 {lab=V_bias}
N 500 -380 570 -380 {lab=V_bias}
N 570 -380 570 -320 {lab=V_bias}
N 540 -320 570 -320 {lab=V_bias}
N 500 -290 500 -250 {lab=GND}
N 430 -320 500 -320 {lab=GND}
N 430 -320 430 -270 {lab=GND}
N 430 -270 500 -270 {lab=GND}
N 500 -250 500 -230 {lab=GND}
N 500 -440 500 -410 {lab=V_bias}
N 570 -320 630 -320 {lab=V_bias}
N 500 -550 500 -500 {lab=VDD}
N 300 -470 300 -410 {lab=VDD}
N 180 -470 180 -410 {lab=GND}
N 180 -350 180 -300 {lab=GND}
N 300 -350 300 -300 {lab=GND}
N 300 -300 300 -290 {lab=GND}
N 180 -410 180 -350 {lab=GND}
N 1140 -810 1140 -780 {lab=VDD}
N 1140 -580 1140 -550 {lab=GND}
N 960 -740 1020 -740 {lab=VDD}
N 960 -720 1020 -720 {lab=GND}
N 960 -760 1020 -760 {lab=GND}
N 960 -780 1020 -780 {lab=VDD}
N 1360 -580 1360 -550 {lab=GND}
N 1360 -680 1360 -650 {lab=output}
N 1360 -650 1360 -640 {lab=output}
N 860 -555 860 -515 {lab=#net1}
N 860 -275 860 -245 {lab=GND}
N 860 -515 860 -375 {lab=#net1}
N 860 -375 860 -335 {lab=#net1}
N 1180 -600 1180 -560 {lab=V_bias}
N 1240 -680 1520 -680 {lab=output}
N 860 -640 860 -615 {lab=#net2}
N 860 -640 1020 -640 {lab=#net2}
N 960 -580 1020 -580 {lab=output}
N 960 -580 960 -400 {lab=output}
N 960 -400 1460 -400 {lab=output}
N 1460 -680 1460 -400 {lab=output}
C {title.sym} 190 -70 0 0 {name=l1 author="Songhang Li"}
C {symbols/nfet_03v3.sym} 520 -320 0 1 {name=M2
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
C {lab_pin.sym} 630 -320 0 1 {name=p15 sig_type=std_logic lab=V_bias}
C {lab_pin.sym} 1180 -560 0 1 {name=p16 sig_type=std_logic lab=V_bias}
C {isource.sym} 500 -470 0 0 {name=I2 value=100u}
C {lab_pin.sym} 300 -470 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {vsource.sym} 300 -380 0 0 {name=V3 value= 3.3 savecurrent=false}
C {lab_pin.sym} 180 -470 0 0 {name=p18 sig_type=std_logic lab=GND}
C {gnd.sym} 180 -300 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 300 -290 0 0 {name=p19 sig_type=std_logic lab=GND}
C {lab_pin.sym} 500 -230 0 0 {name=p20 sig_type=std_logic lab=GND}
C {lab_pin.sym} 500 -550 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1140 -810 0 1 {name=p22 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1140 -550 0 0 {name=p23 sig_type=std_logic lab=GND}
C {lab_pin.sym} 960 -740 0 0 {name=p24 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 960 -720 0 0 {name=p25 sig_type=std_logic lab=GND}
C {lab_pin.sym} 1520 -680 0 1 {name=p26 sig_type=std_logic lab=output}
C {capa.sym} 1360 -610 0 0 {name=CLOAD
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1360 -550 0 0 {name=p27 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} 80 -1010 0 0 {name=Models1 only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} 960 -760 0 0 {name=p28 sig_type=std_logic lab=GND}
C {lab_pin.sym} 960 -780 0 0 {name=p29 sig_type=std_logic lab=VDD}
C {code_shown.sym} 80 -870 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control

dc VINP 0 4 0.001
let gain = deriv(v(output))
meas dc icmr_low when gain = 0.95 rise = 1
meas dc icmr_high when gain = 0.95 fall = 1
let swing_low = icmr_low
let swing_high = icmr_high
print icmr_low icmr_high
print swing_high - swing_low

plot v(output) gain

.endc
"}
C {vsource.sym} 860 -585 0 0 {name=VINP value= 0 savecurrent=false}
C {vsource.sym} 860 -305 0 0 {name=VCM value= 0 savecurrent=false}
C {lab_pin.sym} 860 -245 0 0 {name=p30 sig_type=std_logic lab=GND}
C {libs/core_amps/ota_5t/programmable_5tOTA_2.sym} 1140 -680 0 0 {name=x2}

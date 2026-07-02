v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
B 4 1420 -880 2110 -280 {fill=0
}
P 4 1 350 -530 {}
P 4 1 430 -520 {}
T {Amplifier Performance(DC)} 1470 -850 0 0 0.8 0.8 {}
T {-Driving Ideal 100 pF load capacitance

1xW/L
ICMR: 0.298V – 2.924V (2.626V range)
Output Swing: 0.298V – 2.924V (2.626V range)

2xW/L
ICMR: 0.271V – 2.924V (2.653V range)
Output Swing: 0.271V – 2.924V (2.653V range)

3xW/L
ICMR: 0.261V – 2.924V (2.663V range)
Output Swing: 0.261V – 2.924V (2.663V range)} 1460 -740 0 0 0.5 0.5 {}
N 410 -410 410 -370 {lab=V_bias}
N 410 -370 410 -350 {lab=V_bias}
N 410 -380 480 -380 {lab=V_bias}
N 480 -380 480 -320 {lab=V_bias}
N 450 -320 480 -320 {lab=V_bias}
N 410 -290 410 -250 {lab=GND}
N 340 -320 410 -320 {lab=GND}
N 340 -320 340 -270 {lab=GND}
N 340 -270 410 -270 {lab=GND}
N 410 -250 410 -230 {lab=GND}
N 410 -440 410 -410 {lab=V_bias}
N 480 -320 540 -320 {lab=V_bias}
N 410 -550 410 -500 {lab=VDD}
N 210 -470 210 -410 {lab=VDD}
N 90 -470 90 -410 {lab=GND}
N 90 -350 90 -300 {lab=GND}
N 210 -350 210 -300 {lab=GND}
N 210 -300 210 -290 {lab=GND}
N 90 -410 90 -350 {lab=GND}
N 870 -720 870 -690 {lab=VDD}
N 870 -510 870 -480 {lab=GND}
N 700 -640 760 -640 {lab=GND}
N 700 -620 760 -620 {lab=VDD}
N 700 -660 760 -660 {lab=GND}
N 700 -680 760 -680 {lab=VDD}
N 1130 -500 1130 -470 {lab=GND}
N 1130 -600 1130 -570 {lab=output}
N 1130 -570 1130 -560 {lab=output}
N 630 -495 630 -455 {lab=#net1}
N 630 -215 630 -185 {lab=GND}
N 630 -455 630 -315 {lab=#net1}
N 630 -315 630 -275 {lab=#net1}
N 920 -520 920 -480 {lab=V_bias}
N 1010 -600 1290 -600 {lab=output}
N 630 -580 630 -555 {lab=#net2}
N 730 -520 730 -340 {lab=output}
N 730 -340 1230 -340 {lab=output}
N 630 -580 760 -580 {lab=#net2}
N 730 -520 760 -520 {lab=output}
N 1230 -600 1230 -340 {lab=output}
N 990 -600 1010 -600 {lab=output}
C {title.sym} 190 -70 0 0 {name=l1 author="Songhang Li"}
C {symbols/nfet_03v3.sym} 430 -320 0 1 {name=M2
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
C {lab_pin.sym} 540 -320 0 1 {name=p15 sig_type=std_logic lab=V_bias}
C {lab_pin.sym} 920 -495 0 1 {name=p16 sig_type=std_logic lab=V_bias}
C {isource.sym} 410 -470 0 0 {name=I2 value=100u}
C {lab_pin.sym} 210 -470 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {vsource.sym} 210 -380 0 0 {name=V3 value= 3.3 savecurrent=false}
C {lab_pin.sym} 90 -470 0 0 {name=p18 sig_type=std_logic lab=GND}
C {gnd.sym} 90 -300 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 210 -290 0 0 {name=p19 sig_type=std_logic lab=GND}
C {lab_pin.sym} 410 -230 0 0 {name=p20 sig_type=std_logic lab=GND}
C {lab_pin.sym} 410 -550 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 870 -720 0 1 {name=p22 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 870 -490 0 0 {name=p23 sig_type=std_logic lab=GND}
C {lab_pin.sym} 700 -680 0 0 {name=p24 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 700 -660 0 0 {name=p25 sig_type=std_logic lab=GND}
C {lab_pin.sym} 1290 -600 0 1 {name=p26 sig_type=std_logic lab=output}
C {capa.sym} 1130 -530 0 0 {name=CLOAD
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1130 -470 0 0 {name=p27 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} 40 -950 0 0 {name=Models1 only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} 700 -640 0 0 {name=p28 sig_type=std_logic lab=GND}
C {lab_pin.sym} 700 -620 0 0 {name=p29 sig_type=std_logic lab=VDD}
C {code_shown.sym} 50 -840 0 0 {name=Simulation1 only_toplevel=false 

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
C {vsource.sym} 630 -525 0 0 {name=VINP value= 0 savecurrent=false}
C {vsource.sym} 630 -245 0 0 {name=VCM value= 0 savecurrent=false}
C {lab_pin.sym} 630 -185 0 0 {name=p30 sig_type=std_logic lab=GND}
C {libs/core_amps/ota_5t/schem/programmable_5tOTA.sym} 910 -600 0 0 {name=x1}

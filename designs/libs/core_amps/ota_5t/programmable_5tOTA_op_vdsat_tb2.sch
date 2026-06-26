v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 2100 -890 {}
P 4 1 2180 -880 {}
N 2160 -770 2160 -730 {lab=V_bias}
N 2160 -730 2160 -710 {lab=V_bias}
N 2160 -740 2230 -740 {lab=V_bias}
N 2230 -740 2230 -680 {lab=V_bias}
N 2200 -680 2230 -680 {lab=V_bias}
N 2160 -650 2160 -610 {lab=GND}
N 2090 -680 2160 -680 {lab=GND}
N 2090 -680 2090 -630 {lab=GND}
N 2090 -630 2160 -630 {lab=GND}
N 2160 -610 2160 -590 {lab=GND}
N 2160 -800 2160 -770 {lab=V_bias}
N 2230 -680 2290 -680 {lab=V_bias}
N 2160 -910 2160 -860 {lab=VDD}
N 1960 -830 1960 -770 {lab=VDD}
N 1840 -830 1840 -770 {lab=GND}
N 1840 -710 1840 -660 {lab=GND}
N 1960 -710 1960 -660 {lab=GND}
N 1960 -660 1960 -650 {lab=GND}
N 1840 -770 1840 -710 {lab=GND}
N 2800 -1170 2800 -1140 {lab=VDD}
N 2800 -940 2800 -910 {lab=GND}
N 2620 -1100 2680 -1100 {lab=VDD}
N 2620 -1080 2680 -1080 {lab=GND}
N 2620 -1120 2680 -1120 {lab=GND}
N 2620 -1140 2680 -1140 {lab=VDD}
N 3020 -940 3020 -910 {lab=GND}
N 3020 -1040 3020 -1010 {lab=output}
N 3020 -1010 3020 -1000 {lab=output}
N 2840 -960 2840 -920 {lab=V_bias}
N 2900 -1040 3180 -1040 {lab=output}
N 2520 -1000 2680 -1000 {lab=#net1}
N 2620 -940 2680 -940 {lab=#net1}
N 2520 -760 2520 -730 {lab=GND}
N 2520 -1000 2520 -850 {lab=#net1}
N 2520 -850 2520 -820 {lab=#net1}
N 2520 -940 2620 -940 {lab=#net1}
C {devices/code_shown.sym} 1000 -750 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 1000 -610 0 0 {name=Simulation only_toplevel=false 

value=

"
.control
op

show all

.endc

"
}
C {symbols/nfet_03v3.sym} 2180 -680 0 1 {name=M2
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
C {lab_pin.sym} 2290 -680 0 1 {name=p15 sig_type=std_logic lab=V_bias}
C {lab_pin.sym} 2840 -920 0 1 {name=p16 sig_type=std_logic lab=V_bias}
C {isource.sym} 2160 -830 0 0 {name=I2 value=100u}
C {lab_pin.sym} 1960 -830 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {vsource.sym} 1960 -740 0 0 {name=V3 value= 3.3 savecurrent=false}
C {lab_pin.sym} 1840 -830 0 0 {name=p18 sig_type=std_logic lab=GND}
C {gnd.sym} 1840 -660 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 1960 -650 0 0 {name=p19 sig_type=std_logic lab=GND}
C {lab_pin.sym} 2160 -590 0 0 {name=p20 sig_type=std_logic lab=GND}
C {lab_pin.sym} 2160 -910 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 2800 -1170 0 1 {name=p22 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 2800 -910 0 0 {name=p23 sig_type=std_logic lab=GND}
C {lab_pin.sym} 2620 -1100 0 0 {name=p24 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 2620 -1080 0 0 {name=p25 sig_type=std_logic lab=GND}
C {lab_pin.sym} 3180 -1040 0 1 {name=p26 sig_type=std_logic lab=output}
C {capa.sym} 3020 -970 0 0 {name=CLOAD1
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 3020 -910 0 0 {name=p27 sig_type=std_logic lab=GND}
C {lab_pin.sym} 2620 -1120 0 0 {name=p28 sig_type=std_logic lab=GND}
C {lab_pin.sym} 2620 -1140 0 0 {name=p29 sig_type=std_logic lab=VDD}
C {libs/core_amps/ota_5t/programmable_5tOTA_2.sym} 2800 -1040 0 0 {name=x2}
C {vsource.sym} 2520 -790 0 0 {name=VCM1 value= 1.65 savecurrent=false}
C {lab_pin.sym} 2520 -730 0 0 {name=p10 sig_type=std_logic lab=GND}

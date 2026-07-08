v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 520 -500 {}
P 4 1 600 -490 {}
N 580 -380 580 -340 {lab=V_bias}
N 580 -340 580 -320 {lab=V_bias}
N 580 -350 650 -350 {lab=V_bias}
N 650 -350 650 -290 {lab=V_bias}
N 620 -290 650 -290 {lab=V_bias}
N 580 -260 580 -220 {lab=GND}
N 510 -290 580 -290 {lab=GND}
N 510 -290 510 -240 {lab=GND}
N 510 -240 580 -240 {lab=GND}
N 580 -220 580 -200 {lab=GND}
N 580 -410 580 -380 {lab=V_bias}
N 650 -290 710 -290 {lab=V_bias}
N 580 -520 580 -470 {lab=VDD}
N 380 -440 380 -380 {lab=VDD}
N 260 -440 260 -380 {lab=GND}
N 260 -320 260 -270 {lab=GND}
N 380 -320 380 -270 {lab=GND}
N 380 -270 380 -260 {lab=GND}
N 260 -380 260 -320 {lab=GND}
N 1210 -750 1210 -720 {lab=VDD}
N 1210 -540 1210 -510 {lab=GND}
N 1040 -670 1100 -670 {lab=VDD}
N 1040 -650 1100 -650 {lab=GND}
N 1040 -690 1100 -690 {lab=GND}
N 1040 -710 1100 -710 {lab=VDD}
N 1450 -530 1450 -500 {lab=GND}
N 1450 -630 1450 -600 {lab=output}
N 1450 -600 1450 -590 {lab=output}
N 1260 -550 1260 -510 {lab=V_bias}
N 1330 -630 1610 -630 {lab=output}
N 940 -610 1100 -610 {lab=#net1}
N 1040 -550 1100 -550 {lab=#net1}
N 940 -370 940 -340 {lab=GND}
N 940 -610 940 -460 {lab=#net1}
N 940 -460 940 -430 {lab=#net1}
N 940 -550 1040 -550 {lab=#net1}
C {devices/code_shown.sym} 10 -1050 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {symbols/nfet_03v3.sym} 600 -290 0 1 {name=M2
L=.5u
W=23u
nf=1
m=1*0.589
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 710 -290 0 1 {name=p15 sig_type=std_logic lab=V_bias}
C {lab_pin.sym} 1260 -510 0 1 {name=p16 sig_type=std_logic lab=V_bias}
C {isource.sym} 580 -440 0 0 {name=I2 value=100u}
C {lab_pin.sym} 380 -440 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {vsource.sym} 380 -350 0 0 {name=V3 value= 3.3 savecurrent=false}
C {lab_pin.sym} 260 -440 0 0 {name=p18 sig_type=std_logic lab=GND}
C {gnd.sym} 260 -270 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 380 -260 0 0 {name=p19 sig_type=std_logic lab=GND}
C {lab_pin.sym} 580 -200 0 0 {name=p20 sig_type=std_logic lab=GND}
C {lab_pin.sym} 580 -520 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1210 -750 0 1 {name=p22 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1210 -510 0 0 {name=p23 sig_type=std_logic lab=GND}
C {lab_pin.sym} 1040 -670 0 0 {name=p24 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1040 -650 0 0 {name=p25 sig_type=std_logic lab=GND}
C {lab_pin.sym} 1610 -630 0 1 {name=p26 sig_type=std_logic lab=output}
C {capa.sym} 1450 -560 0 0 {name=CLOAD1
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 1450 -500 0 0 {name=p27 sig_type=std_logic lab=GND}
C {lab_pin.sym} 1040 -690 0 0 {name=p28 sig_type=std_logic lab=GND}
C {lab_pin.sym} 1040 -710 0 0 {name=p29 sig_type=std_logic lab=VDD}
C {vsource.sym} 940 -400 0 0 {name=VCM1 value= 1.65 savecurrent=false}
C {lab_pin.sym} 940 -340 0 0 {name=p10 sig_type=std_logic lab=GND}
C {code_shown.sym} 0 -930 0 0 {name=Simulation1 only_toplevel=false 

value=

"
.control

op
show m : vdsat vth

let m.x1.x5.xm1.m0_vod = @m.x1.x5.xm1.m0[vgs]-@m.x1.x5.xm1.m0[vth]
print  @m.x1.x5.xm1.m0[vgs] @m.x1.x5.xm1.m0[vth] @m.x1.x5.xm1.m0[vds] m.x1.x5.xm1.m0_vod

let m.x1.x1.xm1.m0_vod = @m.x1.x1.xm1.m0[vgs]-@m.x1.x1.xm1.m0[vth]
print  @m.x1.x1.xm1.m0[vgs] @m.x1.x1.xm1.m0[vth] @m.x1.x1.xm1.m0[vds] m.x1.x1.xm1.m0_vod

let m.x1.x2.xm1.m0_vod = @m.x1.x2.xm1.m0[vgs]-@m.x1.x2.xm1.m0[vth]
print  @m.x1.x2.xm1.m0[vgs] @m.x1.x2.xm1.m0[vth] @m.x1.x2.xm1.m0[vds] m.x1.x2.xm1.m0_vod

let m.x1.x3.xm1.m0_vod = @m.x1.x3.xm1.m0[vgs]-@m.x1.x3.xm1.m0[vth]
print  @m.x1.x3.xm1.m0[vgs] @m.x1.x3.xm1.m0[vth] @m.x1.x3.xm1.m0[vds] m.x1.x3.xm1.m0_vod

let m.x1.x4.xm1.m0_vod = @m.x1.x4.xm1.m0[vgs]-@m.x1.x4.xm1.m0[vth]
print  @m.x1.x4.xm1.m0[vgs] @m.x1.x4.xm1.m0[vth] @m.x1.x4.xm1.m0[vds] m.x1.x4.xm1.m0_vod


.endc

"
}
C {libs/core_amps/ota_5t/prgram_schem/programmable_5tOTA.sym} 1250 -630 0 0 {name=x1}

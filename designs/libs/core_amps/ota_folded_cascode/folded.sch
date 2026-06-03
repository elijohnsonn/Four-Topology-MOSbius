v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 -1040 40 {}
P 4 1 870 60 {}
N -870 -300 -870 -240 {lab=VDD}
N -980 10 -980 70 {lab=VDD}
N -990 -300 -990 -240 {lab=GND}
N -990 -180 -990 -130 {lab=GND}
N -870 -180 -870 -130 {lab=GND}
N -980 160 -980 200 {lab=VBN1}
N -870 -130 -870 -120 {lab=GND}
N -980 200 -980 220 {lab=VBN1}
N -980 190 -910 190 {lab=VBN1}
N -910 190 -910 250 {lab=VBN1}
N -940 250 -910 250 {lab=VBN1}
N -910 250 -880 250 {lab=VBN1}
N -980 280 -980 320 {lab=GND}
N -1050 250 -980 250 {lab=GND}
N -1050 250 -1050 300 {lab=GND}
N -1050 300 -980 300 {lab=GND}
N -980 320 -980 340 {lab=GND}
N 240 -170 240 -100 {lab=#net1}
N 550 -170 550 -100 {lab=#net2}
N 280 -70 510 -70 {lab=VBP1}
N 240 -40 240 80 {lab=#net3}
N 550 -40 550 80 {lab=OUT}
N 550 20 720 20 {lab=OUT}
N 280 110 510 110 {lab=VBN1}
N 280 260 510 260 {lab=#net3}
N 550 140 550 200 {lab=#net4}
N 550 200 550 230 {lab=#net4}
N 240 140 240 230 {lab=#net5}
N 240 290 240 340 {lab=GND}
N 240 340 550 340 {lab=GND}
N 550 290 550 340 {lab=GND}
N 410 340 410 370 {lab=GND}
N 240 -290 240 -230 {lab=VDD}
N 240 -290 550 -290 {lab=VDD}
N 550 -290 550 -230 {lab=VDD}
N 420 -330 420 -290 {lab=VDD}
N -190 -140 550 -140 {lab=#net2}
N 30 -120 30 -0 {lab=#net1}
N 30 -120 240 -120 {lab=#net1}
N -190 100 30 100 {lab=#net6}
N 30 60 30 100 {lab=#net6}
N -70 100 -70 150 {lab=#net6}
N -70 210 -70 250 {lab=GND}
N -170 180 -110 180 {lab=VBN1}
N -70 180 -0 180 {lab=GND}
N -0 180 0 230 {lab=GND}
N -70 230 0 230 {lab=GND}
N -190 30 30 30 {lab=GND}
N 190 260 240 260 {lab=GND}
N 190 260 190 340 {lab=GND}
N 190 340 240 340 {lab=GND}
N 190 110 240 110 {lab=GND}
N 190 110 190 260 {lab=GND}
N 550 110 610 110 {lab=GND}
N 550 340 610 340 {lab=GND}
N 610 110 610 340 {lab=GND}
N 550 260 610 260 {lab=GND}
N 190 -70 240 -70 {lab=VDD}
N 550 -70 610 -70 {lab=VDD}
N 550 -200 620 -200 {lab=VDD}
N 620 -290 620 -200 {lab=VDD}
N 550 -290 620 -290 {lab=VDD}
N 180 -200 240 -200 {lab=VDD}
N 170 -200 180 -200 {lab=VDD}
N 170 -290 170 -200 {lab=VDD}
N 170 -290 240 -290 {lab=VDD}
N -640 140 -640 230 {lab=VBP1}
N -640 40 -640 80 {lab=VDD}
N -980 130 -980 160 {lab=VBN1}
N -640 20 -640 40 {lab=VDD}
N -690 110 -640 110 {lab=VDD}
N -690 50 -690 110 {lab=VDD}
N -690 50 -640 50 {lab=VDD}
N -600 110 -470 110 {lab=VBP1}
N -640 160 -550 160 {lab=VBP1}
N -550 110 -550 160 {lab=VBP1}
N -880 250 -860 250 {lab=VBN1}
N -860 250 -810 250 {lab=VBN1}
N -990 -240 -990 -180 {lab=GND}
N -190 -140 -190 -0 {lab=#net2}
N -190 60 -190 100 {lab=#net6}
N -640 290 -640 340 {lab=GND}
N 280 -200 510 -200 {lab=VBP1}
N 240 20 340 20 {lab=#net3}
N 340 20 340 260 {lab=#net3}
N -330 30 -330 60 {lab=#net7}
N -330 30 -230 30 {lab=#net7}
N 70 30 90 30 {lab=#net8}
N 90 30 100 30 {lab=#net8}
N 100 30 100 70 {lab=#net8}
N 100 130 100 180 {lab=GND}
N -330 120 -330 180 {lab=GND}
N -640 280 -640 290 {lab=GND}
N -810 250 -680 250 {lab=VBN1}
N -640 250 -600 250 {lab=GND}
N -600 250 -600 300 {lab=GND}
N -640 300 -600 300 {lab=GND}
C {isource.sym} -980 100 0 0 {name=Iref value= 100u}
C {lab_pin.sym} -870 -300 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -980 10 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {vsource.sym} -870 -210 0 0 {name=V2 value=3.3 savecurrent=false}
C {lab_pin.sym} -990 -300 0 0 {name=p3 sig_type=std_logic lab=GND}
C {gnd.sym} -990 -130 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -870 -120 0 0 {name=p4 sig_type=std_logic lab=GND}
C {symbols/nfet_03v3.sym} -960 250 0 1 {name=M1
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
C {lab_pin.sym} -980 340 0 0 {name=p5 sig_type=std_logic lab=GND}
C {lab_pin.sym} -860 250 1 1 {name=p6 sig_type=std_logic lab= VBN1}
C {symbols/pfet_03v3.sym} 530 -200 0 0 {name=M2
L=.5u
W=17.55u
nf=10
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 530 -70 0 0 {name=M3
L=0.5u
W=1.17u
nf=10
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 260 -70 0 1 {name=M4
L=0.5u
W=1.17u
nf=10
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 260 -200 0 1 {name=M5
L=.5u
W=17.55u
nf=10
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 260 110 0 1 {name=M6
L=0.5u
W=34.5u
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
C {symbols/nfet_03v3.sym} 530 110 0 0 {name=M7
L=0.5u
W=34.5u
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
C {symbols/nfet_03v3.sym} 260 260 0 1 {name=M8
L=.5u
W=34.5u
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
C {symbols/nfet_03v3.sym} 530 260 0 0 {name=M9
L=.5u
W=34.5u
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
C {lab_pin.sym} 410 370 0 0 {name=p7 sig_type=std_logic lab=GND}
C {lab_pin.sym} 420 -330 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {symbols/nfet_03v3.sym} 50 30 0 1 {name=M10
L=.5u
W=44u
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
C {symbols/nfet_03v3.sym} -90 180 0 0 {name=M12
L=.5u
W=34.5u
nf=4
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
C {lab_pin.sym} -70 250 0 0 {name=p10 sig_type=std_logic lab=GND}
C {lab_pin.sym} -170 180 0 0 {name=p11 sig_type=std_logic lab= VBN1}
C {lab_pin.sym} 440 -70 1 0 {name=p15 sig_type=std_logic lab=VBP1}
C {lab_pin.sym} -70 30 1 0 {name=p18 sig_type=std_logic lab=GND}
C {lab_pin.sym} 190 -70 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 610 -70 0 1 {name=p20 sig_type=std_logic lab=VDD}
C {symbols/pfet_03v3.sym} -620 110 0 1 {name=M18
L=.5u
W=78u
nf=10
m=1
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {lab_pin.sym} -640 20 0 0 {name=p31 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -510 110 1 0 {name=p33 sig_type=std_logic lab=VBP1}
C {devices/code_shown.sym} 1150 -130 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 1160 40 0 0 {name=Simulation only_toplevel=false 

value=

"
.control
op

* --- key bias nodes (should be ~mid-supply / sane VGS) ---
print v(OUT) v(VBN1) v(VBP1)

* --- reference current: should be ~100u through the diode NMOS XM1 ---
print @m.xm1.m0[id]

* --- gm/id on every device (target ~10) ---
let gmid_m1  = @m.xm1.m0[gm]/@m.xm1.m0[id]
let gmid_m2  = @m.xm2.m0[gm]/@m.xm2.m0[id]
let gmid_m3  = @m.xm3.m0[gm]/@m.xm3.m0[id]
let gmid_m4  = @m.xm4.m0[gm]/@m.xm4.m0[id]
let gmid_m5  = @m.xm5.m0[gm]/@m.xm5.m0[id]
let gmid_m6  = @m.xm6.m0[gm]/@m.xm6.m0[id]
let gmid_m7  = @m.xm7.m0[gm]/@m.xm7.m0[id]
let gmid_m8  = @m.xm8.m0[gm]/@m.xm8.m0[id]
let gmid_m9  = @m.xm9.m0[gm]/@m.xm9.m0[id]
let gmid_m10 = @m.xm10.m0[gm]/@m.xm10.m0[id]
let gmid_m11 = @m.xm11.m0[gm]/@m.xm11.m0[id]
let gmid_m12 = @m.xm12.m0[gm]/@m.xm12.m0[id]
let gmid_m13 = @m.xm13.m0[gm]/@m.xm13.m0[id]
let gmid_m18 = @m.xm18.m0[gm]/@m.xm18.m0[id]
print gmid_m1 gmid_m2 gmid_m3 gmid_m4 gmid_m5
print gmid_m6 gmid_m7 gmid_m8 gmid_m9 gmid_m10
print gmid_m11 gmid_m12 gmid_m13 gmid_m18
.endc
"}
C {symbols/nfet_03v3.sym} -210 30 0 0 {name=M11
L=.5u
W=44u
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
C {lab_pin.sym} -640 340 0 0 {name=p12 sig_type=std_logic lab=GND}
C {lab_pin.sym} 420 -200 1 0 {name=p13 sig_type=std_logic lab=VBP1}
C {lab_pin.sym} 420 110 1 0 {name=p14 sig_type=std_logic lab=VBN1}
C {opin.sym} 720 20 0 0 {name=p9 lab=OUT}
C {vsource.sym} -330 90 0 0 {name=V1 value=1.65 savecurrent=false}
C {vsource.sym} 100 100 0 0 {name=V3 value=1.65 savecurrent=false}
C {lab_pin.sym} -330 180 0 0 {name=p16 sig_type=std_logic lab=GND}
C {lab_pin.sym} 100 180 0 0 {name=p17 sig_type=std_logic lab=GND}
C {symbols/nfet_03v3.sym} -660 250 0 0 {name=M13
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

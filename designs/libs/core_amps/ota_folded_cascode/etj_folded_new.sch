v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 1130 -100 {}
N -610 -460 -610 -400 {lab=VDD}
N -730 -460 -730 -400 {lab=VSS}
N 500 -330 500 -260 {lab=casc_pl}
N 810 -330 810 -260 {lab=casc_pr}
N 540 -230 770 -230 {lab=VBP2}
N 500 -200 500 -80 {lab=out_dio}
N 810 -200 810 -80 {lab=OUT}
N 810 -140 980 -140 {lab=OUT}
N 540 -50 770 -50 {lab=VBN2}
N 540 100 770 100 {lab=out_dio}
N 810 -20 810 40 {lab=casc_nr}
N 810 40 810 70 {lab=casc_nr}
N 500 -20 500 70 {lab=casc_nl}
N 500 130 500 180 {lab=VSS}
N 500 180 810 180 {lab=VSS}
N 810 130 810 180 {lab=VSS}
N 670 180 670 210 {lab=VSS}
N 500 -450 500 -390 {lab=VDD}
N 500 -450 810 -450 {lab=VDD}
N 810 -450 810 -390 {lab=VDD}
N 680 -490 680 -450 {lab=VDD}
N 70 -300 810 -300 {lab=casc_pr}
N 290 -280 290 -160 {lab=casc_pl}
N 290 -280 500 -280 {lab=casc_pl}
N 70 -60 290 -60 {lab=tail_curr}
N 290 -100 290 -60 {lab=tail_curr}
N 190 -60 190 -10 {lab=tail_curr}
N 190 50 190 90 {lab=VSS}
N 90 20 150 20 {lab=#net1}
N 190 20 260 20 {lab=VSS}
N 260 20 260 70 {lab=VSS}
N 190 70 260 70 {lab=VSS}
N 70 -130 290 -130 {lab=VSS}
N 450 100 500 100 {lab=VSS}
N 450 100 450 180 {lab=VSS}
N 450 180 500 180 {lab=VSS}
N 450 -50 500 -50 {lab=VSS}
N 450 -50 450 100 {lab=VSS}
N 810 -50 870 -50 {lab=VSS}
N 810 180 870 180 {lab=VSS}
N 870 -50 870 180 {lab=VSS}
N 810 100 870 100 {lab=VSS}
N 450 -230 500 -230 {lab=VDD}
N 810 -230 870 -230 {lab=VDD}
N 810 -360 880 -360 {lab=VDD}
N 880 -450 880 -360 {lab=VDD}
N 810 -450 880 -450 {lab=VDD}
N 440 -360 500 -360 {lab=VDD}
N 430 -360 440 -360 {lab=VDD}
N 430 -450 430 -360 {lab=VDD}
N 430 -450 500 -450 {lab=VDD}
N 70 -300 70 -160 {lab=casc_pr}
N 70 -100 70 -60 {lab=tail_curr}
N 540 -360 770 -360 {lab=VBP1}
N 500 -140 600 -140 {lab=out_dio}
N -70 -130 30 -130 {lab=INN}
N 330 -130 350 -130 {lab=INP}
N 350 -130 360 -130 {lab=INP}
N 980 -140 1020 -140 {lab=OUT}
N 10 20 90 20 {lab=#net1}
N 600 -140 610 -140 {lab=out_dio}
N 610 -140 630 -140 {lab=out_dio}
N 630 -140 630 100 {lab=out_dio}
N -520 -110 -520 -50 {lab=#net2}
N -520 10 -520 60 {lab=VBN2}
N -520 160 -520 210 {lab=VBN1}
N -520 -210 -520 -170 {lab=VDD}
N -520 270 -520 320 {lab=VSS}
N -480 -140 -410 -140 {lab=VBP1}
N -440 -140 -440 -90 {lab=VBP1}
N -440 -90 -370 -90 {lab=VBP1}
N -480 -20 -440 -20 {lab=VBN2}
N -520 60 -520 100 {lab=VBN2}
N -460 -20 -460 30 {lab=VBN2}
N -520 30 -460 30 {lab=VBN2}
N -520 60 -460 60 {lab=VBN2}
N -460 60 -460 130 {lab=VBN2}
N -480 130 -460 130 {lab=VBN2}
N -460 130 -430 130 {lab=VBN2}
N -520 180 -460 180 {lab=VBN1}
N -460 180 -460 240 {lab=VBN1}
N -480 240 -460 240 {lab=VBN1}
N -460 240 -440 240 {lab=VBN1}
N -350 -210 -350 -170 {lab=VDD}
N -410 -140 -390 -140 {lab=VBP1}
N -350 -110 -350 -60 {lab=VBP1}
N -370 -90 -350 -90 {lab=VBP1}
C {lab_pin.sym} -610 -460 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -730 -460 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {symbols/pfet_03v3.sym} 790 -360 0 0 {name=M2
L=1u
W=87u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/pfet_03v3.sym} 790 -230 0 0 {name=M3
L=0.5u
W=37u
nf=1
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
C {symbols/pfet_03v3.sym} 520 -230 0 1 {name=M4
L=0.5u
W=37u
nf=1
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
C {symbols/pfet_03v3.sym} 520 -360 0 1 {name=M5
L=1u
W=87u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=pfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 520 -50 0 1 {name=M6
L=0.5u
W=10.5u
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
C {symbols/nfet_03v3.sym} 790 -50 0 0 {name=M7
L=0.5u
W=10.5u
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
C {symbols/nfet_03v3.sym} 520 100 0 1 {name=M8
L=1u
W=20.5u
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
C {symbols/nfet_03v3.sym} 790 100 0 0 {name=M9
L=1u
W=20.5u
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
C {lab_pin.sym} 670 210 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 680 -490 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {symbols/nfet_03v3.sym} 310 -130 0 1 {name=M10
L=.5u
W=30u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {symbols/nfet_03v3.sym} 170 20 0 0 {name=M12
L=1u
W=40u
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
C {lab_pin.sym} 190 90 0 0 {name=p10 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 190 -130 1 0 {name=p18 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 450 -230 0 0 {name=p19 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 870 -230 0 1 {name=p20 sig_type=std_logic lab=VDD}
C {symbols/nfet_03v3.sym} 50 -130 0 0 {name=M11
L=.5u
W=30u
nf=1
m=2
ad="'int((nf+1)/2) * W/nf * 0.18u'"
pd="'2*int((nf+1)/2) * (W/nf + 0.18u)'"
as="'int((nf+2)/2) * W/nf * 0.18u'"
ps="'2*int((nf+2)/2) * (W/nf + 0.18u)'"
nrd="'0.18u / W'" nrs="'0.18u / W'"
sa=0 sb=0 sd=0
model=nfet_03v3
spiceprefix=X
}
C {lab_pin.sym} 680 -360 1 0 {name=p13 sig_type=std_logic lab=VBP1}
C {lab_pin.sym} -520 320 0 0 {name=p23 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -430 130 2 0 {name=p25 sig_type=std_logic lab= VBN2}
C {lab_pin.sym} -440 -20 2 0 {name=p26 sig_type=std_logic lab=VBP2}
C {lab_pin.sym} 700 -50 1 1 {name=p15 sig_type=std_logic lab= VBN2}
C {lab_pin.sym} 690 -230 3 0 {name=p16 sig_type=std_logic lab=VBP2}
C {iopin.sym} -310 -50 1 0 {name=p2 lab=IBIAS}
C {iopin.sym} -730 -400 1 0 {name=p4 lab=VSS}
C {iopin.sym} -610 -400 1 0 {name=p27 lab=VDD}
C {iopin.sym} -70 -130 2 0 {name=p14 lab=INN}
C {iopin.sym} 360 -130 2 1 {name=p17 lab=INP}
C {iopin.sym} 1020 -140 2 1 {name=p6 lab=OUT}
C {lab_pin.sym} 70 -60 0 0 {name=p9 sig_type=std_logic lab=tail_curr}
C {lab_pin.sym} 630 -140 2 0 {name=p11 sig_type=std_logic lab=out_dio}
C {lab_pin.sym} 810 40 0 0 {name=p28 sig_type=std_logic lab=casc_nr}
C {lab_pin.sym} 500 30 0 1 {name=p29 sig_type=std_logic lab=casc_nl}
C {lab_pin.sym} 500 -320 0 1 {name=p30 sig_type=std_logic lab=casc_pl}
C {lab_pin.sym} 810 -320 0 0 {name=p32 sig_type=std_logic lab=casc_pr}
C {symbols/pfet_03v3.sym} -500 -140 0 1 {name=M19
L=.5u
W=11.6u
nf=1
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
C {symbols/pfet_03v3.sym} -500 -20 0 1 {name=M20
L=.5u
W=4.9u
nf=1
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
C {symbols/nfet_03v3.sym} -500 130 0 1 {name=M21
L=.5u
W=1.4u
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
C {symbols/nfet_03v3.sym} -500 240 0 1 {name=M22
L=1u
W=2.7u
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
C {lab_pin.sym} -520 -210 0 0 {name=p34 sig_type=std_logic lab=VDD}
C {symbols/pfet_03v3.sym} -370 -140 0 0 {name=M23
L=1u
W=115u
nf=1
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
C {lab_pin.sym} -440 240 2 0 {name=p35 sig_type=std_logic lab= VBN1}
C {lab_pin.sym} -350 -210 0 0 {name=p22 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -420 -140 1 0 {name=p36 sig_type=std_logic lab=VBP1}
C {lab_pin.sym} 10 20 2 1 {name=p5 sig_type=std_logic lab= VBN1}

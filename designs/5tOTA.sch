v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 460 -660 460 -580 {lab=vdd}
N 460 -660 680 -660 {lab=vdd}
N 680 -660 680 -580 {lab=vdd}
N 500 -550 640 -550 {lab=#net1}
N 570 -550 570 -490 {lab=#net1}
N 460 -490 570 -490 {lab=#net1}
N 460 -520 460 -380 {lab=#net1}
N 680 -520 680 -380 {lab=vout}
N 460 -320 460 -260 {lab=#net2}
N 460 -260 680 -260 {lab=#net2}
N 680 -320 680 -260 {lab=#net2}
N 570 -260 570 -220 {lab=#net2}
N 420 -190 530 -190 {lab=vin1}
N 570 -160 570 -130 {lab=GND}
N 680 -450 760 -450 {lab=vout}
N 570 -700 570 -660 {lab=vdd}
N 390 -350 420 -350 {lab=vin1}
N 720 -350 750 -350 {lab=vin2}
C {title.sym} 170 -40 0 0 {name=l1 author="Songhang Li"}
C {symbols/nfet_03v3.sym} 440 -350 0 0 {name=M1
L=0.28u
W=0.22u
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
C {symbols/nfet_03v3.sym} 700 -350 0 1 {name=M2
L=0.28u
W=0.22u
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
C {symbols/pfet_03v3.sym} 480 -550 0 1 {name=M3
L=0.28u
W=0.22u
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
C {symbols/pfet_03v3.sym} 660 -550 0 0 {name=M4
L=0.28u
W=0.22u
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
C {symbols/nfet_03v3.sym} 550 -190 0 0 {name=M5
L=0.28u
W=0.22u
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
C {gnd.sym} 570 -130 0 0 {name=l2 lab=GND}
C {ipin.sym} 570 -700 1 0 {name=p1 lab=vdd}
C {opin.sym} 760 -450 0 0 {name=p2 lab=vout}
C {ipin.sym} 390 -350 0 0 {name=p3 lab=vin1
}
C {ipin.sym} 750 -350 0 1 {name=p4 lab=vin2
}
C {ipin.sym} 420 -190 0 0 {name=p5 lab=vcur
}

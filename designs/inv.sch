v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Simple CMOS Inverter} 450 -620 0 0 0.4 0.4 {}
N 480 -440 520 -440 {lab=vi}
N 480 -440 480 -330 {lab=vi}
N 480 -330 520 -330 {lab=vi}
N 430 -380 480 -380 {lab=vi}
N 560 -410 560 -360 {lab=vo}
N 560 -380 770 -380 {lab=vo}
N 560 -300 560 -250 {lab=vss}
N 560 -440 580 -440 {lab=vdd}
N 580 -490 580 -440 {lab=vdd}
N 560 -490 580 -490 {lab=vdd}
N 560 -530 560 -470 {lab=vdd}
N 560 -330 580 -330 {lab=vss}
N 580 -330 580 -280 {lab=vss}
N 560 -280 580 -280 {lab=vss}
C {title.sym} 170 -40 0 0 {name=l1 author="Songhang L"}
C {symbols/nfet_03v3.sym} 540 -330 0 0 {name=M1
L=0.28u
W=1u
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
C {symbols/pfet_03v3.sym} 540 -440 0 0 {name=M2
L=0.28u
W=1u
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
C {iopin.sym} 560 -530 3 0 {name=p1 lab=vdd}
C {ipin.sym} 560 -250 3 0 {name=p2 lab=vss
W=01u}
C {ipin.sym} 430 -380 0 0 {name=p3 lab=vi}
C {opin.sym} 770 -380 0 0 {name=p4 lab=vo
}

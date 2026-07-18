v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 180 -20 250 -20 {lab=#net1}
N 250 -20 250 -10 {lab=#net1}
N 300 -100 300 -50 {lab=VDD}
N 60 -100 300 -100 {lab=VDD}
N 60 -100 60 -90 {lab=VDD}
N 60 60 300 60 {lab=VSS}
N 300 30 300 60 {lab=VSS}
N 420 -20 460 -20 {lab=#net2}
N -70 -50 -20 -50 {lab=A}
N -60 20 -20 20 {lab=B}
C {libs/core_digital/schem/NAND2.sym} 60 -20 0 0 {name=x1}
C {libs/core_digital/schem/inv1.sym} 310 0 0 0 {name=x2}
C {ipin.sym} -70 -50 0 0 {name=p1 lab=A}
C {ipin.sym} -60 20 0 0 {name=p2 lab=B}
C {ipin.sym} 60 60 0 0 {name=p3 lab=VSS}
C {ipin.sym} 60 -100 0 0 {name=p4 lab=VDD}
C {opin.sym} 460 -20 0 0 {name=p5 lab=Y}

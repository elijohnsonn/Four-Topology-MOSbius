v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 30 20 30 60 {lab=GND}
N 30 60 540 60 {lab=GND}
N 540 30 540 60 {lab=GND}
N 470 30 470 50 {lab=GND}
N 470 50 470 60 {lab=GND}
N 410 30 410 60 {lab=GND}
N 160 20 160 60 {lab=GND}
N 90 20 90 60 {lab=GND}
N -80 60 30 60 {lab=GND}
N -30 -20 -30 60 {lab=GND}
N 250 -30 250 60 {lab=GND}
N 160 -150 160 -40 {lab=#net1}
N 160 -150 170 -150 {lab=#net1}
N 270 -300 270 -270 {lab=#net2}
N -90 -300 270 -300 {lab=#net2}
N -90 -300 -90 -0 {lab=#net2}
N -90 -0 -80 -0 {lab=#net2}
N -30 -240 -30 -80 {lab=ena_bar<0>}
N -30 -230 170 -230 {lab=ena_bar<0>}
N 30 -210 170 -210 {lab=ena_bar<1>}
N 30 -210 30 -40 {lab=ena_bar<1>}
N 90 -190 90 -40 {lab=ena_bar<2>}
N 90 -190 170 -190 {lab=ena_bar<2>}
N 320 -30 320 60 {lab=GND}
N 320 -300 320 -270 {lab=#net2}
N 270 -300 320 -300 {lab=#net2}
N 400 -150 610 -150 {lab=GND}
N 610 -150 610 60 {lab=GND}
N 530 60 610 60 {lab=GND}
N 540 -120 540 -30 {lab=ena<0>}
N 400 -120 540 -120 {lab=ena<0>}
N 400 -100 470 -100 {lab=ena<1>}
N 470 -100 470 -30 {lab=ena<1>}
N 410 -80 410 -30 {lab=ena<2>}
N 400 -80 410 -80 {lab=ena<2>}
C {vsource.sym} 410 0 0 0 {name=V1 value=3 savecurrent=false}
C {vsource.sym} 470 0 0 0 {name=V2 value=3 savecurrent=false}
C {vsource.sym} 540 0 0 0 {name=V3 value=3 savecurrent=false}
C {vsource.sym} 30 -10 0 0 {name=V4 value=3 savecurrent=false}
C {vsource.sym} 90 -10 0 0 {name=V5 value=3 savecurrent=false}
C {vsource.sym} 160 -10 0 0 {name=V6 value=3.3 savecurrent=false}
C {vsource.sym} -80 30 0 0 {name=V7 value=3.3 savecurrent=false}
C {vsource.sym} -30 -50 0 0 {name=V8 value=3 savecurrent=false}
C {lab_wire.sym} 70 -230 0 0 {name=p1 sig_type=std_logic lab=ena_bar<0>}
C {lab_wire.sym} 70 -210 0 0 {name=p2 sig_type=std_logic lab=ena_bar<1>}
C {lab_wire.sym} 100 -190 0 0 {name=p3 sig_type=std_logic lab=ena_bar<2>}
C {lab_wire.sym} 410 -50 0 0 {name=p4 sig_type=std_logic lab=ena<2>}
C {lab_wire.sym} 470 -60 0 0 {name=p5 sig_type=std_logic lab=ena<1>}
C {lab_wire.sym} 540 -60 0 0 {name=p6 sig_type=std_logic lab=ena<0>
}
C {gnd.sym} 280 60 0 0 {name=l1 lab=GND}
C {libs/core_digital/programmable_nfet.sym} 270 -140 0 0 {name=x1}

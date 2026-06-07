v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 90 -270 90 -240 {lab=GND}
N 90 -380 90 -330 {lab=VSS}
N 90 -500 90 -440 {lab=VDD}
N 240 -297.5 290 -297.5 {lab=VDD}
N 170 -380 170 -330 {lab=VSS}
N 170 -500 170 -440 {lab=vin}
N 350 -297.5 440 -297.5 {lab=#net1}
N 400 -340 440 -340 {lab=vout}
N 400 -340 400 -260 {lab=vout}
N 400 -260 600 -260 {lab=vout}
N 600 -360 600 -260 {lab=vout}
N 630 -360 740 -360 {lab=vout}
N 660 -360 660 -320 {lab=vout}
N 660 -260 660 -220 {lab=GND}
N 580 -360 630 -360 {lab=vout}
N 360 -380 440 -380 {lab=vin}
N 510 -280 510 -270 {lab=#net2}
C {5tOTA.sym} 510 -360 0 0 {name=x1}
C {devices/code_shown.sym} 20 -950 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {title.sym} 190 -70 0 0 {name=l1 author="Songhang Li"}
C {devices/vsource.sym} 90 -300 0 0 {name=V1 value=0 savecurrent=false}
C {devices/gnd.sym} 90 -240 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 90 -410 0 0 {name=V2 value=3.3 savecurrent=false}
C {devices/lab_wire.sym} 90 -350 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 90 -470 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/isource.sym} 320 -297.5 3 0 {name=I0 value=100u}
C {devices/lab_wire.sym} 250 -297.5 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 170 -410 0 0 {name=V3 value=1.5 savecurrent=false}
C {devices/lab_wire.sym} 170 -350 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 170 -470 0 0 {name=p8 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 380 -380 0 0 {name=p9 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 730 -360 0 0 {name=p1 sig_type=std_logic lab=vout}
C {devices/lab_wire.sym} 510.625 -280.625 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 510 -420 0 0 {name=p5 sig_type=std_logic lab=VDD}
C {symbols/cap_mim_analog.sym} 660 -290 0 0 {name=C1
W=15.33e-6
L=15.33e-6
model=cap_mim_2f0_m3m4_noshield
spiceprefix=X
m=1000}
C {devices/gnd.sym} 660 -220 0 0 {name=l3 lab=GND}
C {devices/code_shown.sym} 20 -810 0 0 {name=Simulation only_toplevel=false value="
.control
save all

OP
*show all > op.log
show all

*DC V3 0 3.3 0.01
*TRAN 10u
*write 5tOTA_tb.raw
.endc
"}

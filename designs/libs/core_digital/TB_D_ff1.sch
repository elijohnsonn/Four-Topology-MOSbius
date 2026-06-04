v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 170 30 170 60 {lab=Q_bar}
N 140 30 170 30 {lab=Q_bar}
N 140 -50 210 -50 {lab=Q}
N 210 -50 210 -30 {lab=Q}
N 210 30 210 150 {lab=GND}
N 170 150 210 150 {lab=GND}
N 170 120 170 150 {lab=GND}
N -180 150 170 150 {lab=GND}
N -180 150 -180 170 {lab=GND}
N 50 80 50 150 {lab=GND}
N -180 -110 -180 90 {lab=Vdd}
N -180 -110 50 -110 {lab=Vdd}
N 50 -110 50 -90 {lab=Vdd}
N -70 40 -70 60 {lab=clk}
N -70 40 -30 40 {lab=clk}
N -70 120 -70 150 {lab=GND}
N -130 -40 -130 -10 {lab=D}
N -130 -40 -30 -40 {lab=D}
N -130 50 -130 150 {lab=GND}
C {vsource.sym} -180 120 0 0 {name=V1 value=3.3 savecurrent=false}
C {capa.sym} 210 0 0 0 {name=C1
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 170 90 0 0 {name=C2
m=1
value=10f
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -180 170 0 0 {name=l1 lab=GND}
C {vsource.sym} -70 90 0 0 {name=V2 value=PULSE(0 3.3 0 1n 1n 499.99n 1m) savecurrent=false}
C {vsource.sym} -130 20 0 0 {name=V3 value=PWL(
+ 0       0
+ 1n      3.3
+ 500u    3.3
+ 501u    0
+ 1m      0
+ 1.001m  3.3
+ 1.5m    3.3
+ 1.501m  0
+ 2m      0
+ 2.001m  3.3
+ 2.5m    3.3
+ 2.501m  3.3
+ 3m      3.3
+ 3.001m  0
+ 3.5m    0
+ 3.501m  3.3
+ 4m      3.3
+ 4.001m  0
+ 4.5m    0
+ 4.501m  0
+ 5m      0
+ 5.001m  3.3
+ 5.5m    3.3
+ 5.501m  0
+ 6m      0
)
 savecurrent=false}
C {lab_wire.sym} -100 -110 0 0 {name=p1 sig_type=std_logic lab=Vdd
}
C {lab_wire.sym} -90 -40 0 0 {name=p2 sig_type=std_logic lab=D}
C {lab_wire.sym} -50 40 0 0 {name=p3 sig_type=std_logic lab=clk}
C {lab_wire.sym} 190 -50 0 0 {name=p4 sig_type=std_logic lab=Q}
C {lab_wire.sym} 160 30 0 0 {name=p5 sig_type=std_logic lab=Q_bar}
C {code_shown.sym} 90 -220 0 0 {name=models only_toplevel=false value=".include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical "}
C {libs/core_digital/D_ff1.sym} 50 -10 0 0 {name=x1}

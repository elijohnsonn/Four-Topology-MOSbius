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
C {vsource.sym} -70 90 0 0 {name=V2 value="PULSE(0 3.3 0 1ns 1ns 0.5ms 1ms)" savecurrent=false}
C {vsource.sym} -130 20 0 0 {name=V3 value="PWL(
+ 0       0
+ 1n      3.3
+ 600u    3.3
+ 601u    0
+ 1.2m      0
+ 1.201m  3.3
+ 1.7m    3.3
+ 1.701m  0
+ 2.2m      0
+ 2.201m  3.3
+ 2.7m    3.3
+ 2.701m  3.3
+ 3.2m      3.3
+ 3.201m  0
+ 3.7m    0
+ 3.701m  3.3
+ 4.2m      3.3
+ 4.201m  0
+ 4.7m    0
+ 4.701m  0
+ 5.2m      0
+ 5.201m  3.3
+ 5.7m    3.3
+ 5.701m  0
+ 6.2m      0
)"
 savecurrent=false}
C {lab_wire.sym} -100 -110 0 0 {name=p1 sig_type=std_logic lab=Vdd
}
C {lab_wire.sym} -90 -40 0 0 {name=p2 sig_type=std_logic lab=D}
C {lab_wire.sym} -50 40 0 0 {name=p3 sig_type=std_logic lab=clk}
C {lab_wire.sym} 190 -50 0 0 {name=p4 sig_type=std_logic lab=Q}
C {lab_wire.sym} 160 30 0 0 {name=p5 sig_type=std_logic lab=Q_bar}
C {libs/core_digital/D_ff1.sym} 50 -10 0 0 {name=x1}
C {code_shown.sym} 290 -90 0 0 {name=NGSPICE only_toplevel=false 
value="*---------------------------------------------------------
* Initial conditions (latch starts Reset: Q=0, Q_bar=1)
*---------------------------------------------------------
.IC V(Q)=0 V(Q_bar)=3.3

*---------------------------------------------------------
* Transient analysis: step 10ns, end 5ms
*---------------------------------------------------------
.TRAN 10n 5m UIC

*---------------------------------------------------------
* Plot Q and Q_bar
*---------------------------------------------------------
.control
  run
  set xbrushwidth=2
  plot V(Q) V(Q_bar) title 'DFF Outputs' xlabel 'Time (s)' ylabel 'Voltage (V)'
  plot V(D) V(clk) title 'DFF Inputs' xlabel 'Time (s)' ylabel 'Voltage (V)'
 * plot V(clk) title 'DFF Clock' xlabel 'Time (s)' ylabel 'Voltage (V)'
.endc

.end"}
C {devices/code_shown.sym} 30 -240 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}

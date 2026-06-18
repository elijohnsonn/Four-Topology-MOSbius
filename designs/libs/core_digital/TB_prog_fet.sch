v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 30 20 30 60 {lab=GND}
N 160 20 160 60 {lab=GND}
N 90 20 90 60 {lab=GND}
N -80 60 30 60 {lab=GND}
N -30 -20 -30 60 {lab=GND}
N 250 -30 250 60 {lab=GND}
N -90 -300 270 -300 {lab=#net1}
N -90 -300 -90 -0 {lab=#net1}
N -90 -0 -80 -0 {lab=#net1}
N 250 -40 270 -40 {lab=GND}
N 250 -40 250 -30 {lab=GND}
N 30 60 410 60 {lab=GND}
N 90 -70 90 -40 {lab=ena_1}
N 90 -110 90 -70 {lab=ena_1}
N 90 -110 180 -110 {lab=ena_1}
N 30 -170 30 -40 {lab=ena_bar_0}
N 30 -170 180 -170 {lab=ena_bar_0}
N -30 -200 -30 -80 {lab=ena_0}
N -30 -200 170 -200 {lab=ena_0}
N 170 -200 180 -200 {lab=ena_0}
N 500 -300 500 -100 {lab=#net2}
N 390 -300 500 -300 {lab=#net2}
N 500 -40 500 60 {lab=GND}
N 410 60 500 60 {lab=GND}
N 270 -300 320 -300 {lab=#net1}
N 320 -300 320 -240 {lab=#net1}
N 390 -300 390 -280 {lab=#net2}
N 290 -280 390 -280 {lab=#net2}
N 290 -280 290 -240 {lab=#net2}
N 180 -200 230 -200 {lab=ena_0}
N 180 -170 230 -170 {lab=ena_bar_0}
N 180 -110 230 -110 {lab=ena_1}
N 270 -40 300 -40 {lab=GND}
N 300 -40 320 -40 {lab=GND}
N 160 -80 160 -40 {lab=ena_bar_1}
N 160 -80 230 -80 {lab=ena_bar_1}
N 370 -130 420 -130 {lab=GND}
N 420 -130 420 60 {lab=GND}
N -90 -140 230 -140 {lab=#net1}
C {vsource.sym} 30 -10 0 0 {name=V4 value="PULSE(3.3 0 0.5ms 0 0 0.5ms 1ms)" savecurrent=false}
C {vsource.sym} 90 -10 0 0 {name=V5 value="PULSE(0 3.3 1ms 0 0 1ms 2ms)" savecurrent=false}
C {vsource.sym} 160 -10 0 0 {name=V6 value="PULSE(3.3 0 1ms 0 0 1ms 2ms)" savecurrent=false}
C {vsource.sym} -80 30 0 0 {name=V7 value=3.3 savecurrent=false}
C {vsource.sym} -30 -50 0 0 {name=V8 value="PULSE(0 3.3 0.5ms 0 0 0.5ms 1ms)" savecurrent=false}
C {gnd.sym} 280 60 0 0 {name=l1 lab=GND}
C {lab_wire.sym} 60 -200 0 0 {name=p1 sig_type=std_logic lab=ena_0}
C {lab_wire.sym} 60 -170 0 0 {name=p2 sig_type=std_logic lab=ena_bar_0}
C {lab_wire.sym} 130 -110 0 0 {name=p3 sig_type=std_logic lab=ena_1}
C {lab_wire.sym} 160 -80 0 0 {name=p4 sig_type=std_logic lab=ena_bar_1}
C {vsource.sym} 500 -70 0 0 {name=V1 value=3.3 savecurrent=false}
C {devices/code_shown.sym} 180 -430 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 550 -290 0 0 {name=NGSPICE only_toplevel=false 
value="* Transient Analysis and Plotting Script
.control

  * Set initial conditions for all nodes to 0
  set init_cond = true
  ic v(ena<0>)=0 v(ena<1>)=0
  ic v(ena_bar<0>)=0 v(ena_bar<1>)=0
  ic v(d)=0

  * Run transient simulation: step 1ns, stop at 2ms
  tran 1ns 2ms uic

  * --- Plot 1: ena<0> and ena<1> ---
  plot v(ena_0) v(ena_1) title 'Enables' xlabel 'Time (s)' ylabel 'Voltage (V)'

  * --- Plot 2: ena_bar<0> and ena_bar<1> ---
  plot v(ena_bar_0) v(ena_bar_1) title 'Enable-Bars' xlabel 'Time (s)' ylabel 'Voltage (V)'

  * --- Plot 3: Current into pin d ---
  plot -i(V1) title 'Drain Current' xlabel 'Time (s)' ylabel 'Current (A)'

.endc"}
C {libs/core_digital/programmable_nfet.sym} 350 -130 0 0 {name=x1 width=0.22u length=0.28u}

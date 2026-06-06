v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 640 -230 640 -200 {lab=GND}
N 640 -340 640 -290 {lab=VSS}
N 640 -460 640 -400 {lab=VDD}
N 800 -257.5 850 -257.5 {lab=VDD}
N 780 -257.5 800 -257.5 {lab=VDD}
N 720 -340 720 -290 {lab=VSS}
N 720 -460 720 -400 {lab=vin}
N 940 -340 1000 -340 {lab=vin}
N 1120 -320 1190 -320 {lab=vout}
N 910 -257.5 1000 -257.5 {lab=#net1}
N 960 -300 1000 -300 {lab=vout}
N 960 -300 960 -220 {lab=vout}
N 960 -220 1160 -220 {lab=vout}
N 1160 -320 1160 -220 {lab=vout}
C {5tOTA.sym} 1070 -320 0 0 {name=x1}
C {devices/code_shown.sym} 20 -950 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {devices/code_shown.sym} 20 -860 0 0 {name=NGSPICE only_toplevel=true
value="

.control
save all

**Define input signal
let fsig = 1k
let tper = 1/fsig
let tfr = 0.01*tper
let ton = 0.5*tper-2*tfr

**Define transient params
let tstop = 2*tper
let tstep = 0.001*tper

**Set sources
alter @VIN[DC] = 0.0
alter @VIN[PULSE] = [ 0 3.3 0 $&tfr $&tfr $&ton $&tper 0 ]

**Simulation
op
dc vin 0 3.3 0.01
tran $&tstep $&tstop

** Plots
setplot dc1
let vout = v(out)
plot vout

setplot tran1
let vout = v(out)
let vin = v(in)
let ivdd = -v1#branch*1e4
plot vout vin ivdd

setplot op1
write inv_tb.raw
.endc
"}
C {title.sym} 190 -70 0 0 {name=l1 author="Songhang Li"}
C {devices/vsource.sym} 640 -260 0 0 {name=V1 value=0 savecurrent=false}
C {devices/gnd.sym} 640 -200 0 0 {name=l2 lab=GND}
C {devices/vsource.sym} 640 -370 0 0 {name=V2 value=3.3 savecurrent=false}
C {devices/lab_wire.sym} 640 -310 0 0 {name=p2 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 640 -430 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {devices/isource.sym} 880 -257.5 3 0 {name=I0 value=50u}
C {devices/lab_wire.sym} 830 -257.5 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {devices/vsource.sym} 720 -370 0 0 {name=V3 value=1.5 savecurrent=false}
C {devices/lab_wire.sym} 720 -310 0 0 {name=p7 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 720 -430 0 0 {name=p8 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 940 -340 0 0 {name=p9 sig_type=std_logic lab=vin}
C {devices/lab_wire.sym} 1190 -320 0 0 {name=p1 sig_type=std_logic lab=vout}
C {devices/lab_wire.sym} 1070 -257.5 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {devices/lab_wire.sym} 1070 -367.5 0 0 {name=p5 sig_type=std_logic lab=VDD}

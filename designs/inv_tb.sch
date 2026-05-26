v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 440 -370 440 -340 {lab=VDD}
N 440 -280 440 -240 {lab=GND}
N 530 -280 530 -240 {lab=GND}
N 530 -380 530 -340 {lab=in}
N 530 -380 650 -380 {lab=in}
N 720 -310 720 -240 {lab=GND}
N 780 -380 830 -380 {lab=out}
N 720 -480 720 -440 {lab=VDD}
C {title.sym} 170 -40 0 0 {name=l1 author="S. Li"}
C {inv.sym} 650 -440 0 0 {name=xinv1}
C {vsource.sym} 440 -310 0 0 {name=V1 value=3.3 savecurrent=false}
C {vsource.sym} 530 -310 0 0 {name=VIN value=3.3 savecurrent=false}
C {vdd.sym} 440 -370 0 0 {name=l2 lab=VDD}
C {vdd.sym} 720 -480 0 0 {name=l3 lab=VDD}
C {gnd.sym} 530 -240 0 0 {name=l4 lab=GND}
C {gnd.sym} 440 -240 0 0 {name=l5 lab=GND}
C {gnd.sym} 720 -240 0 0 {name=l6 lab=GND}
C {noconn.sym} 830 -380 2 0 {name=l7}
C {lab_wire.sym} 600 -380 0 0 {name=p1 sig_type=std_logic lab=in
}
C {lab_wire.sym} 820 -380 0 0 {name=p2 sig_type=std_logic lab=out}
C {devices/code_shown.sym} 0 -890 0 0 {name=NGSPICE only_toplevel=true
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
C {devices/code_shown.sym} 0 -140 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {launcher.sym} 560 -140 0 0 {name=h1
descr="Annotate OP"
tclcommand="set show_hidden_texts 1 ; xschem annotate_op"}

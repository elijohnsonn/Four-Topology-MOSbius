v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -130 -20 -130 0 {lab=#net1}
N -130 -0 -40 -0 {lab=#net1}
N -0 30 -0 90 {lab=GND}
N -130 -120 -130 -80 {lab=#net2}
N -130 -120 -0 -120 {lab=#net2}
N -0 -120 -0 -30 {lab=#net2}
N 150 -120 150 -30 {lab=#net2}
N 0 -120 150 -120 {lab=#net2}
N -0 70 150 70 {lab=GND}
N 150 30 150 70 {lab=GND}
N -0 -0 80 -0 {lab=#net2}
N 80 -120 80 -0 {lab=#net2}
C {devices/code_shown.sym} 250 -170 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {symbols/pfet_03v3.sym} -20 0 0 0 {name=M1
L=0.5u
W=23u
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
C {vsource.sym} 150 0 0 0 {name=Vds value=1.5 savecurrent=false}
C {vsource.sym} -130 -50 0 0 {name=Vgs value=0 savecurrent=false}
C {code_shown.sym} 240 -30 0 0 {name=Simulation only_toplevel=false 

value=

".param W=10u L=5u
.dc Vgs 3.3 0 -0.01
.control
run
let id = -i(Vds)
let gm = deriv(id)
let gm_id = gm/id
let id_w = id/10e-6
wrdata /foss/designs/libs/pmos_char/data/pmos_gmid_L5u.csv id gm gm_id id_w
plot gm_id vs id_w xlog
.endc"}
C {gnd.sym} 0 90 0 0 {name=l1 lab=GND}

v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -110 -0 -110 20 {lab=#net1}
N -110 0 -40 -0 {lab=#net1}
N -0 -60 0 -30 {lab=#net2}
N -0 -60 130 -60 {lab=#net2}
N 130 -60 130 -20 {lab=#net2}
N -0 30 -0 110 {lab=GND}
N -110 110 -0 110 {lab=GND}
N -110 80 -110 110 {lab=GND}
N -0 110 130 110 {lab=GND}
N 130 40 130 110 {lab=GND}
N -0 -0 70 -0 {lab=GND}
N 70 -0 70 110 {lab=GND}
N -0 110 0 140 {lab=GND}
C {vsource.sym} 130 10 0 0 {name=Vds value=1.5 savecurrent=false}
C {vsource.sym} -110 50 0 0 {name=Vgs value=0 savecurrent=false}
C {code_shown.sym} 230 10 0 0 {name=Simulation only_toplevel=false 

value=

".param W=10u L=.28u
.dc Vgs 0 3.3 0.01
.control
run
let id = -i(Vds)
let gm = deriv(id)
let gm_id = gm/id
let id_w = id/10e-6
wrdata /foss/designs/libs/nmos_char/data/nmos_gmid_L0p28u.csv id gm gm_id id_w
plot gm_id vs id_w xlog
.endc"}
C {devices/code_shown.sym} 230 -120 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {gnd.sym} 0 140 0 0 {name=l1 lab=GND}
C {symbols/nfet_03v3.sym} -20 0 0 0 {name=M1
L=L
W=W
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

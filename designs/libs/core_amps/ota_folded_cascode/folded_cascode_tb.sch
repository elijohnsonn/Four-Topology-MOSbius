v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 380 -80 380 -20 {lab=GND}
N -60 -120 -60 -60 {lab=VDD}
N -180 -120 -180 -60 {lab=GND}
N -180 0 -180 50 {lab=GND}
N -60 0 -60 50 {lab=GND}
N -60 50 -60 60 {lab=GND}
N -180 -60 -180 0 {lab=GND}
N 400 -340 400 -280 {lab=VDD}
N 430 -30 430 -10 {lab=#net1}
N 430 50 430 90 {lab=VDD}
N 510 -190 630 -190 {lab=output}
N 580 -190 580 -140 {lab=output}
N 580 -80 580 -50 {lab=GND}
N 190 -250 260 -250 {lab=#net2}
N 100 -160 100 -120 {lab=#net3}
N 190 -20 190 20 {lab=#net3}
N 150 20 150 60 {lab=#net3}
N 150 120 150 150 {lab=GND}
N 430 -100 430 -30 {lab=#net1}
N 190 -100 260 -100 {lab=#net4}
N 190 -100 190 -80 {lab=#net4}
N 100 -250 190 -250 {lab=#net2}
N 100 -250 100 -220 {lab=#net2}
N 100 -120 100 20 {lab=#net3}
N 100 20 190 20 {lab=#net3}
C {isource.sym} 430 20 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -60 -120 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} -60 -30 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} -180 -120 0 0 {name=p3 sig_type=std_logic lab=GND}
C {gnd.sym} -180 50 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -60 60 0 0 {name=p4 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} 770 -70 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 780 100 0 0 {name=Simulation only_toplevel=false 

value=

"
.control
ac dec 100 1 1G

plot vdb(output) ph(v(output))*180/3.14159

meas ac dc_gain find vdb(output) at=1
let bw_level = dc_gain - 3
meas ac bw when vdb(output) = bw_level

.endc
"}
C {lab_pin.sym} 400 -340 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 380 -20 0 0 {name=p5 sig_type=std_logic lab=GND}
C {capa.sym} 580 -110 0 0 {name=CLOAD
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 580 -50 0 0 {name=p7 sig_type=std_logic lab=GND}
C {lab_pin.sym} 630 -190 0 1 {name=p8 sig_type=std_logic lab=output}
C {vsource.sym} 190 -50 0 0 {name=VINN value= 0 AC -0.5 savecurrent=false}
C {lab_pin.sym} 430 90 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {vsource.sym} 100 -190 0 0 {name=VINP value= AC 0.5 savecurrent=false}
C {vsource.sym} 150 90 0 0 {name=VCM value= 1.65 savecurrent=false}
C {lab_pin.sym} 150 150 0 0 {name=p9 sig_type=std_logic lab=GND}
C {libs/core_amps/ota_folded_cascode/newfsym.sym} 490 -210 0 0 {name=x1}

v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 90 70 90 130 {lab=GND}
N -300 -190 -300 -130 {lab=VDD}
N -420 -190 -420 -130 {lab=GND}
N -420 -70 -420 -20 {lab=GND}
N -300 -70 -300 -20 {lab=GND}
N -300 -20 -300 -10 {lab=GND}
N -420 -130 -420 -70 {lab=GND}
N 90 -150 90 -90 {lab=VDD}
N 130 50 130 70 {lab=#net1}
N 130 70 180 70 {lab=#net1}
N 180 70 180 90 {lab=#net1}
N 180 150 180 190 {lab=VDD}
N 220 -10 340 -10 {lab=output}
N 290 -10 290 40 {lab=output}
N 290 100 290 130 {lab=GND}
N -40 20 30 20 {lab=#net2}
N -40 20 -40 90 {lab=#net2}
N -140 -40 30 -40 {lab=#net3}
N -140 -40 -140 90 {lab=#net3}
N -40 150 -40 190 {lab=#net4}
N -140 150 -140 190 {lab=#net4}
N -140 190 -40 190 {lab=#net4}
N -100 190 -100 230 {lab=#net4}
N -100 290 -100 320 {lab=GND}
C {libs/core_amps/ota_folded_cascode/symbol_from.sym} 230 -30 0 0 {name=x1}
C {isource.sym} 180 120 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -300 -190 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} -300 -100 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} -420 -190 0 0 {name=p3 sig_type=std_logic lab=GND}
C {gnd.sym} -420 -20 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -300 -10 0 0 {name=p4 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} 630 -100 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 640 70 0 0 {name=Simulation only_toplevel=false 

value=

"
.control
ac dec 100 1 1G

plot db(v(output))

.endc
"}
C {lab_pin.sym} 90 -150 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 90 130 0 0 {name=p5 sig_type=std_logic lab=GND}
C {capa.sym} 290 70 0 0 {name=CLOAD
m=1
value=470p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 290 130 0 0 {name=p7 sig_type=std_logic lab=GND}
C {lab_pin.sym} 340 -10 0 1 {name=p8 sig_type=std_logic lab=output}
C {vsource.sym} -140 120 0 0 {name=V1 value= 0 AC -0.5 savecurrent=false}
C {lab_pin.sym} 180 190 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {vsource.sym} -40 120 0 0 {name=V5 value= AC 0.5 savecurrent=false}
C {vsource.sym} -100 260 0 0 {name=V3 value= 1.65 savecurrent=false}
C {lab_pin.sym} -100 320 0 0 {name=p9 sig_type=std_logic lab=GND}

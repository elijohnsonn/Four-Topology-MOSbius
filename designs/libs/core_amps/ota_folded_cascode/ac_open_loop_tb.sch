v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
P 4 1 340 -390 {}
N 370 10 370 70 {lab=GND}
N -50 -140 -50 -80 {lab=VDD}
N -170 -140 -170 -80 {lab=GND}
N -170 -20 -170 30 {lab=GND}
N -50 -20 -50 30 {lab=GND}
N -50 30 -50 40 {lab=GND}
N -170 -80 -170 -20 {lab=GND}
N 390 -250 390 -190 {lab=VDD}
N 420 60 420 80 {lab=#net1}
N 420 140 420 180 {lab=VDD}
N 500 -100 620 -100 {lab=output}
N 570 -100 570 -50 {lab=output}
N 570 10 570 40 {lab=GND}
N 180 -160 250 -160 {lab=#net2}
N 90 -70 90 -30 {lab=#net3}
N 180 70 180 110 {lab=#net4}
N 90 210 90 240 {lab=GND}
N 420 -10 420 60 {lab=#net1}
N 180 -10 250 -10 {lab=#net4}
N 180 -10 180 10 {lab=#net4}
N 90 -160 180 -160 {lab=#net2}
N 90 -160 90 -130 {lab=#net2}
N 90 -30 90 110 {lab=#net3}
N 180 10 180 70 {lab=#net4}
N 90 110 90 150 {lab=#net3}
N 180 110 180 240 {lab=#net4}
N 180 240 320 240 {lab=#net4}
N 180 300 180 330 {lab=GND}
N 380 240 500 240 {lab=#net5}
N 500 240 500 280 {lab=#net5}
N 500 340 500 380 {lab=GND}
N 500 360 540 360 {lab=GND}
N 540 330 540 360 {lab=GND}
N 620 -100 710 -100 {lab=output}
N 540 290 670 290 {lab=output}
N 670 -100 670 290 {lab=output}
C {isource.sym} 420 110 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -50 -140 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} -50 -50 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} -170 -140 0 0 {name=p3 sig_type=std_logic lab=GND}
C {gnd.sym} -170 30 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -50 40 0 0 {name=p4 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} 890 -120 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 890 -10 0 0 {name=Simulation only_toplevel=false 

value=

"
.control
ac dec 100 1 1G

plot vdb(output) ph(v(output))*180/3.14159

meas ac dc_gain find vdb(output) at=100
let bw_level = dc_gain - 3
meas ac bw when vdb(output) = bw_level fall=1

.endc

"}
C {lab_pin.sym} 390 -250 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 370 70 0 0 {name=p5 sig_type=std_logic lab=GND}
C {capa.sym} 570 -20 0 0 {name=CLOAD
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 570 40 0 0 {name=p7 sig_type=std_logic lab=GND}
C {lab_pin.sym} 710 -100 0 1 {name=p8 sig_type=std_logic lab=output}
C {lab_pin.sym} 420 180 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {vsource.sym} 90 -100 0 0 {name=VINP value= AC 1 savecurrent=false}
C {vsource.sym} 90 180 0 0 {name=VCM value= 1.65 savecurrent=false}
C {lab_pin.sym} 90 240 0 0 {name=p9 sig_type=std_logic lab=GND}
C {ind.sym} 350 240 1 0 {name=L2
m=1
value=1
footprint=1206
device=inductor}
C {capa.sym} 180 270 0 0 {name=CLOAD1
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 180 330 0 0 {name=p11 sig_type=std_logic lab=GND}
C {vcvs.sym} 500 310 0 1 {name=E1 value=1}
C {lab_pin.sym} 500 380 0 0 {name=p10 sig_type=std_logic lab=GND}
C {libs/core_amps/ota_folded_cascode/ota_folded_cascode.sym} 480 -120 0 0 {name=x1}

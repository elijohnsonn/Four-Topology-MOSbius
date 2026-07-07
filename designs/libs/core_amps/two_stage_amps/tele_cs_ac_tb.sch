v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 800 -310 800 -250 {lab=VDD}
N 680 -310 680 -250 {lab=GND}
N 680 -190 680 -140 {lab=GND}
N 800 -190 800 -140 {lab=GND}
N 800 -140 800 -130 {lab=GND}
N 680 -250 680 -190 {lab=GND}
N 170 -90 170 -40 {lab=GND}
N -330 -100 -330 -50 {lab=GND}
N -320 -300 -320 -240 {lab=VDD}
N 170 -270 170 -190 {lab=VDD}
N 50 -100 100 -100 {lab=#net1}
N 50 -100 50 -20 {lab=#net1}
N -310 80 -310 120 {lab=VDD}
N 50 40 50 80 {lab=VDD}
N 240 -140 450 -140 {lab=output}
N 350 -140 350 230 {lab=output}
N 450 -80 450 -50 {lab=GND}
N 450 -140 520 -140 {lab=output}
N -530 230 -410 230 {lab=#net2}
N -670 70 -670 100 {lab=GND}
N -530 -70 -530 230 {lab=#net2}
N -190 -160 -150 -160 {lab=#net3}
N 10 -160 100 -160 {lab=#net3}
N -670 -40 -670 10 {lab=INN}
N -420 -130 -420 -60 {lab=INN}
N -310 -100 -310 20 {lab=#net4}
N -150 -160 -140 -160 {lab=#net3}
N -140 -160 10 -160 {lab=#net3}
N -250 220 -110 220 {lab=#net2}
N -250 280 -250 310 {lab=GND}
N -50 220 70 220 {lab=#net5}
N 70 220 70 260 {lab=#net5}
N 70 320 70 360 {lab=GND}
N 70 340 110 340 {lab=GND}
N 110 310 110 340 {lab=GND}
N -410 230 -290 230 {lab=#net2}
N -290 220 -290 230 {lab=#net2}
N -290 220 -250 220 {lab=#net2}
N 110 270 350 270 {lab=output}
N 350 230 350 270 {lab=output}
N -320 -240 -320 -220 {lab=VDD}
N -250 -160 -190 -160 {lab=#net3}
N -530 -190 -390 -190 {lab=#net2}
N -530 -190 -530 -70 {lab=#net2}
N -420 -130 -390 -130 {lab=INN}
C {libs/core_amps/cs_stage/cs_schematic.sym} 170 -150 0 0 {name=x2}
C {lab_pin.sym} 800 -310 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} 800 -220 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} 680 -310 0 0 {name=p3 sig_type=std_logic lab=GND}
C {gnd.sym} 680 -140 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 800 -130 0 0 {name=p4 sig_type=std_logic lab=GND}
C {lab_pin.sym} 170 -40 0 0 {name=p2 sig_type=std_logic lab=GND}
C {lab_pin.sym} -330 -50 0 0 {name=p5 sig_type=std_logic lab=GND}
C {lab_pin.sym} 170 -270 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -320 -300 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {isource.sym} -310 50 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -310 120 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {isource.sym} 50 10 2 0 {name=IBIAS1 value=100u}
C {lab_pin.sym} 50 80 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {capa.sym} 450 -110 0 0 {name=CLOAD
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 450 -50 0 0 {name=p10 sig_type=std_logic lab=GND}
C {lab_pin.sym} 520 -140 0 1 {name=p11 sig_type=std_logic lab=output}
C {vsource.sym} -670 40 0 0 {name=VINP value= "DC 1.65 AC 1" savecurrent=false}
C {lab_pin.sym} -670 100 0 0 {name=p12 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} 650 0 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 650 110 0 0 {name=Simulation only_toplevel=false 

value=

"
.control
ac dec 100 1 10G

let gain_db = vdb(output)
let phase = 180 * vp(output) / 3.14159
let pm_val = phase + 180

meas ac a0_db find gain_db at=100

let thresh3 = a0_db - 3
let thresh6 = a0_db - 6

meas ac fp1 when gain_db=thresh3 fall=1
meas ac fp2_est when gain_db=thresh6 fall=1

meas ac ugf when gain_db=0 fall=1
meas ac pm find pm_val at=ugf

print a0_db
print fp1
print fp2_est
print ugf
print pm

plot gain_db
plot phase
.endc

"}
C {lab_pin.sym} -420 -60 3 0 {name=p14 sig_type=std_logic lab=INN}
C {lab_pin.sym} -670 -40 0 0 {name=p15 sig_type=std_logic lab=INN}
C {ind.sym} -80 220 1 0 {name=L2
m=1
value=100T
footprint=1206
device=inductor}
C {capa.sym} -250 250 0 0 {name=CLOAD2
m=1
value=100T
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} -250 310 0 0 {name=p13 sig_type=std_logic lab=GND}
C {vcvs.sym} 70 290 0 1 {name=E1 value=1}
C {lab_pin.sym} 70 360 0 0 {name=p16 sig_type=std_logic lab=GND}
C {libs/core_amps/ota_telescopic/ota_telescopic schematics/telescopic_cascode.sym} -330 -90 0 0 {name=x1}

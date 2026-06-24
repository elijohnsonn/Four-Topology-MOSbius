v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -480 -70 -390 -70 {lab=#net1}
N 850 -160 850 -100 {lab=VDD}
N 730 -160 730 -100 {lab=GND}
N 730 -40 730 10 {lab=GND}
N 850 -40 850 10 {lab=GND}
N 850 10 850 20 {lab=GND}
N 730 -100 730 -40 {lab=GND}
N 220 60 220 110 {lab=GND}
N -270 100 -270 150 {lab=GND}
N -250 -160 -250 -100 {lab=VDD}
N 220 -120 220 -40 {lab=VDD}
N 100 50 150 50 {lab=#net2}
N 100 50 100 130 {lab=#net2}
N -220 260 -220 300 {lab=VDD}
N 100 190 100 230 {lab=VDD}
N 290 10 500 10 {lab=output}
N 400 10 400 380 {lab=output}
N 500 70 500 100 {lab=GND}
N 500 10 570 10 {lab=output}
N -480 380 -360 380 {lab=#net1}
N -620 220 -620 250 {lab=GND}
N -480 -70 -480 80 {lab=#net1}
N -480 80 -480 380 {lab=#net1}
N -140 -10 -100 -10 {lab=#net3}
N 60 -10 150 -10 {lab=#net3}
N -620 110 -620 160 {lab=INN}
N -420 80 -390 80 {lab=INN}
N -420 80 -420 150 {lab=INN}
N -220 80 -220 200 {lab=#net4}
N -100 -10 -90 -10 {lab=#net3}
N -30 -140 10 -140 {lab=#net5}
N -90 -10 60 -10 {lab=#net3}
N 70 -140 310 -140 {lab=output}
N 310 -140 340 -140 {lab=output}
N 340 -140 340 10 {lab=output}
N -200 370 -60 370 {lab=#net1}
N -200 430 -200 460 {lab=GND}
N 0 370 120 370 {lab=#net6}
N 120 370 120 410 {lab=#net6}
N 120 470 120 510 {lab=GND}
N 120 490 160 490 {lab=GND}
N 160 460 160 490 {lab=GND}
N -360 380 -240 380 {lab=#net1}
N -240 370 -240 380 {lab=#net1}
N -240 370 -200 370 {lab=#net1}
N 160 420 400 420 {lab=output}
N 400 380 400 420 {lab=output}
N -120 -140 -120 -10 {lab=#net3}
N -120 -140 -90 -140 {lab=#net3}
C {libs/core_amps/ota_folded_cascode/ota_folded_cascode.sym} -160 -30 0 0 {name=x1}
C {libs/core_amps/cs_stage/cs_schematic.sym} 220 0 0 0 {name=x2}
C {lab_pin.sym} 850 -160 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} 850 -70 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} 730 -160 0 0 {name=p3 sig_type=std_logic lab=GND}
C {gnd.sym} 730 10 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 850 20 0 0 {name=p4 sig_type=std_logic lab=GND}
C {lab_pin.sym} 220 110 0 0 {name=p2 sig_type=std_logic lab=GND}
C {lab_pin.sym} -270 150 0 0 {name=p5 sig_type=std_logic lab=GND}
C {lab_pin.sym} 220 -120 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -250 -160 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {isource.sym} -220 230 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -220 300 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {isource.sym} 100 160 2 0 {name=IBIAS1 value=100u}
C {lab_pin.sym} 100 230 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {capa.sym} 500 40 0 0 {name=CLOAD
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 500 100 0 0 {name=p10 sig_type=std_logic lab=GND}
C {lab_pin.sym} 570 10 0 1 {name=p11 sig_type=std_logic lab=output}
C {capa.sym} 40 -140 3 1 {name=CLOAD1
m=1
value=40p
footprint=1206
device="ceramic capacitor"}
C {res.sym} -60 -140 3 1 {name=R1
value=400
footprint=1206
device=resistor
m=1}
C {vsource.sym} -620 190 0 0 {name=VINP value= "DC 1.65 AC 1" savecurrent=false}
C {lab_pin.sym} -620 250 0 0 {name=p12 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} 700 150 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} -420 150 3 0 {name=p14 sig_type=std_logic lab=INN}
C {lab_pin.sym} -620 110 0 0 {name=p15 sig_type=std_logic lab=INN}
C {ind.sym} -30 370 1 0 {name=L2
m=1
value=100T
footprint=1206
device=inductor}
C {capa.sym} -200 400 0 0 {name=CLOAD2
m=1
value=100T
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} -200 460 0 0 {name=p13 sig_type=std_logic lab=GND}
C {vcvs.sym} 120 440 0 1 {name=E1 value=1}
C {lab_pin.sym} 120 510 0 0 {name=p16 sig_type=std_logic lab=GND}
C {code_shown.sym} 700 260 0 0 {name=Simulation only_toplevel=false 

value=

"
.control
ac dec 100 1 10G

let gain_db = vdb(output)
let phase = 180 * vp(output) / 3.14159

meas ac a0_db find gain_db at=100

let thresh3 = a0_db - 3
let thresh6 = a0_db - 6

meas ac fp1 when gain_db=thresh3 fall=1
meas ac fp2_est when gain_db=thresh6 fall=1

meas ac ugf when gain_db=0 fall=1
meas ac phase_ugf find phase at=ugf

let phase_margin = 180 + phase_ugf
if (phase_margin > 180)
  let phase_margin = phase_margin - 360
end 

print phase_margin

plot gain_db
plot phase
.endc

"}

v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -530 -220 -440 -220 {lab=#net1}
N 800 -310 800 -250 {lab=VDD}
N 680 -310 680 -250 {lab=GND}
N 680 -190 680 -140 {lab=GND}
N 800 -190 800 -140 {lab=GND}
N 800 -140 800 -130 {lab=GND}
N 680 -250 680 -190 {lab=GND}
N 170 -90 170 -40 {lab=GND}
N -320 -50 -320 0 {lab=GND}
N -300 -310 -300 -250 {lab=VDD}
N 170 -270 170 -190 {lab=VDD}
N 50 -100 100 -100 {lab=#net2}
N 50 -100 50 -20 {lab=#net2}
N -270 110 -270 150 {lab=VDD}
N 50 40 50 80 {lab=VDD}
N 240 -140 450 -140 {lab=output}
N 350 -140 350 230 {lab=output}
N 450 -80 450 -50 {lab=GND}
N 450 -140 520 -140 {lab=output}
N -530 230 -410 230 {lab=#net1}
N -670 70 -670 100 {lab=GND}
N -530 -220 -530 -70 {lab=#net1}
N -530 -70 -530 230 {lab=#net1}
N -190 -160 -150 -160 {lab=#net3}
N 10 -160 100 -160 {lab=#net3}
N -670 -40 -670 10 {lab=INN}
N -470 -70 -440 -70 {lab=INN}
N -470 -70 -470 0 {lab=INN}
N -270 -70 -270 50 {lab=#net4}
N -150 -160 -140 -160 {lab=#net3}
N -140 -160 10 -160 {lab=#net3}
N -250 220 -110 220 {lab=#net1}
N -250 280 -250 310 {lab=GND}
N -50 220 70 220 {lab=#net5}
N 70 220 70 260 {lab=#net5}
N 70 320 70 360 {lab=GND}
N 70 340 110 340 {lab=GND}
N 110 310 110 340 {lab=GND}
N -410 230 -290 230 {lab=#net1}
N -290 220 -290 230 {lab=#net1}
N -290 220 -250 220 {lab=#net1}
N 110 270 350 270 {lab=output}
N 350 230 350 270 {lab=output}
N -300 -250 -300 -230 {lab=VDD}
N -250 -180 -250 -160 {lab=#net3}
N -250 -160 -190 -160 {lab=#net3}
N -300 -130 -270 -70 {lab=#net4}
N -440 -220 -350 -220 {lab=#net1}
N -350 -220 -350 -200 {lab=#net1}
N -440 -70 -380 -70 {lab=INN}
N -380 -140 -380 -70 {lab=INN}
N -380 -140 -350 -140 {lab=INN}
N -350 -160 -350 -140 {lab=INN}
N -50 -290 -10 -290 {lab=#net6}
N -140 -290 -110 -290 {lab=#net3}
N -140 -290 -140 -160 {lab=#net3}
N 50 -290 270 -290 {lab=output}
N 270 -290 270 -140 {lab=output}
C {libs/core_amps/cs_stage/cs_schematic.sym} 170 -150 0 0 {name=x2}
C {lab_pin.sym} 800 -310 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} 800 -220 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} 680 -310 0 0 {name=p3 sig_type=std_logic lab=GND}
C {gnd.sym} 680 -140 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 800 -130 0 0 {name=p4 sig_type=std_logic lab=GND}
C {lab_pin.sym} 170 -40 0 0 {name=p2 sig_type=std_logic lab=GND}
C {lab_pin.sym} -320 0 0 0 {name=p5 sig_type=std_logic lab=GND}
C {lab_pin.sym} 170 -270 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -300 -310 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {isource.sym} -270 80 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -270 150 0 0 {name=p8 sig_type=std_logic lab=VDD}
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
C {lab_pin.sym} -470 0 3 0 {name=p14 sig_type=std_logic lab=INN}
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
C {libs/core_amps/ota_telescopic/telescopic_cascode.sym} -420 -190 0 0 {name=X1}
C {capa.sym} 20 -290 3 1 {name=CLOAD1
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {res.sym} -80 -290 3 1 {name=R1
value=350
footprint=1206
device=resistor
m=1}
C {code_shown.sym} 650 120 0 0 {name=Simulation only_toplevel=false 

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

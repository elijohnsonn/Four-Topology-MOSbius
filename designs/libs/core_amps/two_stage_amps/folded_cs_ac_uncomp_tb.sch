v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -450 -210 -360 -210 {lab=#net1}
N 880 -300 880 -240 {lab=VDD}
N 760 -300 760 -240 {lab=GND}
N 760 -180 760 -130 {lab=GND}
N 880 -180 880 -130 {lab=GND}
N 880 -130 880 -120 {lab=GND}
N 760 -240 760 -180 {lab=GND}
N 250 -80 250 -30 {lab=GND}
N -240 -40 -240 10 {lab=GND}
N -220 -300 -220 -240 {lab=VDD}
N 250 -260 250 -180 {lab=VDD}
N 130 -90 180 -90 {lab=#net2}
N 130 -90 130 -10 {lab=#net2}
N -190 120 -190 160 {lab=VDD}
N 130 50 130 90 {lab=VDD}
N 320 -130 530 -130 {lab=output}
N 430 -130 430 240 {lab=output}
N 530 -70 530 -40 {lab=GND}
N 530 -130 600 -130 {lab=output}
N -450 240 -330 240 {lab=#net1}
N -590 80 -590 110 {lab=GND}
N -450 -210 -450 -60 {lab=#net1}
N -450 -60 -450 240 {lab=#net1}
N -110 -150 -70 -150 {lab=#net3}
N 90 -150 180 -150 {lab=#net3}
N -590 -30 -590 20 {lab=INN}
N -390 -60 -360 -60 {lab=INN}
N -390 -60 -390 10 {lab=INN}
N -190 -60 -190 60 {lab=#net4}
N -70 -150 -60 -150 {lab=#net3}
N -60 -150 90 -150 {lab=#net3}
N -170 230 -30 230 {lab=#net1}
N -170 290 -170 320 {lab=GND}
N 30 230 150 230 {lab=#net5}
N 150 230 150 270 {lab=#net5}
N 150 330 150 370 {lab=GND}
N 150 350 190 350 {lab=GND}
N 190 320 190 350 {lab=GND}
N -330 240 -210 240 {lab=#net1}
N -210 230 -210 240 {lab=#net1}
N -210 230 -170 230 {lab=#net1}
N 190 280 430 280 {lab=output}
N 430 240 430 280 {lab=output}
C {libs/core_amps/ota_folded_cascode/ota_folded_cascode.sym} -130 -170 0 0 {name=x1}
C {libs/core_amps/cs_stage/cs_schematic.sym} 250 -140 0 0 {name=x2}
C {lab_pin.sym} 880 -300 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} 880 -210 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} 760 -300 0 0 {name=p3 sig_type=std_logic lab=GND}
C {gnd.sym} 760 -130 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 880 -120 0 0 {name=p4 sig_type=std_logic lab=GND}
C {lab_pin.sym} 250 -30 0 0 {name=p2 sig_type=std_logic lab=GND}
C {lab_pin.sym} -240 10 0 0 {name=p5 sig_type=std_logic lab=GND}
C {lab_pin.sym} 250 -260 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -220 -300 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {isource.sym} -190 90 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -190 160 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {isource.sym} 130 20 2 0 {name=IBIAS1 value=100u}
C {lab_pin.sym} 130 90 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {capa.sym} 530 -100 0 0 {name=CLOAD
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 530 -40 0 0 {name=p10 sig_type=std_logic lab=GND}
C {lab_pin.sym} 600 -130 0 1 {name=p11 sig_type=std_logic lab=output}
C {vsource.sym} -590 50 0 0 {name=VINP value= "DC 1.65 AC 1" savecurrent=false}
C {lab_pin.sym} -590 110 0 0 {name=p12 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} 730 10 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_pin.sym} -390 10 3 0 {name=p14 sig_type=std_logic lab=INN}
C {lab_pin.sym} -590 -30 0 0 {name=p15 sig_type=std_logic lab=INN}
C {ind.sym} 0 230 1 0 {name=L2
m=1
value=100T
footprint=1206
device=inductor}
C {capa.sym} -170 260 0 0 {name=CLOAD2
m=1
value=100T
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} -170 320 0 0 {name=p13 sig_type=std_logic lab=GND}
C {vcvs.sym} 150 300 0 1 {name=E1 value=1}
C {lab_pin.sym} 150 370 0 0 {name=p16 sig_type=std_logic lab=GND}
C {code_shown.sym} 720 150 0 0 {name=Simulation only_toplevel=false 

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

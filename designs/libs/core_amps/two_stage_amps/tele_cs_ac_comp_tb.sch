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
N -360 -90 -360 -40 {lab=GND}
N -360 -290 -360 -230 {lab=VDD}
N 170 -270 170 -190 {lab=VDD}
N 50 -100 100 -100 {lab=#net1}
N 50 -100 50 -20 {lab=#net1}
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
N -500 -110 -470 -110 {lab=INN}
N -500 -110 -500 -40 {lab=INN}
N -150 -160 -140 -160 {lab=#net3}
N -140 -160 10 -160 {lab=#net3}
N -250 220 -110 220 {lab=#net2}
N -250 280 -250 310 {lab=GND}
N -50 220 70 220 {lab=#net4}
N 70 220 70 260 {lab=#net4}
N 70 320 70 360 {lab=GND}
N 70 340 110 340 {lab=GND}
N 110 310 110 340 {lab=GND}
N -410 230 -290 230 {lab=#net2}
N -290 220 -290 230 {lab=#net2}
N -290 220 -250 220 {lab=#net2}
N 110 270 350 270 {lab=output}
N 350 230 350 270 {lab=output}
N -250 -160 -190 -160 {lab=#net3}
N -470 -110 -410 -110 {lab=INN}
N -50 -290 -10 -290 {lab=#net5}
N -140 -290 -110 -290 {lab=#net3}
N -140 -290 -140 -160 {lab=#net3}
N 50 -290 270 -290 {lab=output}
N 270 -290 270 -140 {lab=output}
N -530 -130 -410 -130 {lab=#net2}
N -530 -130 -530 -70 {lab=#net2}
N -930 -20 -930 0 {lab=VG}
N -930 -120 -930 -80 {lab=VDD}
N -880 120 -880 140 {lab=GND}
N -880 30 -800 30 {lab=VG}
N -800 30 -800 90 {lab=VG}
N -930 30 -880 30 {lab=VG}
N -930 0 -930 30 {lab=VG}
N -880 30 -880 60 {lab=VG}
N -940 90 -880 90 {lab=GND}
N -940 90 -940 140 {lab=GND}
N -940 140 -880 140 {lab=GND}
N -840 90 -800 90 {lab=VG}
C {lab_pin.sym} 800 -310 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} 800 -220 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} 680 -310 0 0 {name=p3 sig_type=std_logic lab=GND}
C {gnd.sym} 680 -140 0 0 {name=l1 lab=GND}
C {lab_pin.sym} 800 -130 0 0 {name=p4 sig_type=std_logic lab=GND}
C {lab_pin.sym} 170 -40 0 0 {name=p2 sig_type=std_logic lab=GND}
C {lab_pin.sym} -360 -40 0 0 {name=p5 sig_type=std_logic lab=GND}
C {lab_pin.sym} 170 -270 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -360 -290 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {isource.sym} 50 10 2 0 {name=IBIAS1 value=100u}
C {lab_pin.sym} 50 80 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {capa.sym} 450 -110 0 0 {name=CLOAD
m=1
value=120p
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
C {lab_pin.sym} -500 -40 3 0 {name=p14 sig_type=std_logic lab=INN}
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
C {capa.sym} 20 -290 3 1 {name=CLOAD1
m=1
value=25p
footprint=1206
device="ceramic capacitor"}
C {res.sym} -80 -290 3 1 {name=R1
value=2.7k
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

meas ac a0_db find gain_db at=1

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
C {libs/core_amps/cs_stage/schem/cs_schematic.sym} 170 -150 0 0 {name=x2}
C {libs/core_amps/ota_telescopic/programmable_ota_telescopic schematics/programmable_telescopic_cascode.sym} -390 -160 0 0 {name=x1}
C {isource.sym} -930 -50 0 0 {name=IBIAS value=100u}
C {lab_pin.sym} -930 -120 2 0 {name=p8 sig_type=std_logic lab=VDD}
C {symbols/nfet_03v3.sym} -860 90 0 1 {name=M10
L=1u
W=27.1u
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
C {lab_pin.sym} -940 140 0 0 {name=p17 sig_type=std_logic lab=GND}
C {lab_pin.sym} -800 90 2 0 {name=p18 sig_type=std_logic lab=VG}
C {lab_pin.sym} -330 -100 2 0 {name=p19 sig_type=std_logic lab=VG}
C {lab_pin.sym} -410 -210 0 0 {name=p20 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -410 -170 0 0 {name=p21 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -410 -190 0 0 {name=p22 sig_type=std_logic lab=GND}
C {lab_pin.sym} -410 -150 0 0 {name=p23 sig_type=std_logic lab=GND}

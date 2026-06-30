v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 380 -80 380 -20 {lab=GND}
N -70 -310 -70 -250 {lab=VDD}
N -190 -310 -190 -250 {lab=GND}
N -190 -190 -190 -140 {lab=GND}
N -70 -190 -70 -140 {lab=GND}
N -70 -140 -70 -130 {lab=GND}
N -190 -250 -190 -190 {lab=GND}
N 400 -340 400 -280 {lab=VDD}
N 430 -30 430 -10 {lab=#net1}
N 430 50 430 90 {lab=VDD}
N 510 -190 630 -190 {lab=output}
N 580 -190 580 -140 {lab=output}
N 580 -80 580 -50 {lab=GND}
N 190 -250 260 -250 {lab=input}
N 100 -160 100 -120 {lab=GND}
N 100 120 100 150 {lab=GND}
N 430 -100 430 -30 {lab=#net1}
N 100 -250 190 -250 {lab=input}
N 100 -250 100 -220 {lab=input}
N 100 -120 100 20 {lab=GND}
N 260 -120 260 -60 {lab=#net2}
N 510 -190 510 180 {lab=output}
N 100 20 100 60 {lab=GND}
N 260 -250 340 -210 {lab=input}
N 390 -240 400 -280 {lab=VDD}
N 390 -140 430 -100 {lab=#net1}
N 440 -190 510 -190 {lab=output}
N 320 -60 380 -80 {lab=GND}
N 260 -120 340 -170 {lab=#net2}
N 100 50 100 120 {lab=GND}
C {isource.sym} 430 20 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -70 -310 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} -70 -220 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} -190 -310 0 0 {name=p3 sig_type=std_logic lab=GND}
C {gnd.sym} -190 -140 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -70 -130 0 0 {name=p4 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} -850 -270 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} -870 -160 0 0 {name=Simulation only_toplevel=false 

value=

"
.control

dc VINP 1 3 1m

meas dc vin_cross when v(output)=1.65 cross=1

let vos = vin_cross - 1.65

print vin_cross
print vos

plot v(output)

.endc
"}
C {lab_pin.sym} 400 -340 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 380 -20 0 0 {name=p5 sig_type=std_logic lab=GND}
C {capa.sym} 580 -110 0 0 {name=CLOAD
m=1
value=10p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 580 -50 0 0 {name=p7 sig_type=std_logic lab=GND}
C {lab_pin.sym} 630 -190 0 1 {name=p8 sig_type=std_logic lab=output}
C {lab_pin.sym} 430 90 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {vsource.sym} 100 -190 0 0 {name=VINP value= "PULSE(0 .1 25u 1p 100n 2m 1)" savecurrent=false}
C {vsource.sym} 290 -60 3 1 {name=VCM value= 1.65 savecurrent=false}
C {lab_pin.sym} 100 150 0 0 {name=p9 sig_type=std_logic lab=GND}
C {lab_pin.sym} 150 -250 1 0 {name=p10 sig_type=std_logic lab=input}
C {libs/core_amps/ota_telescopic/telescopic_cascode.sym} 270 -200 0 0 {name=X1}

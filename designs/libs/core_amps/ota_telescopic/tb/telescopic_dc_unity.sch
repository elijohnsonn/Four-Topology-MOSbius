v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 20 -100 20 -40 {lab=GND}
N -410 -260 -410 -200 {lab=VDD}
N -530 -260 -530 -200 {lab=GND}
N -530 -140 -530 -90 {lab=GND}
N -410 -140 -410 -90 {lab=GND}
N -410 -90 -410 -80 {lab=GND}
N -530 -200 -530 -140 {lab=GND}
N 30 -280 30 -220 {lab=VDD}
N 40 -30 40 -10 {lab=#net1}
N 40 50 40 90 {lab=VDD}
N 170 -160 290 -160 {lab=output}
N 240 -160 240 -110 {lab=output}
N 240 -50 240 -20 {lab=GND}
N -150 -190 -80 -190 {lab=#net2}
N -240 -100 -240 -60 {lab=#net3}
N -150 30 -150 70 {lab=output}
N -240 180 -240 210 {lab=GND}
N 40 -100 40 -30 {lab=#net1}
N -150 -50 -150 -30 {lab=output}
N -240 -190 -150 -190 {lab=#net2}
N -240 -190 -240 -160 {lab=#net2}
N -240 -60 -240 80 {lab=#net3}
N -150 -30 -150 30 {lab=output}
N -150 70 -150 230 {lab=output}
N -150 230 170 230 {lab=output}
N 170 -140 170 230 {lab=output}
N -240 80 -240 120 {lab=#net3}
N -150 -130 -80 -130 {lab=output}
N -150 -130 -150 -50 {lab=output}
N 100 -160 170 -160 {lab=output}
N 170 -160 170 -140 {lab=output}
N -80 -190 -40 -190 {lab=#net2}
N -80 -130 -40 -130 {lab=output}
C {isource.sym} 40 20 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -410 -260 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {vsource.sym} -410 -170 0 0 {name=V2 value= 3.3 savecurrent=false}
C {lab_pin.sym} -530 -260 0 0 {name=p3 sig_type=std_logic lab=GND}
C {gnd.sym} -530 -90 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -410 -80 0 0 {name=p4 sig_type=std_logic lab=GND}
C {devices/code_shown.sym} 430 -240 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 420 -130 0 0 {name=Simulation only_toplevel=false 

value=

"
.control

dc VINP 0 4 0.001

let gain = deriv(v(output))

meas dc icmr_low  when gain=0.95 rise=1
meas dc icmr_high when gain=0.95 fall=1

* Find output swing limit above 2 V input
meas dc swing_high when gain=0.95 fall=1 from=2

print icmr_low icmr_high swing_high
print swing_high - icmr_low

plot v(output) gain

.endc
"}
C {lab_pin.sym} 30 -280 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 20 -40 0 0 {name=p5 sig_type=std_logic lab=GND}
C {capa.sym} 240 -80 0 0 {name=CLOAD
m=1
value=100p
footprint=1206
device="ceramic capacitor"}
C {lab_pin.sym} 240 -20 0 0 {name=p7 sig_type=std_logic lab=GND}
C {lab_pin.sym} 290 -160 0 1 {name=p8 sig_type=std_logic lab=output}
C {lab_pin.sym} 40 90 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {vsource.sym} -240 -130 0 0 {name=VINP value= 0 savecurrent=false}
C {vsource.sym} -240 150 0 0 {name=VCM value= 0 savecurrent=false}
C {lab_pin.sym} -240 210 0 0 {name=p9 sig_type=std_logic lab=GND}
C {libs/core_amps/ota_telescopic/ota_telescopic schematics/telescopic_cascode.sym} 20 -90 0 0 {name=x1}

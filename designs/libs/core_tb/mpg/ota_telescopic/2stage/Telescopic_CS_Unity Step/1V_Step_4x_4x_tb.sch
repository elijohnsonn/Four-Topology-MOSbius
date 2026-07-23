v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 300 -370 300 70 {}
L 4 300 70 970 70 {}
L 4 970 -370 970 70 {}
L 4 300 -370 970 -370 {}
L 4 -1970 -440 -1970 510 {}
L 4 -1910 510 -100 510 {}
L 4 0 -500 0 510 {}
L 4 -1910 -500 -100 -500 {}
L 4 -1970 -500 -1970 -430 {}
L 4 190 230 190 510 {}
L 4 190 510 880 510 {}
L 4 1070 230 1070 510 {}
L 4 190 230 880 230 {}
L 4 880 230 1070 230 {}
L 4 880 510 1070 510 {}
L 4 -1970 -500 -1910 -500 {}
L 4 -1970 510 -1910 510 {}
L 4 -100 510 0 510 {}
L 4 -100 -500 0 -500 {}
T {CLOCK GENERATION} 350 -530 0 0 1 1 {}
T {Artificially generate a clock signal and ensure it 
turns off after around .425ms, which is when the 
scan in signal has fully propogated through the scan chain} 330 -460 0 0 0.4 0.4 {}
T {VDD, GND, SCAN INPUT} 340 100 0 0 1 1 {}
T {Scan chain input artificially generated to enable 
telescopic cascode 4x and common source 4x sizing} 380 170 0 0 0.4 0.4 {}
T {CL = 120p} -260 160 0 0 0.75 0.75 {}
T {IBIAS = 100u} -1260 170 0 0 0.4 0.4 {}
T {IMPLEMENTATION} -1230 -670 0 0 1 1 {}
T {Configure the telescopic cascode in 4× mode and the common source stage 
in 4x mode as a unity gain amplifier, stepping the input the input by 1 V while driving a 120pF capacitive load.} -1350 -600 0 0 0.4 0.4 {}
T {VCM = 1.65 V DC} -1690 270 0 0 0.5 0.5 {}
T {1 V Pulse} -1710 90 0 0 0.5 0.5 {}
T {Rm = 2.7k} -550 -140 0 0 0.5 0.5 {}
T {Cc= 25p} -370 -140 0 0 0.5 0.5 {}
N -810 -380 -810 -340 {lab=CLK}
N -780 -380 -780 -340 {lab=SCAN_IN}
N 490 300 490 350 {lab=SCAN_IN}
N 490 410 490 450 {lab=GND}
N -960 -370 -960 -340 {lab=GND}
N -1010 -380 -1010 -360 {lab=GND}
N -1010 -380 -960 -380 {lab=GND}
N -960 -380 -960 -370 {lab=GND}
N 340 410 340 450 {lab=GND}
N 340 300 340 350 {lab=VDD}
N -940 -380 -940 -340 {lab=VDD}
N 430 -160 430 -110 {lab=#net1}
N 430 -50 430 -10 {lab=GND}
N 430 -170 530 -170 {lab=#net1}
N 430 -170 430 -160 {lab=#net1}
N 700 -170 780 -170 {lab=CLK}
N 620 -300 620 -220 {lab=#net2}
N 620 -320 720 -320 {lab=#net2}
N 720 -320 720 -300 {lab=#net2}
N 720 -240 720 -220 {lab=GND}
N 620 -320 620 -300 {lab=#net2}
N 620 -150 620 -110 {lab=#net3}
N 620 -110 670 -110 {lab=#net3}
N 670 -110 670 -80 {lab=#net3}
N 670 -20 670 0 {lab=GND}
N 580 -120 580 -100 {lab=GND}
N 570 -250 570 -220 {lab=VDD}
N -1190 -50 -1100 -50 {lab=#net4}
N -1190 -50 -1190 50 {lab=#net4}
N -1190 110 -1190 140 {lab=VDD}
N -270 -10 -210 -10 {lab=OUT_CS}
N -250 -10 -250 20 {lab=OUT_CS}
N -250 80 -250 120 {lab=GND}
N -620 -10 -440 -10 {lab=OUT_CS}
N -620 -70 -530 -70 {lab=#net5}
N -530 -70 -490 -70 {lab=#net5}
N -320 -70 -290 -70 {lab=OUT_CS}
N -290 -70 -290 -10 {lab=OUT_CS}
N -290 -10 -270 -10 {lab=OUT_CS}
N -440 -10 -290 -10 {lab=OUT_CS}
N -1310 -80 -1100 -80 {lab=#net5}
N -1310 -80 -1310 250 {lab=#net5}
N -1310 250 -530 250 {lab=#net5}
N -1240 -140 -1100 -140 {lab=OUT_CS}
N -430 -70 -380 -70 {lab=#net6}
N -1760 150 -1760 250 {lab=#net7}
N -1760 10 -1760 90 {lab=INN_TELESCOPIC}
N -1760 -50 -1760 10 {lab=INN_TELESCOPIC}
N -1530 -110 -1510 -110 {lab=INN_TELESCOPIC}
N -1740 -110 -1590 -110 {lab=INN_TELESCOPIC}
N -1760 -110 -1740 -110 {lab=INN_TELESCOPIC}
N -1760 -110 -1760 -50 {lab=INN_TELESCOPIC}
N -530 -70 -530 250 {lab=#net5}
N -1590 -110 -1530 -110 {lab=INN_TELESCOPIC}
N -1420 320 -370 320 {lab=OUT_CS}
N -370 -10 -370 320 {lab=OUT_CS}
N -1760 310 -1760 320 {lab=GND}
N -1420 -140 -1240 -140 {lab=OUT_CS}
N -1510 -110 -1100 -110 {lab=INN_TELESCOPIC}
N -1420 -140 -1420 320 {lab=OUT_CS}
C {vsource.sym} 490 380 0 0 {name=V3 value= "PWL(0 0 0.0499m 0 0.05m 3.3 0.1499m 3.3 0.15m 0 0.2499m 0 0.25m 3.3 0.34999m 3.3 0.35m 0)" savecurrent=false}
C {gnd.sym} 490 450 0 0 {name=l1 lab=GND}
C {gnd.sym} -1010 -360 0 0 {name=l2 lab=GND}
C {vsource.sym} 340 380 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 340 450 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 340 300 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -940 -380 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 490 300 0 1 {name=p2 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -780 -380 0 1 {name=p3 sig_type=std_logic lab=SCAN_IN}
C {vsource.sym} 430 -80 0 0 {name=V2 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} 430 -10 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 780 -170 0 1 {name=p4 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -810 -380 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 620 -170 0 0 {name=x2}
C {vsource.sym} 720 -270 0 0 {name=V4 value="PWL(0 0 0.42501m 0 0.42502m 3.3)" savecurrent=false}
C {gnd.sym} 720 -220 0 0 {name=l5 lab=GND}
C {vsource.sym} 670 -50 0 0 {name=V5 value="PWL(0 3.3 0.42501m 3.3 0.42502m 0)" savecurrent=false}
C {gnd.sym} 670 0 0 0 {name=l6 lab=GND}
C {gnd.sym} 580 -100 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 570 -250 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {isource.sym} -1190 80 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -1190 140 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -210 -10 0 1 {name=p11 sig_type=std_logic lab=OUT_CS}
C {devices/code_shown.sym} 1110 -50 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 1090 60 0 0 {name=Simulation1 only_toplevel=false 

value=
"
.control
set color0 = white
set color1 = black
tran 1u 2m

* Output value before the input step
meas tran v_before find v(OUT_CS) at=475u

* Output value after settling
meas tran v_after find v(OUT_CS) at=1.9m

* Calculate the 20% and 80% levels
let v_20 = v_before + 0.2*(v_after - v_before)
let v_80 = v_before + 0.8*(v_after - v_before)

* Measure crossing times after the 500 us input step
meas tran t_20 when v(OUT_CS)=v_20 rise=1 from=500u
meas tran t_80 when v(OUT_CS)=v_80 rise=1 from=500u

* Calculate slew rate
let slew_rate = (v_80 - v_20)/(t_80 - t_20)

print v_before
print v_after
print slew_rate
* Find the maximum output voltage after the input step
meas tran v_peak MAX v(OUT_CS) from=500u to=1.9m

* Overshoot voltage (peak above final value)
let overshoot = v_peak - v_after

* Percent overshoot for a 1 V step
let percent_overshoot = 100*overshoot/1

* Convert percent overshoot to decimal
let PO = percent_overshoot/100

* Damping ratio from percent overshoot
let zeta = -log(PO)/sqrt(pi*pi + log(PO)*log(PO))

* Phase margin (degrees)
let PM = atan((2*zeta)/sqrt(sqrt(1+4*zeta*zeta*zeta*zeta)-2*zeta*zeta))*180/pi

print v_peak
print overshoot
print percent_overshoot
print PM
plot v(INN_TELESCOPIC) v(OUT_CS)

.endc
"}
C {capa.sym} -250 50 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -250 120 0 0 {name=l8 lab=GND}
C {res.sym} -460 -70 1 0 {name=R3
value=2.7k
footprint=1206
device=resistor
m=1}
C {capa.sym} -350 -70 1 0 {name=CLOAD1
m=1
value=25p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -1760 320 0 0 {name=l9 lab=GND}
C {lab_pin.sym} -1760 -110 0 0 {name=p13 sig_type=std_logic lab=INN_TELESCOPIC}
C {libs/core_tb/schem/DUT.sym} -870 -130 0 0 {name=x1}
C {vsource.sym} -1760 120 0 1 {name=VINP value= "PULSE(0 1 500u 1p 100n 25m 1)" savecurrent=false}
C {vsource.sym} -1760 280 0 0 {name=VINP2 value= "dc 1.65" savecurrent=false}

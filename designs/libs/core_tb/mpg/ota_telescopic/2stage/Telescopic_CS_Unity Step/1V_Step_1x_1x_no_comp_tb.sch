v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
L 4 300 -380 300 60 {}
L 4 300 60 970 60 {}
L 4 970 -380 970 60 {}
L 4 300 -380 970 -380 {}
L 4 -1970 -450 -1970 500 {}
L 4 -1910 500 -100 500 {}
L 4 0 -510 0 500 {}
L 4 -1910 -510 -100 -510 {}
L 4 -1970 -510 -1970 -440 {}
L 4 190 220 190 500 {}
L 4 190 500 880 500 {}
L 4 1070 220 1070 500 {}
L 4 190 220 880 220 {}
L 4 880 220 1070 220 {}
L 4 880 500 1070 500 {}
L 4 -1970 -510 -1910 -510 {}
L 4 -1970 500 -1910 500 {}
L 4 -100 500 0 500 {}
L 4 -100 -510 0 -510 {}
T {CLOCK GENERATION} 350 -540 0 0 1 1 {}
T {Artificially generate a clock signal and ensure it 
turns off after around .425ms, which is when the 
scan in signal has fully propogated through the scan chain} 330 -470 0 0 0.4 0.4 {}
T {VDD, GND, SCAN INPUT} 340 90 0 0 1 1 {}
T {Scan chain input artificially generated to enable 
telescopic cascode 1x and common source 1x sizing} 380 160 0 0 0.4 0.4 {}
T {CL = 120p} -260 150 0 0 0.75 0.75 {}
T {IBIAS = 100u} -1260 160 0 0 0.4 0.4 {}
T {IMPLEMENTATION} -1230 -680 0 0 1 1 {}
T {Configure the telescopic cascode in 1× mode and the common source stage 
in 1x mode as a unity gain amplifier, stepping the input the input by 
1 V while driving a 120pF capacitive load without a compensation network.} -1350 -610 0 0 0.4 0.4 {}
T {VCM = 1.65 V DC} -1690 260 0 0 0.5 0.5 {}
T {1 V Pulse} -1710 80 0 0 0.5 0.5 {}
N -810 -390 -810 -350 {lab=CLK}
N -780 -390 -780 -350 {lab=SCAN_IN}
N 490 290 490 340 {lab=SCAN_IN}
N 490 400 490 440 {lab=GND}
N -960 -380 -960 -350 {lab=GND}
N -1010 -390 -1010 -370 {lab=GND}
N -1010 -390 -960 -390 {lab=GND}
N -960 -390 -960 -380 {lab=GND}
N 340 400 340 440 {lab=GND}
N 340 290 340 340 {lab=VDD}
N -940 -390 -940 -350 {lab=VDD}
N 430 -170 430 -120 {lab=#net1}
N 430 -60 430 -20 {lab=GND}
N 430 -180 530 -180 {lab=#net1}
N 430 -180 430 -170 {lab=#net1}
N 700 -180 780 -180 {lab=CLK}
N 620 -310 620 -230 {lab=#net2}
N 620 -330 720 -330 {lab=#net2}
N 720 -330 720 -310 {lab=#net2}
N 720 -250 720 -230 {lab=GND}
N 620 -330 620 -310 {lab=#net2}
N 620 -160 620 -120 {lab=#net3}
N 620 -120 670 -120 {lab=#net3}
N 670 -120 670 -90 {lab=#net3}
N 670 -30 670 -10 {lab=GND}
N 580 -130 580 -110 {lab=GND}
N 570 -260 570 -230 {lab=VDD}
N -1190 -60 -1100 -60 {lab=#net4}
N -1190 -60 -1190 40 {lab=#net4}
N -1190 100 -1190 130 {lab=VDD}
N -270 -20 -210 -20 {lab=OUT_CS}
N -250 -20 -250 10 {lab=OUT_CS}
N -250 70 -250 110 {lab=GND}
N -620 -20 -440 -20 {lab=OUT_CS}
N -620 -80 -530 -80 {lab=#net5}
N -290 -20 -270 -20 {lab=OUT_CS}
N -440 -20 -290 -20 {lab=OUT_CS}
N -1310 -90 -1100 -90 {lab=#net5}
N -1310 -90 -1310 240 {lab=#net5}
N -1310 240 -530 240 {lab=#net5}
N -1240 -150 -1100 -150 {lab=OUT_CS}
N -1760 140 -1760 240 {lab=#net6}
N -1760 0 -1760 80 {lab=INP_TELESCOPIC}
N -1760 -60 -1760 0 {lab=INP_TELESCOPIC}
N -1530 -120 -1510 -120 {lab=INP_TELESCOPIC}
N -1740 -120 -1590 -120 {lab=INP_TELESCOPIC}
N -1760 -120 -1740 -120 {lab=INP_TELESCOPIC}
N -1760 -120 -1760 -60 {lab=INP_TELESCOPIC}
N -530 -80 -530 240 {lab=#net5}
N -1590 -120 -1530 -120 {lab=INP_TELESCOPIC}
N -1420 310 -370 310 {lab=OUT_CS}
N -370 -20 -370 310 {lab=OUT_CS}
N -1760 300 -1760 310 {lab=GND}
N -1420 -150 -1240 -150 {lab=OUT_CS}
N -1510 -120 -1100 -120 {lab=INP_TELESCOPIC}
N -1420 -150 -1420 310 {lab=OUT_CS}
C {vsource.sym} 490 370 0 0 {name=V3 value="PWL(0 0 0.0999m 0 0.1m 3.3 0.1499m 3.3 0.15m 0 0.2999m 0 0.3m 3.3 0.349999m 3.3 0.35m 0)" savecurrent=false}
C {gnd.sym} 490 440 0 0 {name=l1 lab=GND}
C {gnd.sym} -1010 -370 0 0 {name=l2 lab=GND}
C {vsource.sym} 340 370 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} 340 440 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 340 290 0 0 {name=p8 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -940 -390 0 1 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 490 290 0 1 {name=p2 sig_type=std_logic lab=SCAN_IN}
C {lab_pin.sym} -780 -390 0 1 {name=p3 sig_type=std_logic lab=SCAN_IN}
C {vsource.sym} 430 -90 0 0 {name=V2 value="PULSE(0 3.3 0 1n 1n 0.025m 0.05m)" savecurrent=false}
C {gnd.sym} 430 -20 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 780 -180 0 1 {name=p4 sig_type=std_logic lab=CLK}
C {lab_pin.sym} -810 -390 0 0 {name=p5 sig_type=std_logic lab=CLK}
C {libs/core_digital/schem/transmission_gate.sym} 620 -180 0 0 {name=x2}
C {vsource.sym} 720 -280 0 0 {name=V4 value="PWL(0 0 0.42501m 0 0.42502m 3.3)" savecurrent=false}
C {gnd.sym} 720 -230 0 0 {name=l5 lab=GND}
C {vsource.sym} 670 -60 0 0 {name=V5 value="PWL(0 3.3 0.42501m 3.3 0.42502m 0)" savecurrent=false}
C {gnd.sym} 670 -10 0 0 {name=l6 lab=GND}
C {gnd.sym} 580 -110 0 0 {name=l7 lab=GND}
C {lab_pin.sym} 570 -260 0 0 {name=p6 sig_type=std_logic lab=VDD}
C {isource.sym} -1190 70 2 0 {name=IBIAS value=100u}
C {lab_pin.sym} -1190 130 0 0 {name=p9 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -210 -20 0 1 {name=p11 sig_type=std_logic lab=OUT_CS}
C {devices/code_shown.sym} 1110 -60 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} 1090 50 0 0 {name=Simulation1 only_toplevel=false 

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
plot v(INP_TELESCOPIC) v(OUT_CS)

.endc
"}
C {capa.sym} -250 40 0 0 {name=CLOAD
m=1
value=120p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -250 110 0 0 {name=l8 lab=GND}
C {gnd.sym} -1760 310 0 0 {name=l9 lab=GND}
C {lab_pin.sym} -1760 -120 0 0 {name=p13 sig_type=std_logic lab=INP_TELESCOPIC}
C {libs/core_tb/schem/DUT.sym} -870 -140 0 0 {name=x1}
C {vsource.sym} -1760 110 0 1 {name=VINP value= "PULSE(0 1 500u 1p 100n 25m 1)" savecurrent=false}
C {vsource.sym} -1760 270 0 0 {name=VINP2 value= "dc 1.65" savecurrent=false}

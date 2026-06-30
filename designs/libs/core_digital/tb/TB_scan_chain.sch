v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -390 -90 -390 -50 {lab=VDD}
N -390 10 -390 70 {lab=GND}
N -50 -240 -50 -220 {lab=GND}
N -50 -220 -50 -210 {lab=GND}
N 180 -240 180 -210 {lab=VDD}
N -240 -40 -90 -40 {lab=ena_0}
N -240 -40 -240 20 {lab=ena_0}
N -70 -40 -70 -30 {lab=ena_bar_0}
N -200 -30 -70 -30 {lab=ena_bar_0}
N -200 -30 -200 20 {lab=ena_bar_0}
N -50 -40 -50 -20 {lab=#net1}
N -160 -20 -50 -20 {lab=#net1}
N -160 -20 -160 20 {lab=#net1}
N -30 -40 -30 -10 {lab=#net2}
N -120 -10 -30 -10 {lab=#net2}
N -120 -10 -120 20 {lab=#net2}
N -10 -40 -10 -0 {lab=#net3}
N -70 -0 -10 -0 {lab=#net3}
N -70 -0 -70 20 {lab=#net3}
N 10 -40 10 -0 {lab=#net4}
N 10 -0 10 10 {lab=#net4}
N -30 10 10 10 {lab=#net4}
N -30 10 -30 20 {lab=#net4}
N 30 -40 30 20 {lab=#net5}
N 10 20 30 20 {lab=#net5}
N 50 -40 50 20 {lab=#net6}
N 70 -40 70 20 {lab=#net7}
N 70 20 90 20 {lab=#net7}
N 210 -40 380 -40 {lab=#net8}
N 380 -40 380 20 {lab=#net8}
N 190 -40 190 -30 {lab=#net9}
N 190 -30 340 -30 {lab=#net9}
N 340 -30 340 20 {lab=#net9}
N 170 -40 170 -20 {lab=#net10}
N 170 -20 300 -20 {lab=#net10}
N 300 -20 300 20 {lab=#net10}
N 150 -40 150 -10 {lab=#net11}
N 150 -10 260 -10 {lab=#net11}
N 260 -10 260 20 {lab=#net11}
N 130 -40 130 -0 {lab=#net12}
N 130 -0 210 0 {lab=#net12}
N 210 0 210 20 {lab=#net12}
N 110 -40 110 10 {lab=#net13}
N 110 10 170 10 {lab=#net13}
N 170 10 170 20 {lab=#net13}
N 90 -40 90 -0 {lab=#net14}
N 90 0 100 0 {lab=#net14}
N 100 0 100 20 {lab=#net14}
N 100 20 130 20 {lab=#net14}
N -240 80 -240 110 {lab=GND}
N -240 110 380 110 {lab=GND}
N 380 80 380 110 {lab=GND}
N 340 80 340 110 {lab=GND}
N 300 80 300 110 {lab=GND}
N 260 80 260 110 {lab=GND}
N 210 80 210 110 {lab=GND}
N 170 80 170 110 {lab=GND}
N 130 80 130 110 {lab=GND}
N 90 80 90 110 {lab=GND}
N 50 80 50 110 {lab=GND}
N 10 80 10 110 {lab=GND}
N -30 80 -30 110 {lab=GND}
N -70 80 -70 110 {lab=GND}
N -120 80 -120 110 {lab=GND}
N -160 80 -160 110 {lab=GND}
N -200 80 -200 100 {lab=GND}
N -200 100 -200 110 {lab=GND}
N 240 -170 270 -170 {lab=scan_out}
N 270 -170 270 -160 {lab=scan_out}
N 270 -100 440 -100 {lab=GND}
N 440 -100 440 110 {lab=GND}
N 380 110 440 110 {lab=GND}
N -270 -150 -270 -130 {lab=scan_in}
N -270 -150 -150 -150 {lab=scan_in}
N -150 -150 -150 -140 {lab=scan_in}
N -150 -140 -140 -140 {lab=scan_in}
N -320 -170 -140 -170 {lab=CLK}
N -320 -170 -320 -130 {lab=CLK}
N -320 -70 -320 -50 {lab=GND}
N -320 -50 -270 -50 {lab=GND}
N -270 -70 -270 -50 {lab=GND}
N -300 -50 -300 110 {lab=GND}
N -300 110 -240 110 {lab=GND}
C {libs/core_digital/scan_chain.sym} -40 30 0 0 {name=x1}
C {vsource.sym} -390 -20 0 0 {name=V1 value=3.3 savecurrent=false}
C {gnd.sym} -390 70 0 0 {name=l1 lab=GND}
C {lab_wire.sym} -390 40 0 0 {name=p1 sig_type=std_logic lab=GND
}
C {lab_wire.sym} -390 -60 0 0 {name=p2 sig_type=std_logic lab=VDD}
C {lab_wire.sym} 180 -220 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_wire.sym} -50 -220 0 0 {name=p4 sig_type=std_logic lab=GND
}
C {capa.sym} -70 50 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -30 50 0 0 {name=C2
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 10 50 0 0 {name=C3
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 50 50 0 0 {name=C8
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -240 50 0 0 {name=C10
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -200 50 0 0 {name=C11
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -160 50 0 0 {name=C12
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} -120 50 0 0 {name=C13
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 260 50 0 0 {name=C4
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 300 50 0 0 {name=C5
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 340 50 0 0 {name=C6
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 380 50 0 0 {name=C7
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 90 50 0 0 {name=C9
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 130 50 0 0 {name=C14
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 170 50 0 0 {name=C15
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {capa.sym} 210 50 0 0 {name=C16
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} -80 110 0 0 {name=p6 sig_type=std_logic lab=GND
}
C {capa.sym} 270 -130 0 0 {name=C17
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {lab_wire.sym} 250 -170 1 0 {name=p7 sig_type=std_logic lab=scan_out}
C {vsource.sym} -320 -100 0 0 {name=V2 value="PULSE(3.3 0 0 1n 1n 0.25m 0.5m)" savecurrent=false}
C {vsource.sym} -270 -100 0 0 {name=V3 value="PULSE(3.3 0 0 1n 1n 0.5m 1m)" savecurrent=false}
C {lab_wire.sym} -220 -170 0 0 {name=p5 sig_type=std_logic lab=CLK
}
C {lab_wire.sym} -220 -150 0 0 {name=p8 sig_type=std_logic lab=scan_in
}
C {devices/code_shown.sym} 40 -360 0 0 {name=MODELS only_toplevel=true
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {lab_wire.sym} -180 -40 0 0 {name=p9 sig_type=std_logic lab=ena_0
}
C {lab_wire.sym} -200 0 0 0 {name=p10 sig_type=std_logic lab=ena_bar_0
}
C {devices/code_shown.sym} 470 -240 0 0 {name=NGSPICE only_toplevel=true
format="tcleval( @value )"
value="* Transient Analysis - 10ms
.tran 1u 10m

* NGSpice interactive plot command
.control
  run
  plot V(CLK) title 'CLK' xlabel 'Time (s)' ylabel 'Voltage (V)'
  plot V(scan_in) title 'Scan In' xlabel 'Time (s)' ylabel 'Voltage (V)'
  plot V(scan_out) title 'Scan Out' xlabel 'Time (s)' ylabel 'Voltage (V)'
.endc

.end"}
C {libs/core_digital/schem/scan_chain.sym} -40 30 0 0 {name=x2}

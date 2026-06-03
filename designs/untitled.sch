v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 400 30 400 80 {lab=GND}
N 30 60 400 60 {lab=GND}
N 30 -60 400 -60 {lab=#net1}
N 400 -60 400 -30 {lab=#net1}
N -220 -10 -220 0 {lab=#net2}
N -220 -0 -100 -0 {lab=#net2}
N -220 -130 -220 -70 {lab=#net1}
N -220 -130 120 -130 {lab=#net1}
N 120 -130 120 -60 {lab=#net1}
N -160 60 -100 60 {lab=#net3}
N -160 -60 -100 -60 {lab=#net4}
N -160 -200 -160 -60 {lab=#net4}
N 130 -0 220 -0 {lab=#net5}
N -310 -200 -160 -200 {lab=#net4}
N -310 -200 -310 -150 {lab=#net4}
N -310 -90 -310 -50 {lab=GND}
N -160 60 -160 170 {lab=#net3}
N -160 170 -40 170 {lab=#net3}
N 20 170 180 170 {lab=#net5}
N 180 -0 180 170 {lab=#net5}
N -160 170 -160 210 {lab=#net3}
N -160 270 -160 300 {lab=GND}
C {libs/core_amps/ota_folded_cascode/symbol.sym} 70 10 0 0 {name=x1}
C {vsource.sym} 400 0 0 0 {name=V2 value=3.3 savecurrent=false}
C {gnd.sym} 400 80 0 0 {name=l1 lab=GND}
C {isource.sym} -220 -40 0 0 {name=Iref value= 100u}
C {devices/code_shown.sym} -900 -110 0 0 {name=Models only_toplevel=false
format="tcleval( @value )"
value="
.include $::180MCU_MODELS/design.ngspice
.lib $::180MCU_MODELS/sm141064.ngspice typical
"}
C {code_shown.sym} -890 60 0 0 {name=Simulation only_toplevel=false 

value=

"
ac dec 20 1 1G
  plot vdb(OUT)
  plot vp(OUT)
  meas ac dcgain find vdb(OUT) at=1
  meas ac ugbw   when vdb(OUT)=0
  meas ac phase  find vp(OUT) when vdb(out)=0
.endc

"}
C {vsource.sym} -310 -120 0 0 {name=V3 value= dc 1.65 ac 1 savecurrent=false}
C {gnd.sym} -310 -50 0 0 {name=l4 lab=GND}
C {ind.sym} -10 170 3 0 {name=L2
m=1
value=1
footprint=1206
device=inductor}
C {capa.sym} -160 240 0 0 {name=C1
m=1
value=1
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} -160 300 0 0 {name=l3 lab=GND}

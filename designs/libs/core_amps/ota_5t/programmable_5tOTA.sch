v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
T {Programmable 5-Transister Operational Transconductance Amplifier} 160 -1360 0 0 0.4 0.4 {}
N 320 -1200 320 -1140 {lab=VDD}
N 320 -1200 700 -1200 {lab=VDD}
N 700 -1200 700 -1140 {lab=VDD}
N 230 -1030 270 -1030 {lab=VDD}
N 230 -1200 230 -1030 {lab=VDD}
N 230 -1200 320 -1200 {lab=VDD}
N 750 -1030 790 -1030 {lab=VDD}
N 790 -1200 790 -1030 {lab=VDD}
N 700 -1200 790 -1200 {lab=VDD}
N 350 -1200 350 -1140 {lab=VDD}
N 670 -1200 670 -1140 {lab=VDD}
N 410 -1100 610 -1100 {lab=EN0}
N 510 -1260 510 -1200 {lab=VDD}
N 410 -1070 610 -1070 {lab=!EN0}
N 540 -1040 610 -1040 {lab=#net1}
N 410 -1010 610 -1010 {lab=EN1}
N 410 -980 610 -980 {lab=!EN1}
N 340 -940 340 -840 {lab=#net1}
N 680 -940 680 -840 {lab=vout}
N 230 -940 320 -940 {lab=VSS}
N 230 -940 230 -730 {lab=VSS}
N 230 -730 260 -730 {lab=VSS}
N 310 -880 310 -840 {lab=VDD}
N 710 -880 710 -840 {lab=VDD}
N 700 -940 790 -940 {lab=VSS}
N 790 -940 790 -730 {lab=VSS}
N 760 -730 790 -730 {lab=VSS}
N 340 -880 510 -880 {lab=#net1}
N 510 -1120 510 -1100 {lab=EN0}
N 510 -1090 510 -1070 {lab=!EN0}
N 410 -1040 480 -1040 {lab=#net1}
N 480 -1050 480 -1040 {lab=#net1}
N 480 -1050 540 -1050 {lab=#net1}
N 540 -1050 540 -1040 {lab=#net1}
N 510 -1050 510 -880 {lab=#net1}
N 500 -1030 500 -1010 {lab=EN1}
N 500 -1000 500 -980 {lab=!EN1}
N 400 -800 620 -800 {lab=EN0}
N 400 -770 620 -770 {lab=!EN0}
N 400 -710 620 -710 {lab=EN1}
N 400 -680 620 -680 {lab=!EN1}
N 510 -820 510 -800 {lab=EN0}
N 510 -790 510 -770 {lab=!EN0}
N 510 -730 510 -710 {lab=EN1}
N 510 -700 510 -680 {lab=!EN1}
N 400 -740 440 -740 {lab=vin+}
N 440 -740 440 -610 {lab=vin+}
N 230 -510 440 -510 {lab=vin+}
N 580 -740 620 -740 {lab=vin-}
N 580 -740 580 -610 {lab=vin-}
N 580 -510 790 -510 {lab=vin-}
N 340 -570 680 -570 {lab=#net2}
N 680 -900 970 -900 {lab=vout}
N 340 -640 340 -570 {lab=#net2}
N 680 -640 680 -570 {lab=#net2}
N 510 -570 510 -450 {lab=#net2}
N 230 -640 310 -640 {lab=VSS}
N 230 -730 230 -640 {lab=VSS}
N 710 -640 790 -640 {lab=VSS}
N 790 -730 790 -640 {lab=VSS}
N 440 -610 440 -510 {lab=vin+}
N 580 -610 580 -510 {lab=vin-}
N 380 -430 380 -410 {lab=EN0}
N 380 -400 380 -380 {lab=!EN0}
N 380 -340 380 -320 {lab=EN1}
N 380 -310 380 -290 {lab=!EN1}
N 380 -290 450 -290 {lab=!EN1}
N 380 -320 450 -320 {lab=EN1}
N 380 -380 450 -380 {lab=!EN0}
N 380 -410 450 -410 {lab=EN0}
N 200 -350 450 -350 {lab=V_bias}
N 510 -250 510 -190 {lab=VSS}
N 510 -190 650 -190 {lab=VSS}
N 650 -340 650 -190 {lab=VSS}
N 590 -340 650 -340 {lab=VSS}
N 540 -250 540 -190 {lab=VSS}
N 510 -190 510 -150 {lab=VSS}
N 540 -490 540 -450 {lab=VDD}
N 1250 -1010 1250 -990 {lab=EN0}
N 1250 -980 1250 -960 {lab=!EN0}
N 1250 -920 1250 -900 {lab=EN1}
N 1250 -890 1250 -870 {lab=!EN1}
N 1250 -990 1320 -990 {lab=EN0}
N 1250 -960 1320 -960 {lab=!EN0}
N 1250 -900 1320 -900 {lab=EN1}
N 1250 -870 1320 -870 {lab=!EN1}
C {title.sym} 170 -40 0 0 {name=l1 author="Songhang Li"}
C {libs/core_digital/programmable_pfet.sym} 290 -1040 0 1 {name=x3 width=100u length=0.5u nf=1 mult=1}
C {libs/core_digital/programmable_nfet.sym} 280 -730 0 1 {name=x1 width=3*11.43u length=0.28u nf=1 mult=1}
C {libs/core_digital/programmable_nfet.sym} 570 -340 0 0 {name=x5 width=3*22.86u length=0.5u nf=1 mult=1}
C {libs/core_digital/programmable_pfet.sym} 730 -1040 0 0 {name=x4 width=100u length=0.5u nf=1 mult=1}
C {libs/core_digital/programmable_nfet.sym} 740 -730 0 0 {name=x2 width=3*11.43u length=0.28u nf=1 mult=1}
C {lab_pin.sym} 230 -1080 0 0 {name=p14 sig_type=std_logic lab=VDD}
C {ipin.sym} 510 -1260 1 0 {name=p15 lab=VDD}
C {lab_pin.sym} 230 -930 2 0 {name=p16 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 310 -880 0 0 {name=p17 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 710 -880 0 1 {name=p18 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 790 -930 0 0 {name=p19 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 510 -1120 0 0 {name=p20 sig_type=std_logic lab=EN0}
C {lab_pin.sym} 510 -1090 0 0 {name=p21 sig_type=std_logic lab=!EN0}
C {lab_pin.sym} 500 -1030 0 0 {name=p22 sig_type=std_logic lab=EN1}
C {lab_pin.sym} 500 -1000 0 0 {name=p23 sig_type=std_logic lab=!EN1}
C {lab_pin.sym} 510 -820 0 0 {name=p24 sig_type=std_logic lab=EN0}
C {lab_pin.sym} 510 -790 0 0 {name=p25 sig_type=std_logic lab=!EN0}
C {lab_pin.sym} 510 -730 0 0 {name=p26 sig_type=std_logic lab=EN1}
C {lab_pin.sym} 510 -700 0 0 {name=p27 sig_type=std_logic lab=!EN1}
C {opin.sym} 970 -900 0 0 {name=p28 lab=vout}
C {ipin.sym} 230 -510 0 0 {name=p29 lab=vin+}
C {ipin.sym} 790 -510 2 0 {name=p30 lab=vin-
}
C {lab_pin.sym} 380 -430 0 0 {name=p31 sig_type=std_logic lab=EN0}
C {lab_pin.sym} 380 -400 0 0 {name=p32 sig_type=std_logic lab=!EN0}
C {lab_pin.sym} 380 -340 0 0 {name=p33 sig_type=std_logic lab=EN1}
C {lab_pin.sym} 380 -310 0 0 {name=p34 sig_type=std_logic lab=!EN1}
C {ipin.sym} 200 -350 0 0 {name=p35 lab=V_bias
}
C {ipin.sym} 510 -150 3 0 {name=p36 lab=VSS
}
C {lab_pin.sym} 540 -490 0 1 {name=p37 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 1250 -1010 0 0 {name=p1 sig_type=std_logic lab=EN0}
C {lab_pin.sym} 1250 -980 0 0 {name=p2 sig_type=std_logic lab=!EN0}
C {lab_pin.sym} 1250 -920 0 0 {name=p3 sig_type=std_logic lab=EN1}
C {lab_pin.sym} 1250 -890 0 0 {name=p4 sig_type=std_logic lab=!EN1}
C {ipin.sym} 1320 -990 2 0 {name=p5 lab=EN0
}
C {ipin.sym} 1320 -960 2 0 {name=p6 lab=!EN0
}
C {ipin.sym} 1320 -900 2 0 {name=p7 lab=EN1
}
C {ipin.sym} 1320 -870 2 0 {name=p8 lab=!EN1
}

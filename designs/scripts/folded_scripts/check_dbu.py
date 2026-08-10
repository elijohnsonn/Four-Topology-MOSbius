import pya

layout1 = pya.Layout()
layout1.read("/foss/designs/libs/core_amps/ota_folded_cascode/prgrm_layout/ota_folded_cascode_layout/ota_folded_cascode_layout.gds")
print(f"Source DBU: {layout1.dbu}")

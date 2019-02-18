read_lef  -lef /tech/NANGATE/NangateOpenCellLibrary_PDKv1_2_v2008_10.lef -tech also
read_lef -lef vedic.lef
read_verilog -v 2mult.vg
elaborate mult2
set_floorplan_parameters -WIDTH 500 -HEIGHT 500
set_floorplan -force -partition mult2
write_def -output mult2.def --overwrite
defIn -def mult.def --all

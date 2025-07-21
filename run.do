#compilation
vlog non_blocking.sv
#elaboration
vsim -novopt -suppress 12110 non_blocking
#simulation
run -all

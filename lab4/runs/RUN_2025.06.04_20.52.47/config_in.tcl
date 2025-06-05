set ::env(DESIGN_NAME) top
set ::env(VERILOG_FILES) [glob $::env(DESIGN_DIR)/src/*.v]

set ::env(CLOCK_PORT) "CLK"
set ::env(CLOCK_PERIOD) "10"

set ::env(FP_IO_HLAYER) {met4}
set ::env(FP_IO_VLAYER) {met3}

set ::env(FP_PDN_VWIDTH) 5
set ::env(FP_PDN_HWIDTH) 5


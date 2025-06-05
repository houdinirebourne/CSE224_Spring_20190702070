set ::env(DESIGN_NAME) "TopModule"
set ::env(VERILOG_FILES) "\
    $::env(DESIGN_DIR)/src/TopModule.v \
    $::env(DESIGN_DIR)/src/ALU.v \
    $::env(DESIGN_DIR)/src/Decoder.v \
    $::env(DESIGN_DIR)/src/InstructionMemory.v \
    $::env(DESIGN_DIR)/src/ProgramCounter.v \
    $::env(DESIGN_DIR)/src/RegisterFile.v"

set ::env(CLOCK_PORT) "clk"
set ::env(CLOCK_PERIOD) "10"

# set ::env(FP_PIN_ORDER_CFG) "$::env(DESIGN_DIR)/pin_order.cfg"

# Çekirdek alanı elle belirliyoruz
set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 200 200"

# Core %20 içeri gömülü olacak (margin gibi düşün)
set ::env(FP_CORE_MARGIN) 20

# PDN ayarları (büyük genişlik ve pitch)
set ::env(FP_PDN_ENABLE_GLOBAL_CONNECTIONS) 1
set ::env(FP_PDN_VPITCH) 20
set ::env(FP_PDN_HPITCH) 20
set ::env(FP_PDN_VWIDTH) 4
set ::env(FP_PDN_HWIDTH) 4
set ::env(FP_PDN_VOFFSET) 5
set ::env(FP_PDN_HOFFSET) 5

# ➤ STEP 18 (resizer_routing_design) adımını atla
set ::env(RSZ_USE_ROUTING_CONSTRAINTS) 0
set ::env(RUN_RESIZER_TIMING_OPT) 0
set ::env(RUN_RESIZER_ROUTING_OPT) 0

set ::env(RUN_RESIZER_TIMING_OPT) 0
set ::env(RUN_RESIZER_ROUTING_OPT) 0
set ::env(RSZ_USE_ROUTING_CONSTRAINTS) 0


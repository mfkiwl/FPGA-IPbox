# TCL File Generated by Component Editor 13.0sp1
# Wed Nov 11 15:44:58 PST 2020
# DO NOT MODIFY


# 
# avmm_vga_controller "Avalon-MM VGA controller" v1.0
# Heqing Huang 2020.11.11.15:44:58
# Avalon Memory Mapped VGA controller
# 

# 
# request TCL package from ACDS 13.1
# 
package require -exact qsys 13.1


# 
# module avmm_vga_controller
# 
set_module_property DESCRIPTION "Avalon Memory Mapped VGA controller"
set_module_property NAME avmm_vga_controller
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR "Heqing Huang"
set_module_property DISPLAY_NAME "Avalon-MM VGA controller"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL avmm_vga_controller
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file async_fifo.v VERILOG PATH ../../common/rtl/async_fifo.v
add_fileset_file dsync.v VERILOG PATH ../../common/rtl/dsync.v
add_fileset_file fwft_async_fifo.v VERILOG PATH ../../common/rtl/fwft_async_fifo.v
add_fileset_file vga.vh OTHER PATH vga.vh
add_fileset_file vga_controller.v VERILOG PATH vga_controller.v
add_fileset_file vga_sync.v VERILOG PATH vga_sync.v
add_fileset_file vga_vram_buffer.v VERILOG PATH vga_vram_buffer.v
add_fileset_file avmm_vga_controller.v VERILOG PATH avmm_vga_controller.v TOP_LEVEL_FILE


# 
# parameters
# 
add_parameter BUFSIZE INTEGER 512
set_parameter_property BUFSIZE DEFAULT_VALUE 512
set_parameter_property BUFSIZE DISPLAY_NAME BUFSIZE
set_parameter_property BUFSIZE TYPE INTEGER
set_parameter_property BUFSIZE UNITS None
set_parameter_property BUFSIZE HDL_PARAMETER true
add_parameter PWIDTH INTEGER 8
set_parameter_property PWIDTH DEFAULT_VALUE 8
set_parameter_property PWIDTH DISPLAY_NAME PWIDTH
set_parameter_property PWIDTH TYPE INTEGER
set_parameter_property PWIDTH ENABLED false
set_parameter_property PWIDTH UNITS None
set_parameter_property PWIDTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property PWIDTH HDL_PARAMETER true
add_parameter AWIDTH INTEGER 19
set_parameter_property AWIDTH DEFAULT_VALUE 19
set_parameter_property AWIDTH DISPLAY_NAME AWIDTH
set_parameter_property AWIDTH TYPE INTEGER
set_parameter_property AWIDTH ENABLED false
set_parameter_property AWIDTH UNITS None
set_parameter_property AWIDTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property AWIDTH HDL_PARAMETER true
add_parameter LATENCY INTEGER 4
set_parameter_property LATENCY DEFAULT_VALUE 4
set_parameter_property LATENCY DISPLAY_NAME LATENCY
set_parameter_property LATENCY TYPE INTEGER
set_parameter_property LATENCY UNITS None
set_parameter_property LATENCY ALLOWED_RANGES -2147483648:2147483647
set_parameter_property LATENCY HDL_PARAMETER true
add_parameter RWIDTH INTEGER 10
set_parameter_property RWIDTH DEFAULT_VALUE 10
set_parameter_property RWIDTH DISPLAY_NAME RWIDTH
set_parameter_property RWIDTH TYPE INTEGER
set_parameter_property RWIDTH UNITS None
set_parameter_property RWIDTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property RWIDTH HDL_PARAMETER true
add_parameter GWIDTH INTEGER 10
set_parameter_property GWIDTH DEFAULT_VALUE 10
set_parameter_property GWIDTH DISPLAY_NAME GWIDTH
set_parameter_property GWIDTH TYPE INTEGER
set_parameter_property GWIDTH UNITS None
set_parameter_property GWIDTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property GWIDTH HDL_PARAMETER true
add_parameter BWIDTH INTEGER 10
set_parameter_property BWIDTH DEFAULT_VALUE 10
set_parameter_property BWIDTH DISPLAY_NAME BWIDTH
set_parameter_property BWIDTH TYPE INTEGER
set_parameter_property BWIDTH UNITS None
set_parameter_property BWIDTH ALLOWED_RANGES -2147483648:2147483647
set_parameter_property BWIDTH HDL_PARAMETER true


# 
# display items
# 


# 
# connection point clk_vga
# 
add_interface clk_vga clock end
set_interface_property clk_vga clockRate 0
set_interface_property clk_vga ENABLED true
set_interface_property clk_vga EXPORT_OF ""
set_interface_property clk_vga PORT_NAME_MAP ""
set_interface_property clk_vga SVD_ADDRESS_GROUP ""

add_interface_port clk_vga clk_vga clk Input 1


# 
# connection point clk_core
# 
add_interface clk_core clock end
set_interface_property clk_core clockRate 0
set_interface_property clk_core ENABLED true
set_interface_property clk_core EXPORT_OF ""
set_interface_property clk_core PORT_NAME_MAP ""
set_interface_property clk_core SVD_ADDRESS_GROUP ""

add_interface_port clk_core clk_core clk Input 1


# 
# connection point rst_vga
# 
add_interface rst_vga reset end
set_interface_property rst_vga associatedClock clk_vga
set_interface_property rst_vga synchronousEdges DEASSERT
set_interface_property rst_vga ENABLED true
set_interface_property rst_vga EXPORT_OF ""
set_interface_property rst_vga PORT_NAME_MAP ""
set_interface_property rst_vga SVD_ADDRESS_GROUP ""

add_interface_port rst_vga rst_vga reset Input 1


# 
# connection point rst_core
# 
add_interface rst_core reset end
set_interface_property rst_core associatedClock clk_core
set_interface_property rst_core synchronousEdges DEASSERT
set_interface_property rst_core ENABLED true
set_interface_property rst_core EXPORT_OF ""
set_interface_property rst_core PORT_NAME_MAP ""
set_interface_property rst_core SVD_ADDRESS_GROUP ""

add_interface_port rst_core rst_core reset Input 1


# 
# connection point m0
# 
add_interface m0 avalon start
set_interface_property m0 addressUnits SYMBOLS
set_interface_property m0 associatedClock clk_core
set_interface_property m0 associatedReset rst_core
set_interface_property m0 bitsPerSymbol 8
set_interface_property m0 burstOnBurstBoundariesOnly false
set_interface_property m0 burstcountUnits WORDS
set_interface_property m0 doStreamReads false
set_interface_property m0 doStreamWrites false
set_interface_property m0 holdTime 0
set_interface_property m0 linewrapBursts false
set_interface_property m0 maximumPendingReadTransactions 0
set_interface_property m0 readLatency 0
set_interface_property m0 readWaitTime 1
set_interface_property m0 setupTime 0
set_interface_property m0 timingUnits Cycles
set_interface_property m0 writeWaitTime 0
set_interface_property m0 ENABLED true
set_interface_property m0 EXPORT_OF ""
set_interface_property m0 PORT_NAME_MAP ""
set_interface_property m0 SVD_ADDRESS_GROUP ""

add_interface_port m0 avm_waitrequest waitrequest Input 1
add_interface_port m0 avm_readdata readdata Input PWIDTH
add_interface_port m0 avm_readdatavalid readdatavalid Input 1
add_interface_port m0 avm_address address Output AWIDTH
add_interface_port m0 avm_read read Output 1


# 
# connection point vga
# 
add_interface vga conduit end
set_interface_property vga associatedClock clk_vga
set_interface_property vga associatedReset rst_vga
set_interface_property vga ENABLED true
set_interface_property vga EXPORT_OF ""
set_interface_property vga PORT_NAME_MAP ""
set_interface_property vga SVD_ADDRESS_GROUP ""

add_interface_port vga adv7123_vga_blank export Output 1
add_interface_port vga adv7123_vga_sync export Output 1
add_interface_port vga adv7123_vga_clk export Output 1
add_interface_port vga vga_hsync export Output 1
add_interface_port vga vga_vsync export Output 1
add_interface_port vga vga_video_on export Output 1
add_interface_port vga vga_r export Output RWIDTH
add_interface_port vga vga_g export Output GWIDTH
add_interface_port vga vga_b export Output BWIDTH
add_interface_port vga out_sync export Output 1


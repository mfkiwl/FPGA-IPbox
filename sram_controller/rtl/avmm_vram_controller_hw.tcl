# TCL File Generated by Component Editor 13.0sp1
# Mon Nov 09 20:03:37 PST 2020
# DO NOT MODIFY


# 
# avmm_vram_controller "Avalon-MM VRAM Controller" v1.0
# Heqing Huang 2020.11.09.20:03:37
# Avalon Memory Mapped VRAM Control
# 

# 
# request TCL package from ACDS 13.1
# 
package require -exact qsys 13.1


# 
# module avmm_vram_controller
# 
set_module_property DESCRIPTION "Avalon Memory Mapped VRAM Control"
set_module_property NAME avmm_vram_controller
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property GROUP "Memories and Memory Controllers/External Memory Interfaces"
set_module_property AUTHOR "Heqing Huang"
set_module_property DISPLAY_NAME "Avalon-MM VRAM Controller"
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL avmm_vram_controller
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file avmm_vram_controller.v VERILOG PATH avmm_vram_controller.v TOP_LEVEL_FILE
add_fileset_file wrr_arbiter.v VERILOG PATH ../../common/rtl/wrr_arbiter.v


# 
# parameters
# 
add_parameter CPU_CREDIT INTEGER 64
set_parameter_property CPU_CREDIT DEFAULT_VALUE 64
set_parameter_property CPU_CREDIT DISPLAY_NAME CPU_CREDIT
set_parameter_property CPU_CREDIT TYPE INTEGER
set_parameter_property CPU_CREDIT UNITS None
set_parameter_property CPU_CREDIT ALLOWED_RANGES -2147483648:2147483647
set_parameter_property CPU_CREDIT HDL_PARAMETER true
add_parameter VRAM_CREDIT INTEGER 128
set_parameter_property VRAM_CREDIT DEFAULT_VALUE 128
set_parameter_property VRAM_CREDIT DISPLAY_NAME VRAM_CREDIT
set_parameter_property VRAM_CREDIT TYPE INTEGER
set_parameter_property VRAM_CREDIT UNITS None
set_parameter_property VRAM_CREDIT ALLOWED_RANGES -2147483648:2147483647
set_parameter_property VRAM_CREDIT HDL_PARAMETER true


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point cpu
# 
add_interface cpu avalon end
set_interface_property cpu addressUnits SYMBOLS
set_interface_property cpu associatedClock clock
set_interface_property cpu associatedReset reset
set_interface_property cpu bitsPerSymbol 8
set_interface_property cpu burstOnBurstBoundariesOnly false
set_interface_property cpu burstcountUnits WORDS
set_interface_property cpu explicitAddressSpan 0
set_interface_property cpu holdTime 0
set_interface_property cpu linewrapBursts false
set_interface_property cpu maximumPendingReadTransactions 1
set_interface_property cpu readLatency 0
set_interface_property cpu readWaitTime 1
set_interface_property cpu setupTime 0
set_interface_property cpu timingUnits Cycles
set_interface_property cpu writeWaitTime 0
set_interface_property cpu ENABLED true
set_interface_property cpu EXPORT_OF ""
set_interface_property cpu PORT_NAME_MAP ""
set_interface_property cpu SVD_ADDRESS_GROUP ""

add_interface_port cpu avs_cpu_address address Input 19
add_interface_port cpu avs_cpu_write write Input 1
add_interface_port cpu avs_cpu_writedata writedata Input 8
add_interface_port cpu avs_cpu_waitrequest waitrequest Output 1
add_interface_port cpu avs_cpu_read read Input 1
add_interface_port cpu avs_cpu_readdata readdata Output 8
add_interface_port cpu avs_cpu_readdatavalid readdatavalid Output 1
set_interface_assignment cpu embeddedsw.configuration.isFlash 0
set_interface_assignment cpu embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment cpu embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment cpu embeddedsw.configuration.isPrintableDevice 0


# 
# connection point vram
# 
add_interface vram avalon end
set_interface_property vram addressUnits WORDS
set_interface_property vram associatedClock clock
set_interface_property vram associatedReset reset
set_interface_property vram bitsPerSymbol 8
set_interface_property vram burstOnBurstBoundariesOnly false
set_interface_property vram burstcountUnits WORDS
set_interface_property vram explicitAddressSpan 0
set_interface_property vram holdTime 0
set_interface_property vram linewrapBursts false
set_interface_property vram maximumPendingReadTransactions 1
set_interface_property vram readLatency 0
set_interface_property vram readWaitTime 1
set_interface_property vram setupTime 0
set_interface_property vram timingUnits Cycles
set_interface_property vram writeWaitTime 0
set_interface_property vram ENABLED true
set_interface_property vram EXPORT_OF ""
set_interface_property vram PORT_NAME_MAP ""
set_interface_property vram SVD_ADDRESS_GROUP ""

add_interface_port vram avs_vram_waitrequest waitrequest Output 1
add_interface_port vram avs_vram_readdata readdata Output 8
add_interface_port vram avs_vram_readdatavalid readdatavalid Output 1
add_interface_port vram avs_vram_address address Input 19
add_interface_port vram avs_vram_read read Input 1
set_interface_assignment vram embeddedsw.configuration.isFlash 0
set_interface_assignment vram embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment vram embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment vram embeddedsw.configuration.isPrintableDevice 0


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset rst reset Input 1


# 
# connection point sram
# 
add_interface sram conduit end
set_interface_property sram associatedClock ""
set_interface_property sram associatedReset ""
set_interface_property sram ENABLED true
set_interface_property sram EXPORT_OF ""
set_interface_property sram PORT_NAME_MAP ""
set_interface_property sram SVD_ADDRESS_GROUP ""

add_interface_port sram sram_addr export Output 18
add_interface_port sram sram_writedata export Output 16
add_interface_port sram sram_ce_n export Output 1
add_interface_port sram sram_we_n export Output 1
add_interface_port sram sram_oe_n export Output 1
add_interface_port sram sram_ub_n export Output 1
add_interface_port sram sram_lb_n export Output 1
add_interface_port sram sram_readdata export Input 16


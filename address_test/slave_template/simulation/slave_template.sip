set_global_assignment -entity "slave_template" -library "lib_slave_template" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "slave_template" -library "lib_slave_template" -name IP_TOOL_VERSION "21.1"
set_global_assignment -entity "slave_template" -library "lib_slave_template" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_slave_template" -name SPD_FILE [file join $::quartus(sip_path) "../slave_template.spd"]
set_global_assignment -library "lib_slave_template" -name MISC_FILE [file join $::quartus(sip_path) "../../slave_template.qsys"]

set_global_assignment -library "lib_slave_template" -name MISC_FILE [file join $::quartus(sip_path) "slave_template.vhd"]

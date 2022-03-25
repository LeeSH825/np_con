set_global_assignment -entity "test" -library "lib_test" -name IP_TOOL_NAME "Qsys"
set_global_assignment -entity "test" -library "lib_test" -name IP_TOOL_VERSION "21.1"
set_global_assignment -entity "test" -library "lib_test" -name IP_TOOL_ENV "Qsys"
set_global_assignment -library "lib_test" -name SPD_FILE [file join $::quartus(sip_path) "../test.spd"]
set_global_assignment -library "lib_test" -name MISC_FILE [file join $::quartus(sip_path) "../../test.qsys"]

set_global_assignment -library "lib_test" -name MISC_FILE [file join $::quartus(sip_path) "test.vhd"]

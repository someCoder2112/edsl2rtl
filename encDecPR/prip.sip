set_global_assignment -entity "prip" -library "lib_prip" -name IP_TOOL_NAME "alt_pr"
set_global_assignment -entity "prip" -library "lib_prip" -name IP_TOOL_VERSION "16.0"
set_global_assignment -entity "prip" -library "lib_prip" -name IP_TOOL_ENV "mwpim"
set_global_assignment -library "lib_prip" -name SPD_FILE [file join $::quartus(sip_path) "prip.spd"]

set_global_assignment -library "lib_prip" -name MISC_FILE [file join $::quartus(sip_path) "prip_sim/prip.vhd"]
set_global_assignment -library "lib_prip" -name MISC_FILE [file join $::quartus(sip_path) "prip_sim/alt_pr/alt_pr.v"]

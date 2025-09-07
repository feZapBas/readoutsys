# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct /home/ej3b/readoutsys/rtos_sys_wrapper/platform.tcl
# 
# OR launch xsct and run below command.
# source /home/ej3b/readoutsys/rtos_sys_wrapper/platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {rtos_sys_wrapper}\
-hw {/home/ej3b/readoutsys/rtos_sys/rtos_sys_wrapper.xsa}\
-out {/home/ej3b/readoutsys}

platform write
domain create -name {freertos10_xilinx_ps7_cortexa9_0} -display-name {freertos10_xilinx_ps7_cortexa9_0} -os {freertos10_xilinx} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {freertos_lwip_echo_server}
platform generate -domains 
platform active {rtos_sys_wrapper}
domain active {zynq_fsbl}
domain active {freertos10_xilinx_ps7_cortexa9_0}
platform generate -quick
platform generate

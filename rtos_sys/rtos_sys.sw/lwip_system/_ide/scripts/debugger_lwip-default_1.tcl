# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: /home/ej3b/readoutsys/rtos_sys/rtos_sys.sw/lwip_system/_ide/scripts/debugger_lwip-default_1.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source /home/ej3b/readoutsys/rtos_sys/rtos_sys.sw/lwip_system/_ide/scripts/debugger_lwip-default_1.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Cora Z7 - 7007S 210370BCADD2A" && level==0 && jtag_device_ctx=="jsn-Cora Z7 - 7007S-210370BCADD2A-13723093-0"}
fpga -file /home/ej3b/readoutsys/rtos_sys/rtos_sys.sw/lwip/_ide/bitstream/rtos2.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw /home/ej3b/readoutsys/rtos_sys/rtos_sys.sw/rtos2/export/rtos2/hw/rtos2.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source /home/ej3b/readoutsys/rtos_sys/rtos_sys.sw/lwip/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow /home/ej3b/readoutsys/rtos_sys/rtos_sys.sw/lwip/Debug/lwip.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con

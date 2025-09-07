set_property SRC_FILE_INFO {cfile:/media/ej3b/a1030d84-846f-4a15-9828-0951444df26f/home/ej3b/Music/Cora-Z7-07S-Master.xdc rfile:../../../../../../../media/ej3b/a1030d84-846f-4a15-9828-0951444df26f/home/ej3b/Music/Cora-Z7-07S-Master.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:7 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports { clk }]; #IO_L13P_T2_MRCC_35 Sch=sysclk
set_property src_info {type:XDC file:1 line:8 export:INPUT save:INPUT read:READ} [current_design]
create_clock -add -name sys_clk_pin -period 8.00 -waveform {0 4} [get_ports { clk }];#set
set_property src_info {type:XDC file:1 line:19 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D20   IOSTANDARD LVCMOS33 } [get_ports { btns_2bits_tri_i[0] }]; #IO_L4N_T0_35 Sch=btn[0]
set_property src_info {type:XDC file:1 line:20 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D19   IOSTANDARD LVCMOS33 } [get_ports { btns_2bits_tri_i[1] }]; #IO_L4P_T0_35 Sch=btn[1]
set_property src_info {type:XDC file:1 line:132 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN P16   IOSTANDARD LVCMOS33 } [get_ports { IIC_0_0_scl_io }]; #IO_L24N_T3_34 Sch=ck_scl
set_property src_info {type:XDC file:1 line:133 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN P15   IOSTANDARD LVCMOS33 } [get_ports { IIC_0_0_sda_io }]; #IO_L24P_T3_34 Sch=ck_sda

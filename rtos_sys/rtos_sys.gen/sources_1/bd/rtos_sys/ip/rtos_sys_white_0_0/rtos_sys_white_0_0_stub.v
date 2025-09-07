// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sat Sep  6 20:59:37 2025
// Host        : ej3b-GF63-Thin-11SC running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/ej3b/readoutsys/rtos_sys/rtos_sys.gen/sources_1/bd/rtos_sys/ip/rtos_sys_white_0_0/rtos_sys_white_0_0_stub.v
// Design      : rtos_sys_white_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "rtos_sys_white_0_0,white,{}" *) (* CORE_GENERATION_INFO = "rtos_sys_white_0_0,white,{x_ipProduct=Vivado 2024.2,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=white,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "white,Vivado 2024.2" *) 
module rtos_sys_white_0_0(clk, enable, axis_tready, axis_tdata, axis_tkeep, 
  axis_tvalid, axis_tlast)
/* synthesis syn_black_box black_box_pad_pin="enable,axis_tready,axis_tdata[31:0],axis_tkeep[7:0],axis_tvalid,axis_tlast" */
/* synthesis syn_force_seq_prim="clk" */;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF axis, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rtos_sys_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk /* synthesis syn_isclock = 1 */;
  input enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis TREADY" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 10000000, PHASE 0.0, CLK_DOMAIN rtos_sys_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis TDATA" *) output [31:0]axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis TKEEP" *) output [7:0]axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis TVALID" *) output axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis TLAST" *) output axis_tlast;
endmodule

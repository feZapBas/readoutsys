// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Sat Sep  6 20:59:37 2025
// Host        : ej3b-GF63-Thin-11SC running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/ej3b/readoutsys/rtos_sys/rtos_sys.gen/sources_1/bd/rtos_sys/ip/rtos_sys_snow_0_0/rtos_sys_snow_0_0_sim_netlist.v
// Design      : rtos_sys_snow_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rtos_sys_snow_0_0,snow,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "snow,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module rtos_sys_snow_0_0
   (clk,
    enable,
    axis_tready,
    axis_tdata,
    axis_tkeep,
    axis_tvalid,
    axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF axis, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rtos_sys_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis TREADY" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 10000000, PHASE 0.0, CLK_DOMAIN rtos_sys_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis TDATA" *) output [63:0]axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis TKEEP" *) output [7:0]axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis TVALID" *) output axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis TLAST" *) output axis_tlast;

  wire \<const1> ;
  wire [63:0]axis_tdata;
  wire axis_tlast;
  wire axis_tready;
  wire axis_tvalid;
  wire clk;
  wire enable;

  assign axis_tkeep[7] = \<const1> ;
  assign axis_tkeep[6] = \<const1> ;
  assign axis_tkeep[5] = \<const1> ;
  assign axis_tkeep[4] = \<const1> ;
  assign axis_tkeep[3] = \<const1> ;
  assign axis_tkeep[2] = \<const1> ;
  assign axis_tkeep[1] = \<const1> ;
  assign axis_tkeep[0] = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  rtos_sys_snow_0_0_snow inst
       (.axis_tdata(axis_tdata),
        .axis_tlast(axis_tlast),
        .axis_tready(axis_tready),
        .axis_tvalid(axis_tvalid),
        .clk(clk),
        .enable(enable));
endmodule

(* ORIG_REF_NAME = "snow" *) 
module rtos_sys_snow_0_0_snow
   (axis_tdata,
    axis_tlast,
    axis_tvalid,
    clk,
    axis_tready,
    enable);
  output [63:0]axis_tdata;
  output axis_tlast;
  output axis_tvalid;
  input clk;
  input axis_tready;
  input enable;

  wire [63:0]axis_tdata;
  wire axis_tlast;
  wire axis_tlast_INST_0_i_10_n_0;
  wire axis_tlast_INST_0_i_11_n_0;
  wire axis_tlast_INST_0_i_12_n_0;
  wire axis_tlast_INST_0_i_1_n_0;
  wire axis_tlast_INST_0_i_2_n_0;
  wire axis_tlast_INST_0_i_3_n_0;
  wire axis_tlast_INST_0_i_4_n_0;
  wire axis_tlast_INST_0_i_5_n_0;
  wire axis_tlast_INST_0_i_6_n_0;
  wire axis_tlast_INST_0_i_7_n_0;
  wire axis_tlast_INST_0_i_8_n_0;
  wire axis_tlast_INST_0_i_9_n_0;
  wire axis_tready;
  wire axis_tvalid;
  wire axis_tvalid_i_i_1_n_0;
  wire buffer1_carry__0_i_1_n_0;
  wire buffer1_carry__0_i_2_n_0;
  wire buffer1_carry__0_i_3_n_0;
  wire buffer1_carry__0_i_4_n_0;
  wire buffer1_carry__0_n_0;
  wire buffer1_carry__0_n_1;
  wire buffer1_carry__0_n_2;
  wire buffer1_carry__0_n_3;
  wire buffer1_carry__1_i_1_n_0;
  wire buffer1_carry__1_i_2_n_0;
  wire buffer1_carry__1_i_3_n_0;
  wire buffer1_carry__1_i_4_n_0;
  wire buffer1_carry__1_n_0;
  wire buffer1_carry__1_n_1;
  wire buffer1_carry__1_n_2;
  wire buffer1_carry__1_n_3;
  wire buffer1_carry__2_i_1_n_0;
  wire buffer1_carry__2_i_2_n_0;
  wire buffer1_carry__2_i_3_n_0;
  wire buffer1_carry__2_i_4_n_0;
  wire buffer1_carry__2_n_0;
  wire buffer1_carry__2_n_1;
  wire buffer1_carry__2_n_2;
  wire buffer1_carry__2_n_3;
  wire buffer1_carry__3_i_1_n_0;
  wire buffer1_carry__3_i_2_n_0;
  wire buffer1_carry__3_i_3_n_0;
  wire buffer1_carry__3_i_4_n_0;
  wire buffer1_carry__3_n_0;
  wire buffer1_carry__3_n_1;
  wire buffer1_carry__3_n_2;
  wire buffer1_carry__3_n_3;
  wire buffer1_carry__4_i_1_n_0;
  wire buffer1_carry__4_i_2_n_0;
  wire buffer1_carry__4_n_2;
  wire buffer1_carry__4_n_3;
  wire buffer1_carry_i_1_n_0;
  wire buffer1_carry_i_2_n_0;
  wire buffer1_carry_i_3_n_0;
  wire buffer1_carry_i_4_n_0;
  wire buffer1_carry_n_0;
  wire buffer1_carry_n_1;
  wire buffer1_carry_n_2;
  wire buffer1_carry_n_3;
  wire \buffer[11]_i_2_n_0 ;
  wire \buffer[11]_i_3_n_0 ;
  wire \buffer[11]_i_4_n_0 ;
  wire \buffer[11]_i_5_n_0 ;
  wire \buffer[15]_i_2_n_0 ;
  wire \buffer[15]_i_3_n_0 ;
  wire \buffer[15]_i_4_n_0 ;
  wire \buffer[15]_i_5_n_0 ;
  wire \buffer[19]_i_2_n_0 ;
  wire \buffer[19]_i_3_n_0 ;
  wire \buffer[19]_i_4_n_0 ;
  wire \buffer[19]_i_5_n_0 ;
  wire \buffer[23]_i_2_n_0 ;
  wire \buffer[23]_i_3_n_0 ;
  wire \buffer[23]_i_4_n_0 ;
  wire \buffer[23]_i_5_n_0 ;
  wire \buffer[27]_i_2_n_0 ;
  wire \buffer[27]_i_3_n_0 ;
  wire \buffer[27]_i_4_n_0 ;
  wire \buffer[27]_i_5_n_0 ;
  wire \buffer[31]_i_2_n_0 ;
  wire \buffer[31]_i_3_n_0 ;
  wire \buffer[31]_i_4_n_0 ;
  wire \buffer[31]_i_5_n_0 ;
  wire \buffer[35]_i_2_n_0 ;
  wire \buffer[35]_i_3_n_0 ;
  wire \buffer[35]_i_4_n_0 ;
  wire \buffer[35]_i_5_n_0 ;
  wire \buffer[39]_i_2_n_0 ;
  wire \buffer[39]_i_3_n_0 ;
  wire \buffer[39]_i_4_n_0 ;
  wire \buffer[39]_i_5_n_0 ;
  wire \buffer[3]_i_2_n_0 ;
  wire \buffer[3]_i_3_n_0 ;
  wire \buffer[43]_i_2_n_0 ;
  wire \buffer[43]_i_3_n_0 ;
  wire \buffer[43]_i_4_n_0 ;
  wire \buffer[43]_i_5_n_0 ;
  wire \buffer[47]_i_2_n_0 ;
  wire \buffer[47]_i_3_n_0 ;
  wire \buffer[47]_i_4_n_0 ;
  wire \buffer[47]_i_5_n_0 ;
  wire \buffer[51]_i_2_n_0 ;
  wire \buffer[51]_i_3_n_0 ;
  wire \buffer[51]_i_4_n_0 ;
  wire \buffer[51]_i_5_n_0 ;
  wire \buffer[55]_i_2_n_0 ;
  wire \buffer[55]_i_3_n_0 ;
  wire \buffer[55]_i_4_n_0 ;
  wire \buffer[55]_i_5_n_0 ;
  wire \buffer[59]_i_2_n_0 ;
  wire \buffer[59]_i_3_n_0 ;
  wire \buffer[59]_i_4_n_0 ;
  wire \buffer[59]_i_5_n_0 ;
  wire \buffer[63]_i_2_n_0 ;
  wire \buffer[63]_i_4_n_0 ;
  wire \buffer[63]_i_5_n_0 ;
  wire \buffer[63]_i_6_n_0 ;
  wire \buffer[63]_i_7_n_0 ;
  wire \buffer[7]_i_2_n_0 ;
  wire \buffer[7]_i_3_n_0 ;
  wire \buffer[7]_i_4_n_0 ;
  wire \buffer[7]_i_5_n_0 ;
  wire \buffer_reg[11]_i_1_n_0 ;
  wire \buffer_reg[11]_i_1_n_1 ;
  wire \buffer_reg[11]_i_1_n_2 ;
  wire \buffer_reg[11]_i_1_n_3 ;
  wire \buffer_reg[11]_i_1_n_4 ;
  wire \buffer_reg[11]_i_1_n_5 ;
  wire \buffer_reg[11]_i_1_n_6 ;
  wire \buffer_reg[11]_i_1_n_7 ;
  wire \buffer_reg[15]_i_1_n_0 ;
  wire \buffer_reg[15]_i_1_n_1 ;
  wire \buffer_reg[15]_i_1_n_2 ;
  wire \buffer_reg[15]_i_1_n_3 ;
  wire \buffer_reg[15]_i_1_n_4 ;
  wire \buffer_reg[15]_i_1_n_5 ;
  wire \buffer_reg[15]_i_1_n_6 ;
  wire \buffer_reg[15]_i_1_n_7 ;
  wire \buffer_reg[19]_i_1_n_0 ;
  wire \buffer_reg[19]_i_1_n_1 ;
  wire \buffer_reg[19]_i_1_n_2 ;
  wire \buffer_reg[19]_i_1_n_3 ;
  wire \buffer_reg[19]_i_1_n_4 ;
  wire \buffer_reg[19]_i_1_n_5 ;
  wire \buffer_reg[19]_i_1_n_6 ;
  wire \buffer_reg[19]_i_1_n_7 ;
  wire \buffer_reg[23]_i_1_n_0 ;
  wire \buffer_reg[23]_i_1_n_1 ;
  wire \buffer_reg[23]_i_1_n_2 ;
  wire \buffer_reg[23]_i_1_n_3 ;
  wire \buffer_reg[23]_i_1_n_4 ;
  wire \buffer_reg[23]_i_1_n_5 ;
  wire \buffer_reg[23]_i_1_n_6 ;
  wire \buffer_reg[23]_i_1_n_7 ;
  wire \buffer_reg[27]_i_1_n_0 ;
  wire \buffer_reg[27]_i_1_n_1 ;
  wire \buffer_reg[27]_i_1_n_2 ;
  wire \buffer_reg[27]_i_1_n_3 ;
  wire \buffer_reg[27]_i_1_n_4 ;
  wire \buffer_reg[27]_i_1_n_5 ;
  wire \buffer_reg[27]_i_1_n_6 ;
  wire \buffer_reg[27]_i_1_n_7 ;
  wire \buffer_reg[31]_i_1_n_0 ;
  wire \buffer_reg[31]_i_1_n_1 ;
  wire \buffer_reg[31]_i_1_n_2 ;
  wire \buffer_reg[31]_i_1_n_3 ;
  wire \buffer_reg[31]_i_1_n_4 ;
  wire \buffer_reg[31]_i_1_n_5 ;
  wire \buffer_reg[31]_i_1_n_6 ;
  wire \buffer_reg[31]_i_1_n_7 ;
  wire \buffer_reg[35]_i_1_n_0 ;
  wire \buffer_reg[35]_i_1_n_1 ;
  wire \buffer_reg[35]_i_1_n_2 ;
  wire \buffer_reg[35]_i_1_n_3 ;
  wire \buffer_reg[35]_i_1_n_4 ;
  wire \buffer_reg[35]_i_1_n_5 ;
  wire \buffer_reg[35]_i_1_n_6 ;
  wire \buffer_reg[35]_i_1_n_7 ;
  wire \buffer_reg[39]_i_1_n_0 ;
  wire \buffer_reg[39]_i_1_n_1 ;
  wire \buffer_reg[39]_i_1_n_2 ;
  wire \buffer_reg[39]_i_1_n_3 ;
  wire \buffer_reg[39]_i_1_n_4 ;
  wire \buffer_reg[39]_i_1_n_5 ;
  wire \buffer_reg[39]_i_1_n_6 ;
  wire \buffer_reg[39]_i_1_n_7 ;
  wire \buffer_reg[3]_i_1_n_0 ;
  wire \buffer_reg[3]_i_1_n_1 ;
  wire \buffer_reg[3]_i_1_n_2 ;
  wire \buffer_reg[3]_i_1_n_3 ;
  wire \buffer_reg[3]_i_1_n_4 ;
  wire \buffer_reg[3]_i_1_n_5 ;
  wire \buffer_reg[3]_i_1_n_6 ;
  wire \buffer_reg[3]_i_1_n_7 ;
  wire \buffer_reg[43]_i_1_n_0 ;
  wire \buffer_reg[43]_i_1_n_1 ;
  wire \buffer_reg[43]_i_1_n_2 ;
  wire \buffer_reg[43]_i_1_n_3 ;
  wire \buffer_reg[43]_i_1_n_4 ;
  wire \buffer_reg[43]_i_1_n_5 ;
  wire \buffer_reg[43]_i_1_n_6 ;
  wire \buffer_reg[43]_i_1_n_7 ;
  wire \buffer_reg[47]_i_1_n_0 ;
  wire \buffer_reg[47]_i_1_n_1 ;
  wire \buffer_reg[47]_i_1_n_2 ;
  wire \buffer_reg[47]_i_1_n_3 ;
  wire \buffer_reg[47]_i_1_n_4 ;
  wire \buffer_reg[47]_i_1_n_5 ;
  wire \buffer_reg[47]_i_1_n_6 ;
  wire \buffer_reg[47]_i_1_n_7 ;
  wire \buffer_reg[51]_i_1_n_0 ;
  wire \buffer_reg[51]_i_1_n_1 ;
  wire \buffer_reg[51]_i_1_n_2 ;
  wire \buffer_reg[51]_i_1_n_3 ;
  wire \buffer_reg[51]_i_1_n_4 ;
  wire \buffer_reg[51]_i_1_n_5 ;
  wire \buffer_reg[51]_i_1_n_6 ;
  wire \buffer_reg[51]_i_1_n_7 ;
  wire \buffer_reg[55]_i_1_n_0 ;
  wire \buffer_reg[55]_i_1_n_1 ;
  wire \buffer_reg[55]_i_1_n_2 ;
  wire \buffer_reg[55]_i_1_n_3 ;
  wire \buffer_reg[55]_i_1_n_4 ;
  wire \buffer_reg[55]_i_1_n_5 ;
  wire \buffer_reg[55]_i_1_n_6 ;
  wire \buffer_reg[55]_i_1_n_7 ;
  wire \buffer_reg[59]_i_1_n_0 ;
  wire \buffer_reg[59]_i_1_n_1 ;
  wire \buffer_reg[59]_i_1_n_2 ;
  wire \buffer_reg[59]_i_1_n_3 ;
  wire \buffer_reg[59]_i_1_n_4 ;
  wire \buffer_reg[59]_i_1_n_5 ;
  wire \buffer_reg[59]_i_1_n_6 ;
  wire \buffer_reg[59]_i_1_n_7 ;
  wire \buffer_reg[63]_i_3_n_1 ;
  wire \buffer_reg[63]_i_3_n_2 ;
  wire \buffer_reg[63]_i_3_n_3 ;
  wire \buffer_reg[63]_i_3_n_4 ;
  wire \buffer_reg[63]_i_3_n_5 ;
  wire \buffer_reg[63]_i_3_n_6 ;
  wire \buffer_reg[63]_i_3_n_7 ;
  wire \buffer_reg[7]_i_1_n_0 ;
  wire \buffer_reg[7]_i_1_n_1 ;
  wire \buffer_reg[7]_i_1_n_2 ;
  wire \buffer_reg[7]_i_1_n_3 ;
  wire \buffer_reg[7]_i_1_n_4 ;
  wire \buffer_reg[7]_i_1_n_5 ;
  wire \buffer_reg[7]_i_1_n_6 ;
  wire \buffer_reg[7]_i_1_n_7 ;
  wire clear;
  wire clk;
  wire enable;
  wire [3:0]NLW_buffer1_carry_O_UNCONNECTED;
  wire [3:0]NLW_buffer1_carry__0_O_UNCONNECTED;
  wire [3:0]NLW_buffer1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_buffer1_carry__2_O_UNCONNECTED;
  wire [3:0]NLW_buffer1_carry__3_O_UNCONNECTED;
  wire [3:2]NLW_buffer1_carry__4_CO_UNCONNECTED;
  wire [3:0]NLW_buffer1_carry__4_O_UNCONNECTED;
  wire [3:3]\NLW_buffer_reg[63]_i_3_CO_UNCONNECTED ;

  LUT4 #(
    .INIT(16'h8000)) 
    axis_tlast_INST_0
       (.I0(axis_tlast_INST_0_i_1_n_0),
        .I1(axis_tlast_INST_0_i_2_n_0),
        .I2(axis_tlast_INST_0_i_3_n_0),
        .I3(axis_tlast_INST_0_i_4_n_0),
        .O(axis_tlast));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    axis_tlast_INST_0_i_1
       (.I0(axis_tlast_INST_0_i_5_n_0),
        .I1(axis_tdata[1]),
        .I2(axis_tdata[0]),
        .I3(axis_tdata[3]),
        .I4(axis_tdata[2]),
        .I5(axis_tlast_INST_0_i_6_n_0),
        .O(axis_tlast_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    axis_tlast_INST_0_i_10
       (.I0(axis_tdata[42]),
        .I1(axis_tdata[43]),
        .I2(axis_tdata[40]),
        .I3(axis_tdata[41]),
        .I4(axis_tdata[45]),
        .I5(axis_tdata[44]),
        .O(axis_tlast_INST_0_i_10_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    axis_tlast_INST_0_i_11
       (.I0(axis_tdata[18]),
        .I1(axis_tdata[19]),
        .I2(axis_tdata[16]),
        .I3(axis_tdata[17]),
        .I4(axis_tdata[21]),
        .I5(axis_tdata[20]),
        .O(axis_tlast_INST_0_i_11_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    axis_tlast_INST_0_i_12
       (.I0(axis_tdata[24]),
        .I1(axis_tdata[25]),
        .I2(axis_tdata[22]),
        .I3(axis_tdata[23]),
        .I4(axis_tdata[27]),
        .I5(axis_tdata[26]),
        .O(axis_tlast_INST_0_i_12_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    axis_tlast_INST_0_i_2
       (.I0(axis_tdata[60]),
        .I1(axis_tdata[61]),
        .I2(axis_tdata[58]),
        .I3(axis_tdata[59]),
        .I4(axis_tdata[63]),
        .I5(axis_tdata[62]),
        .O(axis_tlast_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    axis_tlast_INST_0_i_3
       (.I0(axis_tdata[54]),
        .I1(axis_tdata[55]),
        .I2(axis_tdata[52]),
        .I3(axis_tdata[53]),
        .I4(axis_tdata[57]),
        .I5(axis_tdata[56]),
        .O(axis_tlast_INST_0_i_3_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    axis_tlast_INST_0_i_4
       (.I0(axis_tlast_INST_0_i_7_n_0),
        .I1(axis_tlast_INST_0_i_8_n_0),
        .I2(axis_tlast_INST_0_i_9_n_0),
        .I3(axis_tlast_INST_0_i_10_n_0),
        .I4(axis_tlast_INST_0_i_11_n_0),
        .I5(axis_tlast_INST_0_i_12_n_0),
        .O(axis_tlast_INST_0_i_4_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    axis_tlast_INST_0_i_5
       (.I0(axis_tdata[6]),
        .I1(axis_tdata[7]),
        .I2(axis_tdata[4]),
        .I3(axis_tdata[5]),
        .I4(axis_tdata[9]),
        .I5(axis_tdata[8]),
        .O(axis_tlast_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    axis_tlast_INST_0_i_6
       (.I0(axis_tdata[12]),
        .I1(axis_tdata[13]),
        .I2(axis_tdata[10]),
        .I3(axis_tdata[11]),
        .I4(axis_tdata[15]),
        .I5(axis_tdata[14]),
        .O(axis_tlast_INST_0_i_6_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    axis_tlast_INST_0_i_7
       (.I0(axis_tdata[36]),
        .I1(axis_tdata[37]),
        .I2(axis_tdata[34]),
        .I3(axis_tdata[35]),
        .I4(axis_tdata[39]),
        .I5(axis_tdata[38]),
        .O(axis_tlast_INST_0_i_7_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    axis_tlast_INST_0_i_8
       (.I0(axis_tdata[30]),
        .I1(axis_tdata[31]),
        .I2(axis_tdata[28]),
        .I3(axis_tdata[29]),
        .I4(axis_tdata[33]),
        .I5(axis_tdata[32]),
        .O(axis_tlast_INST_0_i_8_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    axis_tlast_INST_0_i_9
       (.I0(axis_tdata[48]),
        .I1(axis_tdata[49]),
        .I2(axis_tdata[46]),
        .I3(axis_tdata[47]),
        .I4(axis_tdata[51]),
        .I5(axis_tdata[50]),
        .O(axis_tlast_INST_0_i_9_n_0));
  LUT3 #(
    .INIT(8'h80)) 
    axis_tvalid_i_i_1
       (.I0(buffer1_carry__4_n_2),
        .I1(axis_tready),
        .I2(enable),
        .O(axis_tvalid_i_i_1_n_0));
  FDRE axis_tvalid_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(axis_tvalid_i_i_1_n_0),
        .Q(axis_tvalid),
        .R(1'b0));
  CARRY4 buffer1_carry
       (.CI(1'b0),
        .CO({buffer1_carry_n_0,buffer1_carry_n_1,buffer1_carry_n_2,buffer1_carry_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_buffer1_carry_O_UNCONNECTED[3:0]),
        .S({buffer1_carry_i_1_n_0,buffer1_carry_i_2_n_0,buffer1_carry_i_3_n_0,buffer1_carry_i_4_n_0}));
  CARRY4 buffer1_carry__0
       (.CI(buffer1_carry_n_0),
        .CO({buffer1_carry__0_n_0,buffer1_carry__0_n_1,buffer1_carry__0_n_2,buffer1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_buffer1_carry__0_O_UNCONNECTED[3:0]),
        .S({buffer1_carry__0_i_1_n_0,buffer1_carry__0_i_2_n_0,buffer1_carry__0_i_3_n_0,buffer1_carry__0_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    buffer1_carry__0_i_1
       (.I0(axis_tdata[23]),
        .I1(axis_tdata[22]),
        .I2(axis_tdata[21]),
        .O(buffer1_carry__0_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    buffer1_carry__0_i_2
       (.I0(axis_tdata[20]),
        .I1(axis_tdata[19]),
        .I2(axis_tdata[18]),
        .O(buffer1_carry__0_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    buffer1_carry__0_i_3
       (.I0(axis_tdata[17]),
        .I1(axis_tdata[16]),
        .I2(axis_tdata[15]),
        .O(buffer1_carry__0_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    buffer1_carry__0_i_4
       (.I0(axis_tdata[14]),
        .I1(axis_tdata[13]),
        .I2(axis_tdata[12]),
        .O(buffer1_carry__0_i_4_n_0));
  CARRY4 buffer1_carry__1
       (.CI(buffer1_carry__0_n_0),
        .CO({buffer1_carry__1_n_0,buffer1_carry__1_n_1,buffer1_carry__1_n_2,buffer1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_buffer1_carry__1_O_UNCONNECTED[3:0]),
        .S({buffer1_carry__1_i_1_n_0,buffer1_carry__1_i_2_n_0,buffer1_carry__1_i_3_n_0,buffer1_carry__1_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    buffer1_carry__1_i_1
       (.I0(axis_tdata[35]),
        .I1(axis_tdata[34]),
        .I2(axis_tdata[33]),
        .O(buffer1_carry__1_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    buffer1_carry__1_i_2
       (.I0(axis_tdata[32]),
        .I1(axis_tdata[31]),
        .I2(axis_tdata[30]),
        .O(buffer1_carry__1_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    buffer1_carry__1_i_3
       (.I0(axis_tdata[29]),
        .I1(axis_tdata[28]),
        .I2(axis_tdata[27]),
        .O(buffer1_carry__1_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    buffer1_carry__1_i_4
       (.I0(axis_tdata[26]),
        .I1(axis_tdata[25]),
        .I2(axis_tdata[24]),
        .O(buffer1_carry__1_i_4_n_0));
  CARRY4 buffer1_carry__2
       (.CI(buffer1_carry__1_n_0),
        .CO({buffer1_carry__2_n_0,buffer1_carry__2_n_1,buffer1_carry__2_n_2,buffer1_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_buffer1_carry__2_O_UNCONNECTED[3:0]),
        .S({buffer1_carry__2_i_1_n_0,buffer1_carry__2_i_2_n_0,buffer1_carry__2_i_3_n_0,buffer1_carry__2_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    buffer1_carry__2_i_1
       (.I0(axis_tdata[47]),
        .I1(axis_tdata[46]),
        .I2(axis_tdata[45]),
        .O(buffer1_carry__2_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    buffer1_carry__2_i_2
       (.I0(axis_tdata[44]),
        .I1(axis_tdata[43]),
        .I2(axis_tdata[42]),
        .O(buffer1_carry__2_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    buffer1_carry__2_i_3
       (.I0(axis_tdata[41]),
        .I1(axis_tdata[40]),
        .I2(axis_tdata[39]),
        .O(buffer1_carry__2_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    buffer1_carry__2_i_4
       (.I0(axis_tdata[38]),
        .I1(axis_tdata[37]),
        .I2(axis_tdata[36]),
        .O(buffer1_carry__2_i_4_n_0));
  CARRY4 buffer1_carry__3
       (.CI(buffer1_carry__2_n_0),
        .CO({buffer1_carry__3_n_0,buffer1_carry__3_n_1,buffer1_carry__3_n_2,buffer1_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O(NLW_buffer1_carry__3_O_UNCONNECTED[3:0]),
        .S({buffer1_carry__3_i_1_n_0,buffer1_carry__3_i_2_n_0,buffer1_carry__3_i_3_n_0,buffer1_carry__3_i_4_n_0}));
  LUT3 #(
    .INIT(8'h01)) 
    buffer1_carry__3_i_1
       (.I0(axis_tdata[59]),
        .I1(axis_tdata[58]),
        .I2(axis_tdata[57]),
        .O(buffer1_carry__3_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    buffer1_carry__3_i_2
       (.I0(axis_tdata[56]),
        .I1(axis_tdata[55]),
        .I2(axis_tdata[54]),
        .O(buffer1_carry__3_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    buffer1_carry__3_i_3
       (.I0(axis_tdata[53]),
        .I1(axis_tdata[52]),
        .I2(axis_tdata[51]),
        .O(buffer1_carry__3_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    buffer1_carry__3_i_4
       (.I0(axis_tdata[50]),
        .I1(axis_tdata[49]),
        .I2(axis_tdata[48]),
        .O(buffer1_carry__3_i_4_n_0));
  CARRY4 buffer1_carry__4
       (.CI(buffer1_carry__3_n_0),
        .CO({NLW_buffer1_carry__4_CO_UNCONNECTED[3:2],buffer1_carry__4_n_2,buffer1_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b1,1'b1}),
        .O(NLW_buffer1_carry__4_O_UNCONNECTED[3:0]),
        .S({1'b0,1'b0,buffer1_carry__4_i_1_n_0,buffer1_carry__4_i_2_n_0}));
  LUT1 #(
    .INIT(2'h1)) 
    buffer1_carry__4_i_1
       (.I0(axis_tdata[63]),
        .O(buffer1_carry__4_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    buffer1_carry__4_i_2
       (.I0(axis_tdata[62]),
        .I1(axis_tdata[61]),
        .I2(axis_tdata[60]),
        .O(buffer1_carry__4_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    buffer1_carry_i_1
       (.I0(axis_tdata[11]),
        .I1(axis_tdata[10]),
        .I2(axis_tdata[9]),
        .O(buffer1_carry_i_1_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    buffer1_carry_i_2
       (.I0(axis_tdata[8]),
        .I1(axis_tdata[7]),
        .I2(axis_tdata[6]),
        .O(buffer1_carry_i_2_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    buffer1_carry_i_3
       (.I0(axis_tdata[5]),
        .I1(axis_tdata[4]),
        .I2(axis_tdata[3]),
        .O(buffer1_carry_i_3_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    buffer1_carry_i_4
       (.I0(axis_tdata[2]),
        .I1(axis_tdata[1]),
        .I2(axis_tdata[0]),
        .O(buffer1_carry_i_4_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[11]_i_2 
       (.I0(axis_tdata[11]),
        .O(\buffer[11]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[11]_i_3 
       (.I0(axis_tdata[10]),
        .O(\buffer[11]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[11]_i_4 
       (.I0(axis_tdata[9]),
        .O(\buffer[11]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[11]_i_5 
       (.I0(axis_tdata[8]),
        .O(\buffer[11]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[15]_i_2 
       (.I0(axis_tdata[15]),
        .O(\buffer[15]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[15]_i_3 
       (.I0(axis_tdata[14]),
        .O(\buffer[15]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[15]_i_4 
       (.I0(axis_tdata[13]),
        .O(\buffer[15]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[15]_i_5 
       (.I0(axis_tdata[12]),
        .O(\buffer[15]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[19]_i_2 
       (.I0(axis_tdata[19]),
        .O(\buffer[19]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[19]_i_3 
       (.I0(axis_tdata[18]),
        .O(\buffer[19]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[19]_i_4 
       (.I0(axis_tdata[17]),
        .O(\buffer[19]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[19]_i_5 
       (.I0(axis_tdata[16]),
        .O(\buffer[19]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[23]_i_2 
       (.I0(axis_tdata[23]),
        .O(\buffer[23]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[23]_i_3 
       (.I0(axis_tdata[22]),
        .O(\buffer[23]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[23]_i_4 
       (.I0(axis_tdata[21]),
        .O(\buffer[23]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[23]_i_5 
       (.I0(axis_tdata[20]),
        .O(\buffer[23]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[27]_i_2 
       (.I0(axis_tdata[27]),
        .O(\buffer[27]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[27]_i_3 
       (.I0(axis_tdata[26]),
        .O(\buffer[27]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[27]_i_4 
       (.I0(axis_tdata[25]),
        .O(\buffer[27]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[27]_i_5 
       (.I0(axis_tdata[24]),
        .O(\buffer[27]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[31]_i_2 
       (.I0(axis_tdata[31]),
        .O(\buffer[31]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[31]_i_3 
       (.I0(axis_tdata[30]),
        .O(\buffer[31]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[31]_i_4 
       (.I0(axis_tdata[29]),
        .O(\buffer[31]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[31]_i_5 
       (.I0(axis_tdata[28]),
        .O(\buffer[31]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[35]_i_2 
       (.I0(axis_tdata[35]),
        .O(\buffer[35]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[35]_i_3 
       (.I0(axis_tdata[34]),
        .O(\buffer[35]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[35]_i_4 
       (.I0(axis_tdata[33]),
        .O(\buffer[35]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[35]_i_5 
       (.I0(axis_tdata[32]),
        .O(\buffer[35]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[39]_i_2 
       (.I0(axis_tdata[39]),
        .O(\buffer[39]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[39]_i_3 
       (.I0(axis_tdata[38]),
        .O(\buffer[39]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[39]_i_4 
       (.I0(axis_tdata[37]),
        .O(\buffer[39]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[39]_i_5 
       (.I0(axis_tdata[36]),
        .O(\buffer[39]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[3]_i_2 
       (.I0(axis_tdata[3]),
        .O(\buffer[3]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[3]_i_3 
       (.I0(axis_tdata[0]),
        .O(\buffer[3]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[43]_i_2 
       (.I0(axis_tdata[43]),
        .O(\buffer[43]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[43]_i_3 
       (.I0(axis_tdata[42]),
        .O(\buffer[43]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[43]_i_4 
       (.I0(axis_tdata[41]),
        .O(\buffer[43]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[43]_i_5 
       (.I0(axis_tdata[40]),
        .O(\buffer[43]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[47]_i_2 
       (.I0(axis_tdata[47]),
        .O(\buffer[47]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[47]_i_3 
       (.I0(axis_tdata[46]),
        .O(\buffer[47]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[47]_i_4 
       (.I0(axis_tdata[45]),
        .O(\buffer[47]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[47]_i_5 
       (.I0(axis_tdata[44]),
        .O(\buffer[47]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[51]_i_2 
       (.I0(axis_tdata[51]),
        .O(\buffer[51]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[51]_i_3 
       (.I0(axis_tdata[50]),
        .O(\buffer[51]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[51]_i_4 
       (.I0(axis_tdata[49]),
        .O(\buffer[51]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[51]_i_5 
       (.I0(axis_tdata[48]),
        .O(\buffer[51]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[55]_i_2 
       (.I0(axis_tdata[55]),
        .O(\buffer[55]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[55]_i_3 
       (.I0(axis_tdata[54]),
        .O(\buffer[55]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[55]_i_4 
       (.I0(axis_tdata[53]),
        .O(\buffer[55]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[55]_i_5 
       (.I0(axis_tdata[52]),
        .O(\buffer[55]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[59]_i_2 
       (.I0(axis_tdata[59]),
        .O(\buffer[59]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[59]_i_3 
       (.I0(axis_tdata[58]),
        .O(\buffer[59]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[59]_i_4 
       (.I0(axis_tdata[57]),
        .O(\buffer[59]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[59]_i_5 
       (.I0(axis_tdata[56]),
        .O(\buffer[59]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[63]_i_1 
       (.I0(enable),
        .O(clear));
  LUT2 #(
    .INIT(4'h8)) 
    \buffer[63]_i_2 
       (.I0(axis_tready),
        .I1(buffer1_carry__4_n_2),
        .O(\buffer[63]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[63]_i_4 
       (.I0(axis_tdata[63]),
        .O(\buffer[63]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[63]_i_5 
       (.I0(axis_tdata[62]),
        .O(\buffer[63]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[63]_i_6 
       (.I0(axis_tdata[61]),
        .O(\buffer[63]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[63]_i_7 
       (.I0(axis_tdata[60]),
        .O(\buffer[63]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[7]_i_2 
       (.I0(axis_tdata[7]),
        .O(\buffer[7]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[7]_i_3 
       (.I0(axis_tdata[6]),
        .O(\buffer[7]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[7]_i_4 
       (.I0(axis_tdata[5]),
        .O(\buffer[7]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffer[7]_i_5 
       (.I0(axis_tdata[4]),
        .O(\buffer[7]_i_5_n_0 ));
  FDSE \buffer_reg[0] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[3]_i_1_n_7 ),
        .Q(axis_tdata[0]),
        .S(clear));
  FDRE \buffer_reg[10] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[11]_i_1_n_5 ),
        .Q(axis_tdata[10]),
        .R(clear));
  FDRE \buffer_reg[11] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[11]_i_1_n_4 ),
        .Q(axis_tdata[11]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \buffer_reg[11]_i_1 
       (.CI(\buffer_reg[7]_i_1_n_0 ),
        .CO({\buffer_reg[11]_i_1_n_0 ,\buffer_reg[11]_i_1_n_1 ,\buffer_reg[11]_i_1_n_2 ,\buffer_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\buffer_reg[11]_i_1_n_4 ,\buffer_reg[11]_i_1_n_5 ,\buffer_reg[11]_i_1_n_6 ,\buffer_reg[11]_i_1_n_7 }),
        .S({\buffer[11]_i_2_n_0 ,\buffer[11]_i_3_n_0 ,\buffer[11]_i_4_n_0 ,\buffer[11]_i_5_n_0 }));
  FDRE \buffer_reg[12] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[15]_i_1_n_7 ),
        .Q(axis_tdata[12]),
        .R(clear));
  FDRE \buffer_reg[13] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[15]_i_1_n_6 ),
        .Q(axis_tdata[13]),
        .R(clear));
  FDRE \buffer_reg[14] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[15]_i_1_n_5 ),
        .Q(axis_tdata[14]),
        .R(clear));
  FDRE \buffer_reg[15] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[15]_i_1_n_4 ),
        .Q(axis_tdata[15]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \buffer_reg[15]_i_1 
       (.CI(\buffer_reg[11]_i_1_n_0 ),
        .CO({\buffer_reg[15]_i_1_n_0 ,\buffer_reg[15]_i_1_n_1 ,\buffer_reg[15]_i_1_n_2 ,\buffer_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\buffer_reg[15]_i_1_n_4 ,\buffer_reg[15]_i_1_n_5 ,\buffer_reg[15]_i_1_n_6 ,\buffer_reg[15]_i_1_n_7 }),
        .S({\buffer[15]_i_2_n_0 ,\buffer[15]_i_3_n_0 ,\buffer[15]_i_4_n_0 ,\buffer[15]_i_5_n_0 }));
  FDRE \buffer_reg[16] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[19]_i_1_n_7 ),
        .Q(axis_tdata[16]),
        .R(clear));
  FDRE \buffer_reg[17] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[19]_i_1_n_6 ),
        .Q(axis_tdata[17]),
        .R(clear));
  FDRE \buffer_reg[18] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[19]_i_1_n_5 ),
        .Q(axis_tdata[18]),
        .R(clear));
  FDRE \buffer_reg[19] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[19]_i_1_n_4 ),
        .Q(axis_tdata[19]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \buffer_reg[19]_i_1 
       (.CI(\buffer_reg[15]_i_1_n_0 ),
        .CO({\buffer_reg[19]_i_1_n_0 ,\buffer_reg[19]_i_1_n_1 ,\buffer_reg[19]_i_1_n_2 ,\buffer_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\buffer_reg[19]_i_1_n_4 ,\buffer_reg[19]_i_1_n_5 ,\buffer_reg[19]_i_1_n_6 ,\buffer_reg[19]_i_1_n_7 }),
        .S({\buffer[19]_i_2_n_0 ,\buffer[19]_i_3_n_0 ,\buffer[19]_i_4_n_0 ,\buffer[19]_i_5_n_0 }));
  FDRE \buffer_reg[1] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[3]_i_1_n_6 ),
        .Q(axis_tdata[1]),
        .R(clear));
  FDRE \buffer_reg[20] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[23]_i_1_n_7 ),
        .Q(axis_tdata[20]),
        .R(clear));
  FDRE \buffer_reg[21] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[23]_i_1_n_6 ),
        .Q(axis_tdata[21]),
        .R(clear));
  FDRE \buffer_reg[22] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[23]_i_1_n_5 ),
        .Q(axis_tdata[22]),
        .R(clear));
  FDRE \buffer_reg[23] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[23]_i_1_n_4 ),
        .Q(axis_tdata[23]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \buffer_reg[23]_i_1 
       (.CI(\buffer_reg[19]_i_1_n_0 ),
        .CO({\buffer_reg[23]_i_1_n_0 ,\buffer_reg[23]_i_1_n_1 ,\buffer_reg[23]_i_1_n_2 ,\buffer_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\buffer_reg[23]_i_1_n_4 ,\buffer_reg[23]_i_1_n_5 ,\buffer_reg[23]_i_1_n_6 ,\buffer_reg[23]_i_1_n_7 }),
        .S({\buffer[23]_i_2_n_0 ,\buffer[23]_i_3_n_0 ,\buffer[23]_i_4_n_0 ,\buffer[23]_i_5_n_0 }));
  FDRE \buffer_reg[24] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[27]_i_1_n_7 ),
        .Q(axis_tdata[24]),
        .R(clear));
  FDRE \buffer_reg[25] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[27]_i_1_n_6 ),
        .Q(axis_tdata[25]),
        .R(clear));
  FDRE \buffer_reg[26] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[27]_i_1_n_5 ),
        .Q(axis_tdata[26]),
        .R(clear));
  FDRE \buffer_reg[27] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[27]_i_1_n_4 ),
        .Q(axis_tdata[27]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \buffer_reg[27]_i_1 
       (.CI(\buffer_reg[23]_i_1_n_0 ),
        .CO({\buffer_reg[27]_i_1_n_0 ,\buffer_reg[27]_i_1_n_1 ,\buffer_reg[27]_i_1_n_2 ,\buffer_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\buffer_reg[27]_i_1_n_4 ,\buffer_reg[27]_i_1_n_5 ,\buffer_reg[27]_i_1_n_6 ,\buffer_reg[27]_i_1_n_7 }),
        .S({\buffer[27]_i_2_n_0 ,\buffer[27]_i_3_n_0 ,\buffer[27]_i_4_n_0 ,\buffer[27]_i_5_n_0 }));
  FDRE \buffer_reg[28] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[31]_i_1_n_7 ),
        .Q(axis_tdata[28]),
        .R(clear));
  FDRE \buffer_reg[29] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[31]_i_1_n_6 ),
        .Q(axis_tdata[29]),
        .R(clear));
  FDRE \buffer_reg[2] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[3]_i_1_n_5 ),
        .Q(axis_tdata[2]),
        .R(clear));
  FDRE \buffer_reg[30] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[31]_i_1_n_5 ),
        .Q(axis_tdata[30]),
        .R(clear));
  FDRE \buffer_reg[31] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[31]_i_1_n_4 ),
        .Q(axis_tdata[31]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \buffer_reg[31]_i_1 
       (.CI(\buffer_reg[27]_i_1_n_0 ),
        .CO({\buffer_reg[31]_i_1_n_0 ,\buffer_reg[31]_i_1_n_1 ,\buffer_reg[31]_i_1_n_2 ,\buffer_reg[31]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\buffer_reg[31]_i_1_n_4 ,\buffer_reg[31]_i_1_n_5 ,\buffer_reg[31]_i_1_n_6 ,\buffer_reg[31]_i_1_n_7 }),
        .S({\buffer[31]_i_2_n_0 ,\buffer[31]_i_3_n_0 ,\buffer[31]_i_4_n_0 ,\buffer[31]_i_5_n_0 }));
  FDRE \buffer_reg[32] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[35]_i_1_n_7 ),
        .Q(axis_tdata[32]),
        .R(clear));
  FDRE \buffer_reg[33] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[35]_i_1_n_6 ),
        .Q(axis_tdata[33]),
        .R(clear));
  FDRE \buffer_reg[34] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[35]_i_1_n_5 ),
        .Q(axis_tdata[34]),
        .R(clear));
  FDRE \buffer_reg[35] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[35]_i_1_n_4 ),
        .Q(axis_tdata[35]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \buffer_reg[35]_i_1 
       (.CI(\buffer_reg[31]_i_1_n_0 ),
        .CO({\buffer_reg[35]_i_1_n_0 ,\buffer_reg[35]_i_1_n_1 ,\buffer_reg[35]_i_1_n_2 ,\buffer_reg[35]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\buffer_reg[35]_i_1_n_4 ,\buffer_reg[35]_i_1_n_5 ,\buffer_reg[35]_i_1_n_6 ,\buffer_reg[35]_i_1_n_7 }),
        .S({\buffer[35]_i_2_n_0 ,\buffer[35]_i_3_n_0 ,\buffer[35]_i_4_n_0 ,\buffer[35]_i_5_n_0 }));
  FDRE \buffer_reg[36] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[39]_i_1_n_7 ),
        .Q(axis_tdata[36]),
        .R(clear));
  FDRE \buffer_reg[37] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[39]_i_1_n_6 ),
        .Q(axis_tdata[37]),
        .R(clear));
  FDRE \buffer_reg[38] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[39]_i_1_n_5 ),
        .Q(axis_tdata[38]),
        .R(clear));
  FDRE \buffer_reg[39] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[39]_i_1_n_4 ),
        .Q(axis_tdata[39]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \buffer_reg[39]_i_1 
       (.CI(\buffer_reg[35]_i_1_n_0 ),
        .CO({\buffer_reg[39]_i_1_n_0 ,\buffer_reg[39]_i_1_n_1 ,\buffer_reg[39]_i_1_n_2 ,\buffer_reg[39]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\buffer_reg[39]_i_1_n_4 ,\buffer_reg[39]_i_1_n_5 ,\buffer_reg[39]_i_1_n_6 ,\buffer_reg[39]_i_1_n_7 }),
        .S({\buffer[39]_i_2_n_0 ,\buffer[39]_i_3_n_0 ,\buffer[39]_i_4_n_0 ,\buffer[39]_i_5_n_0 }));
  FDRE \buffer_reg[3] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[3]_i_1_n_4 ),
        .Q(axis_tdata[3]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \buffer_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\buffer_reg[3]_i_1_n_0 ,\buffer_reg[3]_i_1_n_1 ,\buffer_reg[3]_i_1_n_2 ,\buffer_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b0,1'b0,1'b1}),
        .O({\buffer_reg[3]_i_1_n_4 ,\buffer_reg[3]_i_1_n_5 ,\buffer_reg[3]_i_1_n_6 ,\buffer_reg[3]_i_1_n_7 }),
        .S({\buffer[3]_i_2_n_0 ,axis_tdata[2:1],\buffer[3]_i_3_n_0 }));
  FDRE \buffer_reg[40] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[43]_i_1_n_7 ),
        .Q(axis_tdata[40]),
        .R(clear));
  FDRE \buffer_reg[41] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[43]_i_1_n_6 ),
        .Q(axis_tdata[41]),
        .R(clear));
  FDRE \buffer_reg[42] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[43]_i_1_n_5 ),
        .Q(axis_tdata[42]),
        .R(clear));
  FDRE \buffer_reg[43] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[43]_i_1_n_4 ),
        .Q(axis_tdata[43]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \buffer_reg[43]_i_1 
       (.CI(\buffer_reg[39]_i_1_n_0 ),
        .CO({\buffer_reg[43]_i_1_n_0 ,\buffer_reg[43]_i_1_n_1 ,\buffer_reg[43]_i_1_n_2 ,\buffer_reg[43]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\buffer_reg[43]_i_1_n_4 ,\buffer_reg[43]_i_1_n_5 ,\buffer_reg[43]_i_1_n_6 ,\buffer_reg[43]_i_1_n_7 }),
        .S({\buffer[43]_i_2_n_0 ,\buffer[43]_i_3_n_0 ,\buffer[43]_i_4_n_0 ,\buffer[43]_i_5_n_0 }));
  FDRE \buffer_reg[44] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[47]_i_1_n_7 ),
        .Q(axis_tdata[44]),
        .R(clear));
  FDRE \buffer_reg[45] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[47]_i_1_n_6 ),
        .Q(axis_tdata[45]),
        .R(clear));
  FDRE \buffer_reg[46] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[47]_i_1_n_5 ),
        .Q(axis_tdata[46]),
        .R(clear));
  FDRE \buffer_reg[47] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[47]_i_1_n_4 ),
        .Q(axis_tdata[47]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \buffer_reg[47]_i_1 
       (.CI(\buffer_reg[43]_i_1_n_0 ),
        .CO({\buffer_reg[47]_i_1_n_0 ,\buffer_reg[47]_i_1_n_1 ,\buffer_reg[47]_i_1_n_2 ,\buffer_reg[47]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\buffer_reg[47]_i_1_n_4 ,\buffer_reg[47]_i_1_n_5 ,\buffer_reg[47]_i_1_n_6 ,\buffer_reg[47]_i_1_n_7 }),
        .S({\buffer[47]_i_2_n_0 ,\buffer[47]_i_3_n_0 ,\buffer[47]_i_4_n_0 ,\buffer[47]_i_5_n_0 }));
  FDRE \buffer_reg[48] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[51]_i_1_n_7 ),
        .Q(axis_tdata[48]),
        .R(clear));
  FDRE \buffer_reg[49] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[51]_i_1_n_6 ),
        .Q(axis_tdata[49]),
        .R(clear));
  FDRE \buffer_reg[4] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[7]_i_1_n_7 ),
        .Q(axis_tdata[4]),
        .R(clear));
  FDRE \buffer_reg[50] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[51]_i_1_n_5 ),
        .Q(axis_tdata[50]),
        .R(clear));
  FDRE \buffer_reg[51] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[51]_i_1_n_4 ),
        .Q(axis_tdata[51]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \buffer_reg[51]_i_1 
       (.CI(\buffer_reg[47]_i_1_n_0 ),
        .CO({\buffer_reg[51]_i_1_n_0 ,\buffer_reg[51]_i_1_n_1 ,\buffer_reg[51]_i_1_n_2 ,\buffer_reg[51]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\buffer_reg[51]_i_1_n_4 ,\buffer_reg[51]_i_1_n_5 ,\buffer_reg[51]_i_1_n_6 ,\buffer_reg[51]_i_1_n_7 }),
        .S({\buffer[51]_i_2_n_0 ,\buffer[51]_i_3_n_0 ,\buffer[51]_i_4_n_0 ,\buffer[51]_i_5_n_0 }));
  FDRE \buffer_reg[52] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[55]_i_1_n_7 ),
        .Q(axis_tdata[52]),
        .R(clear));
  FDRE \buffer_reg[53] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[55]_i_1_n_6 ),
        .Q(axis_tdata[53]),
        .R(clear));
  FDRE \buffer_reg[54] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[55]_i_1_n_5 ),
        .Q(axis_tdata[54]),
        .R(clear));
  FDRE \buffer_reg[55] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[55]_i_1_n_4 ),
        .Q(axis_tdata[55]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \buffer_reg[55]_i_1 
       (.CI(\buffer_reg[51]_i_1_n_0 ),
        .CO({\buffer_reg[55]_i_1_n_0 ,\buffer_reg[55]_i_1_n_1 ,\buffer_reg[55]_i_1_n_2 ,\buffer_reg[55]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\buffer_reg[55]_i_1_n_4 ,\buffer_reg[55]_i_1_n_5 ,\buffer_reg[55]_i_1_n_6 ,\buffer_reg[55]_i_1_n_7 }),
        .S({\buffer[55]_i_2_n_0 ,\buffer[55]_i_3_n_0 ,\buffer[55]_i_4_n_0 ,\buffer[55]_i_5_n_0 }));
  FDRE \buffer_reg[56] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[59]_i_1_n_7 ),
        .Q(axis_tdata[56]),
        .R(clear));
  FDRE \buffer_reg[57] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[59]_i_1_n_6 ),
        .Q(axis_tdata[57]),
        .R(clear));
  FDRE \buffer_reg[58] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[59]_i_1_n_5 ),
        .Q(axis_tdata[58]),
        .R(clear));
  FDRE \buffer_reg[59] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[59]_i_1_n_4 ),
        .Q(axis_tdata[59]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \buffer_reg[59]_i_1 
       (.CI(\buffer_reg[55]_i_1_n_0 ),
        .CO({\buffer_reg[59]_i_1_n_0 ,\buffer_reg[59]_i_1_n_1 ,\buffer_reg[59]_i_1_n_2 ,\buffer_reg[59]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\buffer_reg[59]_i_1_n_4 ,\buffer_reg[59]_i_1_n_5 ,\buffer_reg[59]_i_1_n_6 ,\buffer_reg[59]_i_1_n_7 }),
        .S({\buffer[59]_i_2_n_0 ,\buffer[59]_i_3_n_0 ,\buffer[59]_i_4_n_0 ,\buffer[59]_i_5_n_0 }));
  FDRE \buffer_reg[5] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[7]_i_1_n_6 ),
        .Q(axis_tdata[5]),
        .R(clear));
  FDRE \buffer_reg[60] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[63]_i_3_n_7 ),
        .Q(axis_tdata[60]),
        .R(clear));
  FDRE \buffer_reg[61] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[63]_i_3_n_6 ),
        .Q(axis_tdata[61]),
        .R(clear));
  FDRE \buffer_reg[62] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[63]_i_3_n_5 ),
        .Q(axis_tdata[62]),
        .R(clear));
  FDRE \buffer_reg[63] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[63]_i_3_n_4 ),
        .Q(axis_tdata[63]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \buffer_reg[63]_i_3 
       (.CI(\buffer_reg[59]_i_1_n_0 ),
        .CO({\NLW_buffer_reg[63]_i_3_CO_UNCONNECTED [3],\buffer_reg[63]_i_3_n_1 ,\buffer_reg[63]_i_3_n_2 ,\buffer_reg[63]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\buffer_reg[63]_i_3_n_4 ,\buffer_reg[63]_i_3_n_5 ,\buffer_reg[63]_i_3_n_6 ,\buffer_reg[63]_i_3_n_7 }),
        .S({\buffer[63]_i_4_n_0 ,\buffer[63]_i_5_n_0 ,\buffer[63]_i_6_n_0 ,\buffer[63]_i_7_n_0 }));
  FDRE \buffer_reg[6] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[7]_i_1_n_5 ),
        .Q(axis_tdata[6]),
        .R(clear));
  FDRE \buffer_reg[7] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[7]_i_1_n_4 ),
        .Q(axis_tdata[7]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \buffer_reg[7]_i_1 
       (.CI(\buffer_reg[3]_i_1_n_0 ),
        .CO({\buffer_reg[7]_i_1_n_0 ,\buffer_reg[7]_i_1_n_1 ,\buffer_reg[7]_i_1_n_2 ,\buffer_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\buffer_reg[7]_i_1_n_4 ,\buffer_reg[7]_i_1_n_5 ,\buffer_reg[7]_i_1_n_6 ,\buffer_reg[7]_i_1_n_7 }),
        .S({\buffer[7]_i_2_n_0 ,\buffer[7]_i_3_n_0 ,\buffer[7]_i_4_n_0 ,\buffer[7]_i_5_n_0 }));
  FDRE \buffer_reg[8] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[11]_i_1_n_7 ),
        .Q(axis_tdata[8]),
        .R(clear));
  FDRE \buffer_reg[9] 
       (.C(clk),
        .CE(\buffer[63]_i_2_n_0 ),
        .D(\buffer_reg[11]_i_1_n_6 ),
        .Q(axis_tdata[9]),
        .R(clear));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

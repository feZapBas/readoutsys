// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
// Date        : Thu Sep 18 11:55:17 2025
// Host        : ej3b-GF63-Thin-11SC running 64-bit Ubuntu 24.04.3 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/ej3b/readoutsys/rtos_sys/rtos_sys.gen/sources_1/bd/rtos_sys/ip/rtos_sys_white_0_0/rtos_sys_white_0_0_sim_netlist.v
// Design      : rtos_sys_white_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z007sclg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "rtos_sys_white_0_0,white,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "white,Vivado 2024.2" *) 
(* NotValidForBitStream *)
module rtos_sys_white_0_0
   (clk,
    enable,
    axis_tready,
    axis_tdata,
    axis_tkeep,
    axis_tvalid,
    axis_tlast);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clk CLK" *) (* X_INTERFACE_MODE = "slave" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF axis, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rtos_sys_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input clk;
  input enable;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis TREADY" *) (* X_INTERFACE_MODE = "master" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 10000000, PHASE 0.0, CLK_DOMAIN rtos_sys_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0" *) input axis_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis TDATA" *) output [31:0]axis_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis TKEEP" *) output [7:0]axis_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis TVALID" *) output axis_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 axis TLAST" *) output axis_tlast;

  wire \<const0> ;
  wire \<const1> ;
  wire [31:0]axis_tdata;
  wire axis_tlast;
  wire axis_tready;
  wire axis_tvalid;
  wire clk;
  wire enable;

  assign axis_tkeep[7] = \<const0> ;
  assign axis_tkeep[6] = \<const0> ;
  assign axis_tkeep[5] = \<const0> ;
  assign axis_tkeep[4] = \<const0> ;
  assign axis_tkeep[3] = \<const1> ;
  assign axis_tkeep[2] = \<const1> ;
  assign axis_tkeep[1] = \<const1> ;
  assign axis_tkeep[0] = \<const1> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  rtos_sys_white_0_0_white inst
       (.axis_tdata(axis_tdata),
        .axis_tlast(axis_tlast),
        .axis_tready(axis_tready),
        .axis_tvalid(axis_tvalid),
        .clk(clk),
        .enable(enable));
endmodule

(* ORIG_REF_NAME = "white" *) 
module rtos_sys_white_0_0_white
   (axis_tdata,
    axis_tvalid,
    axis_tlast,
    clk,
    axis_tready,
    enable);
  output [31:0]axis_tdata;
  output axis_tvalid;
  output axis_tlast;
  input clk;
  input axis_tready;
  input enable;

  wire [31:0]axis_tdata;
  wire axis_tlast;
  wire axis_tlast_INST_0_i_1_n_0;
  wire axis_tlast_INST_0_i_2_n_0;
  wire axis_tlast_INST_0_i_3_n_0;
  wire axis_tlast_INST_0_i_4_n_0;
  wire axis_tlast_INST_0_i_5_n_0;
  wire axis_tlast_INST_0_i_6_n_0;
  wire axis_tready;
  wire axis_tvalid;
  wire axis_tvalid_i_i_1_n_0;
  wire axis_tvalid_i_i_2_n_0;
  wire axis_tvalid_i_i_3_n_0;
  wire axis_tvalid_i_i_4_n_0;
  wire axis_tvalid_i_i_5_n_0;
  wire \buffers[31]_i_2_n_0 ;
  wire \buffers[3]_i_2_n_0 ;
  wire \buffers_reg[11]_i_1_n_0 ;
  wire \buffers_reg[11]_i_1_n_1 ;
  wire \buffers_reg[11]_i_1_n_2 ;
  wire \buffers_reg[11]_i_1_n_3 ;
  wire \buffers_reg[11]_i_1_n_4 ;
  wire \buffers_reg[11]_i_1_n_5 ;
  wire \buffers_reg[11]_i_1_n_6 ;
  wire \buffers_reg[11]_i_1_n_7 ;
  wire \buffers_reg[15]_i_1_n_0 ;
  wire \buffers_reg[15]_i_1_n_1 ;
  wire \buffers_reg[15]_i_1_n_2 ;
  wire \buffers_reg[15]_i_1_n_3 ;
  wire \buffers_reg[15]_i_1_n_4 ;
  wire \buffers_reg[15]_i_1_n_5 ;
  wire \buffers_reg[15]_i_1_n_6 ;
  wire \buffers_reg[15]_i_1_n_7 ;
  wire \buffers_reg[19]_i_1_n_0 ;
  wire \buffers_reg[19]_i_1_n_1 ;
  wire \buffers_reg[19]_i_1_n_2 ;
  wire \buffers_reg[19]_i_1_n_3 ;
  wire \buffers_reg[19]_i_1_n_4 ;
  wire \buffers_reg[19]_i_1_n_5 ;
  wire \buffers_reg[19]_i_1_n_6 ;
  wire \buffers_reg[19]_i_1_n_7 ;
  wire \buffers_reg[23]_i_1_n_0 ;
  wire \buffers_reg[23]_i_1_n_1 ;
  wire \buffers_reg[23]_i_1_n_2 ;
  wire \buffers_reg[23]_i_1_n_3 ;
  wire \buffers_reg[23]_i_1_n_4 ;
  wire \buffers_reg[23]_i_1_n_5 ;
  wire \buffers_reg[23]_i_1_n_6 ;
  wire \buffers_reg[23]_i_1_n_7 ;
  wire \buffers_reg[27]_i_1_n_0 ;
  wire \buffers_reg[27]_i_1_n_1 ;
  wire \buffers_reg[27]_i_1_n_2 ;
  wire \buffers_reg[27]_i_1_n_3 ;
  wire \buffers_reg[27]_i_1_n_4 ;
  wire \buffers_reg[27]_i_1_n_5 ;
  wire \buffers_reg[27]_i_1_n_6 ;
  wire \buffers_reg[27]_i_1_n_7 ;
  wire \buffers_reg[31]_i_3_n_1 ;
  wire \buffers_reg[31]_i_3_n_2 ;
  wire \buffers_reg[31]_i_3_n_3 ;
  wire \buffers_reg[31]_i_3_n_4 ;
  wire \buffers_reg[31]_i_3_n_5 ;
  wire \buffers_reg[31]_i_3_n_6 ;
  wire \buffers_reg[31]_i_3_n_7 ;
  wire \buffers_reg[3]_i_1_n_0 ;
  wire \buffers_reg[3]_i_1_n_1 ;
  wire \buffers_reg[3]_i_1_n_2 ;
  wire \buffers_reg[3]_i_1_n_3 ;
  wire \buffers_reg[3]_i_1_n_4 ;
  wire \buffers_reg[3]_i_1_n_5 ;
  wire \buffers_reg[3]_i_1_n_6 ;
  wire \buffers_reg[3]_i_1_n_7 ;
  wire \buffers_reg[7]_i_1_n_0 ;
  wire \buffers_reg[7]_i_1_n_1 ;
  wire \buffers_reg[7]_i_1_n_2 ;
  wire \buffers_reg[7]_i_1_n_3 ;
  wire \buffers_reg[7]_i_1_n_4 ;
  wire \buffers_reg[7]_i_1_n_5 ;
  wire \buffers_reg[7]_i_1_n_6 ;
  wire \buffers_reg[7]_i_1_n_7 ;
  wire clear;
  wire clk;
  wire enable;
  wire [3:3]\NLW_buffers_reg[31]_i_3_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0008000000000000)) 
    axis_tlast_INST_0
       (.I0(axis_tlast_INST_0_i_1_n_0),
        .I1(axis_tlast_INST_0_i_2_n_0),
        .I2(axis_tlast_INST_0_i_3_n_0),
        .I3(axis_tlast_INST_0_i_4_n_0),
        .I4(axis_tlast_INST_0_i_5_n_0),
        .I5(axis_tlast_INST_0_i_6_n_0),
        .O(axis_tlast));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    axis_tlast_INST_0_i_1
       (.I0(axis_tdata[22]),
        .I1(axis_tdata[23]),
        .I2(axis_tdata[20]),
        .I3(axis_tdata[21]),
        .I4(axis_tdata[25]),
        .I5(axis_tdata[24]),
        .O(axis_tlast_INST_0_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    axis_tlast_INST_0_i_2
       (.I0(axis_tdata[28]),
        .I1(axis_tdata[29]),
        .I2(axis_tdata[26]),
        .I3(axis_tdata[27]),
        .I4(axis_tdata[31]),
        .I5(axis_tdata[30]),
        .O(axis_tlast_INST_0_i_2_n_0));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    axis_tlast_INST_0_i_3
       (.I0(axis_tdata[8]),
        .I1(axis_tdata[9]),
        .I2(axis_tdata[6]),
        .I3(axis_tdata[7]),
        .I4(axis_tdata[1]),
        .I5(axis_tdata[0]),
        .O(axis_tlast_INST_0_i_3_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    axis_tlast_INST_0_i_4
       (.I0(axis_tdata[3]),
        .I1(axis_tdata[2]),
        .I2(axis_tdata[5]),
        .I3(axis_tdata[4]),
        .O(axis_tlast_INST_0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    axis_tlast_INST_0_i_5
       (.I0(axis_tdata[11]),
        .I1(axis_tdata[10]),
        .I2(axis_tdata[13]),
        .I3(axis_tdata[12]),
        .O(axis_tlast_INST_0_i_5_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    axis_tlast_INST_0_i_6
       (.I0(axis_tdata[16]),
        .I1(axis_tdata[17]),
        .I2(axis_tdata[14]),
        .I3(axis_tdata[15]),
        .I4(axis_tdata[19]),
        .I5(axis_tdata[18]),
        .O(axis_tlast_INST_0_i_6_n_0));
  LUT6 #(
    .INIT(64'h8080800000000000)) 
    axis_tvalid_i_i_1
       (.I0(axis_tvalid_i_i_2_n_0),
        .I1(axis_tvalid_i_i_3_n_0),
        .I2(axis_tvalid_i_i_4_n_0),
        .I3(axis_tlast_INST_0_i_3_n_0),
        .I4(axis_tlast_INST_0_i_4_n_0),
        .I5(axis_tvalid_i_i_5_n_0),
        .O(axis_tvalid_i_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    axis_tvalid_i_i_2
       (.I0(axis_tdata[23]),
        .I1(axis_tdata[24]),
        .I2(axis_tdata[21]),
        .I3(axis_tdata[22]),
        .I4(axis_tdata[26]),
        .I5(axis_tdata[25]),
        .O(axis_tvalid_i_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000100000000)) 
    axis_tvalid_i_i_3
       (.I0(axis_tdata[29]),
        .I1(axis_tdata[30]),
        .I2(axis_tdata[27]),
        .I3(axis_tdata[28]),
        .I4(axis_tdata[31]),
        .I5(enable),
        .O(axis_tvalid_i_i_3_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    axis_tvalid_i_i_4
       (.I0(axis_tdata[17]),
        .I1(axis_tdata[18]),
        .I2(axis_tdata[15]),
        .I3(axis_tdata[16]),
        .I4(axis_tdata[20]),
        .I5(axis_tdata[19]),
        .O(axis_tvalid_i_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    axis_tvalid_i_i_5
       (.I0(axis_tdata[10]),
        .I1(axis_tdata[11]),
        .I2(axis_tdata[12]),
        .I3(axis_tdata[14]),
        .I4(axis_tdata[13]),
        .O(axis_tvalid_i_i_5_n_0));
  FDRE axis_tvalid_i_reg
       (.C(clk),
        .CE(1'b1),
        .D(axis_tvalid_i_i_1_n_0),
        .Q(axis_tvalid),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \buffers[31]_i_1 
       (.I0(enable),
        .O(clear));
  LUT2 #(
    .INIT(4'h8)) 
    \buffers[31]_i_2 
       (.I0(axis_tready),
        .I1(axis_tvalid),
        .O(\buffers[31]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \buffers[3]_i_2 
       (.I0(axis_tdata[0]),
        .O(\buffers[3]_i_2_n_0 ));
  FDRE \buffers_reg[0] 
       (.C(clk),
        .CE(\buffers[31]_i_2_n_0 ),
        .D(\buffers_reg[3]_i_1_n_7 ),
        .Q(axis_tdata[0]),
        .R(clear));
  FDRE \buffers_reg[10] 
       (.C(clk),
        .CE(\buffers[31]_i_2_n_0 ),
        .D(\buffers_reg[11]_i_1_n_5 ),
        .Q(axis_tdata[10]),
        .R(clear));
  FDRE \buffers_reg[11] 
       (.C(clk),
        .CE(\buffers[31]_i_2_n_0 ),
        .D(\buffers_reg[11]_i_1_n_4 ),
        .Q(axis_tdata[11]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \buffers_reg[11]_i_1 
       (.CI(\buffers_reg[7]_i_1_n_0 ),
        .CO({\buffers_reg[11]_i_1_n_0 ,\buffers_reg[11]_i_1_n_1 ,\buffers_reg[11]_i_1_n_2 ,\buffers_reg[11]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\buffers_reg[11]_i_1_n_4 ,\buffers_reg[11]_i_1_n_5 ,\buffers_reg[11]_i_1_n_6 ,\buffers_reg[11]_i_1_n_7 }),
        .S(axis_tdata[11:8]));
  FDRE \buffers_reg[12] 
       (.C(clk),
        .CE(\buffers[31]_i_2_n_0 ),
        .D(\buffers_reg[15]_i_1_n_7 ),
        .Q(axis_tdata[12]),
        .R(clear));
  FDRE \buffers_reg[13] 
       (.C(clk),
        .CE(\buffers[31]_i_2_n_0 ),
        .D(\buffers_reg[15]_i_1_n_6 ),
        .Q(axis_tdata[13]),
        .R(clear));
  FDRE \buffers_reg[14] 
       (.C(clk),
        .CE(\buffers[31]_i_2_n_0 ),
        .D(\buffers_reg[15]_i_1_n_5 ),
        .Q(axis_tdata[14]),
        .R(clear));
  FDRE \buffers_reg[15] 
       (.C(clk),
        .CE(\buffers[31]_i_2_n_0 ),
        .D(\buffers_reg[15]_i_1_n_4 ),
        .Q(axis_tdata[15]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \buffers_reg[15]_i_1 
       (.CI(\buffers_reg[11]_i_1_n_0 ),
        .CO({\buffers_reg[15]_i_1_n_0 ,\buffers_reg[15]_i_1_n_1 ,\buffers_reg[15]_i_1_n_2 ,\buffers_reg[15]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\buffers_reg[15]_i_1_n_4 ,\buffers_reg[15]_i_1_n_5 ,\buffers_reg[15]_i_1_n_6 ,\buffers_reg[15]_i_1_n_7 }),
        .S(axis_tdata[15:12]));
  FDRE \buffers_reg[16] 
       (.C(clk),
        .CE(\buffers[31]_i_2_n_0 ),
        .D(\buffers_reg[19]_i_1_n_7 ),
        .Q(axis_tdata[16]),
        .R(clear));
  FDRE \buffers_reg[17] 
       (.C(clk),
        .CE(\buffers[31]_i_2_n_0 ),
        .D(\buffers_reg[19]_i_1_n_6 ),
        .Q(axis_tdata[17]),
        .R(clear));
  FDRE \buffers_reg[18] 
       (.C(clk),
        .CE(\buffers[31]_i_2_n_0 ),
        .D(\buffers_reg[19]_i_1_n_5 ),
        .Q(axis_tdata[18]),
        .R(clear));
  FDRE \buffers_reg[19] 
       (.C(clk),
        .CE(\buffers[31]_i_2_n_0 ),
        .D(\buffers_reg[19]_i_1_n_4 ),
        .Q(axis_tdata[19]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \buffers_reg[19]_i_1 
       (.CI(\buffers_reg[15]_i_1_n_0 ),
        .CO({\buffers_reg[19]_i_1_n_0 ,\buffers_reg[19]_i_1_n_1 ,\buffers_reg[19]_i_1_n_2 ,\buffers_reg[19]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\buffers_reg[19]_i_1_n_4 ,\buffers_reg[19]_i_1_n_5 ,\buffers_reg[19]_i_1_n_6 ,\buffers_reg[19]_i_1_n_7 }),
        .S(axis_tdata[19:16]));
  FDRE \buffers_reg[1] 
       (.C(clk),
        .CE(\buffers[31]_i_2_n_0 ),
        .D(\buffers_reg[3]_i_1_n_6 ),
        .Q(axis_tdata[1]),
        .R(clear));
  FDRE \buffers_reg[20] 
       (.C(clk),
        .CE(\buffers[31]_i_2_n_0 ),
        .D(\buffers_reg[23]_i_1_n_7 ),
        .Q(axis_tdata[20]),
        .R(clear));
  FDRE \buffers_reg[21] 
       (.C(clk),
        .CE(\buffers[31]_i_2_n_0 ),
        .D(\buffers_reg[23]_i_1_n_6 ),
        .Q(axis_tdata[21]),
        .R(clear));
  FDRE \buffers_reg[22] 
       (.C(clk),
        .CE(\buffers[31]_i_2_n_0 ),
        .D(\buffers_reg[23]_i_1_n_5 ),
        .Q(axis_tdata[22]),
        .R(clear));
  FDRE \buffers_reg[23] 
       (.C(clk),
        .CE(\buffers[31]_i_2_n_0 ),
        .D(\buffers_reg[23]_i_1_n_4 ),
        .Q(axis_tdata[23]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \buffers_reg[23]_i_1 
       (.CI(\buffers_reg[19]_i_1_n_0 ),
        .CO({\buffers_reg[23]_i_1_n_0 ,\buffers_reg[23]_i_1_n_1 ,\buffers_reg[23]_i_1_n_2 ,\buffers_reg[23]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\buffers_reg[23]_i_1_n_4 ,\buffers_reg[23]_i_1_n_5 ,\buffers_reg[23]_i_1_n_6 ,\buffers_reg[23]_i_1_n_7 }),
        .S(axis_tdata[23:20]));
  FDRE \buffers_reg[24] 
       (.C(clk),
        .CE(\buffers[31]_i_2_n_0 ),
        .D(\buffers_reg[27]_i_1_n_7 ),
        .Q(axis_tdata[24]),
        .R(clear));
  FDRE \buffers_reg[25] 
       (.C(clk),
        .CE(\buffers[31]_i_2_n_0 ),
        .D(\buffers_reg[27]_i_1_n_6 ),
        .Q(axis_tdata[25]),
        .R(clear));
  FDRE \buffers_reg[26] 
       (.C(clk),
        .CE(\buffers[31]_i_2_n_0 ),
        .D(\buffers_reg[27]_i_1_n_5 ),
        .Q(axis_tdata[26]),
        .R(clear));
  FDRE \buffers_reg[27] 
       (.C(clk),
        .CE(\buffers[31]_i_2_n_0 ),
        .D(\buffers_reg[27]_i_1_n_4 ),
        .Q(axis_tdata[27]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \buffers_reg[27]_i_1 
       (.CI(\buffers_reg[23]_i_1_n_0 ),
        .CO({\buffers_reg[27]_i_1_n_0 ,\buffers_reg[27]_i_1_n_1 ,\buffers_reg[27]_i_1_n_2 ,\buffers_reg[27]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\buffers_reg[27]_i_1_n_4 ,\buffers_reg[27]_i_1_n_5 ,\buffers_reg[27]_i_1_n_6 ,\buffers_reg[27]_i_1_n_7 }),
        .S(axis_tdata[27:24]));
  FDRE \buffers_reg[28] 
       (.C(clk),
        .CE(\buffers[31]_i_2_n_0 ),
        .D(\buffers_reg[31]_i_3_n_7 ),
        .Q(axis_tdata[28]),
        .R(clear));
  FDRE \buffers_reg[29] 
       (.C(clk),
        .CE(\buffers[31]_i_2_n_0 ),
        .D(\buffers_reg[31]_i_3_n_6 ),
        .Q(axis_tdata[29]),
        .R(clear));
  FDRE \buffers_reg[2] 
       (.C(clk),
        .CE(\buffers[31]_i_2_n_0 ),
        .D(\buffers_reg[3]_i_1_n_5 ),
        .Q(axis_tdata[2]),
        .R(clear));
  FDRE \buffers_reg[30] 
       (.C(clk),
        .CE(\buffers[31]_i_2_n_0 ),
        .D(\buffers_reg[31]_i_3_n_5 ),
        .Q(axis_tdata[30]),
        .R(clear));
  FDRE \buffers_reg[31] 
       (.C(clk),
        .CE(\buffers[31]_i_2_n_0 ),
        .D(\buffers_reg[31]_i_3_n_4 ),
        .Q(axis_tdata[31]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \buffers_reg[31]_i_3 
       (.CI(\buffers_reg[27]_i_1_n_0 ),
        .CO({\NLW_buffers_reg[31]_i_3_CO_UNCONNECTED [3],\buffers_reg[31]_i_3_n_1 ,\buffers_reg[31]_i_3_n_2 ,\buffers_reg[31]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\buffers_reg[31]_i_3_n_4 ,\buffers_reg[31]_i_3_n_5 ,\buffers_reg[31]_i_3_n_6 ,\buffers_reg[31]_i_3_n_7 }),
        .S(axis_tdata[31:28]));
  FDRE \buffers_reg[3] 
       (.C(clk),
        .CE(\buffers[31]_i_2_n_0 ),
        .D(\buffers_reg[3]_i_1_n_4 ),
        .Q(axis_tdata[3]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \buffers_reg[3]_i_1 
       (.CI(1'b0),
        .CO({\buffers_reg[3]_i_1_n_0 ,\buffers_reg[3]_i_1_n_1 ,\buffers_reg[3]_i_1_n_2 ,\buffers_reg[3]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\buffers_reg[3]_i_1_n_4 ,\buffers_reg[3]_i_1_n_5 ,\buffers_reg[3]_i_1_n_6 ,\buffers_reg[3]_i_1_n_7 }),
        .S({axis_tdata[3:1],\buffers[3]_i_2_n_0 }));
  FDRE \buffers_reg[4] 
       (.C(clk),
        .CE(\buffers[31]_i_2_n_0 ),
        .D(\buffers_reg[7]_i_1_n_7 ),
        .Q(axis_tdata[4]),
        .R(clear));
  FDRE \buffers_reg[5] 
       (.C(clk),
        .CE(\buffers[31]_i_2_n_0 ),
        .D(\buffers_reg[7]_i_1_n_6 ),
        .Q(axis_tdata[5]),
        .R(clear));
  FDRE \buffers_reg[6] 
       (.C(clk),
        .CE(\buffers[31]_i_2_n_0 ),
        .D(\buffers_reg[7]_i_1_n_5 ),
        .Q(axis_tdata[6]),
        .R(clear));
  FDRE \buffers_reg[7] 
       (.C(clk),
        .CE(\buffers[31]_i_2_n_0 ),
        .D(\buffers_reg[7]_i_1_n_4 ),
        .Q(axis_tdata[7]),
        .R(clear));
  (* ADDER_THRESHOLD = "11" *) 
  CARRY4 \buffers_reg[7]_i_1 
       (.CI(\buffers_reg[3]_i_1_n_0 ),
        .CO({\buffers_reg[7]_i_1_n_0 ,\buffers_reg[7]_i_1_n_1 ,\buffers_reg[7]_i_1_n_2 ,\buffers_reg[7]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\buffers_reg[7]_i_1_n_4 ,\buffers_reg[7]_i_1_n_5 ,\buffers_reg[7]_i_1_n_6 ,\buffers_reg[7]_i_1_n_7 }),
        .S(axis_tdata[7:4]));
  FDRE \buffers_reg[8] 
       (.C(clk),
        .CE(\buffers[31]_i_2_n_0 ),
        .D(\buffers_reg[11]_i_1_n_7 ),
        .Q(axis_tdata[8]),
        .R(clear));
  FDRE \buffers_reg[9] 
       (.C(clk),
        .CE(\buffers[31]_i_2_n_0 ),
        .D(\buffers_reg[11]_i_1_n_6 ),
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

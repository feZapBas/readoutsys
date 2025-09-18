-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Thu Sep 18 13:16:09 2025
-- Host        : ej3b-GF63-Thin-11SC running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/ej3b/readoutsys/rtos_sys/rtos_sys.gen/sources_1/bd/rtos_sys/ip/rtos_sys_snow_0_0/rtos_sys_snow_0_0_sim_netlist.vhdl
-- Design      : rtos_sys_snow_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rtos_sys_snow_0_0 is
  port (
    clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    axis_tready : in STD_LOGIC;
    axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_tkeep : out STD_LOGIC_VECTOR ( 3 downto 0 );
    axis_tvalid : out STD_LOGIC;
    axis_tlast : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of rtos_sys_snow_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of rtos_sys_snow_0_0 : entity is "rtos_sys_snow_0_0,snow,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of rtos_sys_snow_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of rtos_sys_snow_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of rtos_sys_snow_0_0 : entity is "snow,Vivado 2024.2";
end rtos_sys_snow_0_0;

architecture STRUCTURE of rtos_sys_snow_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of axis_tlast : signal is "xilinx.com:interface:axis:1.0 axis TLAST";
  attribute X_INTERFACE_INFO of axis_tready : signal is "xilinx.com:interface:axis:1.0 axis TREADY";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of axis_tready : signal is "master";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of axis_tready : signal is "XIL_INTERFACENAME axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 10000000, PHASE 0.0, CLK_DOMAIN rtos_sys_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axis_tvalid : signal is "xilinx.com:interface:axis:1.0 axis TVALID";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF axis, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rtos_sys_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axis_tdata : signal is "xilinx.com:interface:axis:1.0 axis TDATA";
  attribute X_INTERFACE_INFO of axis_tkeep : signal is "xilinx.com:interface:axis:1.0 axis TKEEP";
begin
  axis_tdata(31) <= \<const0>\;
  axis_tdata(30) <= \<const0>\;
  axis_tdata(29) <= \<const0>\;
  axis_tdata(28) <= \<const0>\;
  axis_tdata(27) <= \<const0>\;
  axis_tdata(26) <= \<const0>\;
  axis_tdata(25) <= \<const0>\;
  axis_tdata(24) <= \<const0>\;
  axis_tdata(23) <= \<const0>\;
  axis_tdata(22) <= \<const0>\;
  axis_tdata(21) <= \<const0>\;
  axis_tdata(20) <= \<const0>\;
  axis_tdata(19) <= \<const0>\;
  axis_tdata(18) <= \<const0>\;
  axis_tdata(17) <= \<const0>\;
  axis_tdata(16) <= \<const0>\;
  axis_tdata(15) <= \<const0>\;
  axis_tdata(14) <= \<const0>\;
  axis_tdata(13) <= \<const0>\;
  axis_tdata(12) <= \<const0>\;
  axis_tdata(11) <= \<const0>\;
  axis_tdata(10) <= \<const1>\;
  axis_tdata(9) <= \<const0>\;
  axis_tdata(8) <= \<const0>\;
  axis_tdata(7) <= \<const0>\;
  axis_tdata(6) <= \<const0>\;
  axis_tdata(5) <= \<const0>\;
  axis_tdata(4) <= \<const0>\;
  axis_tdata(3) <= \<const0>\;
  axis_tdata(2) <= \<const0>\;
  axis_tdata(1) <= \<const0>\;
  axis_tdata(0) <= \<const0>\;
  axis_tkeep(3) <= \<const1>\;
  axis_tkeep(2) <= \<const1>\;
  axis_tkeep(1) <= \<const1>\;
  axis_tkeep(0) <= \<const1>\;
  axis_tlast <= \<const0>\;
  axis_tvalid <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
end STRUCTURE;

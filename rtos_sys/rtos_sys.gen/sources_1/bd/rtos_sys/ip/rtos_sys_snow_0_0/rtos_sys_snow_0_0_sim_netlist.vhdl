-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Sat Sep  6 20:59:37 2025
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
entity rtos_sys_snow_0_0_snow is
  port (
    axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    axis_tlast : out STD_LOGIC;
    axis_tvalid : out STD_LOGIC;
    clk : in STD_LOGIC;
    axis_tready : in STD_LOGIC;
    enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of rtos_sys_snow_0_0_snow : entity is "snow";
end rtos_sys_snow_0_0_snow;

architecture STRUCTURE of rtos_sys_snow_0_0_snow is
  signal \^axis_tdata\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal axis_tlast_INST_0_i_10_n_0 : STD_LOGIC;
  signal axis_tlast_INST_0_i_11_n_0 : STD_LOGIC;
  signal axis_tlast_INST_0_i_12_n_0 : STD_LOGIC;
  signal axis_tlast_INST_0_i_1_n_0 : STD_LOGIC;
  signal axis_tlast_INST_0_i_2_n_0 : STD_LOGIC;
  signal axis_tlast_INST_0_i_3_n_0 : STD_LOGIC;
  signal axis_tlast_INST_0_i_4_n_0 : STD_LOGIC;
  signal axis_tlast_INST_0_i_5_n_0 : STD_LOGIC;
  signal axis_tlast_INST_0_i_6_n_0 : STD_LOGIC;
  signal axis_tlast_INST_0_i_7_n_0 : STD_LOGIC;
  signal axis_tlast_INST_0_i_8_n_0 : STD_LOGIC;
  signal axis_tlast_INST_0_i_9_n_0 : STD_LOGIC;
  signal axis_tvalid_i_i_1_n_0 : STD_LOGIC;
  signal \buffer1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \buffer1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \buffer1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \buffer1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \buffer1_carry__0_n_0\ : STD_LOGIC;
  signal \buffer1_carry__0_n_1\ : STD_LOGIC;
  signal \buffer1_carry__0_n_2\ : STD_LOGIC;
  signal \buffer1_carry__0_n_3\ : STD_LOGIC;
  signal \buffer1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \buffer1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \buffer1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \buffer1_carry__1_i_4_n_0\ : STD_LOGIC;
  signal \buffer1_carry__1_n_0\ : STD_LOGIC;
  signal \buffer1_carry__1_n_1\ : STD_LOGIC;
  signal \buffer1_carry__1_n_2\ : STD_LOGIC;
  signal \buffer1_carry__1_n_3\ : STD_LOGIC;
  signal \buffer1_carry__2_i_1_n_0\ : STD_LOGIC;
  signal \buffer1_carry__2_i_2_n_0\ : STD_LOGIC;
  signal \buffer1_carry__2_i_3_n_0\ : STD_LOGIC;
  signal \buffer1_carry__2_i_4_n_0\ : STD_LOGIC;
  signal \buffer1_carry__2_n_0\ : STD_LOGIC;
  signal \buffer1_carry__2_n_1\ : STD_LOGIC;
  signal \buffer1_carry__2_n_2\ : STD_LOGIC;
  signal \buffer1_carry__2_n_3\ : STD_LOGIC;
  signal \buffer1_carry__3_i_1_n_0\ : STD_LOGIC;
  signal \buffer1_carry__3_i_2_n_0\ : STD_LOGIC;
  signal \buffer1_carry__3_i_3_n_0\ : STD_LOGIC;
  signal \buffer1_carry__3_i_4_n_0\ : STD_LOGIC;
  signal \buffer1_carry__3_n_0\ : STD_LOGIC;
  signal \buffer1_carry__3_n_1\ : STD_LOGIC;
  signal \buffer1_carry__3_n_2\ : STD_LOGIC;
  signal \buffer1_carry__3_n_3\ : STD_LOGIC;
  signal \buffer1_carry__4_i_1_n_0\ : STD_LOGIC;
  signal \buffer1_carry__4_i_2_n_0\ : STD_LOGIC;
  signal \buffer1_carry__4_n_2\ : STD_LOGIC;
  signal \buffer1_carry__4_n_3\ : STD_LOGIC;
  signal buffer1_carry_i_1_n_0 : STD_LOGIC;
  signal buffer1_carry_i_2_n_0 : STD_LOGIC;
  signal buffer1_carry_i_3_n_0 : STD_LOGIC;
  signal buffer1_carry_i_4_n_0 : STD_LOGIC;
  signal buffer1_carry_n_0 : STD_LOGIC;
  signal buffer1_carry_n_1 : STD_LOGIC;
  signal buffer1_carry_n_2 : STD_LOGIC;
  signal buffer1_carry_n_3 : STD_LOGIC;
  signal \buffer[11]_i_2_n_0\ : STD_LOGIC;
  signal \buffer[11]_i_3_n_0\ : STD_LOGIC;
  signal \buffer[11]_i_4_n_0\ : STD_LOGIC;
  signal \buffer[11]_i_5_n_0\ : STD_LOGIC;
  signal \buffer[15]_i_2_n_0\ : STD_LOGIC;
  signal \buffer[15]_i_3_n_0\ : STD_LOGIC;
  signal \buffer[15]_i_4_n_0\ : STD_LOGIC;
  signal \buffer[15]_i_5_n_0\ : STD_LOGIC;
  signal \buffer[19]_i_2_n_0\ : STD_LOGIC;
  signal \buffer[19]_i_3_n_0\ : STD_LOGIC;
  signal \buffer[19]_i_4_n_0\ : STD_LOGIC;
  signal \buffer[19]_i_5_n_0\ : STD_LOGIC;
  signal \buffer[23]_i_2_n_0\ : STD_LOGIC;
  signal \buffer[23]_i_3_n_0\ : STD_LOGIC;
  signal \buffer[23]_i_4_n_0\ : STD_LOGIC;
  signal \buffer[23]_i_5_n_0\ : STD_LOGIC;
  signal \buffer[27]_i_2_n_0\ : STD_LOGIC;
  signal \buffer[27]_i_3_n_0\ : STD_LOGIC;
  signal \buffer[27]_i_4_n_0\ : STD_LOGIC;
  signal \buffer[27]_i_5_n_0\ : STD_LOGIC;
  signal \buffer[31]_i_2_n_0\ : STD_LOGIC;
  signal \buffer[31]_i_3_n_0\ : STD_LOGIC;
  signal \buffer[31]_i_4_n_0\ : STD_LOGIC;
  signal \buffer[31]_i_5_n_0\ : STD_LOGIC;
  signal \buffer[35]_i_2_n_0\ : STD_LOGIC;
  signal \buffer[35]_i_3_n_0\ : STD_LOGIC;
  signal \buffer[35]_i_4_n_0\ : STD_LOGIC;
  signal \buffer[35]_i_5_n_0\ : STD_LOGIC;
  signal \buffer[39]_i_2_n_0\ : STD_LOGIC;
  signal \buffer[39]_i_3_n_0\ : STD_LOGIC;
  signal \buffer[39]_i_4_n_0\ : STD_LOGIC;
  signal \buffer[39]_i_5_n_0\ : STD_LOGIC;
  signal \buffer[3]_i_2_n_0\ : STD_LOGIC;
  signal \buffer[3]_i_3_n_0\ : STD_LOGIC;
  signal \buffer[43]_i_2_n_0\ : STD_LOGIC;
  signal \buffer[43]_i_3_n_0\ : STD_LOGIC;
  signal \buffer[43]_i_4_n_0\ : STD_LOGIC;
  signal \buffer[43]_i_5_n_0\ : STD_LOGIC;
  signal \buffer[47]_i_2_n_0\ : STD_LOGIC;
  signal \buffer[47]_i_3_n_0\ : STD_LOGIC;
  signal \buffer[47]_i_4_n_0\ : STD_LOGIC;
  signal \buffer[47]_i_5_n_0\ : STD_LOGIC;
  signal \buffer[51]_i_2_n_0\ : STD_LOGIC;
  signal \buffer[51]_i_3_n_0\ : STD_LOGIC;
  signal \buffer[51]_i_4_n_0\ : STD_LOGIC;
  signal \buffer[51]_i_5_n_0\ : STD_LOGIC;
  signal \buffer[55]_i_2_n_0\ : STD_LOGIC;
  signal \buffer[55]_i_3_n_0\ : STD_LOGIC;
  signal \buffer[55]_i_4_n_0\ : STD_LOGIC;
  signal \buffer[55]_i_5_n_0\ : STD_LOGIC;
  signal \buffer[59]_i_2_n_0\ : STD_LOGIC;
  signal \buffer[59]_i_3_n_0\ : STD_LOGIC;
  signal \buffer[59]_i_4_n_0\ : STD_LOGIC;
  signal \buffer[59]_i_5_n_0\ : STD_LOGIC;
  signal \buffer[63]_i_2_n_0\ : STD_LOGIC;
  signal \buffer[63]_i_4_n_0\ : STD_LOGIC;
  signal \buffer[63]_i_5_n_0\ : STD_LOGIC;
  signal \buffer[63]_i_6_n_0\ : STD_LOGIC;
  signal \buffer[63]_i_7_n_0\ : STD_LOGIC;
  signal \buffer[7]_i_2_n_0\ : STD_LOGIC;
  signal \buffer[7]_i_3_n_0\ : STD_LOGIC;
  signal \buffer[7]_i_4_n_0\ : STD_LOGIC;
  signal \buffer[7]_i_5_n_0\ : STD_LOGIC;
  signal \buffer_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \buffer_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \buffer_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \buffer_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \buffer_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \buffer_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \buffer_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \buffer_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \buffer_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \buffer_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \buffer_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \buffer_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \buffer_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \buffer_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \buffer_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \buffer_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \buffer_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \buffer_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \buffer_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \buffer_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \buffer_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \buffer_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \buffer_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \buffer_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \buffer_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \buffer_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \buffer_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \buffer_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \buffer_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \buffer_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \buffer_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \buffer_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \buffer_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \buffer_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \buffer_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \buffer_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \buffer_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \buffer_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \buffer_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \buffer_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \buffer_reg[31]_i_1_n_0\ : STD_LOGIC;
  signal \buffer_reg[31]_i_1_n_1\ : STD_LOGIC;
  signal \buffer_reg[31]_i_1_n_2\ : STD_LOGIC;
  signal \buffer_reg[31]_i_1_n_3\ : STD_LOGIC;
  signal \buffer_reg[31]_i_1_n_4\ : STD_LOGIC;
  signal \buffer_reg[31]_i_1_n_5\ : STD_LOGIC;
  signal \buffer_reg[31]_i_1_n_6\ : STD_LOGIC;
  signal \buffer_reg[31]_i_1_n_7\ : STD_LOGIC;
  signal \buffer_reg[35]_i_1_n_0\ : STD_LOGIC;
  signal \buffer_reg[35]_i_1_n_1\ : STD_LOGIC;
  signal \buffer_reg[35]_i_1_n_2\ : STD_LOGIC;
  signal \buffer_reg[35]_i_1_n_3\ : STD_LOGIC;
  signal \buffer_reg[35]_i_1_n_4\ : STD_LOGIC;
  signal \buffer_reg[35]_i_1_n_5\ : STD_LOGIC;
  signal \buffer_reg[35]_i_1_n_6\ : STD_LOGIC;
  signal \buffer_reg[35]_i_1_n_7\ : STD_LOGIC;
  signal \buffer_reg[39]_i_1_n_0\ : STD_LOGIC;
  signal \buffer_reg[39]_i_1_n_1\ : STD_LOGIC;
  signal \buffer_reg[39]_i_1_n_2\ : STD_LOGIC;
  signal \buffer_reg[39]_i_1_n_3\ : STD_LOGIC;
  signal \buffer_reg[39]_i_1_n_4\ : STD_LOGIC;
  signal \buffer_reg[39]_i_1_n_5\ : STD_LOGIC;
  signal \buffer_reg[39]_i_1_n_6\ : STD_LOGIC;
  signal \buffer_reg[39]_i_1_n_7\ : STD_LOGIC;
  signal \buffer_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \buffer_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \buffer_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \buffer_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \buffer_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \buffer_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \buffer_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \buffer_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \buffer_reg[43]_i_1_n_0\ : STD_LOGIC;
  signal \buffer_reg[43]_i_1_n_1\ : STD_LOGIC;
  signal \buffer_reg[43]_i_1_n_2\ : STD_LOGIC;
  signal \buffer_reg[43]_i_1_n_3\ : STD_LOGIC;
  signal \buffer_reg[43]_i_1_n_4\ : STD_LOGIC;
  signal \buffer_reg[43]_i_1_n_5\ : STD_LOGIC;
  signal \buffer_reg[43]_i_1_n_6\ : STD_LOGIC;
  signal \buffer_reg[43]_i_1_n_7\ : STD_LOGIC;
  signal \buffer_reg[47]_i_1_n_0\ : STD_LOGIC;
  signal \buffer_reg[47]_i_1_n_1\ : STD_LOGIC;
  signal \buffer_reg[47]_i_1_n_2\ : STD_LOGIC;
  signal \buffer_reg[47]_i_1_n_3\ : STD_LOGIC;
  signal \buffer_reg[47]_i_1_n_4\ : STD_LOGIC;
  signal \buffer_reg[47]_i_1_n_5\ : STD_LOGIC;
  signal \buffer_reg[47]_i_1_n_6\ : STD_LOGIC;
  signal \buffer_reg[47]_i_1_n_7\ : STD_LOGIC;
  signal \buffer_reg[51]_i_1_n_0\ : STD_LOGIC;
  signal \buffer_reg[51]_i_1_n_1\ : STD_LOGIC;
  signal \buffer_reg[51]_i_1_n_2\ : STD_LOGIC;
  signal \buffer_reg[51]_i_1_n_3\ : STD_LOGIC;
  signal \buffer_reg[51]_i_1_n_4\ : STD_LOGIC;
  signal \buffer_reg[51]_i_1_n_5\ : STD_LOGIC;
  signal \buffer_reg[51]_i_1_n_6\ : STD_LOGIC;
  signal \buffer_reg[51]_i_1_n_7\ : STD_LOGIC;
  signal \buffer_reg[55]_i_1_n_0\ : STD_LOGIC;
  signal \buffer_reg[55]_i_1_n_1\ : STD_LOGIC;
  signal \buffer_reg[55]_i_1_n_2\ : STD_LOGIC;
  signal \buffer_reg[55]_i_1_n_3\ : STD_LOGIC;
  signal \buffer_reg[55]_i_1_n_4\ : STD_LOGIC;
  signal \buffer_reg[55]_i_1_n_5\ : STD_LOGIC;
  signal \buffer_reg[55]_i_1_n_6\ : STD_LOGIC;
  signal \buffer_reg[55]_i_1_n_7\ : STD_LOGIC;
  signal \buffer_reg[59]_i_1_n_0\ : STD_LOGIC;
  signal \buffer_reg[59]_i_1_n_1\ : STD_LOGIC;
  signal \buffer_reg[59]_i_1_n_2\ : STD_LOGIC;
  signal \buffer_reg[59]_i_1_n_3\ : STD_LOGIC;
  signal \buffer_reg[59]_i_1_n_4\ : STD_LOGIC;
  signal \buffer_reg[59]_i_1_n_5\ : STD_LOGIC;
  signal \buffer_reg[59]_i_1_n_6\ : STD_LOGIC;
  signal \buffer_reg[59]_i_1_n_7\ : STD_LOGIC;
  signal \buffer_reg[63]_i_3_n_1\ : STD_LOGIC;
  signal \buffer_reg[63]_i_3_n_2\ : STD_LOGIC;
  signal \buffer_reg[63]_i_3_n_3\ : STD_LOGIC;
  signal \buffer_reg[63]_i_3_n_4\ : STD_LOGIC;
  signal \buffer_reg[63]_i_3_n_5\ : STD_LOGIC;
  signal \buffer_reg[63]_i_3_n_6\ : STD_LOGIC;
  signal \buffer_reg[63]_i_3_n_7\ : STD_LOGIC;
  signal \buffer_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \buffer_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \buffer_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \buffer_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \buffer_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \buffer_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \buffer_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \buffer_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal NLW_buffer1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_buffer1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_buffer1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_buffer1_carry__2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_buffer1_carry__3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_buffer1_carry__4_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_buffer1_carry__4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_buffer_reg[63]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \buffer_reg[11]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \buffer_reg[15]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \buffer_reg[19]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \buffer_reg[23]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \buffer_reg[27]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \buffer_reg[31]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \buffer_reg[35]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \buffer_reg[39]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \buffer_reg[3]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \buffer_reg[43]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \buffer_reg[47]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \buffer_reg[51]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \buffer_reg[55]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \buffer_reg[59]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \buffer_reg[63]_i_3\ : label is 11;
  attribute ADDER_THRESHOLD of \buffer_reg[7]_i_1\ : label is 11;
begin
  axis_tdata(63 downto 0) <= \^axis_tdata\(63 downto 0);
axis_tlast_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => axis_tlast_INST_0_i_1_n_0,
      I1 => axis_tlast_INST_0_i_2_n_0,
      I2 => axis_tlast_INST_0_i_3_n_0,
      I3 => axis_tlast_INST_0_i_4_n_0,
      O => axis_tlast
    );
axis_tlast_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000200000000"
    )
        port map (
      I0 => axis_tlast_INST_0_i_5_n_0,
      I1 => \^axis_tdata\(1),
      I2 => \^axis_tdata\(0),
      I3 => \^axis_tdata\(3),
      I4 => \^axis_tdata\(2),
      I5 => axis_tlast_INST_0_i_6_n_0,
      O => axis_tlast_INST_0_i_1_n_0
    );
axis_tlast_INST_0_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^axis_tdata\(42),
      I1 => \^axis_tdata\(43),
      I2 => \^axis_tdata\(40),
      I3 => \^axis_tdata\(41),
      I4 => \^axis_tdata\(45),
      I5 => \^axis_tdata\(44),
      O => axis_tlast_INST_0_i_10_n_0
    );
axis_tlast_INST_0_i_11: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^axis_tdata\(18),
      I1 => \^axis_tdata\(19),
      I2 => \^axis_tdata\(16),
      I3 => \^axis_tdata\(17),
      I4 => \^axis_tdata\(21),
      I5 => \^axis_tdata\(20),
      O => axis_tlast_INST_0_i_11_n_0
    );
axis_tlast_INST_0_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^axis_tdata\(24),
      I1 => \^axis_tdata\(25),
      I2 => \^axis_tdata\(22),
      I3 => \^axis_tdata\(23),
      I4 => \^axis_tdata\(27),
      I5 => \^axis_tdata\(26),
      O => axis_tlast_INST_0_i_12_n_0
    );
axis_tlast_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^axis_tdata\(60),
      I1 => \^axis_tdata\(61),
      I2 => \^axis_tdata\(58),
      I3 => \^axis_tdata\(59),
      I4 => \^axis_tdata\(63),
      I5 => \^axis_tdata\(62),
      O => axis_tlast_INST_0_i_2_n_0
    );
axis_tlast_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^axis_tdata\(54),
      I1 => \^axis_tdata\(55),
      I2 => \^axis_tdata\(52),
      I3 => \^axis_tdata\(53),
      I4 => \^axis_tdata\(57),
      I5 => \^axis_tdata\(56),
      O => axis_tlast_INST_0_i_3_n_0
    );
axis_tlast_INST_0_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => axis_tlast_INST_0_i_7_n_0,
      I1 => axis_tlast_INST_0_i_8_n_0,
      I2 => axis_tlast_INST_0_i_9_n_0,
      I3 => axis_tlast_INST_0_i_10_n_0,
      I4 => axis_tlast_INST_0_i_11_n_0,
      I5 => axis_tlast_INST_0_i_12_n_0,
      O => axis_tlast_INST_0_i_4_n_0
    );
axis_tlast_INST_0_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^axis_tdata\(6),
      I1 => \^axis_tdata\(7),
      I2 => \^axis_tdata\(4),
      I3 => \^axis_tdata\(5),
      I4 => \^axis_tdata\(9),
      I5 => \^axis_tdata\(8),
      O => axis_tlast_INST_0_i_5_n_0
    );
axis_tlast_INST_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^axis_tdata\(12),
      I1 => \^axis_tdata\(13),
      I2 => \^axis_tdata\(10),
      I3 => \^axis_tdata\(11),
      I4 => \^axis_tdata\(15),
      I5 => \^axis_tdata\(14),
      O => axis_tlast_INST_0_i_6_n_0
    );
axis_tlast_INST_0_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^axis_tdata\(36),
      I1 => \^axis_tdata\(37),
      I2 => \^axis_tdata\(34),
      I3 => \^axis_tdata\(35),
      I4 => \^axis_tdata\(39),
      I5 => \^axis_tdata\(38),
      O => axis_tlast_INST_0_i_7_n_0
    );
axis_tlast_INST_0_i_8: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^axis_tdata\(30),
      I1 => \^axis_tdata\(31),
      I2 => \^axis_tdata\(28),
      I3 => \^axis_tdata\(29),
      I4 => \^axis_tdata\(33),
      I5 => \^axis_tdata\(32),
      O => axis_tlast_INST_0_i_8_n_0
    );
axis_tlast_INST_0_i_9: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^axis_tdata\(48),
      I1 => \^axis_tdata\(49),
      I2 => \^axis_tdata\(46),
      I3 => \^axis_tdata\(47),
      I4 => \^axis_tdata\(51),
      I5 => \^axis_tdata\(50),
      O => axis_tlast_INST_0_i_9_n_0
    );
axis_tvalid_i_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \buffer1_carry__4_n_2\,
      I1 => axis_tready,
      I2 => enable,
      O => axis_tvalid_i_i_1_n_0
    );
axis_tvalid_i_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axis_tvalid_i_i_1_n_0,
      Q => axis_tvalid,
      R => '0'
    );
buffer1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => buffer1_carry_n_0,
      CO(2) => buffer1_carry_n_1,
      CO(1) => buffer1_carry_n_2,
      CO(0) => buffer1_carry_n_3,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => NLW_buffer1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => buffer1_carry_i_1_n_0,
      S(2) => buffer1_carry_i_2_n_0,
      S(1) => buffer1_carry_i_3_n_0,
      S(0) => buffer1_carry_i_4_n_0
    );
\buffer1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => buffer1_carry_n_0,
      CO(3) => \buffer1_carry__0_n_0\,
      CO(2) => \buffer1_carry__0_n_1\,
      CO(1) => \buffer1_carry__0_n_2\,
      CO(0) => \buffer1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_buffer1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \buffer1_carry__0_i_1_n_0\,
      S(2) => \buffer1_carry__0_i_2_n_0\,
      S(1) => \buffer1_carry__0_i_3_n_0\,
      S(0) => \buffer1_carry__0_i_4_n_0\
    );
\buffer1_carry__0_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^axis_tdata\(23),
      I1 => \^axis_tdata\(22),
      I2 => \^axis_tdata\(21),
      O => \buffer1_carry__0_i_1_n_0\
    );
\buffer1_carry__0_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^axis_tdata\(20),
      I1 => \^axis_tdata\(19),
      I2 => \^axis_tdata\(18),
      O => \buffer1_carry__0_i_2_n_0\
    );
\buffer1_carry__0_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^axis_tdata\(17),
      I1 => \^axis_tdata\(16),
      I2 => \^axis_tdata\(15),
      O => \buffer1_carry__0_i_3_n_0\
    );
\buffer1_carry__0_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^axis_tdata\(14),
      I1 => \^axis_tdata\(13),
      I2 => \^axis_tdata\(12),
      O => \buffer1_carry__0_i_4_n_0\
    );
\buffer1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \buffer1_carry__0_n_0\,
      CO(3) => \buffer1_carry__1_n_0\,
      CO(2) => \buffer1_carry__1_n_1\,
      CO(1) => \buffer1_carry__1_n_2\,
      CO(0) => \buffer1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_buffer1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => \buffer1_carry__1_i_1_n_0\,
      S(2) => \buffer1_carry__1_i_2_n_0\,
      S(1) => \buffer1_carry__1_i_3_n_0\,
      S(0) => \buffer1_carry__1_i_4_n_0\
    );
\buffer1_carry__1_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^axis_tdata\(35),
      I1 => \^axis_tdata\(34),
      I2 => \^axis_tdata\(33),
      O => \buffer1_carry__1_i_1_n_0\
    );
\buffer1_carry__1_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^axis_tdata\(32),
      I1 => \^axis_tdata\(31),
      I2 => \^axis_tdata\(30),
      O => \buffer1_carry__1_i_2_n_0\
    );
\buffer1_carry__1_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^axis_tdata\(29),
      I1 => \^axis_tdata\(28),
      I2 => \^axis_tdata\(27),
      O => \buffer1_carry__1_i_3_n_0\
    );
\buffer1_carry__1_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^axis_tdata\(26),
      I1 => \^axis_tdata\(25),
      I2 => \^axis_tdata\(24),
      O => \buffer1_carry__1_i_4_n_0\
    );
\buffer1_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \buffer1_carry__1_n_0\,
      CO(3) => \buffer1_carry__2_n_0\,
      CO(2) => \buffer1_carry__2_n_1\,
      CO(1) => \buffer1_carry__2_n_2\,
      CO(0) => \buffer1_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_buffer1_carry__2_O_UNCONNECTED\(3 downto 0),
      S(3) => \buffer1_carry__2_i_1_n_0\,
      S(2) => \buffer1_carry__2_i_2_n_0\,
      S(1) => \buffer1_carry__2_i_3_n_0\,
      S(0) => \buffer1_carry__2_i_4_n_0\
    );
\buffer1_carry__2_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^axis_tdata\(47),
      I1 => \^axis_tdata\(46),
      I2 => \^axis_tdata\(45),
      O => \buffer1_carry__2_i_1_n_0\
    );
\buffer1_carry__2_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^axis_tdata\(44),
      I1 => \^axis_tdata\(43),
      I2 => \^axis_tdata\(42),
      O => \buffer1_carry__2_i_2_n_0\
    );
\buffer1_carry__2_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^axis_tdata\(41),
      I1 => \^axis_tdata\(40),
      I2 => \^axis_tdata\(39),
      O => \buffer1_carry__2_i_3_n_0\
    );
\buffer1_carry__2_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^axis_tdata\(38),
      I1 => \^axis_tdata\(37),
      I2 => \^axis_tdata\(36),
      O => \buffer1_carry__2_i_4_n_0\
    );
\buffer1_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \buffer1_carry__2_n_0\,
      CO(3) => \buffer1_carry__3_n_0\,
      CO(2) => \buffer1_carry__3_n_1\,
      CO(1) => \buffer1_carry__3_n_2\,
      CO(0) => \buffer1_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3 downto 0) => \NLW_buffer1_carry__3_O_UNCONNECTED\(3 downto 0),
      S(3) => \buffer1_carry__3_i_1_n_0\,
      S(2) => \buffer1_carry__3_i_2_n_0\,
      S(1) => \buffer1_carry__3_i_3_n_0\,
      S(0) => \buffer1_carry__3_i_4_n_0\
    );
\buffer1_carry__3_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^axis_tdata\(59),
      I1 => \^axis_tdata\(58),
      I2 => \^axis_tdata\(57),
      O => \buffer1_carry__3_i_1_n_0\
    );
\buffer1_carry__3_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^axis_tdata\(56),
      I1 => \^axis_tdata\(55),
      I2 => \^axis_tdata\(54),
      O => \buffer1_carry__3_i_2_n_0\
    );
\buffer1_carry__3_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^axis_tdata\(53),
      I1 => \^axis_tdata\(52),
      I2 => \^axis_tdata\(51),
      O => \buffer1_carry__3_i_3_n_0\
    );
\buffer1_carry__3_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^axis_tdata\(50),
      I1 => \^axis_tdata\(49),
      I2 => \^axis_tdata\(48),
      O => \buffer1_carry__3_i_4_n_0\
    );
\buffer1_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \buffer1_carry__3_n_0\,
      CO(3 downto 2) => \NLW_buffer1_carry__4_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \buffer1_carry__4_n_2\,
      CO(0) => \buffer1_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0011",
      O(3 downto 0) => \NLW_buffer1_carry__4_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \buffer1_carry__4_i_1_n_0\,
      S(0) => \buffer1_carry__4_i_2_n_0\
    );
\buffer1_carry__4_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(63),
      O => \buffer1_carry__4_i_1_n_0\
    );
\buffer1_carry__4_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^axis_tdata\(62),
      I1 => \^axis_tdata\(61),
      I2 => \^axis_tdata\(60),
      O => \buffer1_carry__4_i_2_n_0\
    );
buffer1_carry_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^axis_tdata\(11),
      I1 => \^axis_tdata\(10),
      I2 => \^axis_tdata\(9),
      O => buffer1_carry_i_1_n_0
    );
buffer1_carry_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^axis_tdata\(8),
      I1 => \^axis_tdata\(7),
      I2 => \^axis_tdata\(6),
      O => buffer1_carry_i_2_n_0
    );
buffer1_carry_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^axis_tdata\(5),
      I1 => \^axis_tdata\(4),
      I2 => \^axis_tdata\(3),
      O => buffer1_carry_i_3_n_0
    );
buffer1_carry_i_4: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \^axis_tdata\(2),
      I1 => \^axis_tdata\(1),
      I2 => \^axis_tdata\(0),
      O => buffer1_carry_i_4_n_0
    );
\buffer[11]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(11),
      O => \buffer[11]_i_2_n_0\
    );
\buffer[11]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(10),
      O => \buffer[11]_i_3_n_0\
    );
\buffer[11]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(9),
      O => \buffer[11]_i_4_n_0\
    );
\buffer[11]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(8),
      O => \buffer[11]_i_5_n_0\
    );
\buffer[15]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(15),
      O => \buffer[15]_i_2_n_0\
    );
\buffer[15]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(14),
      O => \buffer[15]_i_3_n_0\
    );
\buffer[15]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(13),
      O => \buffer[15]_i_4_n_0\
    );
\buffer[15]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(12),
      O => \buffer[15]_i_5_n_0\
    );
\buffer[19]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(19),
      O => \buffer[19]_i_2_n_0\
    );
\buffer[19]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(18),
      O => \buffer[19]_i_3_n_0\
    );
\buffer[19]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(17),
      O => \buffer[19]_i_4_n_0\
    );
\buffer[19]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(16),
      O => \buffer[19]_i_5_n_0\
    );
\buffer[23]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(23),
      O => \buffer[23]_i_2_n_0\
    );
\buffer[23]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(22),
      O => \buffer[23]_i_3_n_0\
    );
\buffer[23]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(21),
      O => \buffer[23]_i_4_n_0\
    );
\buffer[23]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(20),
      O => \buffer[23]_i_5_n_0\
    );
\buffer[27]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(27),
      O => \buffer[27]_i_2_n_0\
    );
\buffer[27]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(26),
      O => \buffer[27]_i_3_n_0\
    );
\buffer[27]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(25),
      O => \buffer[27]_i_4_n_0\
    );
\buffer[27]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(24),
      O => \buffer[27]_i_5_n_0\
    );
\buffer[31]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(31),
      O => \buffer[31]_i_2_n_0\
    );
\buffer[31]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(30),
      O => \buffer[31]_i_3_n_0\
    );
\buffer[31]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(29),
      O => \buffer[31]_i_4_n_0\
    );
\buffer[31]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(28),
      O => \buffer[31]_i_5_n_0\
    );
\buffer[35]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(35),
      O => \buffer[35]_i_2_n_0\
    );
\buffer[35]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(34),
      O => \buffer[35]_i_3_n_0\
    );
\buffer[35]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(33),
      O => \buffer[35]_i_4_n_0\
    );
\buffer[35]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(32),
      O => \buffer[35]_i_5_n_0\
    );
\buffer[39]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(39),
      O => \buffer[39]_i_2_n_0\
    );
\buffer[39]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(38),
      O => \buffer[39]_i_3_n_0\
    );
\buffer[39]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(37),
      O => \buffer[39]_i_4_n_0\
    );
\buffer[39]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(36),
      O => \buffer[39]_i_5_n_0\
    );
\buffer[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(3),
      O => \buffer[3]_i_2_n_0\
    );
\buffer[3]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(0),
      O => \buffer[3]_i_3_n_0\
    );
\buffer[43]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(43),
      O => \buffer[43]_i_2_n_0\
    );
\buffer[43]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(42),
      O => \buffer[43]_i_3_n_0\
    );
\buffer[43]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(41),
      O => \buffer[43]_i_4_n_0\
    );
\buffer[43]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(40),
      O => \buffer[43]_i_5_n_0\
    );
\buffer[47]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(47),
      O => \buffer[47]_i_2_n_0\
    );
\buffer[47]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(46),
      O => \buffer[47]_i_3_n_0\
    );
\buffer[47]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(45),
      O => \buffer[47]_i_4_n_0\
    );
\buffer[47]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(44),
      O => \buffer[47]_i_5_n_0\
    );
\buffer[51]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(51),
      O => \buffer[51]_i_2_n_0\
    );
\buffer[51]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(50),
      O => \buffer[51]_i_3_n_0\
    );
\buffer[51]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(49),
      O => \buffer[51]_i_4_n_0\
    );
\buffer[51]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(48),
      O => \buffer[51]_i_5_n_0\
    );
\buffer[55]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(55),
      O => \buffer[55]_i_2_n_0\
    );
\buffer[55]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(54),
      O => \buffer[55]_i_3_n_0\
    );
\buffer[55]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(53),
      O => \buffer[55]_i_4_n_0\
    );
\buffer[55]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(52),
      O => \buffer[55]_i_5_n_0\
    );
\buffer[59]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(59),
      O => \buffer[59]_i_2_n_0\
    );
\buffer[59]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(58),
      O => \buffer[59]_i_3_n_0\
    );
\buffer[59]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(57),
      O => \buffer[59]_i_4_n_0\
    );
\buffer[59]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(56),
      O => \buffer[59]_i_5_n_0\
    );
\buffer[63]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => enable,
      O => clear
    );
\buffer[63]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axis_tready,
      I1 => \buffer1_carry__4_n_2\,
      O => \buffer[63]_i_2_n_0\
    );
\buffer[63]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(63),
      O => \buffer[63]_i_4_n_0\
    );
\buffer[63]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(62),
      O => \buffer[63]_i_5_n_0\
    );
\buffer[63]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(61),
      O => \buffer[63]_i_6_n_0\
    );
\buffer[63]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(60),
      O => \buffer[63]_i_7_n_0\
    );
\buffer[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(7),
      O => \buffer[7]_i_2_n_0\
    );
\buffer[7]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(6),
      O => \buffer[7]_i_3_n_0\
    );
\buffer[7]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(5),
      O => \buffer[7]_i_4_n_0\
    );
\buffer[7]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(4),
      O => \buffer[7]_i_5_n_0\
    );
\buffer_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[3]_i_1_n_7\,
      Q => \^axis_tdata\(0),
      S => clear
    );
\buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[11]_i_1_n_5\,
      Q => \^axis_tdata\(10),
      R => clear
    );
\buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[11]_i_1_n_4\,
      Q => \^axis_tdata\(11),
      R => clear
    );
\buffer_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \buffer_reg[7]_i_1_n_0\,
      CO(3) => \buffer_reg[11]_i_1_n_0\,
      CO(2) => \buffer_reg[11]_i_1_n_1\,
      CO(1) => \buffer_reg[11]_i_1_n_2\,
      CO(0) => \buffer_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \buffer_reg[11]_i_1_n_4\,
      O(2) => \buffer_reg[11]_i_1_n_5\,
      O(1) => \buffer_reg[11]_i_1_n_6\,
      O(0) => \buffer_reg[11]_i_1_n_7\,
      S(3) => \buffer[11]_i_2_n_0\,
      S(2) => \buffer[11]_i_3_n_0\,
      S(1) => \buffer[11]_i_4_n_0\,
      S(0) => \buffer[11]_i_5_n_0\
    );
\buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[15]_i_1_n_7\,
      Q => \^axis_tdata\(12),
      R => clear
    );
\buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[15]_i_1_n_6\,
      Q => \^axis_tdata\(13),
      R => clear
    );
\buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[15]_i_1_n_5\,
      Q => \^axis_tdata\(14),
      R => clear
    );
\buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[15]_i_1_n_4\,
      Q => \^axis_tdata\(15),
      R => clear
    );
\buffer_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \buffer_reg[11]_i_1_n_0\,
      CO(3) => \buffer_reg[15]_i_1_n_0\,
      CO(2) => \buffer_reg[15]_i_1_n_1\,
      CO(1) => \buffer_reg[15]_i_1_n_2\,
      CO(0) => \buffer_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \buffer_reg[15]_i_1_n_4\,
      O(2) => \buffer_reg[15]_i_1_n_5\,
      O(1) => \buffer_reg[15]_i_1_n_6\,
      O(0) => \buffer_reg[15]_i_1_n_7\,
      S(3) => \buffer[15]_i_2_n_0\,
      S(2) => \buffer[15]_i_3_n_0\,
      S(1) => \buffer[15]_i_4_n_0\,
      S(0) => \buffer[15]_i_5_n_0\
    );
\buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[19]_i_1_n_7\,
      Q => \^axis_tdata\(16),
      R => clear
    );
\buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[19]_i_1_n_6\,
      Q => \^axis_tdata\(17),
      R => clear
    );
\buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[19]_i_1_n_5\,
      Q => \^axis_tdata\(18),
      R => clear
    );
\buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[19]_i_1_n_4\,
      Q => \^axis_tdata\(19),
      R => clear
    );
\buffer_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \buffer_reg[15]_i_1_n_0\,
      CO(3) => \buffer_reg[19]_i_1_n_0\,
      CO(2) => \buffer_reg[19]_i_1_n_1\,
      CO(1) => \buffer_reg[19]_i_1_n_2\,
      CO(0) => \buffer_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \buffer_reg[19]_i_1_n_4\,
      O(2) => \buffer_reg[19]_i_1_n_5\,
      O(1) => \buffer_reg[19]_i_1_n_6\,
      O(0) => \buffer_reg[19]_i_1_n_7\,
      S(3) => \buffer[19]_i_2_n_0\,
      S(2) => \buffer[19]_i_3_n_0\,
      S(1) => \buffer[19]_i_4_n_0\,
      S(0) => \buffer[19]_i_5_n_0\
    );
\buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[3]_i_1_n_6\,
      Q => \^axis_tdata\(1),
      R => clear
    );
\buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[23]_i_1_n_7\,
      Q => \^axis_tdata\(20),
      R => clear
    );
\buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[23]_i_1_n_6\,
      Q => \^axis_tdata\(21),
      R => clear
    );
\buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[23]_i_1_n_5\,
      Q => \^axis_tdata\(22),
      R => clear
    );
\buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[23]_i_1_n_4\,
      Q => \^axis_tdata\(23),
      R => clear
    );
\buffer_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \buffer_reg[19]_i_1_n_0\,
      CO(3) => \buffer_reg[23]_i_1_n_0\,
      CO(2) => \buffer_reg[23]_i_1_n_1\,
      CO(1) => \buffer_reg[23]_i_1_n_2\,
      CO(0) => \buffer_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \buffer_reg[23]_i_1_n_4\,
      O(2) => \buffer_reg[23]_i_1_n_5\,
      O(1) => \buffer_reg[23]_i_1_n_6\,
      O(0) => \buffer_reg[23]_i_1_n_7\,
      S(3) => \buffer[23]_i_2_n_0\,
      S(2) => \buffer[23]_i_3_n_0\,
      S(1) => \buffer[23]_i_4_n_0\,
      S(0) => \buffer[23]_i_5_n_0\
    );
\buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[27]_i_1_n_7\,
      Q => \^axis_tdata\(24),
      R => clear
    );
\buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[27]_i_1_n_6\,
      Q => \^axis_tdata\(25),
      R => clear
    );
\buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[27]_i_1_n_5\,
      Q => \^axis_tdata\(26),
      R => clear
    );
\buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[27]_i_1_n_4\,
      Q => \^axis_tdata\(27),
      R => clear
    );
\buffer_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \buffer_reg[23]_i_1_n_0\,
      CO(3) => \buffer_reg[27]_i_1_n_0\,
      CO(2) => \buffer_reg[27]_i_1_n_1\,
      CO(1) => \buffer_reg[27]_i_1_n_2\,
      CO(0) => \buffer_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \buffer_reg[27]_i_1_n_4\,
      O(2) => \buffer_reg[27]_i_1_n_5\,
      O(1) => \buffer_reg[27]_i_1_n_6\,
      O(0) => \buffer_reg[27]_i_1_n_7\,
      S(3) => \buffer[27]_i_2_n_0\,
      S(2) => \buffer[27]_i_3_n_0\,
      S(1) => \buffer[27]_i_4_n_0\,
      S(0) => \buffer[27]_i_5_n_0\
    );
\buffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[31]_i_1_n_7\,
      Q => \^axis_tdata\(28),
      R => clear
    );
\buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[31]_i_1_n_6\,
      Q => \^axis_tdata\(29),
      R => clear
    );
\buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[3]_i_1_n_5\,
      Q => \^axis_tdata\(2),
      R => clear
    );
\buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[31]_i_1_n_5\,
      Q => \^axis_tdata\(30),
      R => clear
    );
\buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[31]_i_1_n_4\,
      Q => \^axis_tdata\(31),
      R => clear
    );
\buffer_reg[31]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \buffer_reg[27]_i_1_n_0\,
      CO(3) => \buffer_reg[31]_i_1_n_0\,
      CO(2) => \buffer_reg[31]_i_1_n_1\,
      CO(1) => \buffer_reg[31]_i_1_n_2\,
      CO(0) => \buffer_reg[31]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \buffer_reg[31]_i_1_n_4\,
      O(2) => \buffer_reg[31]_i_1_n_5\,
      O(1) => \buffer_reg[31]_i_1_n_6\,
      O(0) => \buffer_reg[31]_i_1_n_7\,
      S(3) => \buffer[31]_i_2_n_0\,
      S(2) => \buffer[31]_i_3_n_0\,
      S(1) => \buffer[31]_i_4_n_0\,
      S(0) => \buffer[31]_i_5_n_0\
    );
\buffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[35]_i_1_n_7\,
      Q => \^axis_tdata\(32),
      R => clear
    );
\buffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[35]_i_1_n_6\,
      Q => \^axis_tdata\(33),
      R => clear
    );
\buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[35]_i_1_n_5\,
      Q => \^axis_tdata\(34),
      R => clear
    );
\buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[35]_i_1_n_4\,
      Q => \^axis_tdata\(35),
      R => clear
    );
\buffer_reg[35]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \buffer_reg[31]_i_1_n_0\,
      CO(3) => \buffer_reg[35]_i_1_n_0\,
      CO(2) => \buffer_reg[35]_i_1_n_1\,
      CO(1) => \buffer_reg[35]_i_1_n_2\,
      CO(0) => \buffer_reg[35]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \buffer_reg[35]_i_1_n_4\,
      O(2) => \buffer_reg[35]_i_1_n_5\,
      O(1) => \buffer_reg[35]_i_1_n_6\,
      O(0) => \buffer_reg[35]_i_1_n_7\,
      S(3) => \buffer[35]_i_2_n_0\,
      S(2) => \buffer[35]_i_3_n_0\,
      S(1) => \buffer[35]_i_4_n_0\,
      S(0) => \buffer[35]_i_5_n_0\
    );
\buffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[39]_i_1_n_7\,
      Q => \^axis_tdata\(36),
      R => clear
    );
\buffer_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[39]_i_1_n_6\,
      Q => \^axis_tdata\(37),
      R => clear
    );
\buffer_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[39]_i_1_n_5\,
      Q => \^axis_tdata\(38),
      R => clear
    );
\buffer_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[39]_i_1_n_4\,
      Q => \^axis_tdata\(39),
      R => clear
    );
\buffer_reg[39]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \buffer_reg[35]_i_1_n_0\,
      CO(3) => \buffer_reg[39]_i_1_n_0\,
      CO(2) => \buffer_reg[39]_i_1_n_1\,
      CO(1) => \buffer_reg[39]_i_1_n_2\,
      CO(0) => \buffer_reg[39]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \buffer_reg[39]_i_1_n_4\,
      O(2) => \buffer_reg[39]_i_1_n_5\,
      O(1) => \buffer_reg[39]_i_1_n_6\,
      O(0) => \buffer_reg[39]_i_1_n_7\,
      S(3) => \buffer[39]_i_2_n_0\,
      S(2) => \buffer[39]_i_3_n_0\,
      S(1) => \buffer[39]_i_4_n_0\,
      S(0) => \buffer[39]_i_5_n_0\
    );
\buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[3]_i_1_n_4\,
      Q => \^axis_tdata\(3),
      R => clear
    );
\buffer_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \buffer_reg[3]_i_1_n_0\,
      CO(2) => \buffer_reg[3]_i_1_n_1\,
      CO(1) => \buffer_reg[3]_i_1_n_2\,
      CO(0) => \buffer_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1001",
      O(3) => \buffer_reg[3]_i_1_n_4\,
      O(2) => \buffer_reg[3]_i_1_n_5\,
      O(1) => \buffer_reg[3]_i_1_n_6\,
      O(0) => \buffer_reg[3]_i_1_n_7\,
      S(3) => \buffer[3]_i_2_n_0\,
      S(2 downto 1) => \^axis_tdata\(2 downto 1),
      S(0) => \buffer[3]_i_3_n_0\
    );
\buffer_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[43]_i_1_n_7\,
      Q => \^axis_tdata\(40),
      R => clear
    );
\buffer_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[43]_i_1_n_6\,
      Q => \^axis_tdata\(41),
      R => clear
    );
\buffer_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[43]_i_1_n_5\,
      Q => \^axis_tdata\(42),
      R => clear
    );
\buffer_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[43]_i_1_n_4\,
      Q => \^axis_tdata\(43),
      R => clear
    );
\buffer_reg[43]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \buffer_reg[39]_i_1_n_0\,
      CO(3) => \buffer_reg[43]_i_1_n_0\,
      CO(2) => \buffer_reg[43]_i_1_n_1\,
      CO(1) => \buffer_reg[43]_i_1_n_2\,
      CO(0) => \buffer_reg[43]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \buffer_reg[43]_i_1_n_4\,
      O(2) => \buffer_reg[43]_i_1_n_5\,
      O(1) => \buffer_reg[43]_i_1_n_6\,
      O(0) => \buffer_reg[43]_i_1_n_7\,
      S(3) => \buffer[43]_i_2_n_0\,
      S(2) => \buffer[43]_i_3_n_0\,
      S(1) => \buffer[43]_i_4_n_0\,
      S(0) => \buffer[43]_i_5_n_0\
    );
\buffer_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[47]_i_1_n_7\,
      Q => \^axis_tdata\(44),
      R => clear
    );
\buffer_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[47]_i_1_n_6\,
      Q => \^axis_tdata\(45),
      R => clear
    );
\buffer_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[47]_i_1_n_5\,
      Q => \^axis_tdata\(46),
      R => clear
    );
\buffer_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[47]_i_1_n_4\,
      Q => \^axis_tdata\(47),
      R => clear
    );
\buffer_reg[47]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \buffer_reg[43]_i_1_n_0\,
      CO(3) => \buffer_reg[47]_i_1_n_0\,
      CO(2) => \buffer_reg[47]_i_1_n_1\,
      CO(1) => \buffer_reg[47]_i_1_n_2\,
      CO(0) => \buffer_reg[47]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \buffer_reg[47]_i_1_n_4\,
      O(2) => \buffer_reg[47]_i_1_n_5\,
      O(1) => \buffer_reg[47]_i_1_n_6\,
      O(0) => \buffer_reg[47]_i_1_n_7\,
      S(3) => \buffer[47]_i_2_n_0\,
      S(2) => \buffer[47]_i_3_n_0\,
      S(1) => \buffer[47]_i_4_n_0\,
      S(0) => \buffer[47]_i_5_n_0\
    );
\buffer_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[51]_i_1_n_7\,
      Q => \^axis_tdata\(48),
      R => clear
    );
\buffer_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[51]_i_1_n_6\,
      Q => \^axis_tdata\(49),
      R => clear
    );
\buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[7]_i_1_n_7\,
      Q => \^axis_tdata\(4),
      R => clear
    );
\buffer_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[51]_i_1_n_5\,
      Q => \^axis_tdata\(50),
      R => clear
    );
\buffer_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[51]_i_1_n_4\,
      Q => \^axis_tdata\(51),
      R => clear
    );
\buffer_reg[51]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \buffer_reg[47]_i_1_n_0\,
      CO(3) => \buffer_reg[51]_i_1_n_0\,
      CO(2) => \buffer_reg[51]_i_1_n_1\,
      CO(1) => \buffer_reg[51]_i_1_n_2\,
      CO(0) => \buffer_reg[51]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \buffer_reg[51]_i_1_n_4\,
      O(2) => \buffer_reg[51]_i_1_n_5\,
      O(1) => \buffer_reg[51]_i_1_n_6\,
      O(0) => \buffer_reg[51]_i_1_n_7\,
      S(3) => \buffer[51]_i_2_n_0\,
      S(2) => \buffer[51]_i_3_n_0\,
      S(1) => \buffer[51]_i_4_n_0\,
      S(0) => \buffer[51]_i_5_n_0\
    );
\buffer_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[55]_i_1_n_7\,
      Q => \^axis_tdata\(52),
      R => clear
    );
\buffer_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[55]_i_1_n_6\,
      Q => \^axis_tdata\(53),
      R => clear
    );
\buffer_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[55]_i_1_n_5\,
      Q => \^axis_tdata\(54),
      R => clear
    );
\buffer_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[55]_i_1_n_4\,
      Q => \^axis_tdata\(55),
      R => clear
    );
\buffer_reg[55]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \buffer_reg[51]_i_1_n_0\,
      CO(3) => \buffer_reg[55]_i_1_n_0\,
      CO(2) => \buffer_reg[55]_i_1_n_1\,
      CO(1) => \buffer_reg[55]_i_1_n_2\,
      CO(0) => \buffer_reg[55]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \buffer_reg[55]_i_1_n_4\,
      O(2) => \buffer_reg[55]_i_1_n_5\,
      O(1) => \buffer_reg[55]_i_1_n_6\,
      O(0) => \buffer_reg[55]_i_1_n_7\,
      S(3) => \buffer[55]_i_2_n_0\,
      S(2) => \buffer[55]_i_3_n_0\,
      S(1) => \buffer[55]_i_4_n_0\,
      S(0) => \buffer[55]_i_5_n_0\
    );
\buffer_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[59]_i_1_n_7\,
      Q => \^axis_tdata\(56),
      R => clear
    );
\buffer_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[59]_i_1_n_6\,
      Q => \^axis_tdata\(57),
      R => clear
    );
\buffer_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[59]_i_1_n_5\,
      Q => \^axis_tdata\(58),
      R => clear
    );
\buffer_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[59]_i_1_n_4\,
      Q => \^axis_tdata\(59),
      R => clear
    );
\buffer_reg[59]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \buffer_reg[55]_i_1_n_0\,
      CO(3) => \buffer_reg[59]_i_1_n_0\,
      CO(2) => \buffer_reg[59]_i_1_n_1\,
      CO(1) => \buffer_reg[59]_i_1_n_2\,
      CO(0) => \buffer_reg[59]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \buffer_reg[59]_i_1_n_4\,
      O(2) => \buffer_reg[59]_i_1_n_5\,
      O(1) => \buffer_reg[59]_i_1_n_6\,
      O(0) => \buffer_reg[59]_i_1_n_7\,
      S(3) => \buffer[59]_i_2_n_0\,
      S(2) => \buffer[59]_i_3_n_0\,
      S(1) => \buffer[59]_i_4_n_0\,
      S(0) => \buffer[59]_i_5_n_0\
    );
\buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[7]_i_1_n_6\,
      Q => \^axis_tdata\(5),
      R => clear
    );
\buffer_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[63]_i_3_n_7\,
      Q => \^axis_tdata\(60),
      R => clear
    );
\buffer_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[63]_i_3_n_6\,
      Q => \^axis_tdata\(61),
      R => clear
    );
\buffer_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[63]_i_3_n_5\,
      Q => \^axis_tdata\(62),
      R => clear
    );
\buffer_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[63]_i_3_n_4\,
      Q => \^axis_tdata\(63),
      R => clear
    );
\buffer_reg[63]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \buffer_reg[59]_i_1_n_0\,
      CO(3) => \NLW_buffer_reg[63]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \buffer_reg[63]_i_3_n_1\,
      CO(1) => \buffer_reg[63]_i_3_n_2\,
      CO(0) => \buffer_reg[63]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0111",
      O(3) => \buffer_reg[63]_i_3_n_4\,
      O(2) => \buffer_reg[63]_i_3_n_5\,
      O(1) => \buffer_reg[63]_i_3_n_6\,
      O(0) => \buffer_reg[63]_i_3_n_7\,
      S(3) => \buffer[63]_i_4_n_0\,
      S(2) => \buffer[63]_i_5_n_0\,
      S(1) => \buffer[63]_i_6_n_0\,
      S(0) => \buffer[63]_i_7_n_0\
    );
\buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[7]_i_1_n_5\,
      Q => \^axis_tdata\(6),
      R => clear
    );
\buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[7]_i_1_n_4\,
      Q => \^axis_tdata\(7),
      R => clear
    );
\buffer_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \buffer_reg[3]_i_1_n_0\,
      CO(3) => \buffer_reg[7]_i_1_n_0\,
      CO(2) => \buffer_reg[7]_i_1_n_1\,
      CO(1) => \buffer_reg[7]_i_1_n_2\,
      CO(0) => \buffer_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"1111",
      O(3) => \buffer_reg[7]_i_1_n_4\,
      O(2) => \buffer_reg[7]_i_1_n_5\,
      O(1) => \buffer_reg[7]_i_1_n_6\,
      O(0) => \buffer_reg[7]_i_1_n_7\,
      S(3) => \buffer[7]_i_2_n_0\,
      S(2) => \buffer[7]_i_3_n_0\,
      S(1) => \buffer[7]_i_4_n_0\,
      S(0) => \buffer[7]_i_5_n_0\
    );
\buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[11]_i_1_n_7\,
      Q => \^axis_tdata\(8),
      R => clear
    );
\buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffer[63]_i_2_n_0\,
      D => \buffer_reg[11]_i_1_n_6\,
      Q => \^axis_tdata\(9),
      R => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rtos_sys_snow_0_0 is
  port (
    clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    axis_tready : in STD_LOGIC;
    axis_tdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
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
  signal \<const1>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of axis_tlast : signal is "xilinx.com:interface:axis:1.0 axis TLAST";
  attribute X_INTERFACE_INFO of axis_tready : signal is "xilinx.com:interface:axis:1.0 axis TREADY";
  attribute X_INTERFACE_MODE : string;
  attribute X_INTERFACE_MODE of axis_tready : signal is "master";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of axis_tready : signal is "XIL_INTERFACENAME axis, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 10000000, PHASE 0.0, CLK_DOMAIN rtos_sys_processing_system7_0_0_FCLK_CLK0, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axis_tvalid : signal is "xilinx.com:interface:axis:1.0 axis TVALID";
  attribute X_INTERFACE_INFO of clk : signal is "xilinx.com:signal:clock:1.0 clk CLK";
  attribute X_INTERFACE_MODE of clk : signal is "slave";
  attribute X_INTERFACE_PARAMETER of clk : signal is "XIL_INTERFACENAME clk, ASSOCIATED_BUSIF axis, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN rtos_sys_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of axis_tdata : signal is "xilinx.com:interface:axis:1.0 axis TDATA";
  attribute X_INTERFACE_INFO of axis_tkeep : signal is "xilinx.com:interface:axis:1.0 axis TKEEP";
begin
  axis_tkeep(7) <= \<const1>\;
  axis_tkeep(6) <= \<const1>\;
  axis_tkeep(5) <= \<const1>\;
  axis_tkeep(4) <= \<const1>\;
  axis_tkeep(3) <= \<const1>\;
  axis_tkeep(2) <= \<const1>\;
  axis_tkeep(1) <= \<const1>\;
  axis_tkeep(0) <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.rtos_sys_snow_0_0_snow
     port map (
      axis_tdata(63 downto 0) => axis_tdata(63 downto 0),
      axis_tlast => axis_tlast,
      axis_tready => axis_tready,
      axis_tvalid => axis_tvalid,
      clk => clk,
      enable => enable
    );
end STRUCTURE;

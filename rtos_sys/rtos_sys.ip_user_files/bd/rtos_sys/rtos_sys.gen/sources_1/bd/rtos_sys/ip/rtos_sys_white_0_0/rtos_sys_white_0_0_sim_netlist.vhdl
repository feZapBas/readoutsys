-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2024 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2024.2 (lin64) Build 5239630 Fri Nov 08 22:34:34 MST 2024
-- Date        : Thu Sep 18 11:55:17 2025
-- Host        : ej3b-GF63-Thin-11SC running 64-bit Ubuntu 24.04.3 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/ej3b/readoutsys/rtos_sys/rtos_sys.gen/sources_1/bd/rtos_sys/ip/rtos_sys_white_0_0/rtos_sys_white_0_0_sim_netlist.vhdl
-- Design      : rtos_sys_white_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z007sclg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rtos_sys_white_0_0_white is
  port (
    axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_tvalid : out STD_LOGIC;
    axis_tlast : out STD_LOGIC;
    clk : in STD_LOGIC;
    axis_tready : in STD_LOGIC;
    enable : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of rtos_sys_white_0_0_white : entity is "white";
end rtos_sys_white_0_0_white;

architecture STRUCTURE of rtos_sys_white_0_0_white is
  signal \^axis_tdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal axis_tlast_INST_0_i_1_n_0 : STD_LOGIC;
  signal axis_tlast_INST_0_i_2_n_0 : STD_LOGIC;
  signal axis_tlast_INST_0_i_3_n_0 : STD_LOGIC;
  signal axis_tlast_INST_0_i_4_n_0 : STD_LOGIC;
  signal axis_tlast_INST_0_i_5_n_0 : STD_LOGIC;
  signal axis_tlast_INST_0_i_6_n_0 : STD_LOGIC;
  signal \^axis_tvalid\ : STD_LOGIC;
  signal axis_tvalid_i_i_1_n_0 : STD_LOGIC;
  signal axis_tvalid_i_i_2_n_0 : STD_LOGIC;
  signal axis_tvalid_i_i_3_n_0 : STD_LOGIC;
  signal axis_tvalid_i_i_4_n_0 : STD_LOGIC;
  signal axis_tvalid_i_i_5_n_0 : STD_LOGIC;
  signal \buffers[31]_i_2_n_0\ : STD_LOGIC;
  signal \buffers[3]_i_2_n_0\ : STD_LOGIC;
  signal \buffers_reg[11]_i_1_n_0\ : STD_LOGIC;
  signal \buffers_reg[11]_i_1_n_1\ : STD_LOGIC;
  signal \buffers_reg[11]_i_1_n_2\ : STD_LOGIC;
  signal \buffers_reg[11]_i_1_n_3\ : STD_LOGIC;
  signal \buffers_reg[11]_i_1_n_4\ : STD_LOGIC;
  signal \buffers_reg[11]_i_1_n_5\ : STD_LOGIC;
  signal \buffers_reg[11]_i_1_n_6\ : STD_LOGIC;
  signal \buffers_reg[11]_i_1_n_7\ : STD_LOGIC;
  signal \buffers_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \buffers_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \buffers_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \buffers_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \buffers_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \buffers_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \buffers_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \buffers_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \buffers_reg[19]_i_1_n_0\ : STD_LOGIC;
  signal \buffers_reg[19]_i_1_n_1\ : STD_LOGIC;
  signal \buffers_reg[19]_i_1_n_2\ : STD_LOGIC;
  signal \buffers_reg[19]_i_1_n_3\ : STD_LOGIC;
  signal \buffers_reg[19]_i_1_n_4\ : STD_LOGIC;
  signal \buffers_reg[19]_i_1_n_5\ : STD_LOGIC;
  signal \buffers_reg[19]_i_1_n_6\ : STD_LOGIC;
  signal \buffers_reg[19]_i_1_n_7\ : STD_LOGIC;
  signal \buffers_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \buffers_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \buffers_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \buffers_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \buffers_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \buffers_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \buffers_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \buffers_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \buffers_reg[27]_i_1_n_0\ : STD_LOGIC;
  signal \buffers_reg[27]_i_1_n_1\ : STD_LOGIC;
  signal \buffers_reg[27]_i_1_n_2\ : STD_LOGIC;
  signal \buffers_reg[27]_i_1_n_3\ : STD_LOGIC;
  signal \buffers_reg[27]_i_1_n_4\ : STD_LOGIC;
  signal \buffers_reg[27]_i_1_n_5\ : STD_LOGIC;
  signal \buffers_reg[27]_i_1_n_6\ : STD_LOGIC;
  signal \buffers_reg[27]_i_1_n_7\ : STD_LOGIC;
  signal \buffers_reg[31]_i_3_n_1\ : STD_LOGIC;
  signal \buffers_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \buffers_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \buffers_reg[31]_i_3_n_4\ : STD_LOGIC;
  signal \buffers_reg[31]_i_3_n_5\ : STD_LOGIC;
  signal \buffers_reg[31]_i_3_n_6\ : STD_LOGIC;
  signal \buffers_reg[31]_i_3_n_7\ : STD_LOGIC;
  signal \buffers_reg[3]_i_1_n_0\ : STD_LOGIC;
  signal \buffers_reg[3]_i_1_n_1\ : STD_LOGIC;
  signal \buffers_reg[3]_i_1_n_2\ : STD_LOGIC;
  signal \buffers_reg[3]_i_1_n_3\ : STD_LOGIC;
  signal \buffers_reg[3]_i_1_n_4\ : STD_LOGIC;
  signal \buffers_reg[3]_i_1_n_5\ : STD_LOGIC;
  signal \buffers_reg[3]_i_1_n_6\ : STD_LOGIC;
  signal \buffers_reg[3]_i_1_n_7\ : STD_LOGIC;
  signal \buffers_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \buffers_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \buffers_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \buffers_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \buffers_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \buffers_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \buffers_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \buffers_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \NLW_buffers_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of axis_tlast_INST_0_i_5 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axis_tvalid_i_i_5 : label is "soft_lutpair0";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \buffers_reg[11]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \buffers_reg[15]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \buffers_reg[19]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \buffers_reg[23]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \buffers_reg[27]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \buffers_reg[31]_i_3\ : label is 11;
  attribute ADDER_THRESHOLD of \buffers_reg[3]_i_1\ : label is 11;
  attribute ADDER_THRESHOLD of \buffers_reg[7]_i_1\ : label is 11;
begin
  axis_tdata(31 downto 0) <= \^axis_tdata\(31 downto 0);
  axis_tvalid <= \^axis_tvalid\;
axis_tlast_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => axis_tlast_INST_0_i_1_n_0,
      I1 => axis_tlast_INST_0_i_2_n_0,
      I2 => axis_tlast_INST_0_i_3_n_0,
      I3 => axis_tlast_INST_0_i_4_n_0,
      I4 => axis_tlast_INST_0_i_5_n_0,
      I5 => axis_tlast_INST_0_i_6_n_0,
      O => axis_tlast
    );
axis_tlast_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^axis_tdata\(22),
      I1 => \^axis_tdata\(23),
      I2 => \^axis_tdata\(20),
      I3 => \^axis_tdata\(21),
      I4 => \^axis_tdata\(25),
      I5 => \^axis_tdata\(24),
      O => axis_tlast_INST_0_i_1_n_0
    );
axis_tlast_INST_0_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^axis_tdata\(28),
      I1 => \^axis_tdata\(29),
      I2 => \^axis_tdata\(26),
      I3 => \^axis_tdata\(27),
      I4 => \^axis_tdata\(31),
      I5 => \^axis_tdata\(30),
      O => axis_tlast_INST_0_i_2_n_0
    );
axis_tlast_INST_0_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \^axis_tdata\(8),
      I1 => \^axis_tdata\(9),
      I2 => \^axis_tdata\(6),
      I3 => \^axis_tdata\(7),
      I4 => \^axis_tdata\(1),
      I5 => \^axis_tdata\(0),
      O => axis_tlast_INST_0_i_3_n_0
    );
axis_tlast_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \^axis_tdata\(3),
      I1 => \^axis_tdata\(2),
      I2 => \^axis_tdata\(5),
      I3 => \^axis_tdata\(4),
      O => axis_tlast_INST_0_i_4_n_0
    );
axis_tlast_INST_0_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \^axis_tdata\(11),
      I1 => \^axis_tdata\(10),
      I2 => \^axis_tdata\(13),
      I3 => \^axis_tdata\(12),
      O => axis_tlast_INST_0_i_5_n_0
    );
axis_tlast_INST_0_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^axis_tdata\(16),
      I1 => \^axis_tdata\(17),
      I2 => \^axis_tdata\(14),
      I3 => \^axis_tdata\(15),
      I4 => \^axis_tdata\(19),
      I5 => \^axis_tdata\(18),
      O => axis_tlast_INST_0_i_6_n_0
    );
axis_tvalid_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080800000000000"
    )
        port map (
      I0 => axis_tvalid_i_i_2_n_0,
      I1 => axis_tvalid_i_i_3_n_0,
      I2 => axis_tvalid_i_i_4_n_0,
      I3 => axis_tlast_INST_0_i_3_n_0,
      I4 => axis_tlast_INST_0_i_4_n_0,
      I5 => axis_tvalid_i_i_5_n_0,
      O => axis_tvalid_i_i_1_n_0
    );
axis_tvalid_i_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^axis_tdata\(23),
      I1 => \^axis_tdata\(24),
      I2 => \^axis_tdata\(21),
      I3 => \^axis_tdata\(22),
      I4 => \^axis_tdata\(26),
      I5 => \^axis_tdata\(25),
      O => axis_tvalid_i_i_2_n_0
    );
axis_tvalid_i_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000100000000"
    )
        port map (
      I0 => \^axis_tdata\(29),
      I1 => \^axis_tdata\(30),
      I2 => \^axis_tdata\(27),
      I3 => \^axis_tdata\(28),
      I4 => \^axis_tdata\(31),
      I5 => enable,
      O => axis_tvalid_i_i_3_n_0
    );
axis_tvalid_i_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^axis_tdata\(17),
      I1 => \^axis_tdata\(18),
      I2 => \^axis_tdata\(15),
      I3 => \^axis_tdata\(16),
      I4 => \^axis_tdata\(20),
      I5 => \^axis_tdata\(19),
      O => axis_tvalid_i_i_4_n_0
    );
axis_tvalid_i_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \^axis_tdata\(10),
      I1 => \^axis_tdata\(11),
      I2 => \^axis_tdata\(12),
      I3 => \^axis_tdata\(14),
      I4 => \^axis_tdata\(13),
      O => axis_tvalid_i_i_5_n_0
    );
axis_tvalid_i_reg: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => '1',
      D => axis_tvalid_i_i_1_n_0,
      Q => \^axis_tvalid\,
      R => '0'
    );
\buffers[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => enable,
      O => clear
    );
\buffers[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axis_tready,
      I1 => \^axis_tvalid\,
      O => \buffers[31]_i_2_n_0\
    );
\buffers[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^axis_tdata\(0),
      O => \buffers[3]_i_2_n_0\
    );
\buffers_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffers[31]_i_2_n_0\,
      D => \buffers_reg[3]_i_1_n_7\,
      Q => \^axis_tdata\(0),
      R => clear
    );
\buffers_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffers[31]_i_2_n_0\,
      D => \buffers_reg[11]_i_1_n_5\,
      Q => \^axis_tdata\(10),
      R => clear
    );
\buffers_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffers[31]_i_2_n_0\,
      D => \buffers_reg[11]_i_1_n_4\,
      Q => \^axis_tdata\(11),
      R => clear
    );
\buffers_reg[11]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \buffers_reg[7]_i_1_n_0\,
      CO(3) => \buffers_reg[11]_i_1_n_0\,
      CO(2) => \buffers_reg[11]_i_1_n_1\,
      CO(1) => \buffers_reg[11]_i_1_n_2\,
      CO(0) => \buffers_reg[11]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \buffers_reg[11]_i_1_n_4\,
      O(2) => \buffers_reg[11]_i_1_n_5\,
      O(1) => \buffers_reg[11]_i_1_n_6\,
      O(0) => \buffers_reg[11]_i_1_n_7\,
      S(3 downto 0) => \^axis_tdata\(11 downto 8)
    );
\buffers_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffers[31]_i_2_n_0\,
      D => \buffers_reg[15]_i_1_n_7\,
      Q => \^axis_tdata\(12),
      R => clear
    );
\buffers_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffers[31]_i_2_n_0\,
      D => \buffers_reg[15]_i_1_n_6\,
      Q => \^axis_tdata\(13),
      R => clear
    );
\buffers_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffers[31]_i_2_n_0\,
      D => \buffers_reg[15]_i_1_n_5\,
      Q => \^axis_tdata\(14),
      R => clear
    );
\buffers_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffers[31]_i_2_n_0\,
      D => \buffers_reg[15]_i_1_n_4\,
      Q => \^axis_tdata\(15),
      R => clear
    );
\buffers_reg[15]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \buffers_reg[11]_i_1_n_0\,
      CO(3) => \buffers_reg[15]_i_1_n_0\,
      CO(2) => \buffers_reg[15]_i_1_n_1\,
      CO(1) => \buffers_reg[15]_i_1_n_2\,
      CO(0) => \buffers_reg[15]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \buffers_reg[15]_i_1_n_4\,
      O(2) => \buffers_reg[15]_i_1_n_5\,
      O(1) => \buffers_reg[15]_i_1_n_6\,
      O(0) => \buffers_reg[15]_i_1_n_7\,
      S(3 downto 0) => \^axis_tdata\(15 downto 12)
    );
\buffers_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffers[31]_i_2_n_0\,
      D => \buffers_reg[19]_i_1_n_7\,
      Q => \^axis_tdata\(16),
      R => clear
    );
\buffers_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffers[31]_i_2_n_0\,
      D => \buffers_reg[19]_i_1_n_6\,
      Q => \^axis_tdata\(17),
      R => clear
    );
\buffers_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffers[31]_i_2_n_0\,
      D => \buffers_reg[19]_i_1_n_5\,
      Q => \^axis_tdata\(18),
      R => clear
    );
\buffers_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffers[31]_i_2_n_0\,
      D => \buffers_reg[19]_i_1_n_4\,
      Q => \^axis_tdata\(19),
      R => clear
    );
\buffers_reg[19]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \buffers_reg[15]_i_1_n_0\,
      CO(3) => \buffers_reg[19]_i_1_n_0\,
      CO(2) => \buffers_reg[19]_i_1_n_1\,
      CO(1) => \buffers_reg[19]_i_1_n_2\,
      CO(0) => \buffers_reg[19]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \buffers_reg[19]_i_1_n_4\,
      O(2) => \buffers_reg[19]_i_1_n_5\,
      O(1) => \buffers_reg[19]_i_1_n_6\,
      O(0) => \buffers_reg[19]_i_1_n_7\,
      S(3 downto 0) => \^axis_tdata\(19 downto 16)
    );
\buffers_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffers[31]_i_2_n_0\,
      D => \buffers_reg[3]_i_1_n_6\,
      Q => \^axis_tdata\(1),
      R => clear
    );
\buffers_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffers[31]_i_2_n_0\,
      D => \buffers_reg[23]_i_1_n_7\,
      Q => \^axis_tdata\(20),
      R => clear
    );
\buffers_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffers[31]_i_2_n_0\,
      D => \buffers_reg[23]_i_1_n_6\,
      Q => \^axis_tdata\(21),
      R => clear
    );
\buffers_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffers[31]_i_2_n_0\,
      D => \buffers_reg[23]_i_1_n_5\,
      Q => \^axis_tdata\(22),
      R => clear
    );
\buffers_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffers[31]_i_2_n_0\,
      D => \buffers_reg[23]_i_1_n_4\,
      Q => \^axis_tdata\(23),
      R => clear
    );
\buffers_reg[23]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \buffers_reg[19]_i_1_n_0\,
      CO(3) => \buffers_reg[23]_i_1_n_0\,
      CO(2) => \buffers_reg[23]_i_1_n_1\,
      CO(1) => \buffers_reg[23]_i_1_n_2\,
      CO(0) => \buffers_reg[23]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \buffers_reg[23]_i_1_n_4\,
      O(2) => \buffers_reg[23]_i_1_n_5\,
      O(1) => \buffers_reg[23]_i_1_n_6\,
      O(0) => \buffers_reg[23]_i_1_n_7\,
      S(3 downto 0) => \^axis_tdata\(23 downto 20)
    );
\buffers_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffers[31]_i_2_n_0\,
      D => \buffers_reg[27]_i_1_n_7\,
      Q => \^axis_tdata\(24),
      R => clear
    );
\buffers_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffers[31]_i_2_n_0\,
      D => \buffers_reg[27]_i_1_n_6\,
      Q => \^axis_tdata\(25),
      R => clear
    );
\buffers_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffers[31]_i_2_n_0\,
      D => \buffers_reg[27]_i_1_n_5\,
      Q => \^axis_tdata\(26),
      R => clear
    );
\buffers_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffers[31]_i_2_n_0\,
      D => \buffers_reg[27]_i_1_n_4\,
      Q => \^axis_tdata\(27),
      R => clear
    );
\buffers_reg[27]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \buffers_reg[23]_i_1_n_0\,
      CO(3) => \buffers_reg[27]_i_1_n_0\,
      CO(2) => \buffers_reg[27]_i_1_n_1\,
      CO(1) => \buffers_reg[27]_i_1_n_2\,
      CO(0) => \buffers_reg[27]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \buffers_reg[27]_i_1_n_4\,
      O(2) => \buffers_reg[27]_i_1_n_5\,
      O(1) => \buffers_reg[27]_i_1_n_6\,
      O(0) => \buffers_reg[27]_i_1_n_7\,
      S(3 downto 0) => \^axis_tdata\(27 downto 24)
    );
\buffers_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffers[31]_i_2_n_0\,
      D => \buffers_reg[31]_i_3_n_7\,
      Q => \^axis_tdata\(28),
      R => clear
    );
\buffers_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffers[31]_i_2_n_0\,
      D => \buffers_reg[31]_i_3_n_6\,
      Q => \^axis_tdata\(29),
      R => clear
    );
\buffers_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffers[31]_i_2_n_0\,
      D => \buffers_reg[3]_i_1_n_5\,
      Q => \^axis_tdata\(2),
      R => clear
    );
\buffers_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffers[31]_i_2_n_0\,
      D => \buffers_reg[31]_i_3_n_5\,
      Q => \^axis_tdata\(30),
      R => clear
    );
\buffers_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffers[31]_i_2_n_0\,
      D => \buffers_reg[31]_i_3_n_4\,
      Q => \^axis_tdata\(31),
      R => clear
    );
\buffers_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \buffers_reg[27]_i_1_n_0\,
      CO(3) => \NLW_buffers_reg[31]_i_3_CO_UNCONNECTED\(3),
      CO(2) => \buffers_reg[31]_i_3_n_1\,
      CO(1) => \buffers_reg[31]_i_3_n_2\,
      CO(0) => \buffers_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \buffers_reg[31]_i_3_n_4\,
      O(2) => \buffers_reg[31]_i_3_n_5\,
      O(1) => \buffers_reg[31]_i_3_n_6\,
      O(0) => \buffers_reg[31]_i_3_n_7\,
      S(3 downto 0) => \^axis_tdata\(31 downto 28)
    );
\buffers_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffers[31]_i_2_n_0\,
      D => \buffers_reg[3]_i_1_n_4\,
      Q => \^axis_tdata\(3),
      R => clear
    );
\buffers_reg[3]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \buffers_reg[3]_i_1_n_0\,
      CO(2) => \buffers_reg[3]_i_1_n_1\,
      CO(1) => \buffers_reg[3]_i_1_n_2\,
      CO(0) => \buffers_reg[3]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \buffers_reg[3]_i_1_n_4\,
      O(2) => \buffers_reg[3]_i_1_n_5\,
      O(1) => \buffers_reg[3]_i_1_n_6\,
      O(0) => \buffers_reg[3]_i_1_n_7\,
      S(3 downto 1) => \^axis_tdata\(3 downto 1),
      S(0) => \buffers[3]_i_2_n_0\
    );
\buffers_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffers[31]_i_2_n_0\,
      D => \buffers_reg[7]_i_1_n_7\,
      Q => \^axis_tdata\(4),
      R => clear
    );
\buffers_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffers[31]_i_2_n_0\,
      D => \buffers_reg[7]_i_1_n_6\,
      Q => \^axis_tdata\(5),
      R => clear
    );
\buffers_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffers[31]_i_2_n_0\,
      D => \buffers_reg[7]_i_1_n_5\,
      Q => \^axis_tdata\(6),
      R => clear
    );
\buffers_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffers[31]_i_2_n_0\,
      D => \buffers_reg[7]_i_1_n_4\,
      Q => \^axis_tdata\(7),
      R => clear
    );
\buffers_reg[7]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \buffers_reg[3]_i_1_n_0\,
      CO(3) => \buffers_reg[7]_i_1_n_0\,
      CO(2) => \buffers_reg[7]_i_1_n_1\,
      CO(1) => \buffers_reg[7]_i_1_n_2\,
      CO(0) => \buffers_reg[7]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \buffers_reg[7]_i_1_n_4\,
      O(2) => \buffers_reg[7]_i_1_n_5\,
      O(1) => \buffers_reg[7]_i_1_n_6\,
      O(0) => \buffers_reg[7]_i_1_n_7\,
      S(3 downto 0) => \^axis_tdata\(7 downto 4)
    );
\buffers_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffers[31]_i_2_n_0\,
      D => \buffers_reg[11]_i_1_n_7\,
      Q => \^axis_tdata\(8),
      R => clear
    );
\buffers_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => \buffers[31]_i_2_n_0\,
      D => \buffers_reg[11]_i_1_n_6\,
      Q => \^axis_tdata\(9),
      R => clear
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity rtos_sys_white_0_0 is
  port (
    clk : in STD_LOGIC;
    enable : in STD_LOGIC;
    axis_tready : in STD_LOGIC;
    axis_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_tkeep : out STD_LOGIC_VECTOR ( 7 downto 0 );
    axis_tvalid : out STD_LOGIC;
    axis_tlast : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of rtos_sys_white_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of rtos_sys_white_0_0 : entity is "rtos_sys_white_0_0,white,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of rtos_sys_white_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of rtos_sys_white_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of rtos_sys_white_0_0 : entity is "white,Vivado 2024.2";
end rtos_sys_white_0_0;

architecture STRUCTURE of rtos_sys_white_0_0 is
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
  axis_tkeep(7) <= \<const0>\;
  axis_tkeep(6) <= \<const0>\;
  axis_tkeep(5) <= \<const0>\;
  axis_tkeep(4) <= \<const0>\;
  axis_tkeep(3) <= \<const1>\;
  axis_tkeep(2) <= \<const1>\;
  axis_tkeep(1) <= \<const1>\;
  axis_tkeep(0) <= \<const1>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.rtos_sys_white_0_0_white
     port map (
      axis_tdata(31 downto 0) => axis_tdata(31 downto 0),
      axis_tlast => axis_tlast,
      axis_tready => axis_tready,
      axis_tvalid => axis_tvalid,
      clk => clk,
      enable => enable
    );
end STRUCTURE;

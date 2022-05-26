-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Wed Feb 24 22:47:53 2021
-- Host        : LAPTOP-1UUCFNTB running 64-bit major release  (build 9200)
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               C:/Users/Camil/OneDrive/Escritorio/project_1/project_1.sim/sim_1/synth/func/xsim/test_func_synth.vhd
-- Design      : pro
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity pro is
  port (
    ck : in STD_LOGIC;
    reset : in STD_LOGIC;
    frecuencia : in STD_LOGIC_VECTOR ( 1 downto 0 );
    salida : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of pro : entity is true;
end pro;

architecture STRUCTURE of pro is
  signal ck_IBUF : STD_LOGIC;
  signal ck_IBUF_BUFG : STD_LOGIC;
  signal clk : STD_LOGIC;
  signal \conta[7]_i_2_n_0\ : STD_LOGIC;
  signal \divisor[7]_i_2_n_0\ : STD_LOGIC;
  signal \divisor_reg_n_0_[0]\ : STD_LOGIC;
  signal \divisor_reg_n_0_[1]\ : STD_LOGIC;
  signal \divisor_reg_n_0_[2]\ : STD_LOGIC;
  signal \divisor_reg_n_0_[3]\ : STD_LOGIC;
  signal \divisor_reg_n_0_[4]\ : STD_LOGIC;
  signal \divisor_reg_n_0_[5]\ : STD_LOGIC;
  signal \divisor_reg_n_0_[6]\ : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \plusOp__0\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal reset_IBUF : STD_LOGIC;
  signal salida_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \conta[1]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \conta[2]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \conta[3]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \conta[4]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \conta[6]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \conta[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \divisor[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \divisor[2]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \divisor[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \divisor[4]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \divisor[6]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \divisor[7]_i_1\ : label is "soft_lutpair2";
begin
ck_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => ck_IBUF,
      O => ck_IBUF_BUFG
    );
ck_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => ck,
      O => ck_IBUF
    );
\conta[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => salida_OBUF(0),
      O => \plusOp__0\(0)
    );
\conta[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => salida_OBUF(0),
      I1 => salida_OBUF(1),
      O => \plusOp__0\(1)
    );
\conta[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => salida_OBUF(0),
      I1 => salida_OBUF(1),
      I2 => salida_OBUF(2),
      O => \plusOp__0\(2)
    );
\conta[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => salida_OBUF(1),
      I1 => salida_OBUF(0),
      I2 => salida_OBUF(2),
      I3 => salida_OBUF(3),
      O => \plusOp__0\(3)
    );
\conta[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => salida_OBUF(2),
      I1 => salida_OBUF(0),
      I2 => salida_OBUF(1),
      I3 => salida_OBUF(3),
      I4 => salida_OBUF(4),
      O => \plusOp__0\(4)
    );
\conta[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => salida_OBUF(3),
      I1 => salida_OBUF(1),
      I2 => salida_OBUF(0),
      I3 => salida_OBUF(2),
      I4 => salida_OBUF(4),
      I5 => salida_OBUF(5),
      O => \plusOp__0\(5)
    );
\conta[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \conta[7]_i_2_n_0\,
      I1 => salida_OBUF(6),
      O => \plusOp__0\(6)
    );
\conta[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \conta[7]_i_2_n_0\,
      I1 => salida_OBUF(6),
      I2 => salida_OBUF(7),
      O => \plusOp__0\(7)
    );
\conta[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => salida_OBUF(5),
      I1 => salida_OBUF(3),
      I2 => salida_OBUF(1),
      I3 => salida_OBUF(0),
      I4 => salida_OBUF(2),
      I5 => salida_OBUF(4),
      O => \conta[7]_i_2_n_0\
    );
\conta_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset_IBUF,
      D => \plusOp__0\(0),
      Q => salida_OBUF(0)
    );
\conta_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset_IBUF,
      D => \plusOp__0\(1),
      Q => salida_OBUF(1)
    );
\conta_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset_IBUF,
      D => \plusOp__0\(2),
      Q => salida_OBUF(2)
    );
\conta_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset_IBUF,
      D => \plusOp__0\(3),
      Q => salida_OBUF(3)
    );
\conta_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset_IBUF,
      D => \plusOp__0\(4),
      Q => salida_OBUF(4)
    );
\conta_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset_IBUF,
      D => \plusOp__0\(5),
      Q => salida_OBUF(5)
    );
\conta_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset_IBUF,
      D => \plusOp__0\(6),
      Q => salida_OBUF(6)
    );
\conta_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      CLR => reset_IBUF,
      D => \plusOp__0\(7),
      Q => salida_OBUF(7)
    );
\divisor[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \divisor_reg_n_0_[0]\,
      O => plusOp(0)
    );
\divisor[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \divisor_reg_n_0_[0]\,
      I1 => \divisor_reg_n_0_[1]\,
      O => plusOp(1)
    );
\divisor[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \divisor_reg_n_0_[0]\,
      I1 => \divisor_reg_n_0_[1]\,
      I2 => \divisor_reg_n_0_[2]\,
      O => plusOp(2)
    );
\divisor[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \divisor_reg_n_0_[1]\,
      I1 => \divisor_reg_n_0_[0]\,
      I2 => \divisor_reg_n_0_[2]\,
      I3 => \divisor_reg_n_0_[3]\,
      O => plusOp(3)
    );
\divisor[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFF8000"
    )
        port map (
      I0 => \divisor_reg_n_0_[2]\,
      I1 => \divisor_reg_n_0_[0]\,
      I2 => \divisor_reg_n_0_[1]\,
      I3 => \divisor_reg_n_0_[3]\,
      I4 => \divisor_reg_n_0_[4]\,
      O => plusOp(4)
    );
\divisor[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \divisor_reg_n_0_[3]\,
      I1 => \divisor_reg_n_0_[1]\,
      I2 => \divisor_reg_n_0_[0]\,
      I3 => \divisor_reg_n_0_[2]\,
      I4 => \divisor_reg_n_0_[4]\,
      I5 => \divisor_reg_n_0_[5]\,
      O => plusOp(5)
    );
\divisor[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \divisor[7]_i_2_n_0\,
      I1 => \divisor_reg_n_0_[6]\,
      O => plusOp(6)
    );
\divisor[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \divisor[7]_i_2_n_0\,
      I1 => \divisor_reg_n_0_[6]\,
      I2 => clk,
      O => plusOp(7)
    );
\divisor[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \divisor_reg_n_0_[5]\,
      I1 => \divisor_reg_n_0_[3]\,
      I2 => \divisor_reg_n_0_[1]\,
      I3 => \divisor_reg_n_0_[0]\,
      I4 => \divisor_reg_n_0_[2]\,
      I5 => \divisor_reg_n_0_[4]\,
      O => \divisor[7]_i_2_n_0\
    );
\divisor_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ck_IBUF_BUFG,
      CE => '1',
      D => plusOp(0),
      Q => \divisor_reg_n_0_[0]\,
      R => '0'
    );
\divisor_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ck_IBUF_BUFG,
      CE => '1',
      D => plusOp(1),
      Q => \divisor_reg_n_0_[1]\,
      R => '0'
    );
\divisor_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ck_IBUF_BUFG,
      CE => '1',
      D => plusOp(2),
      Q => \divisor_reg_n_0_[2]\,
      R => '0'
    );
\divisor_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ck_IBUF_BUFG,
      CE => '1',
      D => plusOp(3),
      Q => \divisor_reg_n_0_[3]\,
      R => '0'
    );
\divisor_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ck_IBUF_BUFG,
      CE => '1',
      D => plusOp(4),
      Q => \divisor_reg_n_0_[4]\,
      R => '0'
    );
\divisor_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ck_IBUF_BUFG,
      CE => '1',
      D => plusOp(5),
      Q => \divisor_reg_n_0_[5]\,
      R => '0'
    );
\divisor_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ck_IBUF_BUFG,
      CE => '1',
      D => plusOp(6),
      Q => \divisor_reg_n_0_[6]\,
      R => '0'
    );
\divisor_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ck_IBUF_BUFG,
      CE => '1',
      D => plusOp(7),
      Q => clk,
      R => '0'
    );
reset_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => reset,
      O => reset_IBUF
    );
\salida_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => salida_OBUF(0),
      O => salida(0)
    );
\salida_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => salida_OBUF(1),
      O => salida(1)
    );
\salida_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => salida_OBUF(2),
      O => salida(2)
    );
\salida_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => salida_OBUF(3),
      O => salida(3)
    );
\salida_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => salida_OBUF(4),
      O => salida(4)
    );
\salida_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => salida_OBUF(5),
      O => salida(5)
    );
\salida_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => salida_OBUF(6),
      O => salida(6)
    );
\salida_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => salida_OBUF(7),
      O => salida(7)
    );
end STRUCTURE;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.09.2020 20:26:54
-- Design Name: 
-- Module Name: Sumador_4_bits - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Sumador_4_bits is
Port ( X1: in std_logic_vector(3 downto 0);
           Y1: in STD_LOGIC_vector(3 downto 0);
           S1: out STD_LOGIC_vector(3 downto 0);
           Cen: in std_logic;
           Cout1: out STD_LOGIC);
end Sumador_4_bits;

architecture Behavioral of Sumador_4_bits is
component fulladder
    Port ( X : in STD_LOGIC;
           Y : in STD_LOGIC;
           S : out STD_LOGIC;
           Cin : in STD_LOGIC;
           Cout : out STD_LOGIC);
end component;

signal c1,c2,c3:std_logic;

begin
F1:fulladder Port Map(X=>X1(0),Y=>Y1(0),S=>S1(0),Cin=>Cen,Cout=>c1);
F2:fulladder Port Map(X=>X1(1),Y=>Y1(1),S=>S1(1),Cin=>c1,Cout=>c2);
F3:fulladder Port Map(X=>X1(2),Y=>Y1(2),S=>S1(2),Cin=>c2,Cout=>c3);
F4:fulladder Port Map(X=>X1(3),Y=>Y1(3),S=>S1(3),Cin=>c3,Cout=>Cout1);

end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.09.2020 20:26:05
-- Design Name: 
-- Module Name: SumBCD - Behavioral
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


entity SumBCD is
Port ( X: in std_logic_vector(3 downto 0);
           Y: in std_logic_vector(3 downto 0); 
           S: out std_logic_vector(3 downto 0);
           Cin: in std_logic;
           Cout: out std_logic);
end SumBCD;

architecture Behavioral of SumBCD is

component Sumador_4_bits
Port ( X1 : in std_logic_vector(3 downto 0);
       Y1 : in STD_LOGIC_vector(3 downto 0);
       S1 : out STD_LOGIC_vector(3 downto 0);
       Cen: in std_logic;
       Cout1 : out STD_LOGIC);
end component;  

component Mux_2a1_4bits
    Port ( Se : in STD_LOGIC;
           F : out STD_LOGIC_vector(3 downto 0));
end component;
 
component Comparador
Port ( Num : in STD_LOGIC_vector(3 downto 0);
       Cent : in STD_LOGIC;
       Sal : out STD_LOGIC);
       
end component;    

signal c1,Selector,c2:std_logic;
signal Sal1,SalMux:std_logic_vector(3 downto 0);

begin

PrimerSumador: Sumador_4_bits Port Map(X1=>X,Y1=>Y,S1=>Sal1,Cen=>Cin,Cout1=>c1);

Comparar: Comparador Port Map(Num=>Sal1,Cent=>c1,Sal=>Selector);

Mux: Mux_2a1_4bits Port Map(Se=>Selector,F=>SalMux);

SegundoSumador: Sumador_4_bits Port Map(X1=>SalMux,Y1=>Sal1,S1=>S,Cen=>'0',Cout1=>c2);

Cout<=(c1 or c2);

end Behavioral;

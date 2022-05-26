----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.09.2020 20:38:48
-- Design Name: 
-- Module Name: SumBCD_tb - Behavioral
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


entity SumBCD_tb is
--  Port ( );
end SumBCD_tb;

architecture Behavioral of SumBCD_tb is
component SumBCD
    Port ( X: in std_logic_vector(3 downto 0);
           Y: in std_logic_vector(3 downto 0); 
           S: out std_logic_vector(3 downto 0);
           Cin: in std_logic;
           Cout: out std_logic);
end COMPONENT;
signal X,Y: std_logic_vector(3 downto 0):="0000";
signal S: std_logic_vector(3 downto 0);
signal Cin: std_logic:='0';
signal Cout: std_logic;
begin
uut: SumBCD Port Map(X=>X,S=>S,Y=>Y,Cin=>Cin,Cout=>Cout);
estimulos: process
    begin
        X<="0011";
        Y<="0100";
        wait for 1 ms;
        Cin<='1';
        wait for 1 ms;
        Cin<='0';
        X<="1000";
        Y<="0001";
        wait for 1 ms;
        Cin<='1';
        wait for 1 ms;
        Cin<='0';
        X<="1000";
        Y<="0011";
        wait for 1 ms;
        Cin<='1';
        wait;
end process;    
end Behavioral;

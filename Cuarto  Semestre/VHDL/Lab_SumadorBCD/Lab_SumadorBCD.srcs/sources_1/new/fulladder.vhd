----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.09.2020 20:27:23
-- Design Name: 
-- Module Name: fulladder - Behavioral
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

entity fulladder is
 Port ( X : in STD_LOGIC;
        Y : in STD_LOGIC;
        S : out STD_LOGIC;
        Cin : in STD_LOGIC;
        Cout : out STD_LOGIC);
end fulladder;

architecture Behavioral of fulladder is
begin
S<=X XOR Y XOR Cin;
Cout<=(X AND Y)OR(X AND Cin)OR(Y AND Cin);
end Behavioral;

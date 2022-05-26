----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.09.2020 20:28:19
-- Design Name: 
-- Module Name: Mux_2a1_4bits - Behavioral
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Mux_2a1_4bits is
Port ( Se : in STD_LOGIC;
           F : out STD_LOGIC_vector(3 downto 0));
end Mux_2a1_4bits;

architecture Behavioral of Mux_2a1_4bits is

begin
process (Se)
    begin
        if (Se='1') then
            F<="0110";    
        else 
            F<="0000";
        end if;
end process;    

end Behavioral;

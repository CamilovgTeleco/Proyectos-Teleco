
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity LogicExtender is
    Port ( a1 : in STD_LOGIC;
           b1 : in STD_LOGIC;
           selector1 : in STD_LOGIC_vector(2 downto 0);
           salida1 : out STD_LOGIC);
end LogicExtender;

architecture Behavioral of LogicExtender is

begin
process(selector1,a1,b1)
begin
    if(selector1="101") then
        salida1<=not a1; 
    elsif(selector1="110") then
        salida1<=a1 or b1;
    elsif(selector1="111") then
        salida1<=a1 and b1;
    else
        salida1<=a1; 
    end if;
end process;
end Behavioral;

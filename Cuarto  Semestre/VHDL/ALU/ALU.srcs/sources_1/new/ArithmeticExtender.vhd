
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ArithmeticExtender is
    Port ( b2 : in STD_LOGIC;
           selector2 : in STD_LOGIC_vector(2 downto 0);
           salida2 : out STD_LOGIC);
end ArithmeticExtender;

architecture Behavioral of ArithmeticExtender is

begin
process (selector2,b2)
begin
    if (selector2="000") then
        salida2<=not b2;
    elsif (selector2="001") then
        salida2<=b2;
    elsif (selector2="011") then 
        salida2<='1';
     else 
        salida2<='0';
     end if;
end process;
end Behavioral;


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Comparador is
Port ( Num : in STD_LOGIC_vector(3 downto 0);
           Cent : in STD_LOGIC;
           Sal : out STD_LOGIC);
end Comparador;
architecture Behavioral of Comparador is
begin
process (Num,Cent)
    begin
        if (Num>"1001" or Cent='1') then
            Sal<='1';
        else
            Sal<='0';
        end if;
    end process; 
end Behavioral;

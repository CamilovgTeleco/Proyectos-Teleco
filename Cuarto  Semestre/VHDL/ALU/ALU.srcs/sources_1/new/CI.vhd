
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity CI is
    Port ( selector : in STD_LOGIC_vector(2 downto 0);
           salida : out STD_LOGIC);
end CI;

architecture Behavioral of CI is

begin
process (selector)
begin
    if (selector="010" or selector="000") then
        salida<='1';
    else
        salida<='0';
    end if;
end process;
end Behavioral;

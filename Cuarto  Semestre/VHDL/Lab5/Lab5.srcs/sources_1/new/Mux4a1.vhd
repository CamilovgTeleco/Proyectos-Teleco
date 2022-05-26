library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux4a1 is
    Port ( X0 : in STD_LOGIC_VECTOR (7 downto 0);
           X1 : in STD_LOGIC_VECTOR (7 downto 0);
           X2 : in STD_LOGIC_VECTOR (7 downto 0);
           X3 : in STD_LOGIC_VECTOR (7 downto 0);
           So : in STD_LOGIC_VECTOR (1 downto 0);
           Salida : out STD_LOGIC_VECTOR (7 downto 0));
end Mux4a1;

architecture Behavioral of Mux4a1 is

begin

process(So,X0,X1,X2,X3)
    begin
        if(So="00")then
            Salida<=X0; 
        elsif(So="01")then
            Salida<=X1;
        elsif(So<="10")then
            Salida<=X2;
        else
            Salida<=X3;
        end if;
end process;
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Registro is
    Port ( Do : in STD_LOGIC_VECTOR (7 downto 0);
           Qo : out STD_LOGIC_VECTOR (7 downto 0);
           Ck : in STD_LOGIC;
           R : in STD_LOGIC);
end Registro;

architecture Behavioral of Registro is

begin

process(R,Ck)
    begin
    if (R='1') then
        Qo<=(others=>'0');
    elsif (rising_edge (Ck))then
        Qo<=Do;
     end if;
end process;
end Behavioral;

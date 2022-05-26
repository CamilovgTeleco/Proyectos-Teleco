library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
use IEEE.std_logic_unsigned.all;

entity pro is
    Port ( ck : in STD_LOGIC;
           reset : in STD_LOGIC;
           frecuencia: in std_logic_vector(1 downto 0);
           salida: out std_logic_vector(7 downto 0));
end pro;

architecture Behavioral of pro is

    signal conta: std_logic_vector(7 downto 0);
    signal divisor: std_logic_vector(7 downto 0);
    signal clk_int: std_logic;
    
begin

 process (ck)
 begin
    if rising_edge(ck) then 
        divisor<=divisor +1;
    end if;      
 
 end process;
 
clk_int <= divisor(7);
  
 process(clk_int,reset)
    begin
        if reset = '1' then
            conta<="00000000";
        elsif rising_edge(clk_int) then
           conta<=conta+1;
        end if;
 end process;
 
 salida<=conta;
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity test is
--  Port ( );
end test;

architecture Behavioral of test is

component pro
    Port ( ck : in STD_LOGIC;
           reset : in STD_LOGIC;
           frecuencia : in std_logic_vector(1 downto 0);
           salida: out std_logic_vector(7 downto 0));
end component;

    signal salida: std_logic_vector(7 downto 0);
    signal ck,reset: std_logic;
    signal frecuencia:std_logic_vector(1 downto 0):="00";
    
begin

UTT: pro port map( salida=>salida,
                    ck=>ck,
                    reset=>reset,
                    frecuencia=>frecuencia);

process
begin
    ck<='1';
    wait for 10 ms;
    ck<='0';
    wait for 10 ms;
    
end process;

process
begin 
    reset<='1';
    wait for 15 ms;
    reset<='0';
    wait;
    
end process;
end Behavioral;

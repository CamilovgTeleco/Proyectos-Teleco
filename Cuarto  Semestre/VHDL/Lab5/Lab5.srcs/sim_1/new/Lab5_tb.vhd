library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Lab5_tb is

end Lab5_tb;

architecture Behavioral of Lab5_tb is
component lab5
    Port ( D : in STD_LOGIC_VECTOR (7 downto 0);
           Q : out STD_LOGIC_VECTOR (7 downto 0);
           S_I: in STD_LOGIC;
           S : in STD_LOGIC_VECTOR (1 downto 0);
           Reset : in STD_LOGIC;
           Clock : in STD_LOGIC);
end component;

signal D,Q: STD_LOGIC_VECTOR (7 downto 0);
Signal S_I,Reset,Clock:STD_LOGIC;
signal S:STD_LOGIC_VECTOR (1 downto 0);

begin

uut: lab5 port map(d=>d,q=>q,S_I=>S_I,s=>s,reset=>reset,clock=>clock);

clk: process
    begin   
        clock<='0';
        wait for 1 ms;
        clock<='1';
        wait for 1 ms;
end process;

res: process
    begin
        reset<='1';
        wait for 1.5 ms;
        reset<='0';
        wait;
    end process;
    
casos: process
    begin
        s<="01";
        D<=(others=>'0');
        S_I<='1';
        wait for 2.5 ms;
        S_I<='0';
        wait for 2 ms;
        S_I<='1';
        wait for 4 ms;
        S_I<='0';
        wait for 4 ms;
        S_I<='1';
        wait for 2 ms;
        S_I<='0';
        wait for 2 ms;
        S_I<='1';
        wait for 4 ms;
        S_I<='0';
        wait for 2 ms;
        S_I<='1';
        wait;
     end process;
end Behavioral;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity lab5 is
    Port ( D : in STD_LOGIC_VECTOR (7 downto 0);
           Q : out STD_LOGIC_VECTOR (7 downto 0);
           S_I : in STD_LOGIC;
           S: in STD_LOGIC_VECTOR (1 downto 0);
           Reset : in STD_LOGIC;
           Clock : in STD_LOGIC);
end lab5;

architecture Behavioral of lab5 is

component Mux4a1
    Port ( X0 : in STD_LOGIC_VECTOR (7 downto 0);
           X1 : in STD_LOGIC_VECTOR (7 downto 0);
           X2 : in STD_LOGIC_VECTOR (7 downto 0);
           X3 : in STD_LOGIC_VECTOR (7 downto 0);
           So : in STD_LOGIC_VECTOR (1 downto 0);
           Salida : out STD_LOGIC_VECTOR (7 downto 0));
end component;

component Registro
    Port ( Do : in STD_LOGIC_VECTOR (7 downto 0);
           Qo : out STD_LOGIC_VECTOR (7 downto 0);
           Ck : in STD_LOGIC;
           R : in STD_LOGIC);
end component;

signal output,input,right,left: STD_LOGIC_VECTOR (7 downto 0);

begin

right<=(S_I&output(7 downto 1));
left<=(output(6 downto 0)&S_I);

r1: registro port map(Do=>Input,Qo=>output,Ck=>Clock,R=>Reset);
mux: mux4a1 port map(X0=>output,X1=>right,X2=>left,X3=>D,So=>S,Salida=>Input);

Q<=output;
end Behavioral;




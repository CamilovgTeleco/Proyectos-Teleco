library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ALU is
 Port (A: in std_logic_vector(3 downto 0);
       B: in std_logic_vector(3 downto 0);
       S: in std_logic_vector(2 downto 0);
       F: out std_logic_vector(3 downto 0);
       overflow: out std_logic;
       carry:out std_logic);
end ALU;

architecture Behavioral of ALU is
--Componentes-
component LogicExtender
    Port ( a1 : in STD_LOGIC;
           b1 : in STD_LOGIC;
           selector1 : in STD_LOGIC_vector(2 downto 0);
           salida1 : out STD_LOGIC);
end component;

component ArithmeticExtender
    Port ( b2 : in STD_LOGIC;
           selector2 : in STD_LOGIC_vector(2 downto 0);
           salida2 : out STD_LOGIC);
end component;

component FullAdder
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           cin : in STD_LOGIC;
           cout : out STD_LOGIC;
           s3 : out STD_LOGIC);
end component;
--Señales-
signal c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,CI:std_logic;
begin
--Descripción CI--
process(S)
begin
    if (S="000" or S="010") then
        CI<='1';
    else
        CI<='0';
    end if;
end process;
--Bloques lógicos y aritméticos---
LE1: LogicExtender Port Map(a1=>A(0),b1=>B(0),selector1=>S,salida1=>c1);
AE1: ArithmeticExtender Port Map(b2=>B(0),selector2=>S,salida2=>c2);

LE2: LogicExtender Port Map(a1=>A(1),b1=>B(1),selector1=>S,salida1=>c3);
AE2: ArithmeticExtender Port Map(b2=>B(1),selector2=>S,salida2=>c4);

LE3: LogicExtender Port Map(a1=>A(2),b1=>B(2),selector1=>S,salida1=>c5);
AE3: ArithmeticExtender Port Map(b2=>B(2),selector2=>S,salida2=>c6);

LE4: LogicExtender Port Map(a1=>A(3),b1=>B(3),selector1=>S,salida1=>c7);
AE4: ArithmeticExtender Port Map(b2=>B(3),selector2=>S,salida2=>c8);
--FullAdders---
FA1: FullAdder Port Map(x=>c1,y=>c2,cin=>CI,cout=>c9,s3=>F(0));
FA2: FullAdder Port Map(x=>c3,y=>c4,cin=>c9,cout=>c10,s3=>F(1));
FA3: FullAdder Port Map(x=>c5,y=>c6,cin=>c10,cout=>c11,s3=>F(2));
FA4: FullAdder Port Map(x=>c7,y=>c8,cin=>c11,cout=>c12,s3=>F(3));
--Overflow---
overflow<=c12 xor c11;
--Carry--
carry<=c12;
end Behavioral;
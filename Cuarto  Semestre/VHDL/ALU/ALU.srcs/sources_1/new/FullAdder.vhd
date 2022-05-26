
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity FullAdder is
    Port ( x : in STD_LOGIC;
           y : in STD_LOGIC;
           cin : in STD_LOGIC;
           cout : out STD_LOGIC;
           s3 : out STD_LOGIC);
end FullAdder;

architecture Behavioral of FullAdder is

begin
s3<= x xor (y xor cin);
cout<=(y and cin)or(x and y)or(x and cin);
end Behavioral;

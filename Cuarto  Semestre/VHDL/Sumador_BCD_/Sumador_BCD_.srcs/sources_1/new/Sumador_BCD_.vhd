
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Sumador_BCD is
    Port ( x : in std_logic_vector(3 downto 0);
           y : in STD_LOGIC_vector(3 downto 0);
           s : out STD_LOGIC_vector(3 downto 0);
           cin : in STD_LOGIC;
           cout : out STD_LOGIC);
end Sumador_BCD;

architecture Behavioral of Sumador_BCD is
signal c0,c1,c2,c3,c4,c5,c6,c7,c8: std_logic;
signal salida,ajuste: STD_LOGIC_vector(3 downto 0);
begin
--------PRIMER SUMADOR ----------
---Primer bit----
salida(0)<=x(0) xor (y(0)xor cin);
c0<=( y(0) and cin )or( x(0) and y(0))or( x(0) and cin );
---Segundo bit----
salida(1)<=x(1) xor (y(1)xor c0);
c1<=( y(1) and c0 )or( x(1) and y(1))or( x(1) and c0 );
---Tercer bit----
salida(2)<=x(2) xor (y(2)xor c1);
c2<=( y(2) and c1 )or( x(2) and y(2))or( x(2) and c1 );
---Cuarto bit----
salida(3)<=x(3) xor (y(3)xor c2);
c3<=( y(3) and c2 )or( x(3) and y(3))or( x(3) and c2 );
---------------Comparación/Ajuste-------------------
process(salida,c3)
    begin
        if (salida>"1001" or c3='1') then
            ajuste<="0110";
        else 
            ajuste<="0000";
        end if;
end process;
---------------SEGUNDO SUMADOR------------------------
s(0)<=ajuste(0) xor (salida(0)xor '0');
c4<=( salida(0) and '0' )or( ajuste(0) and salida(0))or( ajuste(0) and '0' );
---Segundo bit----
s(1)<=ajuste(1) xor (salida(1)xor c4);
c5<=( salida(1) and c4 )or( ajuste(1) and salida(1))or( ajuste(1) and c4 );
---Tercer bit----
s(2)<=ajuste(2) xor (salida(2) xor c5);
c6<=( salida(2) and c5 )or( ajuste(2) and salida(2))or( ajuste(2) and c5 );
---Cuarto bit----
s(3)<=ajuste(3) xor (salida(3)xor c6);
c7<=( salida(3) and c6 )or( ajuste(3) and salida(3))or( ajuste(3) and c6 );
cout<=c3 or c7;
end Behavioral;

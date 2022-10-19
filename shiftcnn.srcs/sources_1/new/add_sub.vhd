library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity add_sub is
   port( switch: in std_logic;
          X,Y  : in std_logic_vector(15 downto 0);
          R  : out std_logic_vector(15 downto 0);
          Cout, Ovfl_detector : out std_logic);
end add_sub;

architecture struct of add_sub is
component One_bit_full_adder is
  port( A, B, Cin : in std_logic;
        sum, Cout : out std_logic);
end component;
signal C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11,C12,C13,C14,C15,C16: std_logic;
signal TEMP: std_logic_vector(15 downto 0);


begin
TEMP(0) <= X(0) xor Y(0);
TEMP(1) <= X(1) xor Y(1);
TEMP(2) <= X(2) xor Y(2);
TEMP(3) <= X(3) xor Y(3);
TEMP(4) <= X(4) xor Y(4);
TEMP(5) <= X(5) xor Y(5);
TEMP(6) <= X(6) xor Y(6);
TEMP(7) <= X(7) xor Y(7);

AS0:One_bit_full_adder port map(X(0),TEMP(0),switch, R(0),C1); 
AS1:One_bit_full_adder port map(X(1),TEMP(1),C1, R(1),C2); 
AS2:One_bit_full_adder port map(X(2),TEMP(2),C2, R(2),C3); 
AS3:One_bit_full_adder port map(X(3),TEMP(3),C3, R(3),C4); 
AS4:One_bit_full_adder port map(X(4),TEMP(4),C4, R(4),C5); 
AS5:One_bit_full_adder port map(X(5),TEMP(5),C5, R(5),C6); 
AS6:One_bit_full_adder port map(X(6),TEMP(6),C6, R(6),C7); 
AS7:One_bit_full_adder port map(X(7),TEMP(7),C7, R(7),C8); 
ovfl_detector <= C7 XOR C6 ;
Cout <= C7;
end struct;
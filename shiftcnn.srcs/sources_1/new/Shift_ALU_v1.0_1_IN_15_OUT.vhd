library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;

entity Shift_ALU is


generic ( 
     constant N: natural := 1  -- number of shited or rotated bits
    );


Port (
    INPUT: in  signed(3 downto 0); 
    OUTPUT1: out signed(7 downto 0);
    OUTPUT2: out signed(7 downto 0);
    OUTPUT3: out signed(7 downto 0);
    OUTPUT4: out signed(7 downto 0);
    OUTPUT5: out signed(7 downto 0);
    OUTPUT6: out signed(7 downto 0);
    OUTPUT7: out signed(7 downto 0);
    OUTPUT8: out signed(7 downto 0);
    OUTPUT9: out signed(7 downto 0);
    OUTPUT10: out signed(7 downto 0);
    OUTPUT11: out signed(7 downto 0);
    OUTPUT12: out signed(7 downto 0);
    OUTPUT13: out signed(7 downto 0);
    OUTPUT14: out signed(7 downto 0);
    OUTPUT15: out signed(7 downto 0)
    );
    
end Shift_ALU;

architecture Behavioral of Shift_ALU is
signal temp: signed(7 downto 0):=  "00000000";
signal temp2: signed(7 downto 0):= "00000000";
signal temp3: signed(7 downto 0):= "00000000";
signal temp4: signed(7 downto 0):= "00000000";
signal temp5: signed(7 downto 0):= "00000000";
signal temp6: signed(7 downto 0):= "00000000";
signal temp7: signed(7 downto 0):= "00000000";
signal temp8: signed(7 downto 0):= "00000000";

   begin  
    process is
    begin
   temp <=  signed(resize(INPUT,temp'length));
   temp2 <= shift_right(signed(temp), 1);
   temp3 <= shift_right(signed(temp2), 1);
   temp4 <= shift_right(signed(temp3), 1);
   temp5 <= shift_right(signed(temp4), 1);
   temp6 <= shift_right(signed(temp5), 1);
   temp7 <= shift_right(signed(temp6), 1);
   temp8 <= shift_right(signed(temp7), 1);
   end process;
   OUTPUT1 <= temp;
   OUTPUT2 <= -temp; 
   OUTPUT3 <=  temp2;
   OUTPUT4 <=  - temp2; 
   OUTPUT5 <=  temp3;
   OUTPUT6 <=  - temp3;
   OUTPUT7 <=  temp4;
   OUTPUT8 <=  - temp4; 
   OUTPUT9 <=  temp5;
   OUTPUT10 <=  - temp5; 
   OUTPUT11 <=  temp6;
   OUTPUT12 <=  - temp6;
   OUTPUT13 <=  temp7;
   OUTPUT14 <=  - temp7;
   OUTPUT15 <=  temp8; 

end Behavioral;

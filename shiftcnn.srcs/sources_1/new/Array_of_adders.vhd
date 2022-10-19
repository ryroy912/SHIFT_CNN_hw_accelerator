
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Array_of_adders is
port( switch: in std_logic;

      E1_OC1_C1_N1,E1_OC1_C2_N1,E1_OC1_C3_N1, E1_OC2_C1_N1,E1_OC2_C2_N1,E1_OC2_C3_N1 : in std_logic_vector(7 downto 0);
      E2_OC1_C1_N1,E2_OC1_C2_N1,E2_OC1_C3_N1, E2_OC2_C1_N1,E2_OC2_C2_N1,E2_OC2_C3_N1 : in std_logic_vector(7 downto 0);
      E3_OC1_C1_N1,E3_OC1_C2_N1,E3_OC1_C3_N1, E3_OC2_C1_N1,E3_OC2_C2_N1,E3_OC2_C3_N1 : in std_logic_vector(7 downto 0);
      E4_OC1_C1_N1,E4_OC1_C2_N1,E4_OC1_C3_N1, E4_OC2_C1_N1,E4_OC2_C2_N1,E4_OC2_C3_N1 : in std_logic_vector(7 downto 0);
      
      R_E1_N1_OC1,R_E1_N1_OC2  : inout std_logic_vector(7 downto 0);
      R_E2_N1_OC1,R_E2_N1_OC2  : inout std_logic_vector(7 downto 0);
      R_E3_N1_OC1,R_E3_N1_OC2  : inout std_logic_vector(7 downto 0);
      R_E4_N1_OC1,R_E4_N1_OC2  : inout std_logic_vector(7 downto 0);
      
      R1_E1_N1_OC1,R1_E1_N1_OC2  : out std_logic_vector(7 downto 0);
      R1_E2_N1_OC1,R1_E2_N1_OC2  : out std_logic_vector(7 downto 0);
      R1_E3_N1_OC1,R1_E3_N1_OC2  : out std_logic_vector(7 downto 0);
      R1_E4_N1_OC1,R1_E4_N1_OC2  : out std_logic_vector(7 downto 0);
  
      Cout, Ovfl_detector : out std_logic);
end Array_of_adders;

architecture Behavioral of Array_of_adders is
component add_sub is
  port( switch: in std_logic;
        X, Y :in std_logic_vector(15 downto 0);
        R: out std_logic_vector(15 downto 0);
        Cout, Ovfl_detector : out std_logic);
end component;

signal tempC10,tempC11,tempC20,tempC21,tempC30,tempC31,tempC40,tempC41: std_logic_vector(15 downto 0);

begin

--  adding channel 1 and 2 input-channels of all 8 terms (4 elements * 2 output channels)


AA0:add_sub port map('0',E1_OC1_C1_N1,E1_OC1_C2_N1,R_E1_N1_OC1,Cout,Ovfl_detector);
AA1:add_sub port map('0',E1_OC2_C1_N1,E1_OC2_C2_N1,R_E1_N1_OC2,Cout,Ovfl_detector);

AA2:add_sub port map('0',E2_OC1_C1_N1,E2_OC1_C2_N1,R_E2_N1_OC1,Cout,Ovfl_detector);
AA3:add_sub port map('0',E2_OC2_C1_N1,E2_OC2_C2_N1,R_E2_N1_OC2,Cout,Ovfl_detector);

AA4:add_sub port map('0',E3_OC1_C1_N1,E3_OC1_C2_N1,R_E3_N1_OC1,Cout,Ovfl_detector);
AA5:add_sub port map('0',E3_OC2_C1_N1,E3_OC2_C2_N1,R_E3_N1_OC2,Cout,Ovfl_detector);

AA6:add_sub port map('0',E4_OC1_C1_N1,E4_OC1_C2_N1,R_E4_N1_OC1,Cout,Ovfl_detector);
AA7:add_sub port map('0',E4_OC2_C1_N1,E4_OC2_C2_N1,R_E4_N1_OC2,Cout,Ovfl_detector);


--  adding input-channel 3 and sum of 1 and 2 of all 8 terms (4 elements * 2 output channels)

AA8:add_sub port map('0',R_E1_N1_OC1,E1_OC1_C3_N1,R_E4_N1_OC2,Cout,Ovfl_detector);
AA9:add_sub port map('0',R_E1_N1_OC2,E1_OC2_C3_N1,R_E4_N1_OC2,Cout,Ovfl_detector);

AA10:add_sub port map('0',R_E2_N1_OC1,E2_OC1_C3_N1,R_E4_N1_OC2,Cout,Ovfl_detector);
AA11:add_sub port map('0',R_E2_N1_OC2,E2_OC2_C3_N1,R_E4_N1_OC2,Cout,Ovfl_detector);

AA12:add_sub port map('0',R_E3_N1_OC1,E3_OC1_C3_N1,R_E4_N1_OC2,Cout,Ovfl_detector);
AA13:add_sub port map('0',R_E3_N1_OC2,E3_OC2_C3_N1,R_E4_N1_OC2,Cout,Ovfl_detector);

AA14:add_sub port map('0',R_E4_N1_OC1,E4_OC1_C3_N1,R_E4_N1_OC2,Cout,Ovfl_detector);
AA15:add_sub port map('0',R_E4_N1_OC2,E4_OC2_C3_N1,R_E4_N1_OC2,Cout,Ovfl_detector);


end Behavioral;

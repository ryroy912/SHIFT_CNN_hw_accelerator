
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Array_of_adders_interface is
port( switch: in std_logic;
      -- these are the 24 numbers that have to populated by the MUX twice (one by one for N=1 and N=2)
      E1_OC1_C1_N,E1_OC1_C2_N,E1_OC1_C3_N, E1_OC2_C1_N,E1_OC2_C2_N,E1_OC2_C3_N : in std_logic_vector(7 downto 0);
      E2_OC1_C1_N,E2_OC1_C2_N,E2_OC1_C3_N, E2_OC2_C1_N,E2_OC2_C2_N,E2_OC2_C3_N : in std_logic_vector(7 downto 0);
      E3_OC1_C1_N,E3_OC1_C2_N,E3_OC1_C3_N, E3_OC2_C1_N,E3_OC2_C2_N,E3_OC2_C3_N : in std_logic_vector(7 downto 0);
      E4_OC1_C1_N,E4_OC1_C2_N,E4_OC1_C3_N, E4_OC2_C1_N,E4_OC2_C2_N,E4_OC2_C3_N : in std_logic_vector(7 downto 0);
      
      R_00,R_01  : out std_logic_vector(7 downto 0);
      R_10,R_11  : out std_logic_vector(7 downto 0);
      R_20,R_21  : out std_logic_vector(7 downto 0);
      R_30,R_31  : out std_logic_vector(7 downto 0);
      
      Cout, Ovfl_detector : out std_logic);
end Array_of_adders_interface;

architecture Behavioral of Array_of_adders_interface is
component Array_of_adders is
  port( switch: in std_logic;
        E1_OC1_C1_N,E1_OC1_C2_N,E1_OC1_C3_N, E1_OC2_C1_N,E1_OC2_C2_N,E1_OC2_C3_N :in std_logic_vector(15 downto 0);
        E2_OC1_C1_N,E2_OC1_C2_N,E2_OC1_C3_N, E2_OC2_C1_N,E2_OC2_C2_N,E2_OC2_C3_N : in std_logic_vector(7 downto 0);
        E3_OC1_C1_N,E3_OC1_C2_N,E3_OC1_C3_N, E3_OC2_C1_N,E3_OC2_C2_N,E3_OC2_C3_N : in std_logic_vector(7 downto 0);
        E4_OC1_C1_N,E4_OC1_C2_N,E4_OC1_C3_N, E4_OC2_C1_N,E4_OC2_C2_N,E4_OC2_C3_N : in std_logic_vector(7 downto 0);
        
        R_E1_N1_OC1,R_E1_N1_OC2  : inout std_logic_vector(7 downto 0);
        R_E2_N1_OC1,R_E2_N1_OC2  : inout std_logic_vector(7 downto 0);
        R_E3_N1_OC1,R_E3_N1_OC2  : inout std_logic_vector(7 downto 0);
        R_E4_N1_OC1,R_E4_N1_OC2  : inout std_logic_vector(7 downto 0);
        
        R1_E1_N1_OC1,R1_E1_N1_OC2  : out std_logic_vector(7 downto 0);
        R1_E2_N1_OC1,R1_E2_N1_OC2  : out std_logic_vector(7 downto 0);
        R1_E3_N1_OC1,R1_E3_N1_OC2  : out std_logic_vector(7 downto 0);
        R1_E4_N1_OC1,R1_E4_N1_OC2  : out std_logic_vector(7 downto 0);
        
        Cout, Ovfl_detector : out std_logic);
end component;


begin
AA0:Array_of_adders port map('1',
                             E1_OC1_C1_N,E1_OC1_C2_N,E1_OC1_C3_N, E1_OC2_C1_N,E1_OC2_C2_N,E1_OC2_C3_N,
                             E2_OC1_C1_N,E2_OC1_C2_N,E2_OC1_C3_N, E2_OC2_C1_N,E2_OC2_C2_N,E2_OC2_C3_N,
                             E3_OC1_C1_N,E3_OC1_C2_N,E3_OC1_C3_N, E3_OC2_C1_N,E3_OC2_C2_N,E3_OC2_C3_N,
                             E4_OC1_C1_N,E4_OC1_C2_N,E4_OC1_C3_N, E4_OC2_C1_N,E4_OC2_C2_N,E4_OC2_C3_N,
                             "00000000","00000000","00000000","00000000","00000000","00000000","00000000","00000000",
                             R_00,R_01,R_10,R_11,R_20,R_21,R_30,R_31,Cout,Ovfl_detector);
end Behavioral;

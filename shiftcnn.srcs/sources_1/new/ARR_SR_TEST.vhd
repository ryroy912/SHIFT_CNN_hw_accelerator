----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/26/2021 06:00:48 PM
-- Design Name: 
-- Module Name: ARR_SR_TEST - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ARR_SR_TEST is
--  Port ( );
end ARR_SR_TEST;

architecture Behavioral of ARR_SR_TEST is

COMPONENT ARR_SR_ent
    port(
        clk : in std_logic;
        in_1 : std_logic_vector( 7 downto 0);
        in_2 : std_logic_vector( 7 downto 0);
        in_3 : std_logic_vector( 7 downto 0);
        in_4 : std_logic_vector( 7 downto 0);
        in_5 : std_logic_vector( 7 downto 0);
        in_6 : std_logic_vector( 7 downto 0);
        in_7 : std_logic_vector( 7 downto 0);
        in_8 : std_logic_vector( 7 downto 0);
        in_9 : std_logic_vector( 7 downto 0);
        in_10 : std_logic_vector( 7 downto 0);
        in_11 : std_logic_vector( 7 downto 0);
        in_12 : std_logic_vector( 7 downto 0);
        in_13 : std_logic_vector( 7 downto 0);
        in_14 : std_logic_vector( 7 downto 0);
        in_15 : std_logic_vector( 7 downto 0);
        out_11 : out std_logic_vector (7 downto 0);
        out_12 : out std_logic_vector (7 downto 0);
        out_13 : out std_logic_vector (7 downto 0);
        out_14 : out std_logic_vector (7 downto 0);
        out_15 : out std_logic_vector (7 downto 0);
        out_16 : out std_logic_vector (7 downto 0);
        out_17 : out std_logic_vector (7 downto 0);
        out_18 : out std_logic_vector (7 downto 0);
        out_19 : out std_logic_vector (7 downto 0);
        out_110 : out std_logic_vector (7 downto 0);
        out_111 : out std_logic_vector (7 downto 0);
        out_112 : out std_logic_vector (7 downto 0);
        out_113 : out std_logic_vector (7 downto 0);
        out_114 : out std_logic_vector (7 downto 0);
        out_115 : out std_logic_vector (7 downto 0);
        out_21 : out std_logic_vector (7 downto 0);
        out_22 : out std_logic_vector (7 downto 0);
        out_23 : out std_logic_vector (7 downto 0);
        out_24 : out std_logic_vector (7 downto 0);
        out_25 : out std_logic_vector (7 downto 0);
        out_26 : out std_logic_vector (7 downto 0);
        out_27 : out std_logic_vector (7 downto 0);
        out_28 : out std_logic_vector (7 downto 0);
        out_29 : out std_logic_vector (7 downto 0);
        out_210 : out std_logic_vector (7 downto 0);
        out_211 : out std_logic_vector (7 downto 0);
        out_212 : out std_logic_vector (7 downto 0);
        out_213 : out std_logic_vector (7 downto 0);
        out_214 : out std_logic_vector (7 downto 0);
        out_215 : out std_logic_vector (7 downto 0);
        out_31 : out std_logic_vector (7 downto 0);
        out_32 : out std_logic_vector (7 downto 0);
        out_33 : out std_logic_vector (7 downto 0);
        out_34 : out std_logic_vector (7 downto 0);
        out_35 : out std_logic_vector (7 downto 0);
        out_36 : out std_logic_vector (7 downto 0);
        out_37 : out std_logic_vector (7 downto 0);
        out_38 : out std_logic_vector (7 downto 0);
        out_39 : out std_logic_vector (7 downto 0);
        out_310 : out std_logic_vector (7 downto 0);
        out_311 : out std_logic_vector (7 downto 0);
        out_312 : out std_logic_vector (7 downto 0);
        out_313 : out std_logic_vector (7 downto 0);
        out_314 : out std_logic_vector (7 downto 0);
        out_315 : out std_logic_vector (7 downto 0)
    );
end COMPONENT;

    signal clk : std_logic := '0';
    signal in_1,in_2,in_3,in_4,in_5,in_6,in_7,in_8,in_9,in_10,in_11,in_12,in_13,in_14,in_15 : std_logic_vector( 7 downto 0);
    signal out_11,out_12,out_13,out_14,out_15,out_16,out_17,out_18,out_19,out_110,out_111,out_112,out_113,out_114,out_115 : std_logic_vector( 7 downto 0);
    signal out_21,out_22,out_23,out_24,out_25,out_26,out_27,out_28,out_29,out_210,out_211,out_212,out_213,out_214,out_215 : std_logic_vector( 7 downto 0);
    signal out_31,out_32,out_33,out_34,out_35,out_36,out_37,out_38,out_39,out_310,out_311,out_312,out_313,out_314,out_315 : std_logic_vector( 7 downto 0);

    constant test_period : time := 10 ns;
    
begin
    uut: ARR_SR_ent port map(
        clk => clk,
        in_1 => in_1,  
        in_2 => in_2,  
        in_3 => in_3,  
        in_4 => in_4,  
        in_5 => in_5,  
        in_6 => in_6,  
        in_7 =>  in_7,  
        in_8 =>  in_8,  
        in_9 =>  in_9,  
        in_10 =>  in_10, 
        in_11 =>  in_11, 
        in_12 =>  in_12, 
        in_13 => in_13, 
        in_14 => in_14, 
        in_15 => in_15,
        out_11 => out_11, 
        out_12 => out_12, 
        out_13 => out_13, 
        out_14 => out_14, 
        out_15 => out_15, 
        out_16 => out_16, 
        out_17 =>  out_17, 
        out_18 => out_18, 
        out_19 => out_19, 
        out_110 => out_110,
        out_111 => out_111,
        out_112 => out_112,
        out_113 => out_113,
        out_114 => out_114,
        out_115 => out_115,
        out_21 => out_21, 
        out_22 => out_22, 
        out_23 => out_23, 
        out_24 => out_24, 
        out_25 => out_25, 
        out_26 => out_26, 
        out_27 => out_27, 
        out_28 => out_28, 
        out_29 => out_29, 
        out_210 => out_210,
        out_211 => out_211,
        out_212 => out_212,
        out_213 => out_213,
        out_214 => out_214,
        out_215 => out_215,
        out_31 => out_31,
        out_32 => out_32,
        out_33 => out_33, 
        out_34 => out_34, 
        out_35 => out_35, 
        out_36 => out_36, 
        out_37 => out_37, 
        out_38 => out_38, 
        out_39 => out_39, 
        out_310 => out_310,
        out_311 => out_311,
        out_312 => out_312,
        out_313 => out_313,
        out_314 => out_314,
        out_315 => out_315
        );
        
        clk <= not clk after test_period / 2;
        
       stim_process :process
        begin
            wait for test_period;
            in_1 <= "11111111";
            in_2 <= "11111111";
            in_3 <= "11111111";
            in_4 <= "11111111";
            in_5 <= "11111111";
            in_6 <= "11111111";
            in_7 <= "11111111";
            in_8 <= "11111111";
            in_9 <= "11111111";
            in_10 <= "11111111";
            in_11 <= "11111111";
            in_12 <= "11111111";
            in_13 <= "11111111";
            in_14 <= "11111111";
            in_15 <= "11111111";
            wait for test_period;
            in_1 <= "10101010";
            in_2 <= "10101010";
            in_3 <= "10101010";
            in_4 <= "10101010";
            in_5 <= "10101010";
            in_6 <= "10101010";
            in_7 <= "10101010";
            in_8 <= "10101010";
            in_9 <= "10101010";
            in_10 <= "10101010";
            in_11 <= "10101010";
            in_12 <= "10101010";
            in_13 <= "10101010";
            in_14 <= "10101010";
            in_15 <= "10101010";
            wait for test_period ;
            in_1 <= "01010101";
            in_2 <= "01010101";
            in_3 <= "01010101";
            in_4 <= "01010101";
            in_5 <= "01010101";
            in_6 <= "01010101";
            in_7 <= "01010101";
            in_8 <= "01010101";
            in_9 <= "01010101";
            in_10 <= "01010101";
            in_11 <= "01010101";
            in_12 <= "01010101";
            in_13 <= "01010101";
            in_14 <= "01010101";
            in_15 <= "01010101";
            wait for test_period;
            in_1 <= "00000000";
            in_2 <= "00000000";
            in_3 <= "00000000";
            in_4 <= "00000000";
            in_5 <= "00000000";
            in_6 <= "00000000";
            in_7 <= "00000000";
            in_8 <= "00000000";
            in_9 <= "00000000";
            in_10 <= "00000000";
            in_11 <= "00000000";
            in_12 <= "00000000";
            in_13 <= "00000000";
            in_14 <= "00000000";
            in_15 <= "00000000";
            wait;
        end process;


end Behavioral;

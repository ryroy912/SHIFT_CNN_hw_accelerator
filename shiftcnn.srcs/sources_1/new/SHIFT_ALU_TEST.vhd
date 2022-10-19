----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2021 11:45:25 AM
-- Design Name: 
-- Module Name: SHIFT_ALU_TEST - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SHIFT_ALU_TEST is
--  Port ( );
end SHIFT_ALU_TEST;

architecture Behavioral of SHIFT_ALU_TEST is
component SHIFT_ALU_ent is
    port(
            input : in signed(3 downto 0);
            output0 : out std_logic_vector (7 downto 0);
            output1 : out std_logic_vector (7 downto 0);
            output2 : out std_logic_vector (7 downto 0);
            output3 : out std_logic_vector (7 downto 0);
            output4 : out std_logic_vector (7 downto 0);
            output5 : out std_logic_vector (7 downto 0);
            output6 : out std_logic_vector (7 downto 0);
            output7 : out std_logic_vector (7 downto 0);
            output8 : out std_logic_vector (7 downto 0);
            output9 : out std_logic_vector (7 downto 0);
            output10 : out std_logic_vector (7 downto 0);
            output11 : out std_logic_vector (7 downto 0);
            output12 : out std_logic_vector (7 downto 0);
            output13 : out std_logic_vector (7 downto 0);
            output14 : out std_logic_vector (7 downto 0)
        );
end component;

signal input: signed (3 downto 0);
signal output0, output1, output2, output3, output4, output5, output6, output7,output8, output9, output10, output11, output12, output13, output14: std_logic_vector (7 downto 0);


constant test_period : time := 10 ns;

begin

uut: SHIFT_ALU_ent port map(
    input => input,
    output0 => output0,
    output1 => output1,
    output2 => output2,
    output3 => output3,
    output4 => output4,
    output5 => output5,
    output6 => output6,
    output7 => output7,
    output8 => output8,
    output9 => output9,
    output10 => output10,
    output11 => output11,
    output12 => output12,
    output13 => output13,
    output14 => output14  
);


stim_process :process
        begin
            wait for test_period;
            input <= "0001";  -- 1
            wait for test_period;
            input <= "1111"; -- -1
            wait for test_period;
            input <= "0111"; -- 7
            wait for test_period;
            input <= "1100"; -- -4
            wait for test_period;
            wait;                
        end process;

end Behavioral;

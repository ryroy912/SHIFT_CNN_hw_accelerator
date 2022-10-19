----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2021 02:50:45 PM
-- Design Name: 
-- Module Name: SHIFT_CNN_TEST - Behavioral
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

entity SHIFT_CNN_TEST is
--  Port ( );
end SHIFT_CNN_TEST;

architecture Behavioral of SHIFT_CNN_TEST is
component SHIFT_CNN_ent is
    port(
            input1: in signed (3 downto 0);
            input2: in signed (3 downto 0);
            input3: in signed (3 downto 0);
            weight1 : in std_logic_vector (3 downto 0);
            weight2 : in std_logic_vector (3 downto 0);
            weight3 : in std_logic_vector (3 downto 0);
            clk : in std_logic;
            output: out std_logic_vector (7 downto 0);
            output2: out std_logic_vector (7 downto 0);
            output3: out std_logic_vector (7 downto 0)
        );
end component;

signal input1, input2, input3 : signed (3 downto 0) := "0000";
signal weight1, weight2, weight3 : std_logic_vector  (3 downto 0);
signal clk : std_logic := '0';
signal output, output2, output3: std_logic_vector (7 downto 0);

constant test_period : time := 10 ns;

begin

uut: SHIFT_CNN_ent port map (
    input1 => input1,
    input2 => input2,
    input3 => input3,
    weight1 => weight1,
    weight2 => weight2,
    weight3 => weight3,
    clk => clk,
    output => output,
    output2 => output2,
    output3 => output3
);

clk <= not clk after test_period / 2;

stim_process :process
        begin
            wait for test_period * 5;
            
            for i in -7 to 7 loop
                        
                --input1 <= "0111";  -- 
                --input2 <= "0111"; -- 
                --input3 <= "0111"; -- 
                input1 <= to_signed(i, 4);          
                input2 <= to_signed(i, 4); 
                input3 <= to_signed(i, 4); 
                
                weight1 <= "0000";  -- 
                weight2 <= "0001"; -- 
                weight3 <= "1111"; -- 
                
                wait for test_period;
                
                weight1 <= "0010";  -- 
                weight2 <= "1110"; -- 
                weight3 <= "0011"; --
                 
                wait for test_period;
               
                weight1 <= "1101";  -- 
                weight2 <= "0100"; -- 
                weight3 <= "1100"; --
                
                wait for test_period;
                
                weight1 <= "0101";  -- 
                weight2 <= "1011"; -- 
                weight3 <= "0110"; -- 
                
                wait for test_period;
                
                weight1 <= "1010";  -- 
                weight2 <= "0111"; -- 
                weight3 <= "1001"; -- 
                wait for test_period;
            end loop;
            wait;                
        end process;

end Behavioral;

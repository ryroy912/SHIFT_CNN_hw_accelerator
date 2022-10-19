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

entity SHIFT_CNN_TEST_FINAL is
--  Port ( );
end SHIFT_CNN_TEST_FINAL;

architecture Behavioral of SHIFT_CNN_TEST_FINAL is
component SHIFT_CNN_ent is
    port(
            input1: in signed (3 downto 0);
            input2: in signed (3 downto 0);
            input3: in signed (3 downto 0);
            weight1 : in std_logic_vector (3 downto 0);
            weight2 : in std_logic_vector (3 downto 0);
            weight3 : in std_logic_vector (3 downto 0);
            clk : in std_logic;
            clk2 : in std_logic;
            rst : in std_logic;
            output: inout std_logic_vector (7 downto 0)
        );
end component;

signal input1, input2, input3 : signed (3 downto 0) := "0000";
signal weight1, weight2, weight3 : std_logic_vector  (3 downto 0);
signal clk : std_logic := '0';
signal clk2 : std_logic := '0';
signal rst : std_logic := '0';
signal output: std_logic_vector (7 downto 0);

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
    clk2 => clk2,
    rst => rst,
    output => output
);

clk <= not clk after test_period;
clk2 <= not clk2 after test_period / 4;

rst_process : process
    begin
    wait for 5 ns;
    for i in 0 to 1000 loop
        rst <= '1';
        wait for 20 ns;
        rst <= '0';
        wait for 20 ns;
    end loop;
    end process;
    
    
--rst <= not rst after test_period * 2;

stim_process :process
        begin
            wait for 45 ns;

                input1 <= to_signed(1, 4);          
                input2 <= to_signed(5, 4); 
                input3 <= to_signed(-3, 4);
                              
                weight1 <= "0000";  
                weight2 <= "1111";  
                weight3 <= "0011";
                
                wait for 20 ns;
                                               
                weight1 <= "0000";  
                weight2 <= "0000";  
                weight3 <= "1010";
                
                wait for 20 ns;
                
                weight1 <= "0001";  
                weight2 <= "0010";  
                weight3 <= "1100";
                
                wait for 20 ns;
                                               
                weight1 <= "0000";  
                weight2 <= "1001";  
                weight3 <= "0101";
                
                wait for 20 ns;
                
                input1 <= to_signed(2, 4);          
                input2 <= to_signed(6, 4); 
                input3 <= to_signed(-2, 4);
                              
                weight1 <= "0000";  
                weight2 <= "1111";  
                weight3 <= "0011";
                
                wait for 20 ns;
                                               
                weight1 <= "0000";  
                weight2 <= "0000";  
                weight3 <= "1010";
                
                wait for 20 ns;
                
                weight1 <= "0001";  
                weight2 <= "0010";  
                weight3 <= "1100";
                
                wait for 20 ns;
                                               
                weight1 <= "0000";  
                weight2 <= "1001";  
                weight3 <= "0101";
                
                wait for 20 ns;
                
                input1 <= to_signed(3, 4);          
                input2 <= to_signed(7, 4); 
                input3 <= to_signed(-1, 4);
                              
                weight1 <= "0000";  
                weight2 <= "1111";  
                weight3 <= "0011";
                
                wait for 20 ns;
                                               
                weight1 <= "0000";  
                weight2 <= "0000";  
                weight3 <= "1010";
                
                wait for 20 ns;
                
                weight1 <= "0001";  
                weight2 <= "0010";  
                weight3 <= "1100";
                
                wait for 20 ns;
                                               
                weight1 <= "0000";  
                weight2 <= "1001";  
                weight3 <= "0101";
                
                wait for 20 ns;
                
                input1 <= to_signed(4, 4);          
                input2 <= to_signed(-4, 4); 
                input3 <= to_signed(0, 4);
                              
                weight1 <= "0000";  
                weight2 <= "1111";  
                weight3 <= "0011";
                
                wait for 20 ns;
                                               
                weight1 <= "0000";  
                weight2 <= "0000";  
                weight3 <= "1010";
                
                wait for 20 ns;
                
                weight1 <= "0001";  
                weight2 <= "0010";  
                weight3 <= "1100";
                
                wait for 20 ns;
                                               
                weight1 <= "0000";  
                weight2 <= "1001";  
                weight3 <= "0101";
                
                wait for 20 ns;
                
                
                
           
            wait;                
        end process;

end Behavioral;

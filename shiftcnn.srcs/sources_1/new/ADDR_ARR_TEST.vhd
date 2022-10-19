----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/19/2021 03:08:36 PM
-- Design Name: 
-- Module Name: ADDR_ARR_TEST - Behavioral
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

entity ADDR_ARR_TEST is
--  Port ( );
end ADDR_ARR_TEST;

architecture Behavioral of ADDR_ARR_TEST is

component ADDR_ARR_ent is
    port( 
        in1, in2, in3: in std_logic_vector (7 downto 0);        
        clk : in std_logic;
        rst : in std_logic;
        out1 : inout std_logic_vector (7 downto 0)
    );
end component;

signal in1, in2, in3 : std_logic_vector  (7 downto 0);
signal clk, rst : std_logic := '0';
signal out1 : std_logic_vector (7 downto 0) := "00000000";

constant test_period : time := 10 ns;

begin

uut: ADDR_ARR_ent port map(
    in1 => in1,
    in2 => in2,
    in3 => in3,
    clk => clk,
    rst => rst,
    out1 => out1
    );


clk <= not clk after test_period / 2;


rst_process : process
    begin
        --wait for 5 ns;
        for i in 0 to 1000 loop            
            rst <= '1';
            wait for 10 ns;
            rst <='0';
            wait for 10 ns;
        end loop;
end process;
        
--rst <= not rst after test_period * 2;

stim_process :process
        begin
            in1 <= "00000001";
            in2 <= "00000010";
            in3 <= "00000011";
            wait;                
        end process;

end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/30/2021 09:01:08 AM
-- Design Name: 
-- Module Name: SR_8W_4D_TEST - Behavioral
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

entity SR_8W_4D_TEST is
--  Port ( );
end SR_8W_4D_TEST;

architecture Behavioral of SR_8W_4D_TEST is
    COMPONENT SR_8W_4D_ent
    PORT(
        clk : in std_logic;
        sr_in : in std_logic_vector( 7 downto 0);
        sr_out : out std_logic_vector(7 downto 0);
        sr_out2 : out std_logic_vector(7 downto 0);
        sr_out3 : out std_logic_vector(7 downto 0);
        sr_out4 : out std_logic_vector(7 downto 0)
    );
    END COMPONENT;
    
    signal clk : std_logic := '0';
    signal sr_in : std_logic_vector( 7 downto 0);
    signal sr_out : std_logic_vector( 7 downto 0);
    signal sr_out2 : std_logic_vector( 7 downto 0);
    signal sr_out3 : std_logic_vector( 7 downto 0);
    signal sr_out4 : std_logic_vector( 7 downto 0);
    
    constant test_period : time := 10 ns;
    
begin    
    uut: SR_8W_4D_ent port map(
          clk => clk,
          sr_in => sr_in,
          sr_out => sr_out,
          sr_out2 => sr_out2,
          sr_out3 => sr_out3,
          sr_out4 => sr_out4
        );
        
    clk <= not clk after test_period / 2;
    
   stim_process :process
   begin
		wait for test_period;
		sr_in <= "11111111";
		wait for test_period;
		sr_in <= "11110000";
		wait for test_period;
		sr_in <= "10101010";
		wait for test_period ;
		sr_in <= "01010101";
		wait for test_period;
		sr_in <= "00000000";
		wait;
   end process;   

end Behavioral;

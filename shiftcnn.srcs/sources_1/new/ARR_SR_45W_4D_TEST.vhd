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

package input_buffer_type is
type inputBuffer is array( 44 downto 0) of std_logic_vector (7 downto 0);
end package input_buffer_type;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package output_buffer_type is
type outputBuffer is array( 44 downto 0) of std_logic_vector (7 downto 0);
end package output_buffer_type;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use work.input_buffer_type.all;
use work.output_buffer_type.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ARR_SR_45W_4D_TEST is
--  Port ( );
end ARR_SR_45W_4D_TEST;

architecture Behavioral of ARR_SR_45W_4D_TEST is

COMPONENT ARR_SR_45W_4D_ent
    port(
        clk : in std_logic;
        inputs: in inputBuffer;
        outputs1, outputs2,outputs3, outputs4: out outputBuffer
    );
end COMPONENT;

    signal clk : std_logic := '0';
    signal inputs : inputBuffer;
    signal outputs1, outputs2, outputs3, outputs4 : outputBuffer;

    constant test_period : time := 10 ns;
    
begin
    uut: ARR_SR_45W_4D_ent port map(
        clk => clk,
        inputs => inputs,
        outputs1 => outputs1,
        outputs2 => outputs2,
        outputs3 => outputs3,
        outputs4 => outputs4
        );
        
        clk <= not clk after test_period / 2;
        
       stim_process :process
        begin
            wait for test_period;
            
            for i in 0 to 44 loop
                inputs(i) <= "11111111";
            end loop;
            wait for test_period;
            
            for i in 0 to 44 loop
                inputs(i) <= "10101010";
            end loop;
            wait for test_period;
            
            for i in 0 to 44 loop
                inputs(i) <= "01010101";
            end loop;
            wait for test_period;
            
            for i in 0 to 44 loop
                inputs(i) <= "11110000";
            end loop;
            wait for test_period;
            
            for i in 0 to 44 loop
                inputs(i) <= "00000000";
            end loop;
            wait;                
        end process;

end Behavioral;

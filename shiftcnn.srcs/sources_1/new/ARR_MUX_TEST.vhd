library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


package mux_input_type is
type muxInput is array( 14 downto 0) of std_logic_vector (7 downto 0);
end package mux_input_type;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;

use work.mux_input_type.all;

entity ARR_MUX_TEST is
--  Port ( );
end ARR_MUX_TEST;

architecture Behavioral of ARR_MUX_TEST is

COMPONENT ARR_MUX_ent
    port(
        input1: in muxInput;
        input2: in muxInput;
        input3: in muxInput;
        s1: in std_logic_vector (3 downto 0);
        s2: in std_logic_vector (3 downto 0);
        s3: in std_logic_vector (3 downto 0);
        output1: out std_logic_vector (7 downto 0);
        output2: out std_logic_vector (7 downto 0);
        output3: out std_logic_vector (7 downto 0)
    );
end COMPONENT;

signal input1,input2,input3 : muxInput;
signal s1,s2,s3 : std_logic_vector (3 downto 0);
signal output1, output2, output3 : std_logic_vector (7 downto 0);

constant test_period : time := 10 ns;

begin

uut: ARR_MUX_ent port map(
        input1 => input1,
        input2 => input2,
        input3 => input3,
        s1 => s1,
        s2 => s2,
        s3 => s3,
        output1 => output1,
        output2 => output2,
        output3 => output3
        );
              
       stim_process :process
        begin
            wait for test_period;
            
            for i in 0 to 14 loop
                input1(i) <= std_logic_vector(to_unsigned(i,8));
            end loop;
           
            for i in 0 to 14 loop
                input2(i) <= std_logic_vector(to_unsigned(i,8));
            end loop;            
            
            for i in 0 to 14 loop
                input3(i) <= std_logic_vector(to_unsigned(i,8));
            end loop;
            
            s1 <= "0000";
            s2 <= "0001";
            s3 <= "1111";
            wait for test_period;
            s1 <= "0010";
            s2 <= "1110";
            s3 <= "0011";
            
            wait;                
        end process;
        
end Behavioral;        
        
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2021 09:42:57 AM
-- Design Name: 
-- Module Name: SHIFT_CNN_ent - Behavioral
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

package mux_input_type is
type muxInput is array( 14 downto 0) of std_logic_vector (7 downto 0);
end package mux_input_type;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package output_buffer_type is
type outputBuffer is array( 44 downto 0) of std_logic_vector (7 downto 0);
end package output_buffer_type;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

package input_buffer_type is
type inputBuffer is array( 44 downto 0) of std_logic_vector (7 downto 0);
end package input_buffer_type;

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use work.mux_input_type.all;
use work.output_buffer_type.all;
use work.input_buffer_type.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity SHIFT_CNN_ent is
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
            output: inout std_logic_vector (7 downto 0) -- temportaty outputs for testing
            --output2: out std_logic_vector (7 downto 0); -- temportaty outputs for testing
            --output3: out std_logic_vector (7 downto 0) -- temportaty outputs for testing
        );
end SHIFT_CNN_ent;

architecture Behavioral of SHIFT_CNN_ent is

component SHIFT_ALU_ent is
    port(
            input : in signed (3 downto 0);
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

COMPONENT ARR_MUX_ent is
port(   
        input1: in muxInput;
        input2: in muxInput;
        input3: in muxInput;
        s1: in std_logic_vector (3 downto 0);
        s2: in std_logic_vector (3 downto 0);
        s3: in std_logic_vector (3 downto 0);
        value1 : in std_logic_vector (7 downto 0);
        value2 : in std_logic_vector (7 downto 0);
        value3 : in std_logic_vector (7 downto 0);
        rst: in std_logic;
        output1: out std_logic_vector (7 downto 0);
        output2: out std_logic_vector (7 downto 0);
        output3: out std_logic_vector (7 downto 0)
        );
end COMPONENT;

COMPONENT ARR_SR_45W_4D_ent is
 port(
        clk : in std_logic;
        inputs: in inputBuffer;
        outputs1, outputs2, outputs3, outputs4: out outputBuffer
    );
end COMPONENT;


component ADDR_ARR_ent is
port( 
    in1, in2, in3: in std_logic_vector (7 downto 0);        
    clk : in std_logic;
    rst : in std_logic;
    out1 : inout std_logic_vector (7 downto 0)
);
end component;
  
 signal sr_in : inputBuffer;
 signal sr_o1, sr_o2, sr_o3, sr_o4 : outputBuffer;
 signal mux_in1, mux_in2, mux_in3 : muxInput;
 signal mux_o1, mux_o2, mux_o3 : std_logic_vector (7 downto 0);
 signal temp1, temp2, temp3 : std_logic_vector(7 downto 0);

begin

alu_1: SHIFT_ALU_ent port map(input=>input1,
                                     output0 => sr_in(30),
                                     output1 => sr_in(31),
                                     output2 => sr_in(32),
                                     output3 => sr_in(33),
                                     output4 => sr_in(34),
                                     output5 => sr_in(35),
                                     output6 => sr_in(36),
                                     output7 => sr_in(37),
                                     output8 => sr_in(38),
                                     output9 => sr_in(39),
                                     output10 => sr_in(40),
                                     output11 => sr_in(41),
                                     output12 => sr_in(42),
                                     output13 => sr_in(43),
                                     output14 => sr_in(44)
                                );
                                
alu_2: SHIFT_ALU_ent port map(input=>input2,
                                     output0 => sr_in(15),
                                     output1 => sr_in(16),
                                     output2 => sr_in(17),
                                     output3 => sr_in(18),
                                     output4 => sr_in(19),
                                     output5 => sr_in(20),
                                     output6 => sr_in(21),
                                     output7 => sr_in(22),
                                     output8 => sr_in(23),
                                     output9 => sr_in(24),
                                     output10 => sr_in(25),
                                     output11 => sr_in(26),
                                     output12 => sr_in(27),
                                     output13 => sr_in(28),
                                     output14 => sr_in(29)
                                );
                                
alu_3: SHIFT_ALU_ent port map(input=>input3,
                                     output0 => sr_in(0),
                                     output1 => sr_in(1),
                                     output2 => sr_in(2),
                                     output3 => sr_in(3),
                                     output4 => sr_in(4),
                                     output5 => sr_in(5),
                                     output6 => sr_in(6),
                                     output7 => sr_in(7),
                                     output8 => sr_in(8),
                                     output9 => sr_in(9),
                                     output10 => sr_in(10),
                                     output11 => sr_in(11),
                                     output12 => sr_in(12),
                                     output13 => sr_in(13),
                                     output14 => sr_in(14)
                                );

arr_sr: ARR_SR_45W_4D_ent port map(inputs => sr_in, clk => clk2, outputs1 => sr_o1, outputs2 => sr_o2, outputs3 => sr_o3, outputs4 => sr_o4);

mux_in1 <= muxInput(sr_o4(44 downto 30));
mux_in2 <= muxInput(sr_o4(29 downto 15));
mux_in3 <= muxInput(sr_o4(14 downto 0));

process(input1,input2,input3)
begin
temp1 <= std_logic_vector(input1) & "0000";
temp2 <= std_logic_vector(input2) & "0000";
temp3 <= std_logic_vector(input3) & "0000";
end process;


arr_mux: ARR_MUX_ent port map(input1 => mux_in1, input2 => mux_in2, input3 =>mux_in3,
                              value1 => temp1,value2=>temp2, value3=>temp3,
                              s1 => weight1, s2 => weight2, s3 => weight3,
                              rst => rst,
                              output1 => mux_o1, output2 => mux_o2, output3 => mux_o3);

arr_addr: ADDR_ARR_ent port map(in1=>mux_o1, in2=>mux_o2,in3 => mux_o3,clk=>clk, rst=>rst,out1=>output);
end Behavioral;

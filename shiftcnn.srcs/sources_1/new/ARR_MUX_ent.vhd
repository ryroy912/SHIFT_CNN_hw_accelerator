----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2021 08:43:25 AM
-- Design Name: 
-- Module Name: ARR_MUX_ent - Behavioral
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

use work.mux_input_type.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ARR_MUX_ent is
port(   
        input1: in muxInput;
        input2: in muxInput;
        input3: in muxInput;
        value1: std_logic_vector(7 downto 0);
        value2: std_logic_vector(7 downto 0);
        value3: std_logic_vector(7 downto 0);
        s1: in std_logic_vector (3 downto 0);
        s2: in std_logic_vector (3 downto 0);
        s3: in std_logic_vector (3 downto 0);
        rst: in std_logic;
        output1: out std_logic_vector (7 downto 0);
        output2: out std_logic_vector (7 downto 0);
        output3: out std_logic_vector (7 downto 0)
        );
end ARR_MUX_ent;

architecture Behavioral of ARR_MUX_ent is

COMPONENT MUX_16_1_ent
    PORT(
        inputs: in muxInput;
        value: std_logic_vector( 7 downto 0);
        s: in std_logic_vector (3 downto 0);
        rst: in std_logic;
        output: out std_logic_vector (7 downto 0)
    );
    END COMPONENT;

begin

mux_1: MUX_16_1_ent port map (inputs => input1, value=>value1, s => s1,rst=>rst, output => output1);
mux_2: MUX_16_1_ent port map (inputs => input2, value=>value2, s => s2,rst=>rst,  output => output2);
mux_3: MUX_16_1_ent port map (inputs => input3, value=>value3, s => s3,rst=>rst, output => output3);


end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/09/2021 03:35:03 PM
-- Design Name: 
-- Module Name: MUX_16_1_ent - Behavioral
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

entity MUX_16_1_ent is
    port(
            inputs: in muxInput;
            value: std_logic_vector (7 downto 0);
            s: in std_logic_vector (3 downto 0);
            rst: in std_logic;
            output: out std_logic_vector (7 downto 0)
        );
end MUX_16_1_ent;

architecture Behavioral of MUX_16_1_ent is

begin

process(inputs, s)
begin
if (rst = '1') then
    if (s = "0000") then
        output <= "00000000";
    elsif (s = "0001") then
        output <= value;
    elsif (s = "1111") then
        output <= inputs(0);
    elsif (s = "0010") then
        output <= inputs(1);
    elsif (s = "1110") then
        output <= inputs(2);
    elsif (s = "0011") then
        output <= inputs(3);
    elsif (s = "1101") then
        output <= inputs(4);
    elsif (s = "0100") then
        output <= inputs(5);
    elsif (s = "1100") then
        output <= inputs(6);
    elsif (s = "0101") then
        output <= inputs(7);
    elsif (s = "1011") then
        output <= inputs(8);
    elsif (s = "0110") then
        output <= inputs(9);
    elsif (s = "1010") then
        output <= inputs(10);
    elsif (s = "0111") then
        output <= inputs(11);
    elsif (s = "1001") then
        output <= inputs(12);
    else
        output <= "00000000";    
    end if;
elsif (rst='0') then
        if (s = "0000") then
        output <= "00000000";
    elsif (s = "0001") then
        output <= inputs(1);
    elsif (s = "1111") then
        output <= inputs(2);
    elsif (s = "0010") then
        output <= inputs(3);
    elsif (s = "1110") then
        output <= inputs(4);
    elsif (s = "0011") then
        output <= inputs(5);
    elsif (s = "1101") then
        output <= inputs(6);
    elsif (s = "0100") then
        output <= inputs(7);
    elsif (s = "1100") then
        output <= inputs(8);
    elsif (s = "0101") then
        output <= inputs(9);
    elsif (s = "1011") then
        output <= inputs(10);
    elsif (s = "0110") then
        output <= inputs(11);
    elsif (s = "1010") then
        output <= inputs(12);
    elsif (s = "0111") then
        output <= inputs(13);
    elsif (s = "1001") then
        output <= inputs(14);
    else
        output <= "00000000";    
    end if;
end if;
end process;
end Behavioral;

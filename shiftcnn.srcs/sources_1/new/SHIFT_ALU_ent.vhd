----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/10/2021 10:54:29 AM
-- Design Name: 
-- Module Name: SHIFT_ALU_ent - Behavioral
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

entity SHIFT_ALU_ent is
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
end SHIFT_ALU_ent;

architecture Behavioral of SHIFT_ALU_ent is

signal temp : std_logic_vector(7 downto 0) :=  "00000000";
signal neg_temp :std_logic_vector(7 downto 0) :=  "00000000";

begin

process(input)
begin
temp <= std_logic_vector(input) & "0000";
neg_temp <= std_logic_vector(-input) & "0000";
end process;

output0 <= neg_temp;
output1 <= temp(7) & temp(7 downto 1);
output2 <= neg_temp(7) & neg_temp(7 downto 1);
output3 <= temp(7) & temp(7) & temp(7 downto 2);
output4 <= neg_temp(7) & neg_temp(7) & neg_temp(7 downto 2);
output5 <= temp(7) & temp(7) & temp(7) & temp(7 downto 3);
output6 <= neg_temp(7) & neg_temp(7) & neg_temp(7) & neg_temp(7 downto 3);
output7 <= temp(7) & temp(7) & temp(7) & temp(7) & temp(7 downto 4);
output8 <= neg_temp(7) & neg_temp(7) & neg_temp(7) & neg_temp(7) & neg_temp(7 downto 4);
output9 <= temp(7) & temp(7) & temp(7) & temp(7) & temp(7) & temp(7 downto 5);
output10 <= neg_temp(7) & neg_temp(7) & neg_temp(7) & neg_temp(7) & neg_temp(7) & neg_temp(7 downto 5);
output11 <= temp(7) & temp(7) & temp(7) & temp(7) & temp(7) & temp(7) & temp(7 downto 6);
output12 <= neg_temp(7) & neg_temp(7) & neg_temp(7) & neg_temp(7) & neg_temp(7) & neg_temp(7) & neg_temp(7 downto 6);
output13 <= temp(7) & temp(7) & temp(7) & temp(7) & temp(7) & temp(7) & temp(7) & temp(7);
output14 <= neg_temp(7) & neg_temp(7) & neg_temp(7) & neg_temp(7) & neg_temp(7) & neg_temp(7) & neg_temp(7) & neg_temp(7);
end Behavioral;

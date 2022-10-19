----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/19/2021 02:42:44 PM
-- Design Name: 
-- Module Name: ADDR_ARR_ent - Behavioral
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

entity ADDR_ARR_ent is
    port( 
        in1, in2, in3: in std_logic_vector (7 downto 0);        
        clk : in std_logic;
        rst : in std_logic;
        out1 : inout std_logic_vector (7 downto 0)
    );
end ADDR_ARR_ent;

architecture Behavioral of ADDR_ARR_ent is

component ADDR_SUBR16_OF_ent is
port(	
    A: in std_logic_vector(7 downto 0);
	B: in std_logic_vector(7 downto 0);
	SUB: in std_logic;
	Co: out std_logic;
	S: out std_logic_vector(7 downto 0);
	V: out std_logic
);
end component; 

signal result1, result2, result3 : std_logic_vector(7 downto 0) := "00000000";

begin

add_sub1: ADDR_SUBR16_OF_ent port map (A => in1, B => in2, SUB => '0', S=>result1);
add_sub2: ADDR_SUBR16_OF_ent port map (A => result1, B => in3, SUB => '0', S=>result2);
add_sub3: ADDR_SUBR16_OF_ent port map (A => result2, B => out1, SUB => '0', S=>result3);

sync_stuff: process (clk,rst)
begin
  if rising_edge(clk) and not rising_edge(rst) then
    out1 <=result3;
  elsif rising_edge(rst) then
    out1 <= "00000000";
  end if;
  
end process;


end Behavioral;

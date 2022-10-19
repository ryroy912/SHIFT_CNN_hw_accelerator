----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/27/2021 12:54:57 PM
-- Design Name: 
-- Module Name: ADDR_ent - Behavioral
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

entity ADDR_ent is
port(	
    A: in std_logic;
	B: in std_logic;
	Ci: in std_logic;
	Co: out std_logic;
	S: out std_logic
);
end ADDR_ent;  

--------------------------------------------------

architecture behav2 of ADDR_ent is
begin

    S <= A xor B xor Ci;
    Co <= (A and B) or ( Ci and (A xor B));
    
end behav2;

--------------------------------------------------
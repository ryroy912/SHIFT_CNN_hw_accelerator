----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/30/2021 08:56:17 AM
-- Design Name: 
-- Module Name: SR_8W_4D_ent - Behavioral
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

entity SR_8W_4D_ent is
    port(
        clk : in std_logic;
        sr_in : in std_logic_vector( 7 downto 0);
        sr_out : out std_logic_vector(7 downto 0);
        sr_out2 : out std_logic_vector(7 downto 0);
        sr_out3 : out std_logic_vector(7 downto 0);
        sr_out4 : out std_logic_vector(7 downto 0)
    );
end SR_8W_4D_ent;

architecture Behavioral of SR_8W_4D_ent is

 type sr_type is array (2 downto 0)
    of std_logic_vector(7 downto 0);
  
 signal sr : sr_type;
 
begin
 
  process(clk)
  begin
    if rising_edge(clk) then
 
      sr <= sr(sr'high - 1 downto sr'low) & sr_in;
      sr_out <= sr(sr'high);
      sr_out2 <= sr(1);
      sr_out3 <= sr(0);
      sr_out4 <= sr_in;
 
    end if;
  end process;

end Behavioral;
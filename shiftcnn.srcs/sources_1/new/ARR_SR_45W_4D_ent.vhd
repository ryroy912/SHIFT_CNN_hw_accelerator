----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/30/2021 09:34:25 AM
-- Design Name: 
-- Module Name: ARR_SR_15W_4D_ent - Behavioral
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

entity ARR_SR_45W_4D_ent is
 port(
        clk : in std_logic;
        inputs: in inputBuffer;
        outputs1, outputs2, outputs3, outputs4: out outputBuffer
    );
end ARR_SR_45W_4D_ent;

architecture Behavioral of ARR_SR_45W_4D_ent is

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

begin

sr_0: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(0), sr_out => outputs1(0), sr_out2 => outputs2(0), sr_out3 => outputs3(0), sr_out4 => outputs4(0));
sr_1: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(1), sr_out => outputs1(1), sr_out2 => outputs2(1), sr_out3 => outputs3(1), sr_out4 => outputs4(1));
sr_2: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(2), sr_out => outputs1(2), sr_out2 => outputs2(2), sr_out3 => outputs3(2), sr_out4 => outputs4(2));
sr_3: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(3), sr_out => outputs1(3), sr_out2 => outputs2(3), sr_out3 => outputs3(3), sr_out4 => outputs4(3));
sr_4: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(4), sr_out => outputs1(4), sr_out2 => outputs2(4), sr_out3 => outputs3(4), sr_out4 => outputs4(4));
sr_5: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(5), sr_out => outputs1(5), sr_out2 => outputs2(5), sr_out3 => outputs3(5), sr_out4 => outputs4(5));
sr_6: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(6), sr_out => outputs1(6), sr_out2 => outputs2(6), sr_out3 => outputs3(6), sr_out4 => outputs4(6));
sr_7: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(7), sr_out => outputs1(7), sr_out2 => outputs2(7), sr_out3 => outputs3(7), sr_out4 => outputs4(7));
sr_8: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(8), sr_out => outputs1(8), sr_out2 => outputs2(8), sr_out3 => outputs3(8), sr_out4 => outputs4(8));
sr_9: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(9), sr_out => outputs1(9), sr_out2 => outputs2(9), sr_out3 => outputs3(9), sr_out4 => outputs4(9));
sr_10: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(10), sr_out => outputs1(10), sr_out2 => outputs2(10), sr_out3 => outputs3(10), sr_out4 => outputs4(10));
sr_11: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(11), sr_out => outputs1(11), sr_out2 => outputs2(11), sr_out3 => outputs3(11), sr_out4 => outputs4(11));
sr_12: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(12), sr_out => outputs1(12), sr_out2 => outputs2(12), sr_out3 => outputs3(12), sr_out4 => outputs4(12));
sr_13: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(13), sr_out => outputs1(13), sr_out2 => outputs2(13), sr_out3 => outputs3(13), sr_out4 => outputs4(13));
sr_14: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(14), sr_out => outputs1(14), sr_out2 => outputs2(14), sr_out3 => outputs3(14), sr_out4 => outputs4(14));
sr_15: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(15), sr_out => outputs1(15), sr_out2 => outputs2(15), sr_out3 => outputs3(15), sr_out4 => outputs4(15));
sr_16: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(16), sr_out => outputs1(16), sr_out2 => outputs2(16), sr_out3 => outputs3(16), sr_out4 => outputs4(16));
sr_17: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(17), sr_out => outputs1(17), sr_out2 => outputs2(17), sr_out3 => outputs3(17), sr_out4 => outputs4(17));
sr_18: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(18), sr_out => outputs1(18), sr_out2 => outputs2(18), sr_out3 => outputs3(18), sr_out4 => outputs4(18));
sr_19: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(19), sr_out => outputs1(19), sr_out2 => outputs2(19), sr_out3 => outputs3(19), sr_out4 => outputs4(19));
sr_20: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(20), sr_out => outputs1(20), sr_out2 => outputs2(20), sr_out3 => outputs3(20), sr_out4 => outputs4(20));
sr_21: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(21), sr_out => outputs1(21), sr_out2 => outputs2(21), sr_out3 => outputs3(21), sr_out4 => outputs4(21));
sr_22: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(22), sr_out => outputs1(22), sr_out2 => outputs2(22), sr_out3 => outputs3(22), sr_out4 => outputs4(22));
sr_23: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(23), sr_out => outputs1(23), sr_out2 => outputs2(23), sr_out3 => outputs3(23), sr_out4 => outputs4(23));
sr_24: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(24), sr_out => outputs1(24), sr_out2 => outputs2(24), sr_out3 => outputs3(24), sr_out4 => outputs4(24));
sr_25: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(25), sr_out => outputs1(25), sr_out2 => outputs2(25), sr_out3 => outputs3(25), sr_out4 => outputs4(25));
sr_26: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(26), sr_out => outputs1(26), sr_out2 => outputs2(26), sr_out3 => outputs3(26), sr_out4 => outputs4(26));
sr_27: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(27), sr_out => outputs1(27), sr_out2 => outputs2(27), sr_out3 => outputs3(27), sr_out4 => outputs4(27));
sr_28: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(28), sr_out => outputs1(28), sr_out2 => outputs2(28), sr_out3 => outputs3(28), sr_out4 => outputs4(28));
sr_29: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(29), sr_out => outputs1(29), sr_out2 => outputs2(29), sr_out3 => outputs3(29), sr_out4 => outputs4(29));
sr_30: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(30), sr_out => outputs1(30), sr_out2 => outputs2(30), sr_out3 => outputs3(30), sr_out4 => outputs4(30));
sr_31: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(31), sr_out => outputs1(31), sr_out2 => outputs2(31), sr_out3 => outputs3(31), sr_out4 => outputs4(31));
sr_32: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(32), sr_out => outputs1(32), sr_out2 => outputs2(32), sr_out3 => outputs3(32), sr_out4 => outputs4(32));
sr_33: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(33), sr_out => outputs1(33), sr_out2 => outputs2(33), sr_out3 => outputs3(33), sr_out4 => outputs4(33));
sr_34: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(34), sr_out => outputs1(34), sr_out2 => outputs2(34), sr_out3 => outputs3(34), sr_out4 => outputs4(34));
sr_35: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(35), sr_out => outputs1(35), sr_out2 => outputs2(35), sr_out3 => outputs3(35), sr_out4 => outputs4(35));
sr_36: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(36), sr_out => outputs1(36), sr_out2 => outputs2(36), sr_out3 => outputs3(36), sr_out4 => outputs4(36));
sr_37: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(37), sr_out => outputs1(37), sr_out2 => outputs2(37), sr_out3 => outputs3(37), sr_out4 => outputs4(37));
sr_38: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(38), sr_out => outputs1(38), sr_out2 => outputs2(38), sr_out3 => outputs3(38), sr_out4 => outputs4(38));
sr_39: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(39), sr_out => outputs1(39), sr_out2 => outputs2(39), sr_out3 => outputs3(39), sr_out4 => outputs4(39));
sr_40: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(40), sr_out => outputs1(40), sr_out2 => outputs2(40), sr_out3 => outputs3(40), sr_out4 => outputs4(40));
sr_41: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(41), sr_out => outputs1(41), sr_out2 => outputs2(41), sr_out3 => outputs3(41), sr_out4 => outputs4(41));
sr_42: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(42), sr_out => outputs1(42), sr_out2 => outputs2(42), sr_out3 => outputs3(42), sr_out4 => outputs4(42));
sr_43: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(43), sr_out => outputs1(43), sr_out2 => outputs2(43), sr_out3 => outputs3(43), sr_out4 => outputs4(43));
sr_44: SR_8W_4D_ent port map (clk => clk, sr_in => inputs(44), sr_out => outputs1(44), sr_out2 => outputs2(44), sr_out3 => outputs3(44), sr_out4 => outputs4(44));


end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 03/26/2021 04:49:17 PM
-- Design Name: 
-- Module Name: ARR_SR_ent - Behavioral
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

entity ARR_SR_ent is
    port(
        clk : in std_logic;
        in_1 : std_logic_vector( 7 downto 0);
        in_2 : std_logic_vector( 7 downto 0);
        in_3 : std_logic_vector( 7 downto 0);
        in_4 : std_logic_vector( 7 downto 0);
        in_5 : std_logic_vector( 7 downto 0);
        in_6 : std_logic_vector( 7 downto 0);
        in_7 : std_logic_vector( 7 downto 0);
        in_8 : std_logic_vector( 7 downto 0);
        in_9 : std_logic_vector( 7 downto 0);
        in_10 : std_logic_vector( 7 downto 0);
        in_11 : std_logic_vector( 7 downto 0);
        in_12 : std_logic_vector( 7 downto 0);
        in_13 : std_logic_vector( 7 downto 0);
        in_14 : std_logic_vector( 7 downto 0);
        in_15 : std_logic_vector( 7 downto 0);
        out_11 : out std_logic_vector (7 downto 0);
        out_12 : out std_logic_vector (7 downto 0);
        out_13 : out std_logic_vector (7 downto 0);
        out_14 : out std_logic_vector (7 downto 0);
        out_15 : out std_logic_vector (7 downto 0);
        out_16 : out std_logic_vector (7 downto 0);
        out_17 : out std_logic_vector (7 downto 0);
        out_18 : out std_logic_vector (7 downto 0);
        out_19 : out std_logic_vector (7 downto 0);
        out_110 : out std_logic_vector (7 downto 0);
        out_111 : out std_logic_vector (7 downto 0);
        out_112 : out std_logic_vector (7 downto 0);
        out_113 : out std_logic_vector (7 downto 0);
        out_114 : out std_logic_vector (7 downto 0);
        out_115 : out std_logic_vector (7 downto 0);
        out_21 : out std_logic_vector (7 downto 0);
        out_22 : out std_logic_vector (7 downto 0);
        out_23 : out std_logic_vector (7 downto 0);
        out_24 : out std_logic_vector (7 downto 0);
        out_25 : out std_logic_vector (7 downto 0);
        out_26 : out std_logic_vector (7 downto 0);
        out_27 : out std_logic_vector (7 downto 0);
        out_28 : out std_logic_vector (7 downto 0);
        out_29 : out std_logic_vector (7 downto 0);
        out_210 : out std_logic_vector (7 downto 0);
        out_211 : out std_logic_vector (7 downto 0);
        out_212 : out std_logic_vector (7 downto 0);
        out_213 : out std_logic_vector (7 downto 0);
        out_214 : out std_logic_vector (7 downto 0);
        out_215 : out std_logic_vector (7 downto 0);
        out_31 : out std_logic_vector (7 downto 0);
        out_32 : out std_logic_vector (7 downto 0);
        out_33 : out std_logic_vector (7 downto 0);
        out_34 : out std_logic_vector (7 downto 0);
        out_35 : out std_logic_vector (7 downto 0);
        out_36 : out std_logic_vector (7 downto 0);
        out_37 : out std_logic_vector (7 downto 0);
        out_38 : out std_logic_vector (7 downto 0);
        out_39 : out std_logic_vector (7 downto 0);
        out_310 : out std_logic_vector (7 downto 0);
        out_311 : out std_logic_vector (7 downto 0);
        out_312 : out std_logic_vector (7 downto 0);
        out_313 : out std_logic_vector (7 downto 0);
        out_314 : out std_logic_vector (7 downto 0);
        out_315 : out std_logic_vector (7 downto 0)
    );
end ARR_SR_ent;

architecture Behavioral of ARR_SR_ent is
    COMPONENT SR_8W_3D_ent
    PORT(
        clk : in std_logic;
        sr_in : in std_logic_vector( 7 downto 0);
        sr_out : out std_logic_vector(7 downto 0);
        sr_out2 : out std_logic_vector(7 downto 0);
        sr_out3 : out std_logic_vector(7 downto 0)
    );
    END COMPONENT;

begin

sr_1: SR_8W_3D_ent port map (clk => clk, sr_in => in_1, sr_out => out_11, sr_out2 => out_21, sr_out3 => out_31);
sr_2: SR_8W_3D_ent port map (clk => clk, sr_in => in_2, sr_out => out_12, sr_out2 => out_22, sr_out3 => out_32);
sr_3: SR_8W_3D_ent port map (clk => clk, sr_in => in_3, sr_out => out_13, sr_out2 => out_23, sr_out3 => out_33);
sr_4: SR_8W_3D_ent port map (clk => clk, sr_in => in_4, sr_out => out_14, sr_out2 => out_24, sr_out3 => out_34);
sr_5: SR_8W_3D_ent port map (clk => clk, sr_in => in_5, sr_out => out_15, sr_out2 => out_25, sr_out3 => out_35);
sr_6: SR_8W_3D_ent port map (clk => clk, sr_in => in_6, sr_out => out_16, sr_out2 => out_26, sr_out3 => out_36);
sr_7: SR_8W_3D_ent port map (clk => clk, sr_in => in_7, sr_out => out_17, sr_out2 => out_27, sr_out3 => out_37);
sr_8: SR_8W_3D_ent port map (clk => clk, sr_in => in_8, sr_out => out_18, sr_out2 => out_28, sr_out3 => out_38);
sr_9: SR_8W_3D_ent port map (clk => clk, sr_in => in_9, sr_out => out_19, sr_out2 => out_29, sr_out3 => out_39);
sr_10: SR_8W_3D_ent port map (clk => clk, sr_in => in_10, sr_out => out_110, sr_out2 => out_210, sr_out3 => out_310);
sr_11: SR_8W_3D_ent port map (clk => clk, sr_in => in_11, sr_out => out_111, sr_out2 => out_211, sr_out3 => out_311);
sr_12: SR_8W_3D_ent port map (clk => clk, sr_in => in_12, sr_out => out_112, sr_out2 => out_212, sr_out3 => out_312);
sr_13: SR_8W_3D_ent port map (clk => clk, sr_in => in_13, sr_out => out_113, sr_out2 => out_213, sr_out3 => out_313);
sr_14: SR_8W_3D_ent port map (clk => clk, sr_in => in_14, sr_out => out_114, sr_out2 => out_214, sr_out3 => out_314);
sr_15: SR_8W_3D_ent port map (clk => clk, sr_in => in_15, sr_out => out_115, sr_out2 => out_215, sr_out3 => out_315);


end Behavioral;

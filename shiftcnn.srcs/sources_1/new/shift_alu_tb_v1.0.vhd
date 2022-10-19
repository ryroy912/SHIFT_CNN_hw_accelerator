----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.03.2021 19:27:24
-- Design Name: 
-- Module Name: shift_alu_tb - Behavioral
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
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use ieee.NUMERIC_STD.all;


entity shift_alu_tb is
end shift_alu_tb;

architecture Behavioral of shift_alu_tb is
COMPONENT Shift_ALU
PORT(
         INPUT : IN  signed(3 downto 0);
         OUTPUT1 : OUT  signed(7 downto 0);
         OUTPUT2 : OUT  signed(7 downto 0);
         OUTPUT3 : OUT  signed(7 downto 0);
         OUTPUT4 : OUT  signed(7 downto 0);
         OUTPUT5 : OUT  signed(7 downto 0);
         OUTPUT6 : OUT  signed(7 downto 0);
         OUTPUT7 : OUT  signed(7 downto 0);
         OUTPUT8 : OUT  signed(7 downto 0);
         OUTPUT9 : OUT  signed(7 downto 0);
         OUTPUT10 : OUT  signed(7 downto 0);
         OUTPUT11 : OUT  signed(7 downto 0);
         OUTPUT12 : OUT  signed(7 downto 0);
         OUTPUT13 : OUT  signed(7 downto 0);
         OUTPUT14 : OUT  signed(7 downto 0);
         OUTPUT15 : OUT  signed(7 downto 0)
      );
END COMPONENT;

signal INPUT : signed(3 downto 0);
signal OUTPUT1 : signed(7 downto 0);
signal OUTPUT2 : signed(7 downto 0);
signal OUTPUT3 : signed(7 downto 0);
signal OUTPUT4 : signed(7 downto 0);
signal OUTPUT5 : signed(7 downto 0);
signal OUTPUT6 : signed(7 downto 0);
signal OUTPUT7 : signed(7 downto 0);
signal OUTPUT8 : signed(7 downto 0);
signal OUTPUT9 : signed(7 downto 0);
signal OUTPUT10 : signed(7 downto 0);
signal OUTPUT11: signed(7 downto 0);
signal OUTPUT12 : signed(7 downto 0);
signal OUTPUT13 : signed(7 downto 0);
signal OUTPUT14 : signed(7 downto 0);
signal OUTPUT15 : signed(7 downto 0);
         

begin
uut: Shift_ALU PORT MAP (
          INPUT => INPUT,
          OUTPUT1 => OUTPUT1,
          OUTPUT2 => OUTPUT2,
          OUTPUT3 => OUTPUT3,
          OUTPUT4 => OUTPUT4,
          OUTPUT5 => OUTPUT5,
          OUTPUT6 => OUTPUT6,
          OUTPUT7 => OUTPUT7,
          OUTPUT8 => OUTPUT8,
          OUTPUT9 => OUTPUT9,
          OUTPUT10 => OUTPUT10,
          OUTPUT11 => OUTPUT11,
          OUTPUT12 => OUTPUT12,
          OUTPUT13 => OUTPUT13,
          OUTPUT14 => OUTPUT14,
          OUTPUT15 => OUTPUT15   
        );
 stim_proc: process
   begin  
      INPUT <= "0101";
      wait;
      end process;
end;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02/28/2021 10:52:22 AM
-- Design Name: 
-- Module Name: ADDR_SUBR16_OF_ent - Behavioral
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

entity ADDR_SUBR16_OF_ent is
port(	
    A: in std_logic_vector(7 downto 0);
	B: in std_logic_vector(7 downto 0);
	SUB: in std_logic;
	Co: out std_logic;
	S: out std_logic_vector(7 downto 0);
	V: out std_logic
);
end ADDR_SUBR16_OF_ent;  

--------------------------------------------------

architecture behav2 of ADDR_SUBR16_OF_ent is

    component ADDR_ent
        port(	
            A: in std_logic;
            B: in std_logic;            
            Ci: in std_logic;
            Co: out std_logic;
            S: out std_logic
        );
     end component;
        
    signal C0, C1, C2, C3, C4, C5, C6, C7: std_logic;    
    signal Ci: std_logic; 
    signal B0, B1, B2, B3, B4, B5, B6, B7: std_logic; 

begin
    
    Ci <= '0' xor SUB;
    
    B0 <= B(0) xor SUB;
    B1 <= B(1) xor SUB;
    B2 <= B(2) xor SUB;
    B3 <= B(3) xor SUB;
    B4 <= B(4) xor SUB;
    B5 <= B(5) xor SUB;
    B6 <= B(6) xor SUB;
    B7 <= B(7) xor SUB;

   --------expanded definition---------
    addr0: ADDR_ent port map(
    A => A(0),
    B => B0,
    Ci => Ci,
    Co => C0,
    S => S(0)
    );
    ----- compressed definition----
    addr1: ADDR_ent port map (A => A(1), B => B1, Ci => C0, Co => C1, S => S(1));
    addr2: ADDR_ent port map (A => A(2), B => B2, Ci => C1, Co => C2, S => S(2));
    addr3: ADDR_ent port map (A => A(3), B => B3, Ci => C2, Co => C3, S => S(3));
    addr4: ADDR_ent port map (A => A(4), B => B4, Ci => C3, Co => C4, S => S(4));
    addr5: ADDR_ent port map (A => A(5), B => B5, Ci => C4, Co => C5, S => S(5));
    addr6: ADDR_ent port map (A => A(6), B => B6, Ci => C5, Co => C6, S => S(6));
    addr7: ADDR_ent port map (A => A(7), B => B7, Ci => C6, Co => C7, S => S(7));

    
    Co <= C7 xor SUB;
    V <= C6 xor C7;
    
end behav2;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/22/2021 03:04:41 PM
-- Design Name: 
-- Module Name: Discard_Inst_TB - Behavioral
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

entity Discard_Inst_TB is
--  Port ( );
end Discard_Inst_TB;

architecture Behavioral of Discard_Inst_TB is

    signal jmp : std_logic;
    signal bne : std_logic;
    signal jr : std_logic;
    signal Id_f : std_logic;
    signal If_f : std_logic;
    
    component Discard_Inst
    port(
        Jmp : in std_logic;
        BNE : in std_logic;
        JR : in std_logic;
        Id_Flush : out std_logic;
        If_Flush : out std_logic
    );
     end component;
    
begin

    Dis_inst:Discard_Inst port map (
        Jmp => jmp,
        BNE => bne,
        JR => jr,
        Id_Flush => Id_f,
        If_Flush => If_f
    );
    
    TB : process 
    begin 
        
        jmp <= '1';
        bne <= '1';
        jr <= '1';
        
        wait for 5ns;
        
        jmp <= '1';
        bne <= '0';
        jr <= '0';
        
        wait for 5ns;
        
        jmp <= '0';
        bne <= '1';
        jr <= '0';
        
        wait for 5ns;
        
        jmp <= '0';
        bne <= '0';
        jr <= '0';
        
        wait for 5ns;
        
        wait;
        
    end process;
    
end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/22/2021 04:01:59 PM
-- Design Name: 
-- Module Name: Forwarding_Mux_TB - Behavioral
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

entity Forwarding_Mux_TB is
--  Port ( );
end Forwarding_Mux_TB;

architecture Behavioral of Forwarding_Mux_TB is

    signal a : std_logic_vector (31 downto 0);
    signal b : std_logic_vector (31 downto 0);
    signal c : std_logic_vector (31 downto 0);
    signal sel : std_logic_vector (1 downto 0);
    signal D_out : std_logic_vector (31 downto 0);
    
    component Forwarding_MUX
    port(
        A : in std_logic_vector (31 downto 0);
        B : in std_logic_vector (31 downto 0);
        C : in std_logic_vector (31 downto 0);
        Sel : in std_logic_vector (1 downto 0);
        Data_Out : out std_logic_vector (31 downto 0)
    );
    end component;
    
begin

    MUX_test:Forwarding_MUX port map (
        A => a,
        B => b,
        C => c,
        Sel => sel,
        Data_Out => D_out
    );
    
    TB : process 
    begin 
        a <= "00000000000000000000000000000001";
        b <= "00000000000000000000000000000010";
        c <= "00000000000000000000000000000011";
        sel <= "00";
        
        wait for 5ns;
        
        a <= "00000000000000000000000000000001";
        b <= "00000000000000000000000000000010";
        c <= "00000000000000000000000000000011";
        sel <= "01";
        
        wait for 5ns;
        
        a <= "00000000000000000000000000000001";
        b <= "00000000000000000000000000000010";
        c <= "00000000000000000000000000000011";
        sel <= "10";
        
        wait for 5ns;
        
        a <= "00000000000000000000000000000001";
        b <= "00000000000000000000000000000010";
        c <= "00000000000000000000000000000011";
        sel <= "11";
        
        wait for 5ns;
        
        wait;
        
    end process;
    
end Behavioral;

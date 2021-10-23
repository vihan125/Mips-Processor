----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 10/23/2021 11:09:27 AM
-- Design Name: 
-- Module Name: mux_2x5to5_TB - Behavioral
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

entity mux_2x5to5_TB is
--  Port ( );
end mux_2x5to5_TB;

architecture Behavioral of mux_2x5to5_TB is

    signal addr1 : std_logic_vector (4 downto 0);
    signal addr2 : std_logic_vector (4 downto 0);
    signal sel : std_logic;
    signal addrOut : std_logic_vector (4 downto 0);
    
    component mux_2x5to5
    port(
        Addr_0 : in std_logic_vector (4 downto 0);
        Addr_1 : in std_logic_vector (4 downto 0);
        Sel : in std_logic;
        Addr_out : out std_logic_vector (4 downto 0)
    );
    end component; 
    
begin

    MUX_2X55:mux_2x5to5 port map (
        Addr_0 => addr1,
        Addr_1 => addr2,
        Sel => sel,
        Addr_out => addrOut
    );

    TB : process 
    begin 
        
        addr1 <= "00001";
        addr2 <= "00010";
        sel <= '0';
        
        wait for 5ns;
        
        addr1 <= "00001";
        addr2 <= "00010";
        sel <= '1';
        
        wait for 5ns;
        
        wait;
        
    end process;
end Behavioral;

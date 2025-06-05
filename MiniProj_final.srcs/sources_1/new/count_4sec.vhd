----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/24/2024 04:28:07 PM
-- Design Name: 
-- Module Name: count_8sec - Behavioral
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
use IEEE.STD_LOGIC_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity count_4sec is
Port(clk : in std_logic;
        reset : in std_logic;
		 ce : in std_logic;
		 tc : out std_logic); 
end count_4sec;

architecture Behavioral of count_4sec is

signal cnt : std_logic_vector(2 downto 0);

begin
  process(clk,reset,ce,cnt)
    begin
	   if(reset = '1')then
		  cnt <= "000";
      elsif(clk'event and clk = '1') then
        if(ce = '1')then
		    if(cnt = "100")then
		      cnt <= "000";
		    else
			   cnt <= cnt + 1;
		    end if;
        
		  end if;
	   end if;
    end process;


tc <=  cnt(2) and (not cnt(1)) and (not cnt(0));
end Behavioral;



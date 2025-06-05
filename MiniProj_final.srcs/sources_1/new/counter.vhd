----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/24/2024 04:09:09 PM
-- Design Name: 
-- Module Name: counter - Behavioral
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

entity count_1min is
Port(clk : in std_logic;
        reset : in std_logic;
		 ce : in std_logic;
		 tc : out std_logic); 
end count_1min;

architecture Behavioral of count_1min is

signal cnt : std_logic_vector(5 downto 0);

begin
  process(clk,reset,ce,cnt)
    begin
	   if(reset = '1')then
		  cnt <= "000000";
      elsif(clk'event and clk = '1') then
        if(ce = '1')then
		    if(cnt = "111100")then
		      cnt <= "000000";
		    else
			   cnt <= cnt + 1;
		    end if;
		  end if;
	   end if;
    end process;


tc <= cnt(5) and  cnt(4) and cnt(3) and  cnt(2) and (not cnt(1)) and (not cnt(0));
end Behavioral;

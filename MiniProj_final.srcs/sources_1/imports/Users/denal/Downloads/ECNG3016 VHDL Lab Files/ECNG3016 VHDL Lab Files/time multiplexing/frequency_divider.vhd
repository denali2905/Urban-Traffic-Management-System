library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity frequency_divider is
  Port(clk    : in std_logic;
       reset  : in std_logic;
		 clock1 : inout std_logic);
end frequency_divider;

architecture Behavioral of frequency_divider is
begin
--5MHz clock signal
  clk_1Hz : process(clk, reset)	 -- clock division by 10
	 variable a1: integer range 0 to 50000000;	  --10/2 = 5
	 begin
      if(reset ='1') then 
		  a1:= 50000000;
		  clock1 <= '1';
      elsif(clk'event and clk = '1') then 
        if(a1 = 0)then
		  a1:= 50000000;
		  clock1 <= not (clock1);          
	    else        
          a1 := a1 - 1;
		end if;
    end if;
   end process;
end Behavioral;
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/16/2024 12:29:47 AM
-- Design Name: 
-- Module Name: display - Behavioral
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

entity display is
    Port ( state : in STD_LOGIC_VECTOR (10 downto 0);
           mal : in std_logic;
           sig_1s : in std_logic;
           vm  : in std_logic;
           va  : in std_logic;
           pa  : in std_logic;
           light_ew : out std_logic_vector(2 downto 0);
           light_we : out std_logic_vector(2 downto 0);
           light_ns : out std_logic_vector(2 downto 0);
           light_sn : out std_logic_vector(2 downto 0);
           light_ws : out std_logic_vector(2 downto 0);
           light_en : out std_logic_vector(2 downto 0);
           light_dt : out std_logic_vector(2 downto 0));
end display;

architecture Behavioral of display is

begin
    disp : process(state,mal,va,vm,pa,sig_1s)
    begin
        case state is
            when "00000000001" =>
               if (pa='1')then
                light_ew <= "00" & sig_1s;
               else
                light_ew <= "100";
               end if;
               if (va='1')then
                light_we <=  sig_1s & "00";
               else
                light_we <= "100";
               end if;
               light_ns <= "001";
               if (vm='1')then
                light_sn <= "00" & sig_1s;
               else
                light_sn <= "001";
               end if;
               if (mal='1')then
                light_ws <= "00" & sig_1s;
               else
                light_ws <= "001";
               end if;
               light_en <= "001";
            when "00000000010" =>
                   if (pa='1')then
                    light_ew <= "00" & sig_1s;
                   else
                    light_ew <= "010";
                   end if;
                   if (va='1')then
                    light_we <= "0" & sig_1s & "0";
                   else
                    light_we <= "010";
                   end if;
                   light_ns <= "001";
                   if (vm='1')then
                    light_sn <= "00" & sig_1s;
                   else
                    light_sn <= "001";
                   end if;
                   if (mal='1')then
                    light_ws <= "00" & sig_1s;
                   else
                    light_ws <= "001";
                   end if;
                   light_en <= "001";
             when "00000000100" =>
                   if (pa='1')then
                    light_ew <= "00" & sig_1s;
                   else
                    light_ew <= "001";
                   end if;
                   if (va='1')then
                    light_we <= "00" & sig_1s;
                   else
                    light_we <= "001";
                   end if;
                   light_ns <= "100";
                   if (vm='1')then
                    light_sn <= "00" & sig_1s;
                   else
                    light_sn <= "001";
                   end if;
                   if (mal='1')then
                    light_ws <= "00" & sig_1s;
                   else
                    light_ws <= "001";
                   end if;
                   light_en <= "001";
             when "00000001000" =>
                   if (pa='1')then
                    light_ew <= "00" & sig_1s;
                   else
                    light_ew <= "001";
                   end if;
                   if (va='1')then
                    light_we <= "00" & sig_1s;
                   else
                    light_we <= "001";
                   end if;
                   light_ns <= "010";
                   if (vm='1')then
                    light_sn <= "00" & sig_1s;
                   else
                    light_sn <= "001";
                   end if;
                   if (mal='1')then
                    light_ws <= "00" & sig_1s;
                   else
                    light_ws <= "001";
                   end if;
                   light_en <= "001";
             when "00000010000" =>
                   if (pa='1')then
                    light_ew <= "00" & sig_1s;
                   else
                    light_ew <= "001";
                   end if;
                   if (va='1')then
                    light_we <= "00" & sig_1s;
                   else
                    light_we <= "001";
                   end if;
                   light_ns <= "001";
                   if (vm='1')then
                    light_sn <=  sig_1s & "00" ;
                   else
                    light_sn <= "100";
                   end if;
                   if (mal='1')then
                    light_ws <= "00" & sig_1s;
                   else
                    light_ws <= "001";
                   end if;
                   light_en <= "001";
             when "00000100000" =>
                   if (pa='1')then
                    light_ew <= "00" & sig_1s;
                   else
                    light_ew <= "001";
                   end if;
                   if (va='1')then
                    light_we <= "00" & sig_1s;
                   else
                    light_we <= "001";
                   end if;
                   light_ns <= "001";
                   if (vm='1')then
                    light_sn <= "0" & sig_1s & "0";
                   else
                    light_sn <= "010";
                   end if;
                   if (mal='1')then
                    light_ws <= "00" & sig_1s;
                   else
                    light_ws <= "001";
                   end if;
                   light_en <= "001";
             when "00001000000" =>
                   if (pa='1')then
                    light_ew <= "00" & sig_1s;
                   else
                    light_ew <= "001";
                   end if;
                   if (va='1')then
                    light_we <= "00" & sig_1s;
                   else
                    light_we <= "001";
                   end if;
                   light_ns <= "001";
                   if (vm='1')then
                    light_sn <= "00" & sig_1s;
                   else
                    light_sn <= "001";
                   end if;
                   if (mal='1')then
                    light_ws <= "00" & sig_1s;
                   else
                    light_ws <= "100";
                   end if;
                   light_en <= "100";
             when "00010000000" =>
                   if (pa='1')then
                    light_ew <= "00" & sig_1s;
                   else
                    light_ew <= "001";
                   end if;
                   if (va='1')then
                    light_we <= "00" & sig_1s;
                   else
                    light_we <= "001";
                   end if;
                   light_ns <= "001";
                   if (vm='1')then
                    light_sn <= "00" & sig_1s;
                   else
                    light_sn <= "001";
                   end if;
                   if (mal='1')then
                    light_ws <= "00" & sig_1s;
                   else
                    light_ws <= "010";
                   end if;
                   light_en <= "010";
             when "00100000000" =>
                   if (pa='1')then
                    light_ew <= "00" & sig_1s;
                   else
                    light_ew <= "001";
                   end if;
                   if (va='1')then
                    light_we <= "00" & sig_1s;
                   else
                    light_we <= "001";
                   end if;
                   light_ns <= "100";
                   if (vm='1')then
                    light_sn <= "00" & sig_1s;
                   else
                    light_sn <= "001";
                   end if;
                   if (mal='1')then
                    light_ws <= "00" & sig_1s;
                   else
                    light_ws <= "001";
                   end if;
                   light_en <= "001";
             when "01000000000" =>
                   if (pa='1')then
                    light_ew <= "00" & sig_1s;
                   else
                    light_ew <= "001";
                   end if;
                   if (va='1')then
                    light_we <= "00" & sig_1s;
                   else
                    light_we <= "001";
                   end if;
                   light_ns <= "010";
                   if (vm='1')then
                    light_sn <= "00" & sig_1s;
                   else
                    light_sn <= "001";
                   end if;
                   if (mal='1')then
                    light_ws <= "00" & sig_1s;
                   else
                    light_ws <= "001";
                   end if;
                   light_en <= "001";
             when "10000000000" =>
                   if (pa='1')then
                    light_ew <= "00" & sig_1s;
                   else
                    light_ew <= "001";
                   end if;
                   if (va='1')then
                    light_we <= "00" & sig_1s;
                   else
                    light_we <= "001";
                   end if;
                   light_ns <= "001";
                   if (vm='1')then
                    light_sn <= "00" & sig_1s;
                   else
                    light_sn <= "001";
                   end if;
                   if (mal='1')then
                    light_ws <= "00" & sig_1s;
                   else
                    light_ws <= "001";
                   end if;
                   light_en <= "001";
             when others =>
                   light_ew <= "111";
                   light_we <= "111";
                   light_ns <= "111";
                   light_sn <= "111";
                   light_ws <= "110";
                   light_en <= "110";
                                
      end case;
      if (va='1' or mal='1') then
        light_dt(0)<='1';
      else
        light_dt(0)<='0';
      end if;
      if (vm='1') then
        light_dt(1)<='1';
      else
        light_dt(1)<='0';
      end if;
      if (pa='1') then
        light_dt(2)<='1';
      else
        light_dt(2)<='0';
      end if;
      
    end process;
end Behavioral;

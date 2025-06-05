----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/24/2024 04:48:05 PM
-- Design Name: 
-- Module Name: test_sys - Behavioral
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

entity test_sys is
--  Port ( );
end test_sys;

architecture Behavioral of test_sys is
component Traffic_control_system is
  Port (clk : in std_logic;
       reset : in std_logic;
       ht    : in std_logic;
       mal   : in std_logic;
       va    : in std_logic;
       vm    : in std_logic;
       pa    : in std_logic;
       at    : in std_logic;
       aw    : in std_logic;
       light_ew : out std_logic_vector(2 downto 0);
       light_we : out std_logic_vector(2 downto 0);
       light_ns : out std_logic_vector(2 downto 0);
       light_sn : out std_logic_vector(2 downto 0);
       light_ws : out std_logic_vector(2 downto 0);
       light_en : out std_logic_vector(2 downto 0);
       light_dt : out std_logic_vector(2 downto 0));
end component;
---STEP #2--------------------------------------
-- Declare & Initialize Signals, Clock Period --
------------------------------------------------
--Inputs
signal h_traf, l_mal, v_acc,v_mal,p_act,a_thro,a_weat : std_logic :='0'; 
signal lew,lwe,lns,lsn,lws,len,ldt : std_logic_vector(2 downto 0);
signal reset_sig,f : std_logic := '0';
signal clk_sig,sig1s : std_logic := '0';

-- Clock period definitions
constant clk_period : time := 10 ns;

begin

---STEP #3---------------------------------
-- Instantiate the Unit Under Test (UUT) --
-------------------------------------------
uut : Traffic_control_system
    PORT MAP(clk => clk_sig,
            reset => reset_sig,
            ht=>h_traf,
            mal=>l_mal,
            va=>v_acc,
            vm=>v_mal,
            pa=>p_act, 
            at=>a_thro,
            aw=>a_weat,
            light_ew=>lew,
            light_we=>lwe,
            light_ns=>lns,
            light_sn=>lsn,
            light_ws=>lws,
            light_en=>len,
            light_dt=>ldt);
            
---STEP #4---------------------
-- Clock process definitions --
-------------------------------
clk_process :process
 begin
 clk_sig <= '0';
wait for clk_period/2;
 clk_sig <= '1';
wait for clk_period/2;
 end process;

---STEP #5-------------------------------------
-- Stimulus process ---------------------------
-----------------------------------------------
stim_proc: process
 begin
 --periodic clock waveform clk
 wait for clk_period*10;

h_traf<= '1';
 --insert stimulus here
 --hold reset state for 20ns
 reset_sig <= '1';
 wait for 20 ps;

 --restore reset to 0 and wait indefinitely
 reset_sig <= '0';
 wait for 20 ps;
 
wait until (lew(1)='1'); 
--wait for 3 us;
h_traf<= '0';




 wait;
 end process;

end Behavioral;

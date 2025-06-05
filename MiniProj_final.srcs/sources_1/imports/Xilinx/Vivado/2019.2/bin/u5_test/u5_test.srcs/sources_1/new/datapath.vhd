----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.11.2022 15:28:22
-- Design Name: 
-- Module Name: datapath - Behavioral
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

entity datapath is
  Port(clk : in std_logic;
       reset : in std_logic;
       t2sec_en : in std_logic;
       t4sec_en : in std_logic;
       t5sec_en : in std_logic;
       t8sec_en : in std_logic;
       t15sec_en : in std_logic;
       t25sec_en : in std_logic;
       t30sec_en : in std_logic;
       t1min_en : in std_logic;
       t1min15sec_en : in std_logic;
       t_reset : in std_logic;
       state : in std_logic_vector(10 downto 0);
       mal : in std_logic;
       vm  : in std_logic;
       va  : in std_logic;
       pa  : in std_logic;
       t1sec : out std_logic;
       t2sec : out std_logic;
       t4sec : out std_logic;
       t5sec : out std_logic;
       t8sec : out std_logic;
       t15sec : out std_logic;
       t25sec : out std_logic;
       t30sec : out std_logic;
       t1min : out std_logic;
       t1min15sec : out std_logic;
       light_ew : out std_logic_vector(2 downto 0);
       light_we : out std_logic_vector(2 downto 0);
       light_ns : out std_logic_vector(2 downto 0);
       light_sn : out std_logic_vector(2 downto 0);
       light_ws : out std_logic_vector(2 downto 0);
       light_en : out std_logic_vector(2 downto 0);
       light_dt : out std_logic_vector(2 downto 0));
end datapath;

architecture Behavioral of datapath is

component frequency_divider is
  Port(clk    : in std_logic;
       reset  : in std_logic;
		 clock1 : inout std_logic);
end component;

component count_1min15sec is
    Port(clk : in std_logic;
        reset : in std_logic;
		 ce : in std_logic;
		 tc : out std_logic); 
end component;

component count_1min is
    Port(clk : in std_logic;
        reset : in std_logic;
		 ce : in std_logic;
		 tc : out std_logic); 
end component;

component count_30sec is
    Port(clk : in std_logic;
        reset : in std_logic;
		 ce : in std_logic;
		 tc : out std_logic); 
end component;

component count_25sec is
    Port(clk : in std_logic;
        reset : in std_logic;
		 ce : in std_logic;
		 tc : out std_logic); 
end component;

component count_15sec is
    Port(clk : in std_logic;
        reset : in std_logic;
		 ce : in std_logic;
		 tc : out std_logic); 
end component;

component count_8sec is
    Port(clk : in std_logic;
        reset : in std_logic;
		 ce : in std_logic;
		 tc : out std_logic); 
end component;

component count_5sec is
    Port(clk : in std_logic;
        reset : in std_logic;
		 ce : in std_logic;
		 tc : out std_logic); 
end component;

component count_4sec is
    Port(clk : in std_logic;
        reset : in std_logic;
		 ce : in std_logic;
		 tc : out std_logic); 
end component;

component count_2sec is
    Port(clk : in std_logic;
        reset : in std_logic;
		 ce : in std_logic;
		 tc : out std_logic); 
end component;
component display is
    Port ( state : in STD_LOGIC_VECTOR (10 downto 0);
           mal: in std_logic;
           vm  : in std_logic;
           va  : in std_logic;
           pa  : in std_logic;
           sig_1s : in std_logic;
           light_ew : out std_logic_vector(2 downto 0);
           light_we : out std_logic_vector(2 downto 0);
           light_ns : out std_logic_vector(2 downto 0);
           light_sn : out std_logic_vector(2 downto 0);
           light_ws : out std_logic_vector(2 downto 0);
           light_en : out std_logic_vector(2 downto 0);
           light_dt : out std_logic_vector(2 downto 0));
end component;

signal sig_1s :  std_logic;
begin

freqdiv: frequency_divider 
        port map(clk=>clk,
                reset=>reset,
                clock1=>sig_1s);

signal_1min15sec : count_1min15sec 
        port map(clk=>sig_1s, 
                reset=>t_reset,
                ce=>t1min15sec_en,
                tc=>t1min15sec);

signal_1min : count_1min 
        port map(clk=>sig_1s, 
                reset=>t_reset,
                ce=>t1min_en,
                tc=>t1min);

signal_30sec : count_30sec 
        port map(clk=>sig_1s, 
                reset=>t_reset,
                ce=>t30sec_en,
                tc=>t30sec);
                
signal_25sec : count_25sec 
        port map(clk=>sig_1s, 
                reset=>t_reset,
                ce=>t25sec_en,
                tc=>t25sec);
                
signal_15sec : count_15sec 
        port map(clk=>sig_1s, 
                reset=>t_reset,
                ce=>t15sec_en,
                tc=>t15sec);
                                
signal_8sec : count_8sec 
        port map(clk=>sig_1s, 
                reset=>t_reset,
                ce=>t8sec_en,
                tc=>t8sec);

signal_5sec : count_5sec 
        port map(clk=>sig_1s, 
                reset=>t_reset,
                ce=>t5sec_en,
                tc=>t5sec);
                
signal_4sec : count_4sec 
        port map(clk=>sig_1s, 
                reset=>t_reset,
                ce=>t4sec_en,
                tc=>t4sec);
                
signal_2sec : count_2sec 
        port map(clk=>sig_1s, 
                reset=>t_reset,
                ce=>t2sec_en,
                tc=>t2sec);
                
lights: display
        port map(state=>state,
                mal=>mal,
                vm=>vm,
                va=>va,
                pa=>pa,
                sig_1s=>sig_1s,
                light_ew=>light_ew,
                light_we=>light_we,
                light_ns=>light_ns,
                light_sn=>light_sn,
                light_ws=>light_ws,
                light_en=>light_en,
                light_dt=>light_dt);
        
t1sec<=sig_1s;
end Behavioral;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 05/16/2024 10:57:58 PM
-- Design Name: 
-- Module Name: Traffic_control_system - Behavioral
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

entity Traffic_control_system is
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
end Traffic_control_system;

architecture Behavioral of Traffic_control_system is
component datapath is
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
       state : in std_logic_vector(10 downto 0); 
       light_ew : out std_logic_vector(2 downto 0);
       light_we : out std_logic_vector(2 downto 0);
       light_ns : out std_logic_vector(2 downto 0);
       light_sn : out std_logic_vector(2 downto 0);
       light_ws : out std_logic_vector(2 downto 0);
       light_en : out std_logic_vector(2 downto 0);
       light_dt : out std_logic_vector(2 downto 0));
end component;

component main_controller_unit is
    Port(clk : in std_logic;
        reset : in std_logic;
        at    : in std_logic;
        aw    : in std_logic;
        ht    : in std_logic;
        t2sec : in std_logic;
        t4sec : in std_logic;
        t5sec : in std_logic;
        t8sec : in std_logic;
        t15sec : in std_logic;
        t25sec : in std_logic;
        t30sec : in std_logic;
        t1min : in std_logic;
        t1min15sec : in std_logic;
        t2sec_en : out std_logic;
        t4sec_en : out std_logic;
        t5sec_en : out std_logic;
        t8sec_en : out std_logic;
        t15sec_en : out std_logic;
        t25sec_en : out std_logic;
        t30sec_en : out std_logic;
        t1min_en : out std_logic;
        t1min15sec_en : out std_logic;
       t_reset : out std_logic;
       state : out std_logic_vector(10 downto 0));
end component;

signal sig_1s : std_logic;
signal t1m15s,t1m,t30s,t25s,t15s,t8s,t5s,t4s,t2s,t1m15s_en,t1m_en,t30s_en,t25s_en,t15s_en,t8s_en,t5s_en,t4s_en,t2s_en,t_reset : std_logic;
signal st : std_logic_vector(10 downto 0);

begin
data_path : datapath
            port map(clk=>clk,
                    reset=>reset,
                    t1min15sec_en=>t1m15s_en,
                    t1min_en=>t1m_en,
                    t30sec_en=>t30s_en,
                    t25sec_en=>t25s_en,
                    t15sec_en=>t15s_en,
                    t8sec_en=>t8s_en,
                    t5sec_en=>t5s_en,
                    t4sec_en=>t4s_en,
                    t2sec_en=>t2s_en,
                    t_reset=>t_reset,
                    mal=>mal,
                    vm=>vm,
                    va=>va,
                    pa=>pa,
                    t1sec=>sig_1s,
                    t2sec=>t2s,
                    t4sec=>t4s,
                    t5sec=>t5s,
                    t8sec=>t8s,
                    t15sec=>t15s,
                    t25sec=>t25s,
                    t30sec=>t30s,
                    t1min=>t1m,
                    t1min15sec=>t1m15s,
                    state=>st,
                    light_ew=>light_ew,
                    light_we=>light_we,
                    light_ns=>light_ns,
                    light_sn=>light_sn,
                    light_ws=>light_ws,
                    light_en=>light_en,
                    light_dt=>light_dt);
                    
controlpath : main_controller_unit
            port map(clk=>clk,
                    reset=>reset,
                    t2sec_en=>t2s_en,
                    t4sec_en=>t4s_en,
                    t5sec_en=>t5s_en,
                    t8sec_en=>t8s_en,
                    t15sec_en=>t15s_en,
                    t25sec_en=>t25s_en,
                    t30sec_en=>t30s_en,
                    t1min_en=>t1m_en,
                    t1min15sec_en=>t1m15s_en,
                    t_reset=>t_reset,
                    at=>at,
                    aw=>aw,
                    ht=>ht,
                    t2sec=>t2s,
                    t4sec=>t4s,
                    t5sec=>t5s,
                    t8sec=>t8s,
                    t15sec=>t15s,
                    t25sec=>t25s,
                    t30sec=>t30s,
                    t1min=>t1m,
                    t1min15sec=>t1m15s,
                    state=>st);
end Behavioral;

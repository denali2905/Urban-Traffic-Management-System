--------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
--
-- Create Date:    19:21:55 03/29/08
-- Design Name:    
-- Module Name:    main_controller_unit - Behavioral
-- Project Name:   
-- Target Device:  
-- Tool versions:  
-- Description:
--
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
--------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity main_controller_unit is
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
end main_controller_unit;

architecture Behavioral of main_controller_unit is

type main_fsm is(green_ew, amber_ew, green_n, amber_n, green_s, amber_s ,green_enws, amber_enws,init,dly,green_at,amber_at);
signal pstate,nstate,dstate,tstate : main_fsm;


begin


  clkPROC : process(clk, reset)
    begin
	   if(reset = '1')then
		  pstate <= init;
		elsif(clk'event and clk = '1')then
		  pstate <= dstate;
		end if;
  end process;

  controlPROC : process(pstate,t1min15sec,t1min,t30sec,t25sec,t15sec,t8sec,t5sec,t4sec,t2sec,ht,aw,at,tstate)
    begin
	   case pstate is
	        
	     when init =>
                t2sec_en <= '0';
                t4sec_en <= '0';
                t5sec_en <= '0';
                t8sec_en <= '0';
                t15sec_en <= '0';
                t25sec_en <= '0';
                t30sec_en <= '0';
                t1min_en <= '0';
                t1min15sec_en <= '0';
                t_reset <= '1';
                state <= "00000000000";
                dstate <= green_ew;
                
	     when  green_ew=>
                    state <= "00000000001";
                    t_reset<='0';
                    if (ht='1')then
                        t1min15sec_en <= '1';
                        t1min_en <= '0';
                    else
                        t1min_en <= '1';
                        t1min15sec_en <= '0';
                    end if;
                    t2sec_en <= '0';
                    t4sec_en <= '0';
                    t5sec_en <= '0';
                    t8sec_en <= '0';
                    t15sec_en <= '0';
                    t25sec_en <= '0';
                    t30sec_en <= '0';
                    tstate <= green_ew;                   
               if (t1min='1' or t1min15sec='1')then
                    t_reset<='1';
                    dstate <= amber_ew;
               end if;
        
        when amber_ew =>
                    state <= "00000000010";
                    t_reset<='0';
                    if (aw='1') then
                        t15sec_en <= '1';
                        t8sec_en <= '0';
                    else
                        t8sec_en <= '1';
                        t15sec_en <= '0';
                    end if;
                    t2sec_en <= '0';
                    t4sec_en <= '0';
                    t5sec_en <= '0';
                    t25sec_en <= '0';
                    t30sec_en <= '0';
                    t1min_en <= '0';
                    t1min15sec_en <= '0';
                    tstate <= amber_ew;
               if (t8sec='1' or t15sec='1')then
                   t_reset<='1';
                   nstate <= green_n;
                   dstate <= dly;                  
               end if;

	     when  green_n=>
                    state <= "00000000100";
                    t_reset<='0';
                    if (ht='1')then
                        t25sec_en <= '1';
                        t30sec_en <= '0';
                    else
                        t30sec_en <= '1';
                        t25sec_en <= '0';
                    end if;
                    t2sec_en <= '0';
                    t4sec_en <= '0';
                    t5sec_en <= '0';
                    t8sec_en <= '0';
                    t15sec_en <= '0';
                    t1min_en <= '0';
                    t1min15sec_en <= '0';
                    tstate <= green_n;
               if (t30sec='1' or t25sec='1')then
                  t_reset<='1'; 
                  dstate <= amber_n;                 
               end if;

        when amber_n =>
                    state <= "00000001000";
                    t_reset<='0';
                    if (aw='1') then
                        t8sec_en <= '1';
                        t5sec_en <= '0';
                    else
                        t5sec_en <= '1';
                        t8sec_en <= '0';
                    end if;
                    t2sec_en <= '0';
                    t4sec_en <= '0';
                    t15sec_en <= '0';
                    t25sec_en <= '0';
                    t30sec_en <= '0';
                    t1min_en <= '0';
                    t1min15sec_en <= '0';
                    tstate <= amber_n;
              if (t8sec='1' or t5sec='1')then
                  t_reset<='1';
                  nstate <= green_s;
                  dstate <= dly;
               end if;

       when  green_s=>
                    state <= "00000010000";
                    t_reset<='0';
                    if (ht='1')then
                        t25sec_en <= '1';
                        t30sec_en <= '0';
                    else
                        t30sec_en <= '1';
                        t25sec_en <= '0';
                    end if;
                    t2sec_en <= '0';
                    t4sec_en <= '0';
                    t5sec_en <= '0';
                    t8sec_en <= '0';
                    t15sec_en <= '0';
                    t1min_en <= '0';
                    t1min15sec_en <= '0';
                    tstate <= green_s;
               if (t30sec='1' or t25sec='1')then
                   t_reset<='1';
                   dstate <= amber_s;
               end if;
        
        when amber_s =>
                    state<= "00000100000";
                    t_reset<='0';
                    if (aw='1') then
                        t8sec_en <= '1';
                        t5sec_en <= '0';
                    else
                        t5sec_en <= '1';
                        t8sec_en <= '0';
                    end if;
                    t2sec_en <= '0';
                    t4sec_en <= '0';
                    t15sec_en <= '0';
                    t25sec_en <= '0';
                    t30sec_en <= '0';
                    t1min_en <= '0';
                    t1min15sec_en <= '0';
                    tstate <= amber_s;
               if (t8sec='1' or t5sec='1')then
                   t_reset<='1';
                   nstate <= green_enws;
                   dstate <= dly;    
              end if;
       
       when  green_enws=>
                    state <= "00001000000";
                    t_reset<='0';
                    t2sec_en <= '0';
                    t4sec_en <= '0';
                    t5sec_en <= '0';
                    t8sec_en <= '0';
                    t15sec_en <= '1';
                    t25sec_en <= '0';
                    t30sec_en <= '0';
                    t1min_en <= '0';
                    t1min15sec_en <= '0';
                    tstate <= green_enws;
               if (t15sec='1')then
                   t_reset<='1';
                   dstate <= amber_enws;
               end if;
        
        when amber_enws =>
                    state <= "00010000000";
                    t_reset<='0';
                    if (aw='1') then
                        t8sec_en <= '1';
                        t5sec_en <= '0';
                    else
                        t5sec_en <= '1';
                        t8sec_en <= '0';
                    end if;
                    t2sec_en <= '0';
                    t4sec_en <= '0';
                    t15sec_en <= '0';
                    t25sec_en <= '0';
                    t30sec_en <= '0';
                    t1min_en <= '0';
                    t1min15sec_en <= '0';
                    tstate <= amber_enws;
               if (t8sec='1' or t5sec='1')then
                  t_reset<='1';
                  nstate <= green_ew;
                  dstate <= dly;                   
              end if;

          when dly =>
                state <= "10000000000";
                t_reset<='0';  
                t5sec_en <= '0';
                t8sec_en <= '0';
                t15sec_en <= '0';
                t25sec_en <= '0';
                t30sec_en <= '0';
                t1min_en <= '0';
                t1min15sec_en <= '0';
                if (aw='1') then
                    t4sec_en <= '1';
                    t2sec_en <= '0';
                else
                    t2sec_en <= '1';
                    t4sec_en <= '0';
                end if;
                
                if (t2sec='1' or t4sec='1')then
                  t_reset<='1';
                  dstate <= nstate;
                end if;
                
            when green_at=>
                t_reset<='0';
                state <= "00100000000";
                t2sec_en <= '0';
                t4sec_en <= '0';
                t5sec_en <= '0';
                t8sec_en <= '0';
                t15sec_en <= '1';
                t25sec_en <= '0';
                t30sec_en <= '0';
                t1min_en <= '0';
                t1min15sec_en <= '0';
                if (t15sec='1')then
                  t_reset<='1';
                  dstate <= amber_at;
                end if;
                
            when amber_at=>
                t_reset<='0';
                state <= "01000000000";
                t2sec_en <= '0';
                t4sec_en <= '1';
                t5sec_en <= '0';
                t8sec_en <= '0';
                t15sec_en <= '0';
                t25sec_en <= '0';
                t30sec_en <= '0';
                t1min_en <= '0';
                t1min15sec_en <= '0';
                if (t4sec='1')then
                  t_reset<='1';
                  dstate <= dly;
                end if;
		end case;
		if (at='1') then
		  t_reset<='1';
		  nstate<=tstate;
		  dstate<=green_at;
        end if;
  end process;
end Behavioral;
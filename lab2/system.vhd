-- SYSTEM.VHD --
library ieee;
use ieee.std_logic_1164.all;

entity System is
	 port(reset, clk, athome, findfood, lostfood, closetofood, success,
	 scantimeup: in std_logic;
	 food: out std_logic);
end System;

architecture Struct of System is
	component Count is
		generic (threshold : natural);
		port(reset, clk, start: in std_logic; aboveth: out std_logic);
	end component;
	
	component Robot is
		 port(reset, clk, athome, findfood, lostfood, closetofood,
		success, aboverestth, abovesearchth, scantimeup: in std_logic;
		rest, search, food: out std_logic);
	end component;
	Signal foodOut, link_ab_reset, link_ab_search, link_rest, link_search : std_logic := '0';
begin
-- Count1
	 C1: Count 
	 generic map(3) -- Dois-je compter 4 front à la fin du start ou depuis le début du start
	 port map(reset,clk,link_rest,link_ab_reset);
-- Count2	 
	 C2: Count 
	 generic map(9) -- Dois-je compter 10 front à la fin du start ou depuis le début du start
	 port map(reset,clk,link_search,link_ab_search);
-- Robot	 
	 R: Robot port map(reset, clk, athome, findfood, lostfood, closetofood, success, link_ab_reset, link_ab_search, scantimeup, link_rest, link_search, foodOut);
	 
	 food <= foodOut;

end Struct;

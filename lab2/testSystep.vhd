-- TESTSYSTEM.VHD --

library ieee;
use ieee.std_logic_1164.all;

entity testSystem is
end testSystem;

architecture test3 of testSystem is
	component System is 
	port(reset, clk, athome, findfood, lostfood, closetofood, success,
		 scantimeup: in std_logic;
		 food: out std_logic);	
	end component;
	Signal reset, clk, athome, findfood, lostfood, closetofood, success, scantimeup, food : std_logic := '0';
begin
	S:System port map(reset, clk, athome, findfood, lostfood, closetofood, success, scantimeup, food);	
    
end test3;




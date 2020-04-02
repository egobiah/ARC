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
    reset <= '1', '0' after 5 ns, '1' after 1830 ns, '0' after 1850 ns;
	process
	begin
	clk <= '0';
	wait for 10 ns;
	clk <= '1';
	wait for 10 ns;
	end process;
	
	athome <= '0', '1' after 400 ns, '0' after 440 ns, '1' after 1030 ns, '0' after 1050 ns
	,'1' after 1530 ns, '0' after 1550 ns;
	
	findfood <= '0', '1' after 590 ns, '0' after 610 ns,'1' after 1330 ns, '0' after 1350 ns,
	'1' after 1430 ns, '0' after  1450 ns, '1' after 1650 ns, '0' after  1670 ns,
	'1' after 1690 ns, '0' after  1710 ns;
	
	closetofood <= '0', '1' after 630 ns, '0' after 650 ns;
	
	success <= '0', '1' after 850 ns, '0' after 870 ns,'1' after 1230 ns, '0' after 1250 ns;
	
	lostfood <= '0', '1' after 1370 ns, '0' after 1390 ns, '1' after 1670 ns, '0' after  1690 ns,
	'1' after 1710 ns, '0' after  1730 ns;
	
	scantimeup <= '0', '1' after 1410 ns, '0' after 1430 ns;
	
	
end test3;




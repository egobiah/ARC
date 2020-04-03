-- TESTROBOT.VHD --

library ieee;
use ieee.std_logic_1164.all;

entity testRobot is
end testRobot;

architecture test1 of testRobot is
  component Robot is
	 port(reset, clk, athome, findfood, lostfood, closetofood,
	success, aboverestth, abovesearchth, scantimeup: in std_logic;
	rest, search, food: out std_logic);
  end component;
  signal r, clk, ah, f, l, c, s, arest, asearch,scan, re, se, fo : std_logic := '0';
begin
     A: Robot port map(r, clk, ah, f, l, c, s, arest, asearch,scan, re, se, fo);
	-- manage reset
	r <= '0', '1' after 44 ns, '0' after 45 ns, '1' after 84 ns, '0' after 85 ns, '1' after  144 ns, '0' after 145  ns,
	'1' after 224 ns, '0' after  225 ns, '1' after  324 ns, '0' after 325  ns, '1' after  444 ns, '0' after 445  ns, '1' after  584 ns, '0' after  585 ns,
	'1' after  684 ns, '0' after 685  ns, '1' after  804 ns, '0' after 805  ns, '1' after 904  ns, '0' after 905  ns, '1' after  984 ns, '0' after  985 ns,
	'1' after 1064  ns, '0' after 1065  ns, '1' after 1204  ns, '0' after 1205  ns, '1' after 1340  ns, '0' after 1341  ns;
	-- manage clock
	process	
	begin
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
	end process;
	-- manage athome
	ah <= '0', '1' after 545 ns, '0' after 555 ns, '1' after 1045 ns, '0' after 1055 ns, '1' after 1165 ns, '0' after 1175 ns;
	-- manage findfood
	f <= '0', '1' after 185 ns, '0' after 195 ns, '1' after 265 ns, '0' after 275 ns, '1' after 365 ns, '0' after 375 ns,
	'1' after 485 ns, '0' after 495 ns, '1' after 625 ns, '0' after 635 ns, '1' after 725 ns, '0' after 735 ns,
	'1' after 845 ns, '0' after 855 ns, '1' after 1105 ns, '0' after 1115 ns, '1' after 1245 ns, '0' after 1255 ns,
	'1' after 1285 ns, '0' after 1295 ns, '1' after 1485 ns, '0' after 1495 ns;
	-- manage lostfood
	l <= '0', '1' after 645 ns, '0' after 655 ns, '1' after 745 ns, '0' after 755 ns, '1' after 1265 ns, '0' after 1275 ns, '1' after 1505 ns, '0' after 1515 ns;
	--manage closetofood
	c <= '0' , '1' after 285 ns, '0' after 295 ns, '1' after 385 ns, '0' after 395 ns, '1' after 505 ns, '0' after 515 ns,
	'1' after 1125 ns, '0' after 1135 ns , '1' after 1305 ns, '0' after 1315 ns;
	--manage sucess
	s <= '0', '1' after 405 ns, '0' after 415 ns, '1' after 525 ns, '0' after 535 ns, '1' after 1145 ns, '0' after 1155 ns,
	'1' after 1185 ns, '0' after 1195 ns, '1' after 1325 ns, '0' after 1335 ns;
	
	-- manage aboverestth
	
	arest <= '0', '1' after 105 ns, '0' after 115 ns, '1' after 165 ns, '0' after 175 ns, 
	'1' after 245 ns, '0' after 255 ns , '1' after 345 ns, '0' after 355 ns, '1' after 465 ns, '0' after 475 ns,
	'1' after 605 ns, '0' after 615 ns, '1' after 705  ns, '0' after 715 ns, '1' after 825 ns, '0' after 835 ns,
	'1' after 925 ns, '0' after 935 ns, '1' after 1005 ns, '0' after 1015 ns, '1' after 1085 ns, '0' after 1095 ns,
	'1' after 1225 ns, '0' after 1235 ns, '1' after 1365 ns, '0' after 1375 ns;
	
	-- manage abovesearchth
	asearch <= '0', '1' after 765 ns, '0' after 775 ns, '1' after 865 ns, '0' after 875 ns, '1' after 945 ns, '0' after 955 ns,
	'1' after 1025 ns, '0' after 1035 ns;

	 
	-- manage scantimeup
	scan <= '0', '1' after 1525 ns, '0' after 1535 ns;
	
end test1;

library work;
configuration config1 of work.testRobot is 
    for test1 
       for A:Robot use entity work.Robot(automate_robot);
       end for;
    end for; 
end config1; 



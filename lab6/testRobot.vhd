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
  
  component RobotBin is
	 port(reset, clk, athome, findfood, lostfood, closetofood,
	success, aboverestth, abovesearchth, scantimeup: in std_logic;
	rest, search, food: out std_logic);
  end component;
  
  component RobotGray is
	 port(reset, clk, athome, findfood, lostfood, closetofood,
	success, aboverestth, abovesearchth, scantimeup: in std_logic;
	rest, search, food: out std_logic);
  end component;
  
  component RobotHot is
	 port(reset, clk, athome, findfood, lostfood, closetofood,
	success, aboverestth, abovesearchth, scantimeup: in std_logic;
	rest, search, food: out std_logic);
  end component;
  signal r, clk, ah, f, l, c, s, arest, asearch,scan, re, se, fo : std_logic := '0';
  signal reBin, seBin, foBin : std_logic := '0';
  signal reGray, seGray, foGray : std_logic := '0';
  signal reHot, seHot, foHot : std_logic := '0';
  signal testPSL : std_logic := '1';
    -- psl default clock is rising_edge(clk);
	
	-- psl property RestAlwaysTheSame is always ( ((re = '0' or reBin = '0' or reGray = '0' or reHot = '0') 
	-- AND (re = '0' and reBin = '0' and reGray = '0' and reHot = '0'))
	-- OR  ((re = '1' or reBin = '1' or reGray = '1' or reHot = '1') 
	-- AND (re = '1' and reBin = '1' and reGray = '1' and reHot = '1')) );
	-- psl assert RestAlwaysTheSame;

	
	
	-- psl property SearchAlwaysTheSame is always (
	--((se = '0' or seBin = '0' or seGray = '0' or seHot = '0') AND (se = '0' and seBin = '0' and seGray = '0' and seHot = '0'))
	--  OR ((se = '1' or seBin = '1' or seGray = '1' or seHot = '1')  AND (se = '1' and seBin = '1' and seGray = '1' and seHot = '1')));
	-- psl assert SearchAlwaysTheSame;
	
	-- psl property FoodAlwaysTheSame is always (
	--((fo = '0' or foBin = '0' or foGray = '0' or foHot = '0') AND (fo = '0' and foBin = '0' and foGray = '0' and foHot = '0'))
	-- OR ((fo = '1' or foBin = '1' or foGray = '1' or foHot = '1') AND (fo = '1' and foBin = '1' and foGray = '1' and foHot = '1')));
	-- psl assert FoodAlwaysTheSame ;
	
	

begin
     Rclassic:Robot port map(r, clk, ah, f, l, c, s, arest, asearch,scan, re, se, fo);
    Rbin:RobotBin port map(r, clk, ah, f, l, c, s, arest, asearch,scan, reBin, seBin, foBin);
     RHot: RobotHOT port map(r, clk, ah, f, l, c, s, arest, asearch,scan, reGray, seGray, foGray);
     RGray: RobotGray port map(r, clk, ah, f, l, c, s, arest, asearch,scan, reHot, seHot, foHot);
	-- manage reset
	r <= '1', '0' after 1 ns, '1' after 44 ns, '0' after 45 ns, '1' after 84 ns, '0' after 85 ns, '1' after  144 ns, '0' after 145  ns,
	'1' after 224 ns, '0' after  225 ns, '1' after  324 ns, '0' after 325  ns, '1' after  444 ns, '0' after 445  ns, '1' after  584 ns, '0' after  585 ns,
	'1' after  684 ns, '0' after 685  ns, '1' after  804 ns, '0' after 805  ns, '1' after 904  ns, '0' after 905  ns, '1' after  984 ns, '0' after  985 ns,
	'1' after 1064  ns, '0' after 1065  ns, '1' after 1204  ns, '0' after 1205  ns, '1' after 1340  ns, '0' after 1341  ns
	, '1' after 1342 ns, '0' after 1343 ns;
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
	'1' after 1285 ns, '0' after 1295 ns, '1' after 1465 ns, '0' after 1475 ns ;
	-- manage lostfood
	l <= '0', '1' after 645 ns, '0' after 655 ns, '1' after 745 ns, '0' after 755 ns, '1' after 1265 ns, '0' after 1275 ns,
	'1' after 1565 ns, '0' after 1575 ns;
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
	'1' after 1025 ns, '0' after 1035 ns,'1' after 1805 ns, '0' after 1815 ns ;

	 
	-- manage scantimeup
	scan <= '0', '1' after 1705 ns, '0' after 1715 ns;
	
end test1;

library work;
configuration config1 of work.testRobot is 
    for test1 
		for Rclassic:Robot use entity work.Robot(automate_robot);
		end for;
		for Rbin:RobotBin use entity work.RobotBin(automate_robotBin);
		end for;
		for RHot:RobotHOT use entity work.RobotHOT(automate_robotHOT);
		end for;
		for RGray:RobotGray use entity work.RobotGray(automate_robotGray);
		end for;
    end for; 
end config1; 



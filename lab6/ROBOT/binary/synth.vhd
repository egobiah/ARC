
-- 
-- Definition of  Robot
-- 
--      Mon Apr 20 18:16:36 2020
--      
--      LeonardoSpectrum Level 3, 2015a.6
-- 
library c35_CORELIB;
use c35_CORELIB.vcomponents.all;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RobotBin is
   port (
      reset : IN std_logic ;
      clk : IN std_logic ;
      athome : IN std_logic ;
      findfood : IN std_logic ;
      lostfood : IN std_logic ;
      closetofood : IN std_logic ;
      success : IN std_logic ;
      aboverestth : IN std_logic ;
      abovesearchth : IN std_logic ;
      scantimeup : IN std_logic ;
      rest : OUT std_logic ;
      search : OUT std_logic ;
      food : OUT std_logic) ;
end RobotBin ;

architecture automate_robotBin of RobotBin is
   signal rest_EXMPLR, food_EXMPLR, state_1, state_2, nx477, nx4, state_3, 
      nx478, nx16, state_0, nx30, nx479, nx42, nx72, nx116, nx132, nx154, 
      nx174, nx182, nx487, nx492, nx495, nx499, nx501, nx503, nx505, nx507, 
      nx510, nx512, nx515, nx518, nx520, nx523, nx529, nx531, nx533, nx535, 
      nx538, nx541, nx543, nx545, nx547, nx549, nx551, nx555, nx558: 
   std_logic ;
   
   -- psl default clock is rising_edge(clk);

	-- psl property p1 is always (search = '1' ->  (findfood = '1') before! (state_3 = '1' and state_2 = '0' and state_1 = '0' and state_0 = '0') );
	-- psl assert p1;
	
	-- psl property p2 is always (search = '1' ->  (abovesearchth = '1') before! ( state_2 = '1' and state_1 = '0' and state_0 = '0') );
	-- psl assert p2;
	-- psl property p3 is always ((state_2 = '1' and state_1 = '1' and state_0 = '0') -> 
	-- (state_2 = '1' and state_1 = '1' and state_0 = '1') before! rest = '1');
	-- psl assert p3;
	
	
	
	-- psl property p4 is  
	--  always { (state_2 = '0' and state_1 = '1' and state_0 = '0') and abovesearchth = '0';
	-- (abovesearchth = '0' and findfood = '0' and not(state_3 = '0' and state_2 = '0' and state_1 = '1' and state_0 = '0') )[*]; 
	-- (abovesearchth ='0' and findfood = '1' and not(state_3 = '0' and state_2 = '0' and state_1 = '1' and state_0 = '0')) ; 
	-- (abovesearchth = '0' and lostfood = '0' and closetofood = '0' and not(state_3 = '0' and state_2 = '0' and state_1 = '1' and state_0 = '0'))[*];
	-- (abovesearchth = '0' and lostfood = '1' and not(state_3 = '0' and state_2 = '0' and state_1 = '1' and state_0 = '0')) ; 
	-- (abovesearchth = '0' and findfood = '0' and scantimeup = '0' and not(state_3 = '0' and state_2 = '0' and state_1 = '1' and state_0 = '0'))[*];
	-- (abovesearchth = '0' and findfood = '0' and scantimeup = '1' and not(state_3 = '0' and state_2 = '0' and state_1 = '1' and state_0 = '0')) } |=> {(state_2 = '0' and state_1 = '1' and state_0 = '0')} ;
	-- psl assert p4;
	
	

	-- psl property p5 is
	--	always ( {(state_2 = '0' and state_1 = '0' and state_0 = '1')} |=> {[*] ; (state_2 = '0' and state_1 = '1' and state_0 = '0') }) ;
	-- psl assert p5;
	

begin
   rest <= rest_EXMPLR ;
   food <= food_EXMPLR ;
   ix197 : NOR40 port map ( Q=>food_EXMPLR, A=>nx487, B=>lostfood, C=>nx477, 
      D=>nx555);
   ix488 : CLKIN1 port map ( Q=>nx487, A=>closetofood);
   ix191 : NAND21 port map ( Q=>nx477, A=>state_0, B=>nx499);
   ix73 : OAI2111 port map ( Q=>nx72, A=>nx492, B=>nx547, C=>nx549, D=>nx551
   );
   ix133 : AOI311 port map ( Q=>nx132, A=>nx495, B=>nx535, C=>nx538, D=>
      rest_EXMPLR);
   ix496 : AOI221 port map ( Q=>nx495, A=>findfood, B=>state_1, C=>
      abovesearchth, D=>nx4);
   ix183 : OAI2111 port map ( Q=>nx182, A=>nx499, B=>nx503, C=>nx510, D=>
      nx515);
   reg_state_1 : DFC1 port map ( Q=>state_1, QN=>nx499, C=>clk, D=>nx182, RN
      =>nx501);
   ix502 : CLKIN1 port map ( Q=>nx501, A=>reset);
   ix504 : AOI311 port map ( Q=>nx503, A=>nx492, B=>nx505, C=>nx507, D=>
      nx174);
   ix506 : CLKIN1 port map ( Q=>nx505, A=>findfood);
   ix508 : CLKIN1 port map ( Q=>nx507, A=>abovesearchth);
   ix175 : AOI211 port map ( Q=>nx174, A=>state_0, B=>success, C=>nx492);
   ix511 : NAND31 port map ( Q=>nx510, A=>nx512, B=>aboverestth, C=>state_0
   );
   ix513 : NOR21 port map ( Q=>nx512, A=>state_1, B=>state_2);
   reg_state_2 : DFC1 port map ( Q=>state_2, QN=>nx492, C=>clk, D=>nx132, RN
      =>nx501);
   ix516 : AOI311 port map ( Q=>nx515, A=>nx479, B=>lostfood, C=>nx518, D=>
      nx154);
   ix141 : NOR21 port map ( Q=>nx479, A=>abovesearchth, B=>nx492);
   ix519 : NOR21 port map ( Q=>nx518, A=>nx520, B=>state_1);
   reg_state_0 : DFC1 port map ( Q=>state_0, QN=>nx520, C=>clk, D=>nx72, RN
      =>nx501);
   ix155 : NOR40 port map ( Q=>nx154, A=>state_0, B=>nx523, C=>nx533, D=>nx4
   );
   ix17 : OAI311 port map ( Q=>nx16, A=>nx478, B=>success, C=>nx4, D=>nx529
   );
   ix81 : NAND21 port map ( Q=>nx478, A=>nx520, B=>state_3);
   reg_state_3 : DFC1 port map ( Q=>state_3, QN=>nx523, C=>clk, D=>nx16, RN
      =>nx501);
   ix5 : NAND21 port map ( Q=>nx4, A=>nx499, B=>nx492);
   ix530 : NAND41 port map ( Q=>nx529, A=>closetofood, B=>nx531, C=>nx518, D
      =>nx479);
   ix532 : CLKIN1 port map ( Q=>nx531, A=>lostfood);
   ix534 : CLKIN1 port map ( Q=>nx533, A=>success);
   ix536 : NAND21 port map ( Q=>nx535, A=>state_2, B=>nx116);
   ix117 : OAI211 port map ( Q=>nx116, A=>lostfood, B=>food_EXMPLR, C=>nx518
   );
   ix539 : NAND31 port map ( Q=>nx538, A=>nx520, B=>success, C=>nx499);
   ix101 : AOI311 port map ( Q=>rest_EXMPLR, A=>nx541, B=>nx543, C=>nx545, D
      =>nx518);
   ix542 : NAND31 port map ( Q=>nx541, A=>state_0, B=>success, C=>state_2);
   ix544 : NAND31 port map ( Q=>nx543, A=>nx499, B=>state_2, C=>athome);
   ix546 : NAND21 port map ( Q=>nx545, A=>nx512, B=>nx478);
   ix550 : NAND31 port map ( Q=>nx549, A=>nx478, B=>nx510, C=>nx512);
   ix552 : AOI311 port map ( Q=>nx551, A=>nx30, B=>nx507, C=>state_1, D=>
      nx42);
   ix31 : OAI221 port map ( Q=>nx30, A=>nx505, B=>state_2, C=>scantimeup, D
      =>nx520);
   ix43 : NOR40 port map ( Q=>nx42, A=>abovesearchth, B=>nx492, C=>nx520, D
      =>food_EXMPLR);
   ix556 : NAND21 port map ( Q=>nx555, A=>nx507, B=>state_2);
   ix51 : NOR40 port map ( Q=>search, A=>state_1, B=>state_2, C=>nx558, D=>
      nx520);
   ix559 : CLKIN1 port map ( Q=>nx558, A=>aboverestth);
   ix548 : IMUX21 port map ( Q=>nx547, A=>state_1, B=>athome, S=>nx520);

end automate_robotBin ;


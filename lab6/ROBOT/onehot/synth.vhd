-- Definition of  Robot
-- 
--      Mon Apr 20 18:13:01 2020
--      
--      LeonardoSpectrum Level 3, 2015a.6
-- 
library c35_CORELIB;
use c35_CORELIB.vcomponents.all;


	
library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RobotHot is
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
end RobotHot ;

architecture automate_robotHot of RobotHot is
   signal nx733, state_1, state_0, state_4, state_2, state_3, nx16, state_5, 
      nx745, nx34, nx46, nx64, nx80, nx86, state_7, nx102, nx110, nx122, 
      nx138, nx753, nx757, nx759, nx761, nx765, nx767, nx770, nx772, nx775, 
      nx778, nx781, nx783, nx786, nx790, nx794, nx797, nx800, nx802, nx805, 
      nx808, nx811, nx813, nx816: std_logic ;
	  
	  -- psl default clock is rising_edge(clk);

	-- psl property p1 is always (search = '1' ->  (findfood = '1') before! 
	-- (state_0 = '0' and state_1 = '0' and state_2 = '0' and state_3 = '0' and state_4 = '0' 
	--and state_5 = '0' and nx767 = '1'  and state_7 = '0' and nx772 = '0'	) );
	-- psl assert p1;
	
	-- psl property p2 is always (search = '1' ->  (abovesearchth = '1') before! 
	-- (state_0 = '0' and state_1 = '0' and state_2 = '0' and state_3 = '0' and state_4 = '1' 
	--and state_5 = '0' and nx767 = '1'  and state_7 = '0' and nx772 = '1'	) );
	-- psl assert p2;
	
	-- psl property p3 is always (-- (state_0 = '0' and state_1 = '0' and state_2 = '0' and state_3 = '0' and state_4 = '0' 
	--and state_5 = '0' and nx767 = '0'  and state_7 = '0' and nx772 = '1'	) -> 
	-- (state_0 = '0' and state_1 = '0' and state_2 = '0' and state_3 = '0' and state_4 = '0' 
	--and state_5 = '0' and nx767 = '1'  and state_7 = '1' and nx772 = '1'	) before! rest = '1');
	-- psl assert p3;
	
	-- psl property p4 is  

	--  always { state = (state_0 = '0' and state_1 = '0' and state_2 = '1' and state_3 = '0' and state_4 = '0' 
	--and state_5 = '0' and nx767 = '1'  and state_7 = '0' and nx772 = '1'	) and abovesearchth = '0';
	-- (abovesearchth = '0' and findfood = '0' and not(state_0 = '1') )[*]; 
	-- (abovesearchth ='0' and findfood = '1' and not(state_0 = '1') ; 
	-- (abovesearchth = '0' and lostfood = '0' and closetofood = '0' and not(state_0 = '1')[*];
	-- (abovesearchth = '0' and lostfood = '1' and not(state_0 = '1') ; 
	-- (abovesearchth = '0' and findfood = '0' and scantimeup = '0' and not(state_0 = '1')[*];
	-- (abovesearchth = '0' and findfood = '0' and scantimeup = '1' and not(state_0 = '1') } |=> {(state_0 = '0' and state_1 = '0' and state_2 = '1' and state_3 = '0' and state_4 = '0' 
	--and state_5 = '0' and nx767 = '1'  and state_7 = '0' and nx772 = '1'	)} ;
	-- psl assert p4;
	

	-- psl property p5 is always ( {(state_0 = '0' and state_1 = '1' and state_2 = '0' and state_3 = '0' and state_4 = '0' 
	--and state_5 = '0' and nx767 = '1'  and state_7 = '0' and nx772 = '1'	) } |=> {[*] ; (state_0 = '0' and state_1 = '0' and state_2 = '1' and state_3 = '0' and state_4 = '0' 
	--and state_5 = '0' and nx767 = '1'  and state_7 = '0' and nx772 = '1'	) });
	-- psl assert p5;
	

begin
   ix734 : TIE0 port map ( Q=>nx733);
   ix145 : CLKIN1 port map ( Q=>search, A=>nx753);
   ix754 : NAND21 port map ( Q=>nx753, A=>aboverestth, B=>state_1);
   ix139 : OAI211 port map ( Q=>nx138, A=>nx757, B=>aboverestth, C=>nx761);
   reg_state_1 : DFC1 port map ( Q=>state_1, QN=>nx757, C=>clk, D=>nx138, RN
      =>nx759);
   ix760 : CLKIN1 port map ( Q=>nx759, A=>reset);
   ix762 : AOI2111 port map ( Q=>nx761, A=>success, B=>state_7, C=>nx86, D=>
      state_0);
   ix123 : OAI221 port map ( Q=>nx122, A=>nx765, B=>nx767, C=>success, D=>
      nx802);
   ix766 : CLKIN1 port map ( Q=>nx765, A=>athome);
   reg_state_6 : DFC1 port map ( Q=>OPEN, QN=>nx767, C=>clk, D=>nx110, RN=>
      nx759);
   ix111 : OAI221 port map ( Q=>nx110, A=>nx770, B=>nx772, C=>athome, D=>
      nx767);
   ix771 : CLKIN1 port map ( Q=>nx770, A=>success);
   reg_state_8 : DFC1 port map ( Q=>OPEN, QN=>nx772, C=>clk, D=>nx102, RN=>
      nx759);
   ix103 : OAI211 port map ( Q=>nx102, A=>success, B=>nx772, C=>nx775);
   ix776 : NAND31 port map ( Q=>nx775, A=>nx745, B=>closetofood, C=>nx800);
   ix43 : NOR21 port map ( Q=>nx745, A=>abovesearchth, B=>nx778);
   ix35 : OAI311 port map ( Q=>nx34, A=>nx781, B=>closetofood, C=>lostfood, 
      D=>nx786);
   ix782 : NAND21 port map ( Q=>nx781, A=>nx783, B=>state_5);
   ix784 : CLKIN1 port map ( Q=>nx783, A=>abovesearchth);
   reg_state_5 : DFC1 port map ( Q=>state_5, QN=>nx778, C=>clk, D=>nx34, RN
      =>nx759);
   ix787 : OAI2111 port map ( Q=>nx786, A=>state_2, B=>state_3, C=>findfood, 
      D=>nx783);
   reg_state_2 : DFC1 port map ( Q=>state_2, QN=>OPEN, C=>clk, D=>nx64, RN=>
      nx759);
   ix65 : OAI311 port map ( Q=>nx64, A=>nx790, B=>findfood, C=>abovesearchth, 
      D=>nx753);
   ix791 : AOI211 port map ( Q=>nx790, A=>scantimeup, B=>state_3, C=>state_2
   );
   ix47 : CLKIN1 port map ( Q=>nx46, A=>nx794);
   ix795 : AOI211 port map ( Q=>nx794, A=>lostfood, B=>nx745, C=>nx16);
   ix17 : NOR40 port map ( Q=>nx16, A=>scantimeup, B=>findfood, C=>
      abovesearchth, D=>nx797);
   reg_state_3 : DFC1 port map ( Q=>state_3, QN=>nx797, C=>clk, D=>nx46, RN
      =>nx759);
   ix801 : CLKIN1 port map ( Q=>nx800, A=>lostfood);
   reg_state_7 : DFC1 port map ( Q=>state_7, QN=>nx802, C=>clk, D=>nx122, RN
      =>nx759);
   ix87 : NOR21 port map ( Q=>nx86, A=>nx765, B=>nx805);
   reg_state_4 : DFC1 port map ( Q=>state_4, QN=>nx805, C=>clk, D=>nx80, RN
      =>nx759);
   ix81 : OAI211 port map ( Q=>nx80, A=>athome, B=>nx805, C=>nx808);
   ix809 : OAI311 port map ( Q=>nx808, A=>state_3, B=>state_5, C=>state_2, D
      =>abovesearchth);
   reg_state_0 : DFP1 port map ( Q=>state_0, QN=>nx811, C=>clk, D=>nx733, SN
      =>nx759);
   ix97 : NOR40 port map ( Q=>food, A=>abovesearchth, B=>nx778, C=>nx813, D
      =>lostfood);
   ix814 : CLKIN1 port map ( Q=>nx813, A=>closetofood);
   ix133 : NAND21 port map ( Q=>rest, A=>nx816, B=>nx811);
   ix817 : AOI221 port map ( Q=>nx816, A=>success, B=>state_7, C=>athome, D
      =>state_4);
end automate_robotHot ;


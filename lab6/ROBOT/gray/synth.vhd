
-- 
-- Definition of  Robot
-- 
--      Mon Apr 20 18:14:58 2020
--      
--      LeonardoSpectrum Level 3, 2015a.6
-- 
library c35_CORELIB;
use c35_CORELIB.vcomponents.all;

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity RobotGray is
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
end RobotGray ;

architecture automate_robotGray of RobotGray is
   signal rest_EXMPLR, food_EXMPLR, state_3, state_2, nx486, state_0, 
      state_1, nx22, nx34, nx42, nx54, nx70, nx76, nx90, nx126, nx138, nx150, 
      nx162, nx494, nx496, nx498, nx500, nx502, nx505, nx508, nx513, nx515, 
      nx517, nx520, nx523, nx526, nx529, nx534, nx536, nx539, nx541, nx544, 
      nx547, nx549, nx553: std_logic ;

begin
   rest <= rest_EXMPLR ;
   food <= food_EXMPLR ;
   ix165 : NOR40 port map ( Q=>food_EXMPLR, A=>nx494, B=>nx500, C=>nx515, D
      =>nx523);
   ix495 : NAND31 port map ( Q=>nx494, A=>nx496, B=>closetofood, C=>nx498);
   ix497 : CLKIN1 port map ( Q=>nx496, A=>abovesearchth);
   ix499 : CLKIN1 port map ( Q=>nx498, A=>lostfood);
   ix501 : NAND21 port map ( Q=>nx500, A=>nx502, B=>state_1);
   ix151 : OAI211 port map ( Q=>nx150, A=>success, B=>nx505, C=>nx549);
   ix506 : NAND21 port map ( Q=>nx505, A=>state_3, B=>state_2);
   reg_state_3 : DFC1 port map ( Q=>state_3, QN=>nx502, C=>clk, D=>nx150, RN
      =>nx508);
   ix509 : CLKIN1 port map ( Q=>nx508, A=>reset);
   ix139 : OAI2111 port map ( Q=>nx138, A=>rest_EXMPLR, B=>nx544, C=>nx547, 
      D=>nx505);
   ix115 : AOI211 port map ( Q=>rest_EXMPLR, A=>nx513, B=>nx541, C=>state_0
   );
   ix514 : OAI2111 port map ( Q=>nx513, A=>success, B=>nx515, C=>nx517, D=>
      nx502);
   reg_state_2 : DFC1 port map ( Q=>state_2, QN=>nx515, C=>clk, D=>nx138, RN
      =>nx508);
   reg_state_1 : DFC1 port map ( Q=>state_1, QN=>nx517, C=>clk, D=>nx42, RN
      =>nx508);
   ix43 : OAI211 port map ( Q=>nx42, A=>nx500, B=>nx520, C=>nx539);
   ix521 : NOR21 port map ( Q=>nx520, A=>nx34, B=>nx515);
   ix35 : AOI211 port map ( Q=>nx34, A=>nx523, B=>athome, C=>food_EXMPLR);
   ix91 : OAI2111 port map ( Q=>nx90, A=>abovesearchth, B=>nx526, C=>nx534, 
      D=>nx536);
   ix527 : NOR21 port map ( Q=>nx526, A=>nx76, B=>nx70);
   ix77 : CLKIN1 port map ( Q=>nx76, A=>nx529);
   ix530 : OAI311 port map ( Q=>nx529, A=>findfood, B=>scantimeup, C=>
      state_0, D=>nx22);
   reg_state_0 : DFC1 port map ( Q=>state_0, QN=>nx523, C=>clk, D=>nx90, RN
      =>nx508);
   ix23 : NOR21 port map ( Q=>nx22, A=>state_3, B=>state_2);
   ix71 : NOR40 port map ( Q=>nx70, A=>lostfood, B=>nx523, C=>food_EXMPLR, D
      =>nx500);
   ix535 : AOI311 port map ( Q=>nx534, A=>success, B=>state_3, C=>state_2, D
      =>rest_EXMPLR);
   ix537 : OAI211 port map ( Q=>nx536, A=>nx54, B=>nx22, C=>nx517);
   ix55 : NOR31 port map ( Q=>nx54, A=>nx523, B=>athome, C=>state_3);
   ix540 : NAND41 port map ( Q=>nx539, A=>aboverestth, B=>nx517, C=>state_0, 
      D=>nx22);
   ix542 : NAND31 port map ( Q=>nx541, A=>nx486, B=>athome, C=>state_2);
   ix159 : NOR21 port map ( Q=>nx486, A=>state_3, B=>nx517);
   ix545 : AOI211 port map ( Q=>nx544, A=>abovesearchth, B=>nx486, C=>nx126
   );
   ix127 : AOI311 port map ( Q=>nx126, A=>state_1, B=>lostfood, C=>state_0, 
      D=>nx515);
   ix548 : NAND31 port map ( Q=>nx547, A=>nx486, B=>findfood, C=>nx515);
   ix550 : NAND41 port map ( Q=>nx549, A=>nx496, B=>closetofood, C=>nx498, D
      =>nx162);
   ix163 : NOR40 port map ( Q=>nx162, A=>state_3, B=>nx517, C=>nx515, D=>
      nx523);
   ix27 : NOR40 port map ( Q=>search, A=>nx553, B=>nx523, C=>state_3, D=>
      state_2);
   ix554 : NAND21 port map ( Q=>nx553, A=>aboverestth, B=>nx517);
end automate_robotGray ;


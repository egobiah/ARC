
-- 
-- Definition of  Count
-- 
--      Tue Apr 21 22:10:01 2020
--      
--      LeonardoSpectrum Level 3, 2015a.6
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Count is
   port (
      reset : IN std_logic ;
      clk : IN std_logic ;
      start : IN std_logic ;
      aboveth : OUT std_logic) ;
end Count ;

architecture Behav of Count is
   signal aboveth_EXMPLR, c_3, NOT_reset, nx161, c_2, c_1, c_0, nx22, nx162, 
      nx34, nx163, nx48, nx58, nx171, nx174, nx176, nx181, nx184, nx188, 
      nx192, nx196, nx199, nx201, nx203: std_logic ;

begin
   aboveth <= aboveth_EXMPLR ;
   ix73 : NOR40 port map ( Q=>aboveth_EXMPLR, A=>nx171, B=>c_2, C=>nx192, D
      =>c_0);
   ix59 : NOR21 port map ( Q=>nx58, A=>nx174, B=>nx203);
   ix175 : IMUX21 port map ( Q=>nx174, A=>nx176, B=>start, S=>nx196);
   ix177 : NAND41 port map ( Q=>nx176, A=>c_3, B=>nx181, C=>c_1, D=>nx188);
   reg_c_3 : DFC1 port map ( Q=>c_3, QN=>nx171, C=>clk, D=>nx58, RN=>
      NOT_reset);
   ix180 : CLKIN1 port map ( Q=>NOT_reset, A=>reset);
   reg_c_2 : DFC1 port map ( Q=>c_2, QN=>nx181, C=>clk, D=>nx48, RN=>
      NOT_reset);
   ix49 : AOI2111 port map ( Q=>nx48, A=>nx184, B=>nx181, C=>nx174, D=>nx163
   );
   ix185 : NAND21 port map ( Q=>nx184, A=>c_1, B=>c_0);
   ix35 : AOI2111 port map ( Q=>nx34, A=>nx188, B=>nx192, C=>nx174, D=>nx162
   );
   ix23 : NOR21 port map ( Q=>nx22, A=>c_0, B=>nx174);
   reg_c_0 : DFC1 port map ( Q=>c_0, QN=>nx188, C=>clk, D=>nx22, RN=>
      NOT_reset);
   reg_c_1 : DFC1 port map ( Q=>c_1, QN=>nx192, C=>clk, D=>nx34, RN=>
      NOT_reset);
   ix41 : NOR21 port map ( Q=>nx162, A=>nx192, B=>nx188);
   ix55 : NOR21 port map ( Q=>nx163, A=>nx181, B=>nx184);
   reg_state : DFCP1 port map ( Q=>OPEN, QN=>nx196, C=>clk, D=>nx161, RN=>
      NOT_reset, SN=>nx201);
   ix19 : IMUX21 port map ( Q=>nx161, A=>aboveth_EXMPLR, B=>nx199, S=>nx196
   );
   ix200 : CLKIN1 port map ( Q=>nx199, A=>start);
   ix202 : NAND31 port map ( Q=>nx201, A=>nx196, B=>NOT_reset, C=>start);
   ix204 : XOR21 port map ( Q=>nx203, A=>nx171, B=>nx163);
end Behav ;



-- 
-- Definition of  Count
-- 
--      Tue Apr 21 22:05:40 2020
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
   signal aboveth_EXMPLR, c_4, c_3, c_2, c_1, c_0, NOT_reset, nx467, nx22, 
      nx469, nx34, nx470, nx48, nx471, nx62, nx72, nx78, nx86, c_6, c_5, 
      nx473, nx96, nx106, nx112, nx120, c_9, c_8, c_7, nx475, nx128, nx476, 
      nx142, nx152, nx158, nx168, c_11, c_10, nx477, nx176, nx186, nx192, 
      c_13, c_12, nx478, nx206, nx216, nx222, nx230, c_16, c_15, c_14, nx479, 
      nx238, nx480, nx252, nx262, nx268, nx278, c_18, c_17, nx481, nx288, 
      nx298, nx304, c_20, c_19, nx483, nx318, nx328, nx334, nx342, c_23, 
      c_22, c_21, nx485, nx350, nx486, nx364, nx374, nx380, nx390, c_25, 
      c_24, nx487, nx398, nx408, nx414, c_27, c_26, nx488, nx428, nx438, 
      nx444, nx452, c_30, c_29, c_28, nx489, nx460, nx491, nx474, nx484, 
      nx494, nx502, nx506, nx510, nx514, nx518, nx522, nx526, nx530, nx534, 
      nx538, nx542, nx546, nx550, nx554, nx558, nx562, nx566, nx570, nx574, 
      nx578, nx582, nx586, nx590, nx594, nx598, nx602, nx606, nx610, nx614, 
      nx620, nx622, nx625, nx627, nx630, nx633, nx636, nx639, nx642, nx645, 
      nx647, nx649, nx651, nx654, nx656, nx658, nx660, nx663, nx665, nx667, 
      nx669, nx672, nx674, nx676, nx678, nx681, nx683, nx688, nx691, nx694, 
      nx700, nx703, nx706, nx709, nx715, nx718, nx721, nx724, nx730, nx733, 
      nx736, nx741, nx744, nx747, nx750: std_logic ;

begin
   aboveth <= aboveth_EXMPLR ;
   ix499 : NAND41 port map ( Q=>aboveth_EXMPLR, A=>nx502, B=>nx741, C=>nx744, 
      D=>nx747);
   ix503 : NOR40 port map ( Q=>nx502, A=>c_28, B=>c_29, C=>c_30, D=>nx452);
   ix462 : AOI2111 port map ( Q=>nx460, A=>nx506, B=>nx625, C=>nx620, D=>
      nx489);
   ix507 : NAND21 port map ( Q=>nx506, A=>c_27, B=>nx488);
   ix445 : AOI2111 port map ( Q=>nx444, A=>nx510, B=>nx633, C=>nx620, D=>
      nx438);
   ix511 : NAND21 port map ( Q=>nx510, A=>c_26, B=>nx408);
   ix429 : AOI2111 port map ( Q=>nx428, A=>nx514, B=>nx736, C=>nx620, D=>
      nx488);
   ix515 : NAND21 port map ( Q=>nx514, A=>c_25, B=>nx487);
   ix415 : AOI2111 port map ( Q=>nx414, A=>nx518, B=>nx733, C=>nx620, D=>
      nx408);
   ix519 : NAND21 port map ( Q=>nx518, A=>c_24, B=>nx374);
   ix399 : AOI2111 port map ( Q=>nx398, A=>nx522, B=>nx730, C=>nx620, D=>
      nx487);
   ix523 : NAND21 port map ( Q=>nx522, A=>c_23, B=>nx486);
   ix381 : AOI2111 port map ( Q=>nx380, A=>nx526, B=>nx649, C=>nx620, D=>
      nx374);
   ix527 : NAND21 port map ( Q=>nx526, A=>c_22, B=>nx485);
   ix365 : AOI2111 port map ( Q=>nx364, A=>nx530, B=>nx647, C=>nx620, D=>
      nx486);
   ix531 : NAND21 port map ( Q=>nx530, A=>c_21, B=>nx328);
   ix351 : AOI2111 port map ( Q=>nx350, A=>nx534, B=>nx645, C=>nx620, D=>
      nx485);
   ix535 : NAND21 port map ( Q=>nx534, A=>c_20, B=>nx483);
   ix335 : AOI2111 port map ( Q=>nx334, A=>nx538, B=>nx724, C=>nx620, D=>
      nx328);
   ix539 : NAND21 port map ( Q=>nx538, A=>c_19, B=>nx298);
   ix319 : AOI2111 port map ( Q=>nx318, A=>nx542, B=>nx721, C=>nx620, D=>
      nx483);
   ix543 : NAND21 port map ( Q=>nx542, A=>c_18, B=>nx481);
   ix305 : AOI2111 port map ( Q=>nx304, A=>nx546, B=>nx718, C=>nx620, D=>
      nx298);
   ix547 : NAND21 port map ( Q=>nx546, A=>c_17, B=>nx262);
   ix289 : AOI2111 port map ( Q=>nx288, A=>nx550, B=>nx715, C=>nx620, D=>
      nx481);
   ix551 : NAND21 port map ( Q=>nx550, A=>c_16, B=>nx480);
   ix269 : AOI2111 port map ( Q=>nx268, A=>nx554, B=>nx658, C=>nx620, D=>
      nx262);
   ix555 : NAND21 port map ( Q=>nx554, A=>c_15, B=>nx479);
   ix253 : AOI2111 port map ( Q=>nx252, A=>nx558, B=>nx656, C=>nx620, D=>
      nx480);
   ix559 : NAND21 port map ( Q=>nx558, A=>c_14, B=>nx216);
   ix239 : AOI2111 port map ( Q=>nx238, A=>nx562, B=>nx654, C=>nx620, D=>
      nx479);
   ix563 : NAND21 port map ( Q=>nx562, A=>c_13, B=>nx478);
   ix223 : AOI2111 port map ( Q=>nx222, A=>nx566, B=>nx709, C=>nx620, D=>
      nx216);
   ix567 : NAND21 port map ( Q=>nx566, A=>c_12, B=>nx186);
   ix207 : AOI2111 port map ( Q=>nx206, A=>nx570, B=>nx706, C=>nx620, D=>
      nx478);
   ix571 : NAND21 port map ( Q=>nx570, A=>c_11, B=>nx477);
   ix193 : AOI2111 port map ( Q=>nx192, A=>nx574, B=>nx703, C=>nx620, D=>
      nx186);
   ix575 : NAND21 port map ( Q=>nx574, A=>c_10, B=>nx152);
   ix177 : AOI2111 port map ( Q=>nx176, A=>nx578, B=>nx700, C=>nx620, D=>
      nx477);
   ix579 : NAND21 port map ( Q=>nx578, A=>c_9, B=>nx476);
   ix159 : AOI2111 port map ( Q=>nx158, A=>nx582, B=>nx667, C=>nx620, D=>
      nx152);
   ix583 : NAND21 port map ( Q=>nx582, A=>c_8, B=>nx475);
   ix143 : AOI2111 port map ( Q=>nx142, A=>nx586, B=>nx665, C=>nx620, D=>
      nx476);
   ix587 : NAND21 port map ( Q=>nx586, A=>c_7, B=>nx106);
   ix129 : AOI2111 port map ( Q=>nx128, A=>nx590, B=>nx663, C=>nx620, D=>
      nx475);
   ix591 : NAND21 port map ( Q=>nx590, A=>c_6, B=>nx473);
   ix113 : AOI2111 port map ( Q=>nx112, A=>nx594, B=>nx694, C=>nx620, D=>
      nx106);
   ix595 : NAND21 port map ( Q=>nx594, A=>c_5, B=>nx72);
   ix97 : AOI2111 port map ( Q=>nx96, A=>nx598, B=>nx691, C=>nx620, D=>nx473
   );
   ix599 : NAND21 port map ( Q=>nx598, A=>c_4, B=>nx471);
   ix79 : AOI2111 port map ( Q=>nx78, A=>nx602, B=>nx688, C=>nx620, D=>nx72
   );
   ix603 : NAND21 port map ( Q=>nx602, A=>c_3, B=>nx470);
   ix63 : AOI2111 port map ( Q=>nx62, A=>nx606, B=>nx676, C=>nx620, D=>nx471
   );
   ix607 : NAND31 port map ( Q=>nx606, A=>c_2, B=>c_1, C=>c_0);
   ix49 : AOI2111 port map ( Q=>nx48, A=>nx610, B=>nx674, C=>nx620, D=>nx470
   );
   ix611 : NAND21 port map ( Q=>nx610, A=>c_1, B=>c_0);
   ix35 : AOI2111 port map ( Q=>nx34, A=>nx614, B=>nx672, C=>nx620, D=>nx469
   );
   ix23 : NOR21 port map ( Q=>nx22, A=>c_0, B=>nx620);
   reg_c_0 : DFC1 port map ( Q=>c_0, QN=>nx614, C=>clk, D=>nx22, RN=>
      NOT_reset);
   ix619 : INV3 port map ( Q=>NOT_reset, A=>reset);
   ix621 : IMUX22 port map ( Q=>nx620, A=>nx622, B=>start, S=>nx678);
   ix623 : NOR40 port map ( Q=>nx622, A=>nx494, B=>nx390, C=>nx278, D=>nx168
   );
   ix495 : NAND41 port map ( Q=>nx494, A=>nx625, B=>nx627, C=>nx636, D=>
      nx642);
   reg_c_28 : DFC1 port map ( Q=>c_28, QN=>nx625, C=>clk, D=>nx460, RN=>
      NOT_reset);
   reg_c_29 : DFC1 port map ( Q=>c_29, QN=>nx627, C=>clk, D=>nx474, RN=>
      NOT_reset);
   ix475 : AOI2111 port map ( Q=>nx474, A=>nx630, B=>nx627, C=>nx620, D=>
      nx491);
   ix631 : NAND21 port map ( Q=>nx630, A=>c_28, B=>nx438);
   ix439 : NOR21 port map ( Q=>nx438, A=>nx633, B=>nx510);
   reg_c_27 : DFC1 port map ( Q=>c_27, QN=>nx633, C=>clk, D=>nx444, RN=>
      NOT_reset);
   ix481 : NOR21 port map ( Q=>nx491, A=>nx627, B=>nx630);
   ix485 : NOR21 port map ( Q=>nx484, A=>nx620, B=>nx639);
   reg_c_30 : DFC1 port map ( Q=>c_30, QN=>nx636, C=>clk, D=>nx484, RN=>
      NOT_reset);
   ix643 : NOR40 port map ( Q=>nx642, A=>c_26, B=>c_27, C=>c_24, D=>c_25);
   ix391 : NAND41 port map ( Q=>nx390, A=>nx645, B=>nx647, C=>nx649, D=>
      nx651);
   reg_c_21 : DFC1 port map ( Q=>c_21, QN=>nx645, C=>clk, D=>nx350, RN=>
      NOT_reset);
   reg_c_22 : DFC1 port map ( Q=>c_22, QN=>nx647, C=>clk, D=>nx364, RN=>
      NOT_reset);
   reg_c_23 : DFC1 port map ( Q=>c_23, QN=>nx649, C=>clk, D=>nx380, RN=>
      NOT_reset);
   ix652 : NOR40 port map ( Q=>nx651, A=>c_19, B=>c_20, C=>c_17, D=>c_18);
   ix279 : NAND41 port map ( Q=>nx278, A=>nx654, B=>nx656, C=>nx658, D=>
      nx660);
   reg_c_14 : DFC1 port map ( Q=>c_14, QN=>nx654, C=>clk, D=>nx238, RN=>
      NOT_reset);
   reg_c_15 : DFC1 port map ( Q=>c_15, QN=>nx656, C=>clk, D=>nx252, RN=>
      NOT_reset);
   reg_c_16 : DFC1 port map ( Q=>c_16, QN=>nx658, C=>clk, D=>nx268, RN=>
      NOT_reset);
   ix661 : NOR40 port map ( Q=>nx660, A=>c_12, B=>c_13, C=>c_10, D=>c_11);
   ix169 : NAND41 port map ( Q=>nx168, A=>nx663, B=>nx665, C=>nx667, D=>
      nx669);
   reg_c_7 : DFC1 port map ( Q=>c_7, QN=>nx663, C=>clk, D=>nx128, RN=>
      NOT_reset);
   reg_c_8 : DFC1 port map ( Q=>c_8, QN=>nx665, C=>clk, D=>nx142, RN=>
      NOT_reset);
   reg_c_9 : DFC1 port map ( Q=>c_9, QN=>nx667, C=>clk, D=>nx158, RN=>
      NOT_reset);
   ix670 : NOR40 port map ( Q=>nx669, A=>c_5, B=>c_6, C=>nx86, D=>c_4);
   ix87 : AOI211 port map ( Q=>nx86, A=>nx672, B=>nx674, C=>nx676);
   reg_c_1 : DFC1 port map ( Q=>c_1, QN=>nx672, C=>clk, D=>nx34, RN=>
      NOT_reset);
   reg_c_2 : DFC1 port map ( Q=>c_2, QN=>nx674, C=>clk, D=>nx48, RN=>
      NOT_reset);
   reg_c_3 : DFC1 port map ( Q=>c_3, QN=>nx676, C=>clk, D=>nx62, RN=>
      NOT_reset);
   reg_state : DFCP1 port map ( Q=>OPEN, QN=>nx678, C=>clk, D=>nx467, RN=>
      NOT_reset, SN=>nx683);
   ix19 : IMUX21 port map ( Q=>nx467, A=>aboveth_EXMPLR, B=>nx681, S=>nx678
   );
   ix682 : CLKIN1 port map ( Q=>nx681, A=>start);
   ix684 : NAND31 port map ( Q=>nx683, A=>nx678, B=>NOT_reset, C=>start);
   ix41 : NOR21 port map ( Q=>nx469, A=>nx672, B=>nx614);
   ix55 : NOR21 port map ( Q=>nx470, A=>nx674, B=>nx610);
   ix69 : NOR40 port map ( Q=>nx471, A=>nx676, B=>nx674, C=>nx672, D=>nx614
   );
   reg_c_4 : DFC1 port map ( Q=>c_4, QN=>nx688, C=>clk, D=>nx78, RN=>
      NOT_reset);
   ix73 : NOR40 port map ( Q=>nx72, A=>nx688, B=>nx676, C=>nx674, D=>nx610);
   reg_c_5 : DFC1 port map ( Q=>c_5, QN=>nx691, C=>clk, D=>nx96, RN=>
      NOT_reset);
   ix103 : NOR21 port map ( Q=>nx473, A=>nx691, B=>nx598);
   reg_c_6 : DFC1 port map ( Q=>c_6, QN=>nx694, C=>clk, D=>nx112, RN=>
      NOT_reset);
   ix107 : NOR21 port map ( Q=>nx106, A=>nx694, B=>nx594);
   ix135 : NOR21 port map ( Q=>nx475, A=>nx663, B=>nx590);
   ix149 : NOR21 port map ( Q=>nx476, A=>nx665, B=>nx586);
   ix153 : NOR21 port map ( Q=>nx152, A=>nx667, B=>nx582);
   reg_c_10 : DFC1 port map ( Q=>c_10, QN=>nx700, C=>clk, D=>nx176, RN=>
      NOT_reset);
   ix183 : NOR21 port map ( Q=>nx477, A=>nx700, B=>nx578);
   reg_c_11 : DFC1 port map ( Q=>c_11, QN=>nx703, C=>clk, D=>nx192, RN=>
      NOT_reset);
   ix187 : NOR21 port map ( Q=>nx186, A=>nx703, B=>nx574);
   reg_c_12 : DFC1 port map ( Q=>c_12, QN=>nx706, C=>clk, D=>nx206, RN=>
      NOT_reset);
   ix213 : NOR21 port map ( Q=>nx478, A=>nx706, B=>nx570);
   reg_c_13 : DFC1 port map ( Q=>c_13, QN=>nx709, C=>clk, D=>nx222, RN=>
      NOT_reset);
   ix217 : NOR21 port map ( Q=>nx216, A=>nx709, B=>nx566);
   ix245 : NOR21 port map ( Q=>nx479, A=>nx654, B=>nx562);
   ix259 : NOR21 port map ( Q=>nx480, A=>nx656, B=>nx558);
   ix263 : NOR21 port map ( Q=>nx262, A=>nx658, B=>nx554);
   reg_c_17 : DFC1 port map ( Q=>c_17, QN=>nx715, C=>clk, D=>nx288, RN=>
      NOT_reset);
   ix295 : NOR21 port map ( Q=>nx481, A=>nx715, B=>nx550);
   reg_c_18 : DFC1 port map ( Q=>c_18, QN=>nx718, C=>clk, D=>nx304, RN=>
      NOT_reset);
   ix299 : NOR21 port map ( Q=>nx298, A=>nx718, B=>nx546);
   reg_c_19 : DFC1 port map ( Q=>c_19, QN=>nx721, C=>clk, D=>nx318, RN=>
      NOT_reset);
   ix325 : NOR21 port map ( Q=>nx483, A=>nx721, B=>nx542);
   reg_c_20 : DFC1 port map ( Q=>c_20, QN=>nx724, C=>clk, D=>nx334, RN=>
      NOT_reset);
   ix329 : NOR21 port map ( Q=>nx328, A=>nx724, B=>nx538);
   ix357 : NOR21 port map ( Q=>nx485, A=>nx645, B=>nx534);
   ix371 : NOR21 port map ( Q=>nx486, A=>nx647, B=>nx530);
   ix375 : NOR21 port map ( Q=>nx374, A=>nx649, B=>nx526);
   reg_c_24 : DFC1 port map ( Q=>c_24, QN=>nx730, C=>clk, D=>nx398, RN=>
      NOT_reset);
   ix405 : NOR21 port map ( Q=>nx487, A=>nx730, B=>nx522);
   reg_c_25 : DFC1 port map ( Q=>c_25, QN=>nx733, C=>clk, D=>nx414, RN=>
      NOT_reset);
   ix409 : NOR21 port map ( Q=>nx408, A=>nx733, B=>nx518);
   reg_c_26 : DFC1 port map ( Q=>c_26, QN=>nx736, C=>clk, D=>nx428, RN=>
      NOT_reset);
   ix435 : NOR21 port map ( Q=>nx488, A=>nx736, B=>nx514);
   ix467 : NOR21 port map ( Q=>nx489, A=>nx625, B=>nx506);
   ix453 : NAND41 port map ( Q=>nx452, A=>nx736, B=>nx633, C=>nx730, D=>
      nx733);
   ix742 : NOR40 port map ( Q=>nx741, A=>c_21, B=>c_22, C=>c_23, D=>nx342);
   ix343 : NAND41 port map ( Q=>nx342, A=>nx721, B=>nx724, C=>nx715, D=>
      nx718);
   ix745 : NOR40 port map ( Q=>nx744, A=>c_14, B=>c_15, C=>c_16, D=>nx230);
   ix231 : NAND41 port map ( Q=>nx230, A=>nx706, B=>nx709, C=>nx700, D=>
      nx703);
   ix748 : NOR40 port map ( Q=>nx747, A=>c_7, B=>c_8, C=>c_9, D=>nx120);
   ix121 : NAND41 port map ( Q=>nx120, A=>nx691, B=>nx694, C=>nx750, D=>
      nx688);
   ix751 : OAI211 port map ( Q=>nx750, A=>c_1, B=>c_2, C=>c_3);
   ix640 : XOR21 port map ( Q=>nx639, A=>nx636, B=>nx491);
end Behav ;


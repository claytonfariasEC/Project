
// Generated by Cadence Genus(TM) Synthesis Solution GENUS15.22 - 15.20-s024_1
// Generated on: Jan 22 2024 18:27:40

// Verification Directory fv/unsig_altmult_accum 

module RC_CG_MOD_AUTO_unsig_altmult_accum(ck_in, enable, test, ck_out);
  input ck_in, enable, test;
  output ck_out;
  wire ck_in, enable, test;
  wire ck_out;
  wire enl, n_0;
  DLLQX0 enl_reg(.GN (ck_in), .D (n_0), .Q (enl));
  OR2X0 g11(.A (enable), .B (test), .Q (n_0));
  AND2X0 g17(.A (enl), .B (ck_in), .Q (ck_out));
endmodule

module csa_tree_add_43_28_group_63(in_0, in_1, in_2, out_0);
  input [8:0] in_0, in_1;
  input [15:0] in_2;
  output [15:0] out_0;
  wire [8:0] in_0, in_1;
  wire [15:0] in_2;
  wire [15:0] out_0;
  wire n_0, n_1, n_2, n_3, n_4, n_5, n_6, n_7;
  wire n_8, n_9, n_10, n_11, n_12, n_13, n_14, n_15;
  wire n_16, n_17, n_18, n_19, n_20, n_21, n_22, n_23;
  wire n_24, n_25, n_26, n_27, n_28, n_29, n_30, n_31;
  wire n_32, n_33, n_34, n_35, n_36, n_37, n_38, n_39;
  wire n_40, n_41, n_42, n_43, n_44, n_45, n_46, n_47;
  wire n_48, n_49, n_50, n_51, n_52, n_53, n_54, n_55;
  wire n_56, n_57, n_58, n_59, n_60, n_61, n_62, n_63;
  wire n_64, n_65, n_66, n_67, n_68, n_69, n_70, n_71;
  wire n_72, n_73, n_74, n_75, n_76, n_77, n_78, n_79;
  wire n_80, n_81, n_82, n_83, n_84, n_85, n_86, n_87;
  wire n_88, n_89, n_90, n_92, n_93, n_94, n_95, n_97;
  wire n_98, n_99, n_100, n_101, n_102, n_103, n_104, n_105;
  wire n_106, n_107, n_108, n_109, n_110, n_111, n_112, n_113;
  wire n_114, n_115, n_116, n_118, n_119, n_120, n_121, n_122;
  wire n_123, n_124, n_125, n_127, n_128, n_129, n_130, n_131;
  wire n_132, n_133, n_134, n_135, n_136, n_137, n_138, n_139;
  wire n_140, n_141, n_142, n_143, n_144, n_145, n_146, n_147;
  wire n_148, n_149, n_150, n_151, n_152, n_153, n_154, n_155;
  wire n_156, n_157, n_158, n_159, n_160, n_161, n_162, n_163;
  wire n_164, n_166, n_167, n_168, n_169, n_170, n_171, n_172;
  wire n_173, n_174, n_175, n_176, n_177, n_178, n_179, n_180;
  wire n_181, n_182, n_183, n_184, n_185, n_187, n_188, n_189;
  wire n_190, n_191, n_192, n_193, n_194, n_195, n_196, n_198;
  wire n_199, n_200, n_201, n_202, n_203, n_204, n_205, n_207;
  wire n_208, n_210, n_211, n_213, n_214, n_216, n_217, n_219;
  wire n_220, n_222, n_223, n_225, n_226, n_228, n_229, n_231;
  wire n_232, n_267, n_268;
  EO3X0 g3464(.A (n_231), .B (n_151), .C (in_2[15]), .Q (out_0[15]));
  INX1 g3465(.A (n_232), .Q (out_0[14]));
  FAX0 g3466(.A (n_228), .B (n_152), .CI (n_168), .S (n_232), .CO
       (n_231));
  INX1 g3467(.A (n_229), .Q (out_0[13]));
  FAX0 g3468(.A (n_225), .B (n_169), .CI (n_187), .S (n_229), .CO
       (n_228));
  INX1 g3469(.A (n_226), .Q (out_0[12]));
  FAX0 g3470(.A (n_222), .B (n_188), .CI (n_193), .S (n_226), .CO
       (n_225));
  INX1 g3471(.A (n_223), .Q (out_0[11]));
  FAX0 g3472(.A (n_219), .B (n_200), .CI (n_194), .S (n_223), .CO
       (n_222));
  INX1 g3473(.A (n_220), .Q (out_0[10]));
  FAX0 g3474(.A (n_216), .B (n_202), .CI (n_201), .S (n_220), .CO
       (n_219));
  INX1 g3475(.A (n_217), .Q (out_0[9]));
  FAX0 g3476(.A (n_213), .B (n_198), .CI (n_203), .S (n_217), .CO
       (n_216));
  INX1 g3477(.A (n_214), .Q (out_0[8]));
  FAX0 g3478(.A (n_210), .B (n_191), .CI (n_199), .S (n_214), .CO
       (n_213));
  INX1 g3479(.A (n_211), .Q (out_0[7]));
  FAX0 g3480(.A (n_207), .B (n_189), .CI (n_192), .S (n_211), .CO
       (n_210));
  INX1 g3481(.A (n_208), .Q (out_0[6]));
  FAX0 g3482(.A (n_204), .B (n_174), .CI (n_190), .S (n_208), .CO
       (n_207));
  INX1 g3483(.A (n_205), .Q (out_0[5]));
  FAX0 g3484(.A (n_195), .B (n_161), .CI (n_175), .S (n_205), .CO
       (n_204));
  FAX0 g3485(.A (n_179), .B (n_171), .CI (n_182), .S (n_203), .CO
       (n_202));
  FAX0 g3486(.A (n_181), .B (n_170), .CI (n_178), .S (n_201), .CO
       (n_200));
  FAX0 g3487(.A (n_183), .B (n_150), .CI (n_176), .S (n_199), .CO
       (n_198));
  INX1 g3488(.A (n_196), .Q (out_0[4]));
  FAX0 g3489(.A (n_184), .B (n_159), .CI (n_162), .S (n_196), .CO
       (n_195));
  FAX0 g3490(.A (n_180), .B (n_157), .CI (n_173), .S (n_194), .CO
       (n_193));
  FAX0 g3491(.A (n_177), .B (n_148), .CI (n_166), .S (n_192), .CO
       (n_191));
  FAX0 g3492(.A (n_167), .B (n_144), .CI (n_155), .S (n_190), .CO
       (n_189));
  FAX0 g3493(.A (n_172), .B (n_145), .CI (n_140), .S (n_188), .CO
       (n_187));
  INX1 g3494(.A (n_185), .Q (out_0[3]));
  FAX0 g3495(.A (n_163), .B (n_8), .CI (n_160), .S (n_185), .CO
       (n_184));
  FAX0 g3496(.A (n_154), .B (n_135), .CI (n_147), .S (n_183), .CO
       (n_182));
  FAX0 g3497(.A (n_158), .B (n_1), .CI (n_141), .S (n_181), .CO
       (n_180));
  FAX0 g3498(.A (n_149), .B (n_11), .CI (n_142), .S (n_179), .CO
       (n_178));
  FAX0 g3499(.A (n_143), .B (n_136), .CI (n_12), .S (n_177), .CO
       (n_176));
  FAX0 g3500(.A (n_156), .B (n_137), .CI (n_4), .S (n_175), .CO
       (n_174));
  FAX0 g3501(.A (n_146), .B (n_129), .CI (n_9), .S (n_173), .CO
       (n_172));
  FAX0 g3502(.A (n_153), .B (n_110), .CI (n_122), .S (n_171), .CO
       (n_170));
  FAX0 g3503(.A (n_139), .B (n_132), .CI (n_5), .S (n_169), .CO
       (n_168));
  FAX0 g3504(.A (n_0), .B (n_133), .CI (n_125), .S (n_167), .CO
       (n_166));
  INX1 g3505(.A (n_164), .Q (out_0[2]));
  FAX0 g3506(.A (n_268), .B (n_7), .CI (n_128), .S (n_164), .CO
       (n_163));
  FAX0 g3507(.A (n_138), .B (n_120), .CI (n_3), .S (n_162), .CO
       (n_161));
  FAX0 g3508(.A (n_127), .B (n_88), .CI (n_121), .S (n_160), .CO
       (n_159));
  FAX0 g3509(.A (n_130), .B (n_118), .CI (n_102), .S (n_158), .CO
       (n_157));
  FAX0 g3510(.A (n_134), .B (n_103), .CI (n_114), .S (n_156), .CO
       (n_155));
  FAX0 g3511(.A (n_99), .B (n_81), .CI (n_105), .S (n_154), .CO
       (n_153));
  FAX0 g3512(.A (n_6), .B (n_51), .CI (n_131), .S (n_152), .CO (n_151));
  FAX0 g3513(.A (n_10), .B (n_98), .CI (n_123), .S (n_150), .CO
       (n_149));
  FAX0 g3514(.A (n_124), .B (n_100), .CI (n_106), .S (n_148), .CO
       (n_147));
  FAX0 g3515(.A (n_116), .B (n_60), .CI (n_101), .S (n_146), .CO
       (n_145));
  FAX0 g3516(.A (n_112), .B (n_82), .CI (n_113), .S (n_144), .CO
       (n_143));
  FAX0 g3517(.A (n_119), .B (n_79), .CI (n_97), .S (n_142), .CO
       (n_141));
  FAX0 g3518(.A (n_2), .B (n_115), .CI (n_108), .S (n_140), .CO
       (n_139));
  FAX0 g3519(.A (n_104), .B (n_83), .CI (n_89), .S (n_138), .CO
       (n_137));
  FAX0 g3520(.A (n_111), .B (n_80), .CI (n_85), .S (n_136), .CO
       (n_135));
  FAX0 g3521(.A (n_90), .B (n_49), .CI (n_78), .S (n_134), .CO (n_133));
  FAX0 g3522(.A (n_107), .B (n_26), .CI (n_20), .S (n_132), .CO
       (n_131));
  FAX0 g3523(.A (n_109), .B (n_53), .CI (n_25), .S (n_130), .CO
       (n_129));
  EO3X0 g3524(.A (n_86), .B (n_92), .C (n_41), .Q (n_128));
  NO2X1 g3525(.A (n_95), .B (n_92), .Q (n_127));
  FAX0 g3527(.A (n_84), .B (n_22), .CI (n_16), .S (n_125), .CO (n_124));
  FAX0 g3528(.A (n_87), .B (n_15), .CI (n_61), .S (n_123), .CO (n_122));
  FAX0 g3529(.A (n_77), .B (n_21), .CI (n_63), .S (n_121), .CO (n_120));
  FAX0 g3530(.A (n_65), .B (n_58), .CI (n_24), .S (n_119), .CO (n_118));
  FAX0 g3532(.A (n_66), .B (n_19), .CI (n_62), .S (n_116), .CO (n_115));
  FAX0 g3533(.A (n_70), .B (n_13), .CI (n_28), .S (n_114), .CO (n_113));
  FAX0 g3534(.A (n_68), .B (n_17), .CI (n_14), .S (n_112), .CO (n_111));
  FAX0 g3535(.A (n_32), .B (n_46), .CI (n_55), .S (n_110), .CO (n_109));
  FAX0 g3536(.A (n_33), .B (n_57), .CI (n_27), .S (n_108), .CO (n_107));
  FAX0 g3537(.A (n_34), .B (n_48), .CI (n_54), .S (n_106), .CO (n_105));
  FAX0 g3538(.A (n_31), .B (n_47), .CI (n_52), .S (n_104), .CO (n_103));
  FAX0 g3539(.A (n_64), .B (n_18), .CI (n_59), .S (n_102), .CO (n_101));
  FAX0 g3540(.A (n_50), .B (n_23), .CI (n_69), .S (n_100), .CO (n_99));
  FAX0 g3541(.A (n_29), .B (n_45), .CI (n_56), .S (n_98), .CO (n_97));
  NO2I1X1 g3543(.B (n_41), .AN (n_86), .Q (n_95));
  HAX1 g3544(.A (in_2[0]), .B (n_67), .S (out_0[0]), .CO (n_94));
  HAX1 g3545(.A (n_71), .B (n_30), .S (n_93), .CO (n_92));
  EN2X0 g3546(.A (n_75), .B (n_74), .Q (n_90));
  EN2X0 g3547(.A (n_42), .B (n_43), .Q (n_89));
  EN2X0 g3548(.A (n_73), .B (n_36), .Q (n_88));
  EN2X0 g3549(.A (n_39), .B (n_40), .Q (n_87));
  EO2X0 g3550(.A (n_76), .B (n_38), .Q (n_86));
  EN2X0 g3551(.A (n_72), .B (n_37), .Q (n_85));
  EN2X0 g3552(.A (n_44), .B (n_35), .Q (n_84));
  OR2X1 g3553(.A (n_73), .B (n_36), .Q (n_83));
  OR2X1 g3554(.A (n_75), .B (n_74), .Q (n_82));
  OR2X1 g3555(.A (n_37), .B (n_72), .Q (n_81));
  OR2X1 g3556(.A (n_44), .B (n_35), .Q (n_80));
  OR2X1 g3557(.A (n_39), .B (n_40), .Q (n_79));
  OR2X1 g3558(.A (n_42), .B (n_43), .Q (n_78));
  OR2X1 g3559(.A (n_76), .B (n_38), .Q (n_77));
  NA2X1 g3560(.A (in_1[2]), .B (in_0[0]), .Q (n_76));
  AND2X1 g3561(.A (in_1[0]), .B (in_0[1]), .Q (n_71));
  NA2X1 g3562(.A (in_0[5]), .B (in_1[0]), .Q (n_75));
  NA2X1 g3563(.A (in_1[4]), .B (in_0[1]), .Q (n_70));
  NA2X1 g3564(.A (in_0[6]), .B (in_1[1]), .Q (n_69));
  NA2X1 g3565(.A (in_1[3]), .B (in_0[3]), .Q (n_68));
  AND2X1 g3566(.A (in_1[0]), .B (in_0[0]), .Q (n_67));
  NA2X1 g3567(.A (in_0[5]), .B (in_1[6]), .Q (n_66));
  NA2X1 g3568(.A (in_0[0]), .B (in_1[5]), .Q (n_74));
  NA2X1 g3569(.A (in_1[3]), .B (in_0[6]), .Q (n_65));
  NA2X1 g3570(.A (in_0[4]), .B (in_1[6]), .Q (n_64));
  NA2X1 g3571(.A (in_1[3]), .B (in_0[0]), .Q (n_73));
  NA2X1 g3572(.A (in_0[7]), .B (in_1[0]), .Q (n_72));
  NA2X1 g3573(.A (in_1[2]), .B (in_0[1]), .Q (n_63));
  NA2X1 g3574(.A (in_1[4]), .B (in_0[7]), .Q (n_62));
  NA2X1 g3575(.A (in_1[4]), .B (in_0[4]), .Q (n_61));
  NA2X1 g3576(.A (in_0[4]), .B (in_1[7]), .Q (n_60));
  NA2X1 g3577(.A (in_1[4]), .B (in_0[6]), .Q (n_59));
  NA2X1 g3578(.A (in_0[4]), .B (in_1[5]), .Q (n_58));
  NA2X1 g3579(.A (in_0[7]), .B (in_1[5]), .Q (n_57));
  NA2X1 g3580(.A (in_0[3]), .B (in_1[5]), .Q (n_56));
  NA2X1 g3581(.A (in_0[3]), .B (in_1[6]), .Q (n_55));
  NA2X1 g3582(.A (in_1[3]), .B (in_0[4]), .Q (n_54));
  NA2X1 g3583(.A (in_0[5]), .B (in_1[5]), .Q (n_53));
  NA2X1 g3584(.A (in_1[2]), .B (in_0[2]), .Q (n_52));
  NA2X1 g3585(.A (in_0[7]), .B (in_1[7]), .Q (n_51));
  NA2X1 g3586(.A (in_1[4]), .B (in_0[3]), .Q (n_50));
  NA2X1 g3587(.A (in_0[4]), .B (in_1[1]), .Q (n_49));
  NA2X1 g3588(.A (in_0[2]), .B (in_1[5]), .Q (n_48));
  NA2X1 g3589(.A (in_0[3]), .B (in_1[1]), .Q (n_47));
  NA2X1 g3590(.A (in_0[2]), .B (in_1[7]), .Q (n_46));
  NA2X1 g3591(.A (in_0[7]), .B (in_1[1]), .Q (n_45));
  NA2X1 g3592(.A (in_1[2]), .B (in_0[4]), .Q (n_44));
  NA2X1 g3593(.A (in_0[4]), .B (in_1[0]), .Q (n_43));
  NA2X1 g3594(.A (in_1[4]), .B (in_0[0]), .Q (n_42));
  NA2X1 g3595(.A (in_1[2]), .B (in_0[5]), .Q (n_34));
  NA2X1 g3596(.A (in_0[6]), .B (in_1[6]), .Q (n_33));
  NA2X1 g3597(.A (in_1[4]), .B (in_0[5]), .Q (n_32));
  NA2X1 g3598(.A (in_0[1]), .B (in_1[1]), .Q (n_41));
  NA2X1 g3599(.A (in_0[2]), .B (in_1[6]), .Q (n_40));
  NA2X1 g3600(.A (in_1[2]), .B (in_0[6]), .Q (n_39));
  NA2X1 g3601(.A (in_0[2]), .B (in_1[0]), .Q (n_38));
  NA2X1 g3602(.A (in_1[3]), .B (in_0[1]), .Q (n_31));
  AND2X1 g3603(.A (in_1[1]), .B (in_0[0]), .Q (n_30));
  NA2X1 g3604(.A (in_0[1]), .B (in_1[7]), .Q (n_29));
  NA2X1 g3605(.A (in_0[0]), .B (in_1[7]), .Q (n_37));
  NA2X1 g3606(.A (in_0[3]), .B (in_1[0]), .Q (n_36));
  NA2X1 g3607(.A (in_0[6]), .B (in_1[0]), .Q (n_35));
  NA2X1 g3608(.A (in_1[3]), .B (in_0[2]), .Q (n_28));
  NA2X1 g3609(.A (in_0[5]), .B (in_1[7]), .Q (n_27));
  NA2X1 g3610(.A (in_0[6]), .B (in_1[7]), .Q (n_26));
  NA2X1 g3611(.A (in_1[3]), .B (in_0[7]), .Q (n_25));
  NA2X1 g3612(.A (in_1[2]), .B (in_0[7]), .Q (n_24));
  NA2X1 g3613(.A (in_0[1]), .B (in_1[6]), .Q (n_23));
  NA2X1 g3614(.A (in_0[0]), .B (in_1[6]), .Q (n_22));
  NA2X1 g3615(.A (in_0[2]), .B (in_1[1]), .Q (n_21));
  NA2X1 g3616(.A (in_0[7]), .B (in_1[6]), .Q (n_20));
  NA2X1 g3617(.A (in_0[6]), .B (in_1[5]), .Q (n_19));
  NA2X1 g3618(.A (in_0[3]), .B (in_1[7]), .Q (n_18));
  NA2X1 g3619(.A (in_0[1]), .B (in_1[5]), .Q (n_17));
  NA2X1 g3620(.A (in_0[5]), .B (in_1[1]), .Q (n_16));
  NA2X1 g3621(.A (in_1[3]), .B (in_0[5]), .Q (n_15));
  NA2X1 g3622(.A (in_1[4]), .B (in_0[2]), .Q (n_14));
  NA2X1 g3623(.A (in_1[2]), .B (in_0[3]), .Q (n_13));
  INX1 g3624(.A (in_2[7]), .Q (n_12));
  INX1 g3625(.A (in_2[9]), .Q (n_11));
  INX1 g3626(.A (in_2[8]), .Q (n_10));
  INX1 g3627(.A (in_2[11]), .Q (n_9));
  INX1 g3628(.A (in_2[3]), .Q (n_8));
  INX1 g3629(.A (in_2[2]), .Q (n_7));
  INX1 g3630(.A (in_2[14]), .Q (n_6));
  INX1 g3631(.A (in_2[13]), .Q (n_5));
  INX1 g3632(.A (in_2[5]), .Q (n_4));
  INX1 g3633(.A (in_2[4]), .Q (n_3));
  INX1 g3634(.A (in_2[12]), .Q (n_2));
  INX1 g3635(.A (in_2[10]), .Q (n_1));
  INX1 g3636(.A (in_2[6]), .Q (n_0));
  INX0 g3(.A (n_267), .Q (n_268));
  FAX0 g2(.A (in_2[1]), .B (n_93), .CI (n_94), .S (out_0[1]), .CO
       (n_267));
endmodule

module unsig_altmult_accum(dataa, datab, clk, aclr, clken, sload,
     adder_out);
  input [7:0] dataa, datab;
  input clk, aclr, clken, sload;
  output [15:0] adder_out;
  wire [7:0] dataa, datab;
  wire clk, aclr, clken, sload;
  wire [15:0] adder_out;
  wire [15:0] dataa_reg;
  wire [15:0] datab_reg;
  wire [15:0] old_result;
  wire UNCONNECTED_HIER_Z, UNCONNECTED_HIER_Z0, n_0, n_38, n_39, n_40,
       n_41, n_42;
  wire n_43, n_44, n_45, n_46, n_47, n_48, n_49, n_50;
  wire n_51, n_52, n_53, rc_gclk, sload_reg;
  RC_CG_MOD_AUTO_unsig_altmult_accum RC_CG_HIER_INST1(.ck_in (clk),
       .enable (clken), .test (1'b0), .ck_out (rc_gclk));
  csa_tree_add_43_28_group_63 csa_tree_add_43_28_groupi(.in_0
       ({UNCONNECTED_HIER_Z, dataa_reg[7:0]}), .in_1
       ({UNCONNECTED_HIER_Z0, datab_reg[7:0]}), .in_2 (old_result),
       .out_0 ({n_38, n_39, n_40, n_41, n_42, n_43, n_44, n_45, n_46,
       n_47, n_48, n_49, n_50, n_51, n_52, n_53}));
  NO2I1X1 g305(.B (sload_reg), .AN (adder_out[6]), .Q (old_result[6]));
  NO2I1X1 g306(.B (sload_reg), .AN (adder_out[14]), .Q
       (old_result[14]));
  NO2I1X1 g307(.B (sload_reg), .AN (adder_out[8]), .Q (old_result[8]));
  NO2I1X1 g308(.B (sload_reg), .AN (adder_out[7]), .Q (old_result[7]));
  NO2I1X1 g309(.B (sload_reg), .AN (adder_out[15]), .Q
       (old_result[15]));
  NO2I1X1 g310(.B (sload_reg), .AN (adder_out[5]), .Q (old_result[5]));
  NO2I1X1 g311(.B (sload_reg), .AN (adder_out[13]), .Q
       (old_result[13]));
  NO2I1X1 g312(.B (sload_reg), .AN (adder_out[4]), .Q (old_result[4]));
  NO2I1X1 g313(.B (sload_reg), .AN (adder_out[11]), .Q
       (old_result[11]));
  NO2I1X1 g314(.B (sload_reg), .AN (adder_out[2]), .Q (old_result[2]));
  NO2I1X1 g315(.B (sload_reg), .AN (adder_out[1]), .Q (old_result[1]));
  NO2I1X1 g316(.B (sload_reg), .AN (adder_out[12]), .Q
       (old_result[12]));
  NO2I1X1 g317(.B (sload_reg), .AN (adder_out[3]), .Q (old_result[3]));
  NO2I1X1 g318(.B (sload_reg), .AN (adder_out[0]), .Q (old_result[0]));
  NO2I1X1 g319(.B (sload_reg), .AN (adder_out[10]), .Q
       (old_result[10]));
  NO2I1X1 g320(.B (sload_reg), .AN (adder_out[9]), .Q (old_result[9]));
  DFRRQX1 \datab_reg_reg[7] (.RN (n_0), .C (rc_gclk), .D (datab[7]), .Q
       (datab_reg[7]));
  DFRRQX1 \datab_reg_reg[0] (.RN (n_0), .C (rc_gclk), .D (datab[0]), .Q
       (datab_reg[0]));
  DFRRQX1 \dataa_reg_reg[6] (.RN (n_0), .C (rc_gclk), .D (dataa[6]), .Q
       (dataa_reg[6]));
  DFRRQX1 \dataa_reg_reg[0] (.RN (n_0), .C (rc_gclk), .D (dataa[0]), .Q
       (dataa_reg[0]));
  DFRRQX1 \dataa_reg_reg[4] (.RN (n_0), .C (rc_gclk), .D (dataa[4]), .Q
       (dataa_reg[4]));
  DFRRQX1 \datab_reg_reg[6] (.RN (n_0), .C (rc_gclk), .D (datab[6]), .Q
       (datab_reg[6]));
  DFRRQX1 \dataa_reg_reg[3] (.RN (n_0), .C (rc_gclk), .D (dataa[3]), .Q
       (dataa_reg[3]));
  DFRRQX1 sload_reg_reg(.RN (n_0), .C (rc_gclk), .D (sload), .Q
       (sload_reg));
  DFRRQX1 \datab_reg_reg[1] (.RN (n_0), .C (rc_gclk), .D (datab[1]), .Q
       (datab_reg[1]));
  DFRRQX1 \datab_reg_reg[5] (.RN (n_0), .C (rc_gclk), .D (datab[5]), .Q
       (datab_reg[5]));
  DFRRQX1 \dataa_reg_reg[2] (.RN (n_0), .C (rc_gclk), .D (dataa[2]), .Q
       (dataa_reg[2]));
  DFRRQX1 \datab_reg_reg[4] (.RN (n_0), .C (rc_gclk), .D (datab[4]), .Q
       (datab_reg[4]));
  DFRRQX1 \dataa_reg_reg[5] (.RN (n_0), .C (rc_gclk), .D (dataa[5]), .Q
       (dataa_reg[5]));
  DFRRQX1 \datab_reg_reg[3] (.RN (n_0), .C (rc_gclk), .D (datab[3]), .Q
       (datab_reg[3]));
  DFRRQX1 \dataa_reg_reg[1] (.RN (n_0), .C (rc_gclk), .D (dataa[1]), .Q
       (dataa_reg[1]));
  DFRRQX1 \datab_reg_reg[2] (.RN (n_0), .C (rc_gclk), .D (datab[2]), .Q
       (datab_reg[2]));
  DFRRQX1 \dataa_reg_reg[7] (.RN (n_0), .C (rc_gclk), .D (dataa[7]), .Q
       (dataa_reg[7]));
  INX0 g338(.A (aclr), .Q (n_0));
  DFRRQX2 \adder_out_reg[13] (.RN (n_0), .C (rc_gclk), .D (n_40), .Q
       (adder_out[13]));
  DFRRQX2 \adder_out_reg[10] (.RN (n_0), .C (rc_gclk), .D (n_43), .Q
       (adder_out[10]));
  DFRRQX2 \adder_out_reg[11] (.RN (n_0), .C (rc_gclk), .D (n_42), .Q
       (adder_out[11]));
  DFRRQX2 \adder_out_reg[12] (.RN (n_0), .C (rc_gclk), .D (n_41), .Q
       (adder_out[12]));
  DFRRQX2 \adder_out_reg[0] (.RN (n_0), .C (rc_gclk), .D (n_53), .Q
       (adder_out[0]));
  DFRRQX2 \adder_out_reg[5] (.RN (n_0), .C (rc_gclk), .D (n_48), .Q
       (adder_out[5]));
  DFRRQX2 \adder_out_reg[14] (.RN (n_0), .C (rc_gclk), .D (n_39), .Q
       (adder_out[14]));
  DFRRQX2 \adder_out_reg[15] (.RN (n_0), .C (rc_gclk), .D (n_38), .Q
       (adder_out[15]));
  DFRRQX2 \adder_out_reg[6] (.RN (n_0), .C (rc_gclk), .D (n_47), .Q
       (adder_out[6]));
  DFRRQX2 \adder_out_reg[2] (.RN (n_0), .C (rc_gclk), .D (n_51), .Q
       (adder_out[2]));
  DFRRQX2 \adder_out_reg[3] (.RN (n_0), .C (rc_gclk), .D (n_50), .Q
       (adder_out[3]));
  DFRRQX2 \adder_out_reg[4] (.RN (n_0), .C (rc_gclk), .D (n_49), .Q
       (adder_out[4]));
  DFRRQX2 \adder_out_reg[1] (.RN (n_0), .C (rc_gclk), .D (n_52), .Q
       (adder_out[1]));
  DFRRQX2 \adder_out_reg[7] (.RN (n_0), .C (rc_gclk), .D (n_46), .Q
       (adder_out[7]));
  DFRRQX2 \adder_out_reg[8] (.RN (n_0), .C (rc_gclk), .D (n_45), .Q
       (adder_out[8]));
  DFRRQX2 \adder_out_reg[9] (.RN (n_0), .C (rc_gclk), .D (n_44), .Q
       (adder_out[9]));
endmodule

module iopads(pdataa, pdatab, clk, paclr, pclken, psload, padder_out);
 
// INPUT OR OPUTPUT ADD P before - because of mudule 
  input clk, paclr, pclken, psload;
  input [7:0] pdataa, pdatab;
  output [15:0] padder_out;

// Wire sem o P  
  wire inside_clk, aclr, clken, sload;
  wire [7:0] dataa, datab;
  wire [15:0] adder_out;


// method pad pclk -> wire inside_clk
  unsig_altmult_accum unsig_altmult_accum_INST(.dataa(dataa), .datab(datab), .clk(inside_clk), .aclr(aclr), .clken(clken), .sload(sload), .adder_out(adder_out));

  // ICP means Inputs
  //wire inside_clk -> pad pclk
  ICP pinst_clk(.Y(inside_clk), .PAD(clk));
  ICP pinst_aclr(.Y(aclr), .PAD(paclr));
  ICP pinst_clken(.Y(clken), .PAD(pclken));
  ICP pinst_sload(.Y(sload), .PAD(psload));
  
  ICP pinst_dataa0(.Y(dataa[0]), .PAD(pdataa[0]));
  ICP pinst_dataa1(.Y(dataa[1]), .PAD(pdataa[1])); 
  ICP pinst_dataa2(.Y(dataa[2]), .PAD(pdataa[2]));
  ICP pinst_dataa3(.Y(dataa[3]), .PAD(pdataa[3]));
  ICP pinst_dataa4(.Y(dataa[4]), .PAD(pdataa[4]));
  ICP pinst_dataa5(.Y(dataa[5]), .PAD(pdataa[5]));
  ICP pinst_dataa6(.Y(dataa[6]), .PAD(pdataa[6]));
  ICP pinst_dataa7(.Y(dataa[7]), .PAD(pdataa[7]));


  ICP pinst_datab0(.Y(datab[0]), .PAD(pdatab[0]));
  ICP pinst_datab1(.Y(datab[1]), .PAD(pdatab[1])); 
  ICP pinst_datab2(.Y(datab[2]), .PAD(pdatab[2]));
  ICP pinst_datab3(.Y(datab[3]), .PAD(pdatab[3]));
  ICP pinst_datab4(.Y(datab[4]), .PAD(pdatab[4]));
  ICP pinst_datab5(.Y(datab[5]), .PAD(pdatab[5]));
  ICP pinst_datab6(.Y(datab[6]), .PAD(pdatab[6]));
  ICP pinst_datab7(.Y(datab[7]), .PAD(pdatab[7]));
 
  VDDIPADP power_top();
  GNDOPADP ground_top();
  VDDIPADP power_left ();
  GNDOPADP ground_left();
  VDDIPADP power_rigth();
  GNDOPADP ground_right();
  VDDIPADP power_bottom ();
  GNDOPADP ground_bottom();

 BD8P pinst_adder_out0(.A(adder_out[0]), .PAD(padder_out[0]));
 BD8P pinst_adder_out1(.A(adder_out[1]), .PAD(padder_out[1]));
 BD8P pinst_adder_out2(.A(adder_out[2]), .PAD(padder_out[2]));
 BD8P pinst_adder_out3(.A(adder_out[3]), .PAD(padder_out[3]));
 BD8P pinst_adder_out4(.A(adder_out[4]), .PAD(padder_out[4]));
 BD8P pinst_adder_out5(.A(adder_out[5]), .PAD(padder_out[5]));
 BD8P pinst_adder_out6(.A(adder_out[6]), .PAD(padder_out[6]));
 BD8P pinst_adder_out7(.A(adder_out[7]), .PAD(padder_out[7]));
 
 BD8P pinst_adder_out8(.A(adder_out[8]), .PAD(padder_out[8]));
 BD8P pinst_adder_out9(.A(adder_out[9]), .PAD(padder_out[9]));
 BD8P pinst_adder_out10(.A(adder_out[10]), .PAD(padder_out[10]));
 BD8P pinst_adder_out11(.A(adder_out[11]), .PAD(padder_out[11]));
 BD8P pinst_adder_out12(.A(adder_out[12]), .PAD(padder_out[12]));
 BD8P pinst_adder_out13(.A(adder_out[13]), .PAD(padder_out[13]));
 BD8P pinst_adder_out14(.A(adder_out[14]), .PAD(padder_out[14]));
 BD8P pinst_adder_out15(.A(adder_out[15]), .PAD(padder_out[15]));

  CORNERP CornerTR();
  CORNERP CornerTL();
  CORNERP CornerBL();
  CORNERP CornerBR();

endmodule


func int Patch_AE_IsLHiverBuddygothArtstuff() {
    return ((Hlp_StrCmp(NINJA_MODNAME, "2807488408_LHIVER"))
         || (Hlp_StrCmp(NINJA_MODNAME, "2807488408_LHIVER_DE"))
         || (Hlp_StrCmp(NINJA_MODNAME, "2807488408_LHIVER_EN"))
         || (Hlp_StrCmp(NINJA_MODNAME, "2807488408_LHIVER_PL"))
         || (Hlp_StrCmp(NINJA_MODNAME, "2802368795_LHIVERBYBUDDYGOTH"))
         || (Hlp_StrCmp(NINJA_MODNAME, "3434711154_LHIVER_ARTSTUFF_DE"))
         || (Hlp_StrCmp(NINJA_MODNAME, "3434711154_LHIVER_ARTSTUFF_EN"))
         || (Hlp_StrCmp(NINJA_MODNAME, "3434711154_LHIVER_ARTSTUFF_PL"))
         || (Hlp_StrCmp(NINJA_MODNAME, "3434711154_LHIVER_ARTSTUFF_RU")));
};

func void Patch_AE_BalanceLHiverBuddygothArtstuff() {
    // Resources
    Patch_AE_SmithItem = MEM_GetSymbolIndex("ITMI_STEELBAR");
    Patch_AE_SmithItemCold = MEM_GetSymbolIndex("ITMI_STEELBAR");

    // No additional steel in hand at anvil
    Patch_AE_INGREDIENTS_ITAR_PAL_ST__ItMiSwordrawhot = Patch_AE_INGREDIENTS_ITAR_PAL_ST__ItMiSwordrawhot + 1;

    // MIL

    ITAR_MIL_R_ArmorExpansion__PROT_EDGE = 35;
    ITAR_MIL_R_ArmorExpansion__PROT_BLUNT = 35;
    ITAR_MIL_R_ArmorExpansion__PROT_POINT = 35;
    ITAR_MIL_R_ArmorExpansion__PROT_FIRE = 0;
    ITAR_MIL_R_ArmorExpansion__PROT_MAGIC = 0;

    ITAR_MIL_SCOUT_ArmorExpansion__PROT_EDGE = 25;
    ITAR_MIL_SCOUT_ArmorExpansion__PROT_BLUNT = 25;
    ITAR_MIL_SCOUT_ArmorExpansion__PROT_POINT = 25;
    ITAR_MIL_SCOUT_ArmorExpansion__PROT_FIRE = 0;
    ITAR_MIL_SCOUT_ArmorExpansion__PROT_MAGIC = 0;

    ITAR_MIL_M_ArmorExpansion__PROT_EDGE = 40;
    ITAR_MIL_M_ArmorExpansion__PROT_BLUNT = 40;
    ITAR_MIL_M_ArmorExpansion__PROT_POINT = 40;
    ITAR_MIL_M_ArmorExpansion__PROT_FIRE = 0;
    ITAR_MIL_M_ArmorExpansion__PROT_MAGIC = 0;

    ITAR_MIL_P_ArmorExpansion__PROT_EDGE = 35;
    ITAR_MIL_P_ArmorExpansion__PROT_BLUNT = 35;
    ITAR_MIL_P_ArmorExpansion__PROT_POINT = 35;
    ITAR_MIL_P_ArmorExpansion__PROT_FIRE = 0;
    ITAR_MIL_P_ArmorExpansion__PROT_MAGIC = 0;

    ITAR_MIL_MED2_ArmorExpansion__PROT_EDGE = 45;
    ITAR_MIL_MED2_ArmorExpansion__PROT_BLUNT = 45;
    ITAR_MIL_MED2_ArmorExpansion__PROT_POINT = 45;
    ITAR_MIL_MED2_ArmorExpansion__PROT_FIRE = 0;
    ITAR_MIL_MED2_ArmorExpansion__PROT_MAGIC = 0;

    ITAR_MILP_H_ArmorExpansion__PROT_EDGE = 50;
    ITAR_MILP_H_ArmorExpansion__PROT_BLUNT = 50;
    ITAR_MILP_H_ArmorExpansion__PROT_POINT = 50;
    ITAR_MILP_H_ArmorExpansion__PROT_FIRE = 0;
    ITAR_MILP_H_ArmorExpansion__PROT_MAGIC = 0;

    ITAR_MIL_H_ArmorExpansion__PROT_EDGE = 55;
    ITAR_MIL_H_ArmorExpansion__PROT_BLUNT = 55;
    ITAR_MIL_H_ArmorExpansion__PROT_POINT = 55;
    ITAR_MIL_H_ArmorExpansion__PROT_FIRE = 0;
    ITAR_MIL_H_ArmorExpansion__PROT_MAGIC = 0;

    // SLD

    ITAR_SLD_LR_ArmorExpansion__PROT_EDGE = 30;
    ITAR_SLD_LR_ArmorExpansion__PROT_BLUNT = 30;
    ITAR_SLD_LR_ArmorExpansion__PROT_POINT = 35;
    ITAR_SLD_LR_ArmorExpansion__PROT_FIRE = 0;
    ITAR_SLD_LR_ArmorExpansion__PROT_MAGIC = 0;

    ITAR_SLD_SCOUT_ArmorExpansion__PROT_EDGE = 20;
    ITAR_SLD_SCOUT_ArmorExpansion__PROT_BLUNT = 25;
    ITAR_SLD_SCOUT_ArmorExpansion__PROT_POINT = 25;
    ITAR_SLD_SCOUT_ArmorExpansion__PROT_FIRE = 0;
    ITAR_SLD_SCOUT_ArmorExpansion__PROT_MAGIC = 0;

    ITAR_SLD_R_ArmorExpansion__PROT_EDGE = 55;
    ITAR_SLD_R_ArmorExpansion__PROT_BLUNT = 40;
    ITAR_SLD_R_ArmorExpansion__PROT_POINT = 40;
    ITAR_SLD_R_ArmorExpansion__PROT_FIRE = 10;
    ITAR_SLD_R_ArmorExpansion__PROT_MAGIC = 0;

    ITAR_SLD_MP_ArmorExpansion__PROT_EDGE = 40;
    ITAR_SLD_MP_ArmorExpansion__PROT_BLUNT = 30;
    ITAR_SLD_MP_ArmorExpansion__PROT_POINT = 25;
    ITAR_SLD_MP_ArmorExpansion__PROT_FIRE = 5;
    ITAR_SLD_MP_ArmorExpansion__PROT_MAGIC = 0;

    ITAR_SLD_BOW_ArmorExpansion__PROT_EDGE = 65;
    ITAR_SLD_BOW_ArmorExpansion__PROT_BLUNT = 45;
    ITAR_SLD_BOW_ArmorExpansion__PROT_POINT = 40;
    ITAR_SLD_BOW_ArmorExpansion__PROT_FIRE = 10;
    ITAR_SLD_BOW_ArmorExpansion__PROT_MAGIC = 10;

    // KDF

    ItAr_KDF_M_AMEXPANSION__PROT_EDGE = 35;
    ItAr_KDF_M_AMEXPANSION__PROT_BLUNT = 50;
    ItAr_KDF_M_AMEXPANSION__PROT_POINT = 10;
    ItAr_KDF_M_AMEXPANSION__PROT_FIRE = 35;
    ItAr_KDF_M_AMEXPANSION__PROT_MAGIC = 75;

    // PAL

    ITAR_PAL_MH_ArmorExpansion__PROT_EDGE = 85;
    ITAR_PAL_MH_ArmorExpansion__PROT_BLUNT = 70;
    ITAR_PAL_MH_ArmorExpansion__PROT_POINT = 70;
    ITAR_PAL_MH_ArmorExpansion__PROT_FIRE = 45;
    ITAR_PAL_MH_ArmorExpansion__PROT_MAGIC = 30;

    ITAR_PAL_MH_FH_ArmorExpansion__PROT_EDGE = 90;
    ITAR_PAL_MH_FH_ArmorExpansion__PROT_BLUNT = 70;
    ITAR_PAL_MH_FH_ArmorExpansion__PROT_POINT = 70;
    ITAR_PAL_MH_FH_ArmorExpansion__PROT_FIRE = 45;
    ITAR_PAL_MH_FH_ArmorExpansion__PROT_MAGIC = 35;

    ITAR_PAL_C_ArmorExpansion__PROT_EDGE = 75;
    ITAR_PAL_C_ArmorExpansion__PROT_BLUNT = 60;
    ITAR_PAL_C_ArmorExpansion__PROT_POINT = 55;
    ITAR_PAL_C_ArmorExpansion__PROT_FIRE = 30;
    ITAR_PAL_C_ArmorExpansion__PROT_MAGIC = 20;

    ITAR_PAL_CM_ArmorExpansion__PROT_EDGE = 80;
    ITAR_PAL_CM_ArmorExpansion__PROT_BLUNT = 70;
    ITAR_PAL_CM_ArmorExpansion__PROT_POINT = 65;
    ITAR_PAL_CM_ArmorExpansion__PROT_FIRE = 40;
    ITAR_PAL_CM_ArmorExpansion__PROT_MAGIC = 25;

    ITAR_PAL_CH_ArmorExpansion__PROT_EDGE = 90;
    ITAR_PAL_CH_ArmorExpansion__PROT_BLUNT = 75;
    ITAR_PAL_CH_ArmorExpansion__PROT_POINT = 65;
    ITAR_PAL_CH_ArmorExpansion__PROT_FIRE = 45;
    ITAR_PAL_CH_ArmorExpansion__PROT_MAGIC = 35;

    ITAR_CRUSADER_ArmorExpansion__PROT_EDGE = 85;
    ITAR_CRUSADER_ArmorExpansion__PROT_BLUNT = 70;
    ITAR_CRUSADER_ArmorExpansion__PROT_POINT = 65;
    ITAR_CRUSADER_ArmorExpansion__PROT_FIRE = 35;
    ITAR_CRUSADER_ArmorExpansion__PROT_MAGIC = 35;

    ITAR_NH_CRUSADER_ArmorExpansion__PROT_EDGE = 80;
    ITAR_NH_CRUSADER_ArmorExpansion__PROT_BLUNT = 70;
    ITAR_NH_CRUSADER_ArmorExpansion__PROT_POINT = 65;
    ITAR_NH_CRUSADER_ArmorExpansion__PROT_FIRE = 35;
    ITAR_NH_CRUSADER_ArmorExpansion__PROT_MAGIC = 30;

    ITAR_PAL_A_ArmorExpansion__PROT_EDGE = 95;
    ITAR_PAL_A_ArmorExpansion__PROT_BLUNT = 70;
    ITAR_PAL_A_ArmorExpansion__PROT_POINT = 70;
    ITAR_PAL_A_ArmorExpansion__PROT_FIRE = 65;
    ITAR_PAL_A_ArmorExpansion__PROT_MAGIC = 55;
    Patch_AE_ITAR_PAL_A_BONUS_MANA = 40;

    ITAR_PAL_AFH_ArmorExpansion__PROT_EDGE = 100;
    ITAR_PAL_AFH_ArmorExpansion__PROT_BLUNT = 70;
    ITAR_PAL_AFH_ArmorExpansion__PROT_POINT = 75;
    ITAR_PAL_AFH_ArmorExpansion__PROT_FIRE = 65;
    ITAR_PAL_AFH_ArmorExpansion__PROT_MAGIC = 55;

    ITAR_PAL_ANH_ArmorExpansion__PROT_EDGE = 90;
    ITAR_PAL_ANH_ArmorExpansion__PROT_BLUNT = 70;
    ITAR_PAL_ANH_ArmorExpansion__PROT_POINT = 65;
    ITAR_PAL_ANH_ArmorExpansion__PROT_FIRE = 65;
    ITAR_PAL_ANH_ArmorExpansion__PROT_MAGIC = 55;

    ITAR_PAL_F_ArmorExpansion__PROT_EDGE = 90;
    ITAR_PAL_F_ArmorExpansion__PROT_BLUNT = 70;
    ITAR_PAL_F_ArmorExpansion__PROT_POINT = 65;
    ITAR_PAL_F_ArmorExpansion__PROT_FIRE = 55;
    ITAR_PAL_F_ArmorExpansion__PROT_MAGIC = 45;
    Patch_AE_ITAR_PAL_F_BONUS_MANA = 20;

    ITAR_PAL_FFH_ArmorExpansion__PROT_EDGE = 95;
    ITAR_PAL_FFH_ArmorExpansion__PROT_BLUNT = 70;
    ITAR_PAL_FFH_ArmorExpansion__PROT_POINT = 70;
    ITAR_PAL_FFH_ArmorExpansion__PROT_FIRE = 55;
    ITAR_PAL_FFH_ArmorExpansion__PROT_MAGIC = 45;

    ITAR_PAL_FNH_ArmorExpansion__PROT_EDGE = 85;
    ITAR_PAL_FNH_ArmorExpansion__PROT_BLUNT = 70;
    ITAR_PAL_FNH_ArmorExpansion__PROT_POINT = 60;
    ITAR_PAL_FNH_ArmorExpansion__PROT_FIRE = 55;
    ITAR_PAL_FNH_ArmorExpansion__PROT_MAGIC = 45;

    ITAR_PAL_R_ArmorExpansion__PROT_EDGE = 80;
    ITAR_PAL_R_ArmorExpansion__PROT_BLUNT = 55;
    ITAR_PAL_R_ArmorExpansion__PROT_POINT = 55;
    ITAR_PAL_R_ArmorExpansion__PROT_FIRE = 30;
    ITAR_PAL_R_ArmorExpansion__PROT_MAGIC = 20;

    ITAR_PAL_RFH_ArmorExpansion__PROT_EDGE = 85;
    ITAR_PAL_RFH_ArmorExpansion__PROT_BLUNT = 55;
    ITAR_PAL_RFH_ArmorExpansion__PROT_POINT = 60;
    ITAR_PAL_RFH_ArmorExpansion__PROT_FIRE = 30;
    ITAR_PAL_RFH_ArmorExpansion__PROT_MAGIC = 20;

    ITAR_PAL_RNH_ArmorExpansion__PROT_EDGE = 75;
    ITAR_PAL_RNH_ArmorExpansion__PROT_BLUNT = 55;
    ITAR_PAL_RNH_ArmorExpansion__PROT_POINT = 50;
    ITAR_PAL_RNH_ArmorExpansion__PROT_FIRE = 30;
    ITAR_PAL_RNH_ArmorExpansion__PROT_MAGIC = 20;

    ITAR_PAL_HFH_ArmorExpansion__PROT_EDGE = 105;
    ITAR_PAL_HFH_ArmorExpansion__PROT_BLUNT = 75;
    ITAR_PAL_HFH_ArmorExpansion__PROT_POINT = 80;
    ITAR_PAL_HFH_ArmorExpansion__PROT_FIRE = 50;
    ITAR_PAL_HFH_ArmorExpansion__PROT_MAGIC = 40;

    ITAR_PAL_HNH_ArmorExpansion__PROT_EDGE = 95;
    ITAR_PAL_HNH_ArmorExpansion__PROT_BLUNT = 75;
    ITAR_PAL_HNH_ArmorExpansion__PROT_POINT = 70;
    ITAR_PAL_HNH_ArmorExpansion__PROT_FIRE = 50;
    ITAR_PAL_HNH_ArmorExpansion__PROT_MAGIC = 40;

    	ITAR_PAL_CH_FH_ArmorExpansion__PROT_EDGE = 95;
	ITAR_PAL_CH_FH_ArmorExpansion__PROT_BLUNT = 75;
	ITAR_PAL_CH_FH_ArmorExpansion__PROT_POINT = 70;
	ITAR_PAL_CH_FH_ArmorExpansion__PROT_FIRE = 90;
	ITAR_PAL_CH_FH_ArmorExpansion__PROT_MAGIC = 45;

	ITAR_PAL_CM_FH_ArmorExpansion__PROT_EDGE = 85;
	ITAR_PAL_CM_FH_ArmorExpansion__PROT_BLUNT = 70;
	ITAR_PAL_CM_FH_ArmorExpansion__PROT_POINT = 65;
	ITAR_PAL_CM_FH_ArmorExpansion__PROT_FIRE = 40;
	ITAR_PAL_CM_FH_ArmorExpansion__PROT_MAGIC = 30;

	ITAR_PAL_M_NH_ArmorExpansion__PROT_EDGE = 80;
	ITAR_PAL_M_NH_ArmorExpansion__PROT_BLUNT = 65;
	ITAR_PAL_M_NH_ArmorExpansion__PROT_POINT = 65;
	ITAR_PAL_M_NH_ArmorExpansion__PROT_FIRE = 40;
	ITAR_PAL_M_NH_ArmorExpansion_PROT_MAGIC = 25;

    // DJG

    ITAR_DJG_HNH_ArmorExpansion__PROT_EDGE = 75;
    ITAR_DJG_HNH_ArmorExpansion__PROT_BLUNT = 100;
    ITAR_DJG_HNH_ArmorExpansion__PROT_POINT = 95;
    ITAR_DJG_HNH_ArmorExpansion__PROT_FIRE = 85;
    ITAR_DJG_HNH_ArmorExpansion__PROT_MAGIC = 20;

    ITAR_DJG_MNH_ArmorExpansion__PROT_EDGE = 70;
    ITAR_DJG_MNH_ArmorExpansion__PROT_BLUNT = 90;
    ITAR_DJG_MNH_ArmorExpansion__PROT_POINT = 85;
    ITAR_DJG_MNH_ArmorExpansion__PROT_FIRE = 70;
    ITAR_DJG_MNH_ArmorExpansion__PROT_MAGIC = 15;

    ITAR_DJG_CL_ArmorExpansion__PROT_EDGE = 55;
    ITAR_DJG_CL_ArmorExpansion__PROT_BLUNT = 75;
    ITAR_DJG_CL_ArmorExpansion__PROT_POINT = 55;
    ITAR_DJG_CL_ArmorExpansion__PROT_FIRE = 50;
    ITAR_DJG_CL_ArmorExpansion__PROT_MAGIC = 10;

    ITAR_DJG_CM_ArmorExpansion__PROT_EDGE = 60;
    ITAR_DJG_CM_ArmorExpansion__PROT_BLUNT = 80;
    ITAR_DJG_CM_ArmorExpansion__PROT_POINT = 75;
    ITAR_DJG_CM_ArmorExpansion__PROT_FIRE = 55;
    ITAR_DJG_CM_ArmorExpansion__PROT_MAGIC = 15;

    ITAR_DJG_CH_ArmorExpansion__PROT_EDGE = 70;
    ITAR_DJG_CH_ArmorExpansion__PROT_BLUNT = 90;
    ITAR_DJG_CH_ArmorExpansion__PROT_POINT = 85;
    ITAR_DJG_CH_ArmorExpansion__PROT_FIRE = 70;
    ITAR_DJG_CH_ArmorExpansion__PROT_MAGIC = 20;

    ITAR_DJG_CrawlerP_AEXPANSION__PROT_EDGE = 60;
    ITAR_DJG_CrawlerP_AEXPANSION__PROT_BLUNT = 60;
    ITAR_DJG_CrawlerP_AEXPANSION__PROT_POINT = 60;
    ITAR_DJG_CrawlerP_AEXPANSION__PROT_FIRE = 0;
    ITAR_DJG_CrawlerP_AEXPANSION__PROT_MAGIC = 0;
    	
    ITAR_DJG_H2_ArmorExpansion__PROT_EDGE = 85;
	ITAR_DJG_H2_ArmorExpansion__PROT_BLUNT = 105;
	ITAR_DJG_H2_ArmorExpansion__PROT_POINT = 100;
	ITAR_DJG_H2_ArmorExpansion__PROT_FIRE = 90;
	ITAR_DJG_H2_ArmorExpansion_PROT_MAGIC = 20;

	ITAR_DJG_M2_ArmorExpansion__PROT_EDGE = 70;
	ITAR_DJG_M2_ArmorExpansion__PROT_BLUNT = 95;
	ITAR_DJG_M2_ArmorExpansion__PROT_POINT = 90;
	ITAR_DJG_M2_ArmorExpansion__PROT_FIRE = 75;
	ITAR_DJG_M2_ArmorExpansion_PROT_MAGIC = 15;

	ITAR_DJG_L2_ArmorExpansion__PROT_EDGE = 65;
	ITAR_DJG_L2_ArmorExpansion__PROT_BLUNT = 85;
	ITAR_DJG_L2_ArmorExpansion__PROT_POINT = 75;
	ITAR_DJG_L2_ArmorExpansion__PROT_FIRE = 65;
	ITAR_DJG_L2_ArmorExpansion_PROT_MAGIC = 10;

	ITAR_DJG_H2_NH_ArmorExpansion__PROT_EDGE = 85;
	ITAR_DJG_H2_NH_ArmorExpansion__PROT_BLUNT = 100;
	ITAR_DJG_H2_NH_ArmorExpansion__PROT_POINT = 100;
	ITAR_DJG_H2_NH_ArmorExpansion__PROT_FIRE = 80;
	ITAR_DJG_H2_NH_ArmorExpansion_PROT_MAGIC = 20;

	ITAR_DJG_M2_NH_ArmorExpansion__PROT_EDGE = 70;
	ITAR_DJG_M2_NH_ArmorExpansion__PROT_BLUNT = 95;
	ITAR_DJG_M2_NH_ArmorExpansion__PROT_POINT = 90;
	ITAR_DJG_M2_NH_ArmorExpansion__PROT_FIRE = 65;
	ITAR_DJG_M2_NH_ArmorExpansion_PROT_MAGIC = 15;

	ITAR_DJG_L2_NH_ArmorExpansion__PROT_EDGE = 65;
	ITAR_DJG_L2_NH_ArmorExpansion__PROT_BLUNT = 85;
	ITAR_DJG_L2_NH_ArmorExpansion__PROT_POINT = 75;
	ITAR_DJG_L2_NH_ArmorExpansion__PROT_FIRE = 60;
	ITAR_DJG_L2_NH_ArmorExpansion_PROT_MAGIC = 10;

	ITAR_DJG_L_FH_ArmorExpansion__PROT_EDGE = 60;
	ITAR_DJG_L_FH_ArmorExpansion__PROT_BLUNT = 80;
	ITAR_DJG_L_FH_ArmorExpansion__PROT_POINT = 70;
	ITAR_DJG_L_FH_ArmorExpansion__PROT_FIRE = 60;
	ITAR_DJG_L_FH_ArmorExpansion_PROT_MAGIC = 10;

	ITAR_DJG_CH_FH_ArmorExpansion__PROT_EDGE = 70;
	ITAR_DJG_CH_FH_ArmorExpansion__PROT_BLUNT = 95;
	ITAR_DJG_CH_FH_ArmorExpansion__PROT_POINT = 85;
	ITAR_DJG_CH_FH_ArmorExpansion__PROT_FIRE = 80;
	ITAR_DJG_CH_FH_ArmorExpansion__PROT_MAGIC = 20;

	ITAR_DJG_CM_FH_ArmorExpansion__PROT_EDGE = 60;
	ITAR_DJG_CM_FH_ArmorExpansion__PROT_BLUNT = 85;
	ITAR_DJG_CM_FH_ArmorExpansion__PROT_POINT = 75;
	ITAR_DJG_CM_FH_ArmorExpansion__PROT_FIRE = 65;
	ITAR_DJG_CM_FH_ArmorExpansion__PROT_MAGIC = 15;

    // Guildless

    ITAR_PAL_ST_ArmorExpansion__PROT_EDGE = 80;
    ITAR_PAL_ST_ArmorExpansion__PROT_BLUNT = 55;
    ITAR_PAL_ST_ArmorExpansion__PROT_POINT = 60;
    ITAR_PAL_ST_ArmorExpansion__PROT_FIRE = 20;
    ITAR_PAL_ST_ArmorExpansion__PROT_MAGIC = 10;

    ITAR_GAMBESON_ArmorExpansion__PROT_EDGE = 15;
    ITAR_GAMBESON_ArmorExpansion__PROT_BLUNT = 20;
    ITAR_GAMBESON_ArmorExpansion__PROT_POINT = 15;
    ITAR_GAMBESON_ArmorExpansion__PROT_FIRE = 10;
    ITAR_GAMBESON_ArmorExpansion__PROT_MAGIC = 10;

    ITAR_ARX_HUNTERM_ArmorExpansion__PROT_EDGE = 30;
    ITAR_ARX_HUNTERM_ArmorExpansion__PROT_BLUNT = 35;
    ITAR_ARX_HUNTERM_ArmorExpansion__PROT_POINT = 30;
    ITAR_ARX_HUNTERM_ArmorExpansion__PROT_FIRE = 15;
    ITAR_ARX_HUNTERM_ArmorExpansion__PROT_MAGIC = 10;

    ITAR_ARX_HUNTERH_ArmorExpansion__PROT_EDGE = 45;
    ITAR_ARX_HUNTERH_ArmorExpansion__PROT_BLUNT = 50;
    ITAR_ARX_HUNTERH_ArmorExpansion__PROT_POINT = 40;
    ITAR_ARX_HUNTERH_ArmorExpansion__PROT_FIRE = 25;
    ITAR_ARX_HUNTERH_ArmorExpansion__PROT_MAGIC = 15;

    ITAR_PIR_H_ArmorExpansion__PROT_EDGE = 65;
    ITAR_PIR_H_ArmorExpansion__PROT_BLUNT = 55;
    ITAR_PIR_H_ArmorExpansion__PROT_POINT = 55;
    ITAR_PIR_H_ArmorExpansion__PROT_FIRE = 15;
    ITAR_PIR_H_ArmorExpansion__PROT_MAGIC = 10;
};

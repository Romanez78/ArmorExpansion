func int Patch_AE_IsLHiverMasty() {
    return ((Hlp_StrCmp(NINJA_MODNAME, "LHIVER_MASTY_DE"))
         || (Hlp_StrCmp(NINJA_MODNAME, "LHIVER_MASTY_EN"))
         || (Hlp_StrCmp(NINJA_MODNAME, "LHIVER_MASTY_PL")));
};

func void Patch_AE_BalanceLHiverMasty() {
    // Resources
    Patch_AE_SmithItem = MEM_GetSymbolIndex("ITMI_STEELBAR");

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

    ITAR_MILP_H_ArmorExpansion__PROT_EDGE = 45;
    ITAR_MILP_H_ArmorExpansion__PROT_BLUNT = 45;
    ITAR_MILP_H_ArmorExpansion__PROT_POINT = 45;
    ITAR_MILP_H_ArmorExpansion__PROT_FIRE = 0;
    ITAR_MILP_H_ArmorExpansion__PROT_MAGIC = 0;

    ITAR_MIL_H_ArmorExpansion__PROT_EDGE = 50;
    ITAR_MIL_H_ArmorExpansion__PROT_BLUNT = 50;
    ITAR_MIL_H_ArmorExpansion__PROT_POINT = 50;
    ITAR_MIL_H_ArmorExpansion__PROT_FIRE = 0;
    ITAR_MIL_H_ArmorExpansion__PROT_MAGIC = 0;

    // SLD

    ITAR_SLD_LR_ArmorExpansion__PROT_EDGE = 35;
    ITAR_SLD_LR_ArmorExpansion__PROT_BLUNT = 35;
    ITAR_SLD_LR_ArmorExpansion__PROT_POINT = 35;
    ITAR_SLD_LR_ArmorExpansion__PROT_FIRE = 0;
    ITAR_SLD_LR_ArmorExpansion__PROT_MAGIC = 0;

    ITAR_SLD_SCOUT_ArmorExpansion__PROT_EDGE = 25;
    ITAR_SLD_SCOUT_ArmorExpansion__PROT_BLUNT = 30;
    ITAR_SLD_SCOUT_ArmorExpansion__PROT_POINT = 25;
    ITAR_SLD_SCOUT_ArmorExpansion__PROT_FIRE = 0;
    ITAR_SLD_SCOUT_ArmorExpansion__PROT_MAGIC = 0;

    ITAR_SLD_R_ArmorExpansion__PROT_EDGE = 60;
    ITAR_SLD_R_ArmorExpansion__PROT_BLUNT = 60;
    ITAR_SLD_R_ArmorExpansion__PROT_POINT = 60;
    ITAR_SLD_R_ArmorExpansion__PROT_FIRE = 10;
    ITAR_SLD_R_ArmorExpansion__PROT_MAGIC = 20;

    ITAR_SLD_MP_ArmorExpansion__PROT_EDGE = 45;
    ITAR_SLD_MP_ArmorExpansion__PROT_BLUNT = 45;
    ITAR_SLD_MP_ArmorExpansion__PROT_POINT = 45;
    ITAR_SLD_MP_ArmorExpansion__PROT_FIRE = 5;
    ITAR_SLD_MP_ArmorExpansion__PROT_MAGIC = 10;

    ITAR_SLD_BOW_ArmorExpansion__PROT_EDGE = 80;
    ITAR_SLD_BOW_ArmorExpansion__PROT_BLUNT = 70;
    ITAR_SLD_BOW_ArmorExpansion__PROT_POINT = 75;
    ITAR_SLD_BOW_ArmorExpansion__PROT_FIRE = 15;
    ITAR_SLD_BOW_ArmorExpansion__PROT_MAGIC = 15;

    // KDF

    ItAr_KDF_M_AMEXPANSION__PROT_EDGE = 45;
    ItAr_KDF_M_AMEXPANSION__PROT_BLUNT = 45;
    ItAr_KDF_M_AMEXPANSION__PROT_POINT = 30;
    ItAr_KDF_M_AMEXPANSION__PROT_FIRE = 35;
    ItAr_KDF_M_AMEXPANSION__PROT_MAGIC = 70;

    // PAL

    ITAR_PAL_MH_ArmorExpansion__PROT_EDGE = 95;
    ITAR_PAL_MH_ArmorExpansion__PROT_BLUNT = 75;
    ITAR_PAL_MH_ArmorExpansion__PROT_POINT = 70;
    ITAR_PAL_MH_ArmorExpansion__PROT_FIRE = 40;
    ITAR_PAL_MH_ArmorExpansion__PROT_MAGIC = 50;

    ITAR_PAL_C_ArmorExpansion__PROT_EDGE = 75;
    ITAR_PAL_C_ArmorExpansion__PROT_BLUNT = 65;
    ITAR_PAL_C_ArmorExpansion__PROT_POINT = 55;
    ITAR_PAL_C_ArmorExpansion__PROT_FIRE = 25;
    ITAR_PAL_C_ArmorExpansion__PROT_MAGIC = 30;

    ITAR_PAL_CM_ArmorExpansion__PROT_EDGE = 85;
    ITAR_PAL_CM_ArmorExpansion__PROT_BLUNT = 70;
    ITAR_PAL_CM_ArmorExpansion__PROT_POINT = 55;
    ITAR_PAL_CM_ArmorExpansion__PROT_FIRE = 35;
    ITAR_PAL_CM_ArmorExpansion__PROT_MAGIC = 40;

    ITAR_PAL_CH_ArmorExpansion__PROT_EDGE = 100;
    ITAR_PAL_CH_ArmorExpansion__PROT_BLUNT = 80;
    ITAR_PAL_CH_ArmorExpansion__PROT_POINT = 70;
    ITAR_PAL_CH_ArmorExpansion__PROT_FIRE = 45;
    ITAR_PAL_CH_ArmorExpansion__PROT_MAGIC = 50;

    ITAR_CRUSADER_ArmorExpansion__PROT_EDGE = 90;
    ITAR_CRUSADER_ArmorExpansion__PROT_BLUNT = 70;
    ITAR_CRUSADER_ArmorExpansion__PROT_POINT = 70;
    ITAR_CRUSADER_ArmorExpansion__PROT_FIRE = 35;
    ITAR_CRUSADER_ArmorExpansion__PROT_MAGIC = 45;

    ITAR_PAL_A_ArmorExpansion__PROT_EDGE = 105;
    ITAR_PAL_A_ArmorExpansion__PROT_BLUNT = 80;
    ITAR_PAL_A_ArmorExpansion__PROT_POINT = 75;
    ITAR_PAL_A_ArmorExpansion__PROT_FIRE = 60;
    ITAR_PAL_A_ArmorExpansion__PROT_MAGIC = 70;
    Patch_AE_ITAR_PAL_A_BONUS_MANA = 60;

    ITAR_PAL_AFH_ArmorExpansion__PROT_EDGE = 105;
    ITAR_PAL_AFH_ArmorExpansion__PROT_BLUNT = 80;
    ITAR_PAL_AFH_ArmorExpansion__PROT_POINT = 75;
    ITAR_PAL_AFH_ArmorExpansion__PROT_FIRE = 60;
    ITAR_PAL_AFH_ArmorExpansion__PROT_MAGIC = 70;

    ITAR_PAL_ANH_ArmorExpansion__PROT_EDGE = 105;
    ITAR_PAL_ANH_ArmorExpansion__PROT_BLUNT = 80;
    ITAR_PAL_ANH_ArmorExpansion__PROT_POINT = 75;
    ITAR_PAL_ANH_ArmorExpansion__PROT_FIRE = 60;
    ITAR_PAL_ANH_ArmorExpansion__PROT_MAGIC = 70;

    ITAR_PAL_F_ArmorExpansion__PROT_EDGE = 95;
    ITAR_PAL_F_ArmorExpansion__PROT_BLUNT = 75;
    ITAR_PAL_F_ArmorExpansion__PROT_POINT = 70;
    ITAR_PAL_F_ArmorExpansion__PROT_FIRE = 50;
    ITAR_PAL_F_ArmorExpansion__PROT_MAGIC = 60;
    Patch_AE_ITAR_PAL_F_BONUS_MANA = 35;

    ITAR_PAL_FFH_ArmorExpansion__PROT_EDGE = 95;
    ITAR_PAL_FFH_ArmorExpansion__PROT_BLUNT = 75;
    ITAR_PAL_FFH_ArmorExpansion__PROT_POINT = 70;
    ITAR_PAL_FFH_ArmorExpansion__PROT_FIRE = 50;
    ITAR_PAL_FFH_ArmorExpansion__PROT_MAGIC = 60;

    ITAR_PAL_FNH_ArmorExpansion__PROT_EDGE = 95;
    ITAR_PAL_FNH_ArmorExpansion__PROT_BLUNT = 75;
    ITAR_PAL_FNH_ArmorExpansion__PROT_POINT = 70;
    ITAR_PAL_FNH_ArmorExpansion__PROT_FIRE = 50;
    ITAR_PAL_FNH_ArmorExpansion__PROT_MAGIC = 60;

    ITAR_PAL_R_ArmorExpansion__PROT_EDGE = 80;
    ITAR_PAL_R_ArmorExpansion__PROT_BLUNT = 65;
    ITAR_PAL_R_ArmorExpansion__PROT_POINT = 60;
    ITAR_PAL_R_ArmorExpansion__PROT_FIRE = 30;
    ITAR_PAL_R_ArmorExpansion__PROT_MAGIC = 40;

    ITAR_PAL_RFH_ArmorExpansion__PROT_EDGE = 80;
    ITAR_PAL_RFH_ArmorExpansion__PROT_BLUNT = 65;
    ITAR_PAL_RFH_ArmorExpansion__PROT_POINT = 60;
    ITAR_PAL_RFH_ArmorExpansion__PROT_FIRE = 30;
    ITAR_PAL_RFH_ArmorExpansion__PROT_MAGIC = 40;

    ITAR_PAL_RNH_ArmorExpansion__PROT_EDGE = 80;
    ITAR_PAL_RNH_ArmorExpansion__PROT_BLUNT = 65;
    ITAR_PAL_RNH_ArmorExpansion__PROT_POINT = 60;
    ITAR_PAL_RNH_ArmorExpansion__PROT_FIRE = 30;
    ITAR_PAL_RNH_ArmorExpansion__PROT_MAGIC = 40;

    ITAR_PAL_HFH_ArmorExpansion__PROT_EDGE = 110;
    ITAR_PAL_HFH_ArmorExpansion__PROT_BLUNT = 85;
    ITAR_PAL_HFH_ArmorExpansion__PROT_POINT = 75;
    ITAR_PAL_HFH_ArmorExpansion__PROT_FIRE = 50;
    ITAR_PAL_HFH_ArmorExpansion__PROT_MAGIC = 60;

    ITAR_PAL_HNH_ArmorExpansion__PROT_EDGE = 110;
    ITAR_PAL_HNH_ArmorExpansion__PROT_BLUNT = 85;
    ITAR_PAL_HNH_ArmorExpansion__PROT_POINT = 75;
    ITAR_PAL_HNH_ArmorExpansion__PROT_FIRE = 50;
    ITAR_PAL_HNH_ArmorExpansion__PROT_MAGIC = 60;

    // DJG

    ITAR_DJG_CL_ArmorExpansion__PROT_EDGE = 70;
    ITAR_DJG_CL_ArmorExpansion__PROT_BLUNT = 80;
    ITAR_DJG_CL_ArmorExpansion__PROT_POINT = 60;
    ITAR_DJG_CL_ArmorExpansion__PROT_FIRE = 40;
    ITAR_DJG_CL_ArmorExpansion__PROT_MAGIC = 15;

    ITAR_DJG_CM_ArmorExpansion__PROT_EDGE = 95;
    ITAR_DJG_CM_ArmorExpansion__PROT_BLUNT = 100;
    ITAR_DJG_CM_ArmorExpansion__PROT_POINT = 90;
    ITAR_DJG_CM_ArmorExpansion__PROT_FIRE = 60;
    ITAR_DJG_CM_ArmorExpansion__PROT_MAGIC = 25;

    ITAR_DJG_CH_ArmorExpansion__PROT_EDGE = 105;
    ITAR_DJG_CH_ArmorExpansion__PROT_BLUNT = 110;
    ITAR_DJG_CH_ArmorExpansion__PROT_POINT = 100;
    ITAR_DJG_CH_ArmorExpansion__PROT_FIRE = 75;
    ITAR_DJG_CH_ArmorExpansion__PROT_MAGIC = 35;

    ITAR_DJG_CrawlerP_AEXPANSION__PROT_EDGE = 70;
    ITAR_DJG_CrawlerP_AEXPANSION__PROT_BLUNT = 70;
    ITAR_DJG_CrawlerP_AEXPANSION__PROT_POINT = 70;
    ITAR_DJG_CrawlerP_AEXPANSION__PROT_FIRE = 5;
    ITAR_DJG_CrawlerP_AEXPANSION__PROT_MAGIC = 5;

    // Guildless

    ITAR_PAL_ST_ArmorExpansion__PROT_EDGE = 80;
    ITAR_PAL_ST_ArmorExpansion__PROT_BLUNT = 60;
    ITAR_PAL_ST_ArmorExpansion__PROT_POINT = 60;
    ITAR_PAL_ST_ArmorExpansion__PROT_FIRE = 20;
    ITAR_PAL_ST_ArmorExpansion__PROT_MAGIC = 20;

    ITAR_GAMBESON_ArmorExpansion__PROT_EDGE = 15;
    ITAR_GAMBESON_ArmorExpansion__PROT_BLUNT = 20;
    ITAR_GAMBESON_ArmorExpansion__PROT_POINT = 15;
    ITAR_GAMBESON_ArmorExpansion__PROT_FIRE = 0;
    ITAR_GAMBESON_ArmorExpansion__PROT_MAGIC = 0;

    ITAR_ARX_HUNTERM_ArmorExpansion__PROT_EDGE = 30;
    ITAR_ARX_HUNTERM_ArmorExpansion__PROT_BLUNT = 35;
    ITAR_ARX_HUNTERM_ArmorExpansion__PROT_POINT = 30;
    ITAR_ARX_HUNTERM_ArmorExpansion__PROT_FIRE = 10;
    ITAR_ARX_HUNTERM_ArmorExpansion__PROT_MAGIC = 5;

    ITAR_ARX_HUNTERH_ArmorExpansion__PROT_EDGE = 45;
    ITAR_ARX_HUNTERH_ArmorExpansion__PROT_BLUNT = 50;
    ITAR_ARX_HUNTERH_ArmorExpansion__PROT_POINT = 45;
    ITAR_ARX_HUNTERH_ArmorExpansion__PROT_FIRE = 15;
    ITAR_ARX_HUNTERH_ArmorExpansion__PROT_MAGIC = 10;

    ITAR_PIR_H_ArmorExpansion__PROT_EDGE = 65;
    ITAR_PIR_H_ArmorExpansion__PROT_BLUNT = 60;
    ITAR_PIR_H_ArmorExpansion__PROT_POINT = 55;
    ITAR_PIR_H_ArmorExpansion__PROT_FIRE = 15;
    ITAR_PIR_H_ArmorExpansion__PROT_MAGIC = 10;
};

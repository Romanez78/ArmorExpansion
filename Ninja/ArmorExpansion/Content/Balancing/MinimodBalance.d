func int Patch_AE_IsBalanceMinimodBalance() {
    return ((Hlp_StrCmp(NINJA_MODNAME, "3372979990_REMASTER_DE"))
         || (Hlp_StrCmp(NINJA_MODNAME, "3372979990_REMASTER_EN"))
         || (Hlp_StrCmp(NINJA_MODNAME, "3372979990_REMASTER_PL"))
         || (Hlp_StrCmp(NINJA_MODNAME, "3372979990_REMASTER_RU"))
         || (Hlp_StrCmp(NINJA_MODNAME, "MINIMOD_BALANCE")));
};

func void Patch_AE_BalanceMinimodBalance() {

    // MIL

    ITAR_MIL_R_ArmorExpansion__PROT_EDGE = 45;
    ITAR_MIL_R_ArmorExpansion__PROT_BLUNT = 45;
    ITAR_MIL_R_ArmorExpansion__PROT_POINT = 45;
    ITAR_MIL_R_ArmorExpansion__PROT_FIRE = 0;
    ITAR_MIL_R_ArmorExpansion__PROT_MAGIC = 0;

    ITAR_MIL_SCOUT_ArmorExpansion__PROT_EDGE = 35;
    ITAR_MIL_SCOUT_ArmorExpansion__PROT_BLUNT = 35;
    ITAR_MIL_SCOUT_ArmorExpansion__PROT_POINT = 35;
    ITAR_MIL_SCOUT_ArmorExpansion__PROT_FIRE = 0;
    ITAR_MIL_SCOUT_ArmorExpansion__PROT_MAGIC = 0;

    ITAR_MIL_M_ArmorExpansion__PROT_EDGE = 50;
    ITAR_MIL_M_ArmorExpansion__PROT_BLUNT = 50;
    ITAR_MIL_M_ArmorExpansion__PROT_POINT = 50;
    ITAR_MIL_M_ArmorExpansion__PROT_FIRE = 5;
    ITAR_MIL_M_ArmorExpansion__PROT_MAGIC = 5;

    ITAR_MIL_P_ArmorExpansion__PROT_EDGE = 45;
    ITAR_MIL_P_ArmorExpansion__PROT_BLUNT = 45;
    ITAR_MIL_P_ArmorExpansion__PROT_POINT = 45;
    ITAR_MIL_P_ArmorExpansion__PROT_FIRE = 5;
    ITAR_MIL_P_ArmorExpansion__PROT_MAGIC = 0;

    ITAR_MIL_MED2_ArmorExpansion__PROT_EDGE = 55;
    ITAR_MIL_MED2_ArmorExpansion__PROT_BLUNT = 55;
    ITAR_MIL_MED2_ArmorExpansion__PROT_POINT = 55;
    ITAR_MIL_MED2_ArmorExpansion__PROT_FIRE = 10;
    ITAR_MIL_MED2_ArmorExpansion__PROT_MAGIC = 5;

    ITAR_MILP_H_ArmorExpansion__PROT_EDGE = 55;
    ITAR_MILP_H_ArmorExpansion__PROT_BLUNT = 55;
    ITAR_MILP_H_ArmorExpansion__PROT_POINT = 55;
    ITAR_MILP_H_ArmorExpansion__PROT_FIRE = 10;
    ITAR_MILP_H_ArmorExpansion__PROT_MAGIC = 10;

    ITAR_MIL_H_ArmorExpansion__PROT_EDGE = 60;
    ITAR_MIL_H_ArmorExpansion__PROT_BLUNT = 60;
    ITAR_MIL_H_ArmorExpansion__PROT_POINT = 60;
    ITAR_MIL_H_ArmorExpansion__PROT_FIRE = 10;
    ITAR_MIL_H_ArmorExpansion__PROT_MAGIC = 10;

    // SLD

    ITAR_SLD_LR_ArmorExpansion__PROT_EDGE = 40;
    ITAR_SLD_LR_ArmorExpansion__PROT_BLUNT = 40;
    ITAR_SLD_LR_ArmorExpansion__PROT_POINT = 40;
    ITAR_SLD_LR_ArmorExpansion__PROT_FIRE = 0;
    ITAR_SLD_LR_ArmorExpansion__PROT_MAGIC = 0;

    ITAR_SLD_SCOUT_ArmorExpansion__PROT_EDGE = 25;
    ITAR_SLD_SCOUT_ArmorExpansion__PROT_BLUNT = 30;
    ITAR_SLD_SCOUT_ArmorExpansion__PROT_POINT = 25;
    ITAR_SLD_SCOUT_ArmorExpansion__PROT_FIRE = 0;
    ITAR_SLD_SCOUT_ArmorExpansion__PROT_MAGIC = 0;

    ITAR_SLD_R_ArmorExpansion__PROT_EDGE = 55;
    ITAR_SLD_R_ArmorExpansion__PROT_BLUNT = 55;
    ITAR_SLD_R_ArmorExpansion__PROT_POINT = 45;
    ITAR_SLD_R_ArmorExpansion__PROT_FIRE = 5;
    ITAR_SLD_R_ArmorExpansion__PROT_MAGIC = 0;

    ITAR_SLD_MP_ArmorExpansion__PROT_EDGE = 45;
    ITAR_SLD_MP_ArmorExpansion__PROT_BLUNT = 45;
    ITAR_SLD_MP_ArmorExpansion__PROT_POINT = 35;
    ITAR_SLD_MP_ArmorExpansion__PROT_FIRE = 0;
    ITAR_SLD_MP_ArmorExpansion__PROT_MAGIC = 5;

    ITAR_SLD_BOW_ArmorExpansion__PROT_EDGE = 55;
    ITAR_SLD_BOW_ArmorExpansion__PROT_BLUNT = 55;
    ITAR_SLD_BOW_ArmorExpansion__PROT_POINT = 50;
    ITAR_SLD_BOW_ArmorExpansion__PROT_FIRE = 5;
    ITAR_SLD_BOW_ArmorExpansion__PROT_MAGIC = 5;

    // KDF

    ItAr_KDF_M_AMEXPANSION__PROT_EDGE = 50;
    ItAr_KDF_M_AMEXPANSION__PROT_BLUNT = 50;
    ItAr_KDF_M_AMEXPANSION__PROT_POINT = 50;
    ItAr_KDF_M_AMEXPANSION__PROT_FIRE = 35;
    ItAr_KDF_M_AMEXPANSION__PROT_MAGIC = 35;

    // PAL

    ITAR_PAL_MH_ArmorExpansion__PROT_EDGE = 115;
    ITAR_PAL_MH_ArmorExpansion__PROT_BLUNT = 115;
    ITAR_PAL_MH_ArmorExpansion__PROT_POINT = 115;
    ITAR_PAL_MH_ArmorExpansion__PROT_FIRE = 75;
    ITAR_PAL_MH_ArmorExpansion__PROT_MAGIC = 35;

    ITAR_PAL_MH_FH_ArmorExpansion__PROT_EDGE = 115;
    ITAR_PAL_MH_FH_ArmorExpansion__PROT_BLUNT = 115;
    ITAR_PAL_MH_FH_ArmorExpansion__PROT_POINT = 115;
    ITAR_PAL_MH_FH_ArmorExpansion__PROT_FIRE = 75;
    ITAR_PAL_MH_FH_ArmorExpansion__PROT_MAGIC = 35;

    ITAR_PAL_C_ArmorExpansion__PROT_EDGE = 90;
    ITAR_PAL_C_ArmorExpansion__PROT_BLUNT = 90;
    ITAR_PAL_C_ArmorExpansion__PROT_POINT = 90;
    ITAR_PAL_C_ArmorExpansion__PROT_FIRE = 40;
    ITAR_PAL_C_ArmorExpansion__PROT_MAGIC = 20;

    ITAR_PAL_CM_ArmorExpansion__PROT_EDGE = 105;
    ITAR_PAL_CM_ArmorExpansion__PROT_BLUNT = 105;
    ITAR_PAL_CM_ArmorExpansion__PROT_POINT = 105;
    ITAR_PAL_CM_ArmorExpansion__PROT_FIRE = 65;
    ITAR_PAL_CM_ArmorExpansion__PROT_MAGIC = 30;

    ITAR_PAL_CH_ArmorExpansion__PROT_EDGE = 120;
    ITAR_PAL_CH_ArmorExpansion__PROT_BLUNT = 120;
    ITAR_PAL_CH_ArmorExpansion__PROT_POINT = 120;
    ITAR_PAL_CH_ArmorExpansion__PROT_FIRE = 90;
    ITAR_PAL_CH_ArmorExpansion__PROT_MAGIC = 40;

    ITAR_CRUSADER_ArmorExpansion__PROT_EDGE = 110;
    ITAR_CRUSADER_ArmorExpansion__PROT_BLUNT = 110;
    ITAR_CRUSADER_ArmorExpansion__PROT_POINT = 110;
    ITAR_CRUSADER_ArmorExpansion__PROT_FIRE = 70;
    ITAR_CRUSADER_ArmorExpansion__PROT_MAGIC = 40;

    ITAR_NH_CRUSADER_ArmorExpansion__PROT_EDGE = 110;
    ITAR_NH_CRUSADER_ArmorExpansion__PROT_BLUNT = 110;
    ITAR_NH_CRUSADER_ArmorExpansion__PROT_POINT = 110;
    ITAR_NH_CRUSADER_ArmorExpansion__PROT_FIRE = 70;
    ITAR_NH_CRUSADER_ArmorExpansion__PROT_MAGIC = 40;

    ITAR_PAL_A_ArmorExpansion__PROT_EDGE = 125;
    ITAR_PAL_A_ArmorExpansion__PROT_BLUNT = 125;
    ITAR_PAL_A_ArmorExpansion__PROT_POINT = 125;
    ITAR_PAL_A_ArmorExpansion__PROT_FIRE = 120;
    ITAR_PAL_A_ArmorExpansion__PROT_MAGIC = 70;
    Patch_AE_ITAR_PAL_A_BONUS_MANA = 40;

    ITAR_PAL_AFH_ArmorExpansion__PROT_EDGE = 125;
    ITAR_PAL_AFH_ArmorExpansion__PROT_BLUNT = 125;
    ITAR_PAL_AFH_ArmorExpansion__PROT_POINT = 125;
    ITAR_PAL_AFH_ArmorExpansion__PROT_FIRE = 120;
    ITAR_PAL_AFH_ArmorExpansion__PROT_MAGIC = 70;

    ITAR_PAL_ANH_ArmorExpansion__PROT_EDGE = 125;
    ITAR_PAL_ANH_ArmorExpansion__PROT_BLUNT = 125;
    ITAR_PAL_ANH_ArmorExpansion__PROT_POINT = 125;
    ITAR_PAL_ANH_ArmorExpansion__PROT_FIRE = 120;
    ITAR_PAL_ANH_ArmorExpansion__PROT_MAGIC = 70;

    ITAR_PAL_F_ArmorExpansion__PROT_EDGE = 115;
    ITAR_PAL_F_ArmorExpansion__PROT_BLUNT = 115;
    ITAR_PAL_F_ArmorExpansion__PROT_POINT = 115;
    ITAR_PAL_F_ArmorExpansion__PROT_FIRE = 85;
    ITAR_PAL_F_ArmorExpansion__PROT_MAGIC = 45;
    Patch_AE_ITAR_PAL_F_BONUS_MANA = 20;

    ITAR_PAL_FFH_ArmorExpansion__PROT_EDGE = 115;
    ITAR_PAL_FFH_ArmorExpansion__PROT_BLUNT = 115;
    ITAR_PAL_FFH_ArmorExpansion__PROT_POINT = 115;
    ITAR_PAL_FFH_ArmorExpansion__PROT_FIRE = 85;
    ITAR_PAL_FFH_ArmorExpansion__PROT_MAGIC = 45;

    ITAR_PAL_FNH_ArmorExpansion__PROT_EDGE = 115;
    ITAR_PAL_FNH_ArmorExpansion__PROT_BLUNT = 115;
    ITAR_PAL_FNH_ArmorExpansion__PROT_POINT = 115;
    ITAR_PAL_FNH_ArmorExpansion__PROT_FIRE = 85;
    ITAR_PAL_FNH_ArmorExpansion__PROT_MAGIC = 45;

    ITAR_PAL_R_ArmorExpansion__PROT_EDGE = 85;
    ITAR_PAL_R_ArmorExpansion__PROT_BLUNT = 85;
    ITAR_PAL_R_ArmorExpansion__PROT_POINT = 85;
    ITAR_PAL_R_ArmorExpansion__PROT_FIRE = 15;
    ITAR_PAL_R_ArmorExpansion__PROT_MAGIC = 15;

    ITAR_PAL_RFH_ArmorExpansion__PROT_EDGE = 85;
    ITAR_PAL_RFH_ArmorExpansion__PROT_BLUNT = 85;
    ITAR_PAL_RFH_ArmorExpansion__PROT_POINT = 85;
    ITAR_PAL_RFH_ArmorExpansion__PROT_FIRE = 15;
    ITAR_PAL_RFH_ArmorExpansion__PROT_MAGIC = 15;

    ITAR_PAL_RNH_ArmorExpansion__PROT_EDGE = 85;
    ITAR_PAL_RNH_ArmorExpansion__PROT_BLUNT = 85;
    ITAR_PAL_RNH_ArmorExpansion__PROT_POINT = 85;
    ITAR_PAL_RNH_ArmorExpansion__PROT_FIRE = 15;
    ITAR_PAL_RNH_ArmorExpansion__PROT_MAGIC = 15;

    ITAR_PAL_HFH_ArmorExpansion__PROT_EDGE = 130;
    ITAR_PAL_HFH_ArmorExpansion__PROT_BLUNT = 130;
    ITAR_PAL_HFH_ArmorExpansion__PROT_POINT = 130;
    ITAR_PAL_HFH_ArmorExpansion__PROT_FIRE = 100;
    ITAR_PAL_HFH_ArmorExpansion__PROT_MAGIC = 50;

    ITAR_PAL_HNH_ArmorExpansion__PROT_EDGE = 130;
    ITAR_PAL_HNH_ArmorExpansion__PROT_BLUNT = 130;
    ITAR_PAL_HNH_ArmorExpansion__PROT_POINT = 130;
    ITAR_PAL_HNH_ArmorExpansion__PROT_FIRE = 100;
    ITAR_PAL_HNH_ArmorExpansion__PROT_MAGIC = 50;

    // DJG

    ITAR_DJG_HNH_ArmorExpansion__PROT_EDGE = 150;
    ITAR_DJG_HNH_ArmorExpansion__PROT_BLUNT = 150;
    ITAR_DJG_HNH_ArmorExpansion__PROT_POINT = 150;
    ITAR_DJG_HNH_ArmorExpansion__PROT_FIRE = 120;
    ITAR_DJG_HNH_ArmorExpansion__PROT_MAGIC = 60;

    ITAR_DJG_MNH_ArmorExpansion__PROT_EDGE = 125;
    ITAR_DJG_MNH_ArmorExpansion__PROT_BLUNT = 125;
    ITAR_DJG_MNH_ArmorExpansion__PROT_POINT = 125;
    ITAR_DJG_MNH_ArmorExpansion__PROT_FIRE = 90;
    ITAR_DJG_MNH_ArmorExpansion__PROT_MAGIC = 40;

    ITAR_DJG_CL_ArmorExpansion__PROT_EDGE = 80;
    ITAR_DJG_CL_ArmorExpansion__PROT_BLUNT = 80;
    ITAR_DJG_CL_ArmorExpansion__PROT_POINT = 90;
    ITAR_DJG_CL_ArmorExpansion__PROT_FIRE = 40;
    ITAR_DJG_CL_ArmorExpansion__PROT_MAGIC = 20;

    ITAR_DJG_CM_ArmorExpansion__PROT_EDGE = 115;
    ITAR_DJG_CM_ArmorExpansion__PROT_BLUNT = 115;
    ITAR_DJG_CM_ArmorExpansion__PROT_POINT = 115;
    ITAR_DJG_CM_ArmorExpansion__PROT_FIRE = 80;
    ITAR_DJG_CM_ArmorExpansion__PROT_MAGIC = 30;

    ITAR_DJG_CH_ArmorExpansion__PROT_EDGE = 140;
    ITAR_DJG_CH_ArmorExpansion__PROT_BLUNT = 140;
    ITAR_DJG_CH_ArmorExpansion__PROT_POINT = 140;
    ITAR_DJG_CH_ArmorExpansion__PROT_FIRE = 110;
    ITAR_DJG_CH_ArmorExpansion__PROT_MAGIC = 50;

    ITAR_DJG_CrawlerP_AEXPANSION__PROT_EDGE = 70;
    ITAR_DJG_CrawlerP_AEXPANSION__PROT_BLUNT = 70;
    ITAR_DJG_CrawlerP_AEXPANSION__PROT_POINT = 70;
    ITAR_DJG_CrawlerP_AEXPANSION__PROT_FIRE = 40;
    ITAR_DJG_CrawlerP_AEXPANSION__PROT_MAGIC = 20;

    // Guildless

    ITAR_PAL_ST_ArmorExpansion__PROT_EDGE = 90;
    ITAR_PAL_ST_ArmorExpansion__PROT_BLUNT = 90;
    ITAR_PAL_ST_ArmorExpansion__PROT_POINT = 90;
    ITAR_PAL_ST_ArmorExpansion__PROT_FIRE = 20;
    ITAR_PAL_ST_ArmorExpansion__PROT_MAGIC = 15;

    ITAR_GAMBESON_ArmorExpansion__PROT_EDGE = 10;
    ITAR_GAMBESON_ArmorExpansion__PROT_BLUNT = 15;
    ITAR_GAMBESON_ArmorExpansion__PROT_POINT = 15;
    ITAR_GAMBESON_ArmorExpansion__PROT_FIRE = 0;
    ITAR_GAMBESON_ArmorExpansion__PROT_MAGIC = 0;

    ITAR_ARX_HUNTERM_ArmorExpansion__PROT_EDGE = 40;
    ITAR_ARX_HUNTERM_ArmorExpansion__PROT_BLUNT = 40;
    ITAR_ARX_HUNTERM_ArmorExpansion__PROT_POINT = 40;
    ITAR_ARX_HUNTERM_ArmorExpansion__PROT_FIRE = 5;
    ITAR_ARX_HUNTERM_ArmorExpansion__PROT_MAGIC = 5;

    ITAR_ARX_HUNTERH_ArmorExpansion__PROT_EDGE = 50;
    ITAR_ARX_HUNTERH_ArmorExpansion__PROT_BLUNT = 50;
    ITAR_ARX_HUNTERH_ArmorExpansion__PROT_POINT = 50;
    ITAR_ARX_HUNTERH_ArmorExpansion__PROT_FIRE = 10;
    ITAR_ARX_HUNTERH_ArmorExpansion__PROT_MAGIC = 10;

    ITAR_PIR_H_ArmorExpansion__PROT_EDGE = 75;
    ITAR_PIR_H_ArmorExpansion__PROT_BLUNT = 75;
    ITAR_PIR_H_ArmorExpansion__PROT_POINT = 75;
    ITAR_PIR_H_ArmorExpansion__PROT_FIRE = 15;
    ITAR_PIR_H_ArmorExpansion__PROT_MAGIC = 10;
};

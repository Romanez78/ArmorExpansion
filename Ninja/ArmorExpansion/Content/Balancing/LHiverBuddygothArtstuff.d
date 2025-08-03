func int Patch_AE_IsLHiverBuddygothArtstuff() {
    return ((Hlp_StrCmp(NINJA_MODNAME, "LHIVER"))
         || (Hlp_StrCmp(NINJA_MODNAME, "LHIVER_DE"))
         || (Hlp_StrCmp(NINJA_MODNAME, "LHIVER_EN"))
         || (Hlp_StrCmp(NINJA_MODNAME, "LHIVER_PL"))
         || (Hlp_StrCmp(NINJA_MODNAME, "LHIVERBYBUDDYGOTH"))
         || (Hlp_StrCmp(NINJA_MODNAME, "LHIVER_ARTSTUFF_DE"))
         || (Hlp_StrCmp(NINJA_MODNAME, "LHIVER_ARTSTUFF_EN"))
         || (Hlp_StrCmp(NINJA_MODNAME, "LHIVER_ARTSTUFF_PL"))
         || (Hlp_StrCmp(NINJA_MODNAME, "LHIVER_ARTSTUFF_RU")));
};

func void Patch_AE_BalanceLHiverBuddygothArtstuff() {
    // Resources
    Patch_AE_SmithItem = MEM_GetSymbolIndex("ITMI_STEELBAR");

    // TODO
};

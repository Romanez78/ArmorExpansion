func int Patch_AE_IsAtariar() {
    return ((Hlp_StrCmp(NINJA_MODNAME, "ATARIAR_CZ"))
         || (Hlp_StrCmp(NINJA_MODNAME, "ATARIAR_DE"))
         || (Hlp_StrCmp(NINJA_MODNAME, "ATARIAR_EN"))
         || (Hlp_StrCmp(NINJA_MODNAME, "ATARIAR_PL"))
         || (Hlp_StrCmp(NINJA_MODNAME, "ATARIAR_RU"))
         || (Hlp_StrCmp(NINJA_MODNAME, "GOTHIC2_ATARIAR")));
};

func void Patch_AE_BalanceAtariar() {
    // TODO
};

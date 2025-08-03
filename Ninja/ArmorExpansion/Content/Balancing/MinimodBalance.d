func int Patch_AE_IsBalanceMinimodBalance() {
    return ((Hlp_StrCmp(NINJA_MODNAME, "REMASTER_DE"))
         || (Hlp_StrCmp(NINJA_MODNAME, "REMASTER_EN"))
         || (Hlp_StrCmp(NINJA_MODNAME, "REMASTER_PL"))
         || (Hlp_StrCmp(NINJA_MODNAME, "REMASTER_RU"))
         || (Hlp_StrCmp(NINJA_MODNAME, "MINIMOD_BALANCE")));
};

func void Patch_AE_BalanceMinimodBalance() {
    // TODO
};

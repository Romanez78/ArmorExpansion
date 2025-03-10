/*
 * Menu initialization function called by Ninja every time a menu is opened
 *
 * Here used to inject initialization before very first new game/loading once
 */
func void Ninja_ArmorExpansion_Menu() {
    // Only initialize one time: When the constant "once" is changed to "1" the rest of the function is skipped.
    const int once = 0;
    if (once) { return; };
    once = 1;

    // Initialize Ikarus
    MEM_InitAll();

    // Register engine hooks for applying and reverting the changes (NPC armors)
    Patch_AE_InitRevert();

    // Register script hooks for events and dialogs
    HookDaedalusFuncS("C_PlayerHasFakeGuild",    "Patch_AE_C_PlayerHasFakeGuild");
    HookDaedalusFuncS("INIT_OLDWORLD",           "Patch_AE_Init_Demontower");
    HookDaedalusFuncS("PC_Common_Condition",     "Patch_AE_PC_Common_Condition");
    HookDaedalusFuncS("PC_Ore_Condition",        "Patch_AE_PC_Ore_Condition");
    HookDaedalusFuncS("DIA_Engor_RSkaufen_Info", "Patch_AE_DIA_Engor_RSkaufen_Info");
    HookDaedalusFuncS("B_GiveInvItems",          "Patch_AE_B_GiveInvItems");

    // Register script hooks for equipping bonuses
    HookDaedalusFuncS("Equip_ItBE_Addon_MIL_01",   "Patch_AE_Equip_ItBE_Addon_MIL_01");
    HookDaedalusFuncS("UnEquip_ItBE_Addon_MIL_01", "Patch_AE_UnEquip_ItBE_Addon_MIL_01");
    HookDaedalusFuncS("Equip_ItBE_Addon_SLD_01",   "Patch_AE_Equip_ItBE_Addon_SLD_01");
    HookDaedalusFuncS("UnEquip_ItBE_Addon_SLD_01", "Patch_AE_UnEquip_ItBE_Addon_SLD_01");

    // Localization
    const int loc = 0; loc = Patch_AE_GuessLocalization();

    if (loc == Patch_AE_Lang_EN) {
        Patch_AE_LocalizeEnglish();
    } else if (loc == Patch_AE_Lang_PL) {
        Patch_AE_LocalizePolish();
    } else if (loc == Patch_AE_Lang_DE) {
        Patch_AE_LocalizeGerman(); 
    };
    // Else: keep Czech
};


/*
 * Initialization function called by Ninja after "Init_Global" (G2) / "Init_<Levelname>" (G1)
 */
func void Ninja_ArmorExpansion_Init() {
    // Initialize Ikarus
    MEM_InitAll();

    // On every game start, loading, and level change, apply the patch specific changes (NPC armors)
    Patch_AE_ApplyChanges();
};

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
    HookDaedalusFuncS("C_PlayerHasFakeGuild", "Patch_AE_C_PlayerHasFakeGuild");
    HookDaedalusFuncS("Startup_Demontower",   "Patch_AE_Startup_Demontower");
    HookDaedalusFuncS("PC_Common_Condition",  "Patch_AE_PC_Common_Condition");
    HookDaedalusFuncS("PC_Ore_Condition",     "Patch_AE_PC_Ore_Condition");

    // Register script hooks for equipping bonuses
    HookDaedalusFuncS("Equip_ItBE_Addon_MIL_01",   "Patch_AE_Equip_ItBE_Addon_MIL_01");
    HookDaedalusFuncS("UnEquip_ItBE_Addon_MIL_01", "Patch_AE_UnEquip_ItBE_Addon_MIL_01");
    HookDaedalusFuncS("Equip_ItBE_Addon_SLD_01",   "Patch_AE_Equip_ItBE_Addon_SLD_01");
    HookDaedalusFuncS("UnEquip_ItBE_Addon_SLD_01", "Patch_AE_UnEquip_ItBE_Addon_SLD_01");
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

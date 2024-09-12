/*
 * Adds new armors.
 *
 * - Requires Ikarus, LeGo
 * - Compatible with Gothic 2 (Addon)
 *
 * Instructions
 * - Initialize from Init_Global with
 *     Patch_AE_Init();
 */

/*
 * Initialization function to be called from Init_Global
 */
func void Patch_AE_Init() {
    HookDaedalusFuncS("C_PlayerHasFakeGuild", "Patch_AE_C_PlayerHasFakeGuild");
	HookDaedalusFuncS("Startup_Demontower", "Patch_AE_Startup_Demontower");
    HookDaedalusFuncS("PC_Common_Condition", "Patch_AE_PC_Common_Condition");
    HookDaedalusFuncS("PC_Ore_Condition", "Patch_AE_PC_Ore_Condition");

    // Equipping bonuses
    HookDaedalusFuncS("Equip_ItBE_Addon_MIL_01", "Patch_AE_Equip_ItBE_Addon_MIL_01");
    HookDaedalusFuncS("UnEquip_ItBE_Addon_MIL_01", "Patch_AE_UnEquip_ItBE_Addon_MIL_01");
    HookDaedalusFuncS("Equip_ItBE_Addon_SLD_01", "Patch_AE_Equip_ItBE_Addon_SLD_01");
    HookDaedalusFuncS("UnEquip_ItBE_Addon_SLD_01", "Patch_AE_UnEquip_ItBE_Addon_SLD_01");
};

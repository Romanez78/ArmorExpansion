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
    HookDaedalusFuncS("C_PlayerHasFakeGuild", "Ninja_ArmorExpansion_C_PlayerHasFakeGuild");
	HookDaedalusFuncS("Startup_Demontower", "Ninja_ArmorExpansion_Startup_Demontower");
};

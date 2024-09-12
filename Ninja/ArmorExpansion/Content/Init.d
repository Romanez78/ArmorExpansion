/*
 * Menu initialization function called by Ninja every time a menu is opened
 *
 * Here used to inject initialization before very first new game/loading once
 */
func void Ninja_ArmorExpansion_Menu() {
    // Only perform this initialization once
    const int once = 0;
    if (once) { return; };
    once = 1;

    // Initialize Ikarus
    MEM_InitAll();

    // Check if all necessary symbols exist, otherwise terminate the game with a user-friendly error message
    Patch_AE_SymbolChecks();

    // Initialize the hooks
    Patch_AE_Init();
};

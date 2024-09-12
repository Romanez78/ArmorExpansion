const string Patch_AE_Version = "ArmorExpansion 1.0";

/*
 * Initialization function called by Ninja after "Init_Global" (G2) / "Init_<Levelname>" (G1)
 */
func void Patch_AE_Init() {
    // Init Ikarus
    MEM_InitAll();

    MEM_Info(ConcatStrings(ConcatStrings("Initialize ", Patch_AE_Version), "."));
    Patch_AE_Init();
    MEM_Info(ConcatStrings(Patch_AE_Version, " was initialized successfully."));
};

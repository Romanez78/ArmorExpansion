const string Ninja_ArmorExpansion_Version = "ArmorExpansion 1.0";

/*
 * Initialization function called by Ninja after "Init_Global" (G2) / "Init_<Levelname>" (G1)
 */
func void Ninja_ArmorExpansion_Init() {
    // Init Ikarus&Lego
    LeGo_MergeFlags(LeGo_PermMem);
    
    MEM_Info(ConcatStrings(ConcatStrings("Initialize ", Ninja_ArmorExpansion_Version), "."));
    Patch_AE_Init();
    MEM_Info(ConcatStrings(Ninja_ArmorExpansion_Version, " was initialized successfully."));
};

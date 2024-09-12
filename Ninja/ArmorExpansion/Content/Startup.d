/*
 *  Insert dead C_NPC
 */
func void Patch_AE_Startup_Demontower()
{
    // Continue an execution of original function
    ContinueCall();

    Wld_InsertNpc(Patch_AE_DeadTreasureHunter, "DT_E2_09");
    B_KillNpc(Patch_AE_DeadTreasureHunter);
};

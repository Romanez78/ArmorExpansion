/*
 *  Insert dead C_NPC
 */
func void Ninja_ArmorExpansion_Startup_Demontower()
{
    // Continue an execution of original function
    ContinueCall();
    
    Wld_InsertNpc(BAU_989_DeadTreasureHunter, "DT_E2_09"); B_KillNpc(BAU_989_DeadTreasureHunter);
};

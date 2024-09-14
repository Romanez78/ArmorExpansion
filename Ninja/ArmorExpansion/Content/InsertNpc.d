/*
 *  Insert dead C_NPC
 */
func void Patch_AE_Init_Demontower()
{
    // Continue an execution of original function
    ContinueCall();

    // NPCs inserted by a script patch are not stored in game saves (this is to avoid problems when removing the patch).
    // More information: https://github.com/szapp/Ninja/wiki/Inject-Changes#inserting-npc
    // To ensure the NPC is always available, using the Init-function is convenient, because it is called on every load
    // and level change into that world (here OLDWORLD.ZEN).
    // To main purpose of the NPC here is to provide the blueprint item.
    // Let's check if the PC has already obtained it, i.e. has it in their inventory. If not, let's insert the NPC.
    // But if yes, do not insert the NPC to avoid an exploit where the player can get infinite money from looting the
    // NPC repeatedly.

    // The Init-function of the world is called twice when entering for the first time. Only the second time the hero
    // is already initialized.
    if (!Hlp_IsValidNpc(hero)) {
        return;
    };

    // Check if the player has the item already. If so, do not add the NPC again.
    if (Npc_HasItems(hero, ITWR_BluePrint_StewarkArmor_ArmorExpansion) > 0) {
        return;
    };

    // Safety check: If the NPC already exists in the world (unlikely), do not add the NPC again.
    var C_Npc npc; npc = Hlp_GetNpc(Patch_AE_DeadTreasureHunter);
    if (Hlp_IsValidNpc(npc)) {
        return;
    };

    // Finally: Add the NPC
    MEM_Info("ArmorExpansion: Add the dead treasure hunter");
    Wld_InsertNpc(Patch_AE_DeadTreasureHunter, "DT_E2_09");
};

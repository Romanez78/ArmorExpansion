/*
 * This is internal functionality for the file "NpcChanges.d". It handles the mechanics to update the armors in a
 * save game.
 *
 * To allow changing the armors of NPCs in a safe way that will not impact game saves after removing the patch,
 * the original armors have to be stored and re-equipped on saving the game. The mechanics are in this file.
 */

// Hash table keeping track of the original armors of NPCs
const int Patch_AE_NpcArmors_htbl = 0;

/*
 * Set only the armor instance of an NPC with "Mdl_SetVisualBody" while keeping other visual properties untouched
 * This function is called below in "Patch_AE_NpcUpdateArmor".
 */
func void Patch_AE_NpcSetArmor(var C_Npc slf, var int armorInstance) {
    var oCNpc npc; npc = Hlp_GetNpc(slf);
    Mdl_SetVisualBody(
        slf,
        npc.body_visualName,
        (npc.bitfield[0] & oCNpc_bitfield0_body_TexVarNr) >> 14,
        npc.bitfield[1] & oCNpc_bitfield1_body_TexColorNr,
        npc.head_visualName,
        (npc.bitfield[1] & oCNpc_bitfield1_head_TexVarNr) >> 16,
        npc.bitfield[2] & oCNpc_bitfield2_teeth_TexVarNr,
        armorInstance
    );

    // Additional fix for loading outside of spawn range
    const int oCNpc__InitModel = 7570560; //0x738480
    const int call = 0;
    const int slfPtr = 0; slfPtr = _@(slf);
    if (CALL_Begin(call)) {
        CALL__thiscall(_@(slfPtr), oCNpc__InitModel);
        call = CALL_End();
    };
};

/*
 * Equip new armor and store the original one in the hash table.
 * This function is called from "NpcChanges.d" for each NPC to equip a new armor from the patch.
 */
func void Patch_AE_NpcUpdateArmor(var string npcInstanceName, var int armorInstance) {
    // Check if instance exists
    const int npcInstance = -1; npcInstance = MEM_GetSymbolIndex(STR_Upper(npcInstanceName));
    if (npcInstance == -1) {
        return;
    };

    // Check if NPC exists (in this world)
    var C_Npc slf; slf = Hlp_GetNpc(npcInstance);
    if (!Hlp_IsValidNpc(slf)) {
        return;
    };

    // Find the NPC's current armor and store it in the hash table
    if (Npc_HasEquippedArmor(slf)) {
        var oCItem itm; itm = Npc_GetEquippedArmor(slf);
        Npc_RemoveInvItems(slf, itm.instanz, 1);
        _HT_Insert(Patch_AE_NpcArmors_htbl, itm.instanz, npcInstance); // We now know what armor the NPC had before
    } else {
        _HT_Insert(Patch_AE_NpcArmors_htbl, -1, npcInstance);
    };

    // Update the armor
    Patch_AE_NpcSetArmor(slf, armorInstance);
};

/*
 * Equip an armor (without storing original in hash table, for reverting)
 * This function is called every time the game is saved, to revert all the armors to their original.
 */
func void Patch_AE_NpcOriginalArmor(var int npcInstance, var int armorInstance) {
    // Check if NPC exists (in this world)
    var C_Npc slf; slf = Hlp_GetNpc(npcInstance);
    if (!Hlp_IsValidNpc(slf)) {
        return;
    };

    // Find the NPC's current armor and remove it from the inventory
    if (Npc_HasEquippedArmor(slf)) {
        var oCItem itm; itm = Npc_GetEquippedArmor(slf);
        Npc_RemoveInvItems(slf, itm.instanz, 1);
    };

    // Update the armor
    Patch_AE_NpcSetArmor(slf, armorInstance);
};

/*
 * Called by Patch_AE_ApplyChanges to equip the new armors
 * Make changes in "NpcChanges.d".
 */
func void Patch_AE_NpcArmorsApply() {
    if (Patch_AE_NpcArmors_htbl) {
        MEM_SendToSpy(zERR_TYPE_WARN, "ArmorExpansion: Armor hash table not empty! (Okay if first time level change.)");
        return;
    };
    Patch_AE_NpcArmors_htbl = _HT_Create();

    // Equip all new armors
    MEM_Call(Patch_AE_NpcArmors);
};

/*
 * Called by Patch_AE_ApplyChanges to revert all the equipped armors to original
 */
func void Patch_AE_NpcArmorsRevert() {
    if (!Patch_AE_NpcArmors_htbl) {
        return;
    };

    // Go through all NPC-armor combinations and equip the original armor
    _HT_ForEach(Patch_AE_NpcArmors_htbl, Patch_AE_NpcOriginalArmor);

    // In the end clear the NPC-armor combinations
    _HT_Destroy(Patch_AE_NpcArmors_htbl);
    Patch_AE_NpcArmors_htbl = 0;
};

/*
 * This is internal functionality for the file "NpcChanges.d". It handles the mechanics to update the model fatness in a
 * save game.
 *
 * To allow changing the fatness of NPCs in a safe way that will not impact game saves after removing the patch,
 * the original fatness has to be stored and reset on saving the game. The mechanics are in this file.
 */

// Hash table keeping track of the original model fatness of NPCs
const int Patch_AE_MdlFatness_htbl = 0;

/*
 * Apply model fatness and store the original value in the hash table.
 * This function is called from "NpcChanges.d" for each NPC to update.
 */
func void Patch_AE_NpcUpdateMdlFatness(var string npcInstanceName, var float value) {
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

    // Get the current model fatness and store it in the hash table
    var oCNpc npc; npc = Hlp_GetNpc(npcInstance);
    _HT_Insert(Patch_AE_MdlFatness_htbl, npc.model_fatness, npcInstance);

    // Update the model fatness
    Mdl_SetModelFatness(slf, value);
};

/*
 * Set the model fatness (without storing original in hash table, for reverting)
 * This function is called every time the game is saved, to revert the models' fatness to their original.
 */
func void Patch_AE_NpcOriginalMdlFatness(var int npcInstance, var int value) {
    // Check if NPC exists (in this world)
    var C_Npc slf; slf = Hlp_GetNpc(npcInstance);
    if (!Hlp_IsValidNpc(slf)) {
        return;
    };

    // Update the model fatness
    var float valueF; valueF = castFromIntf(value);
    Mdl_SetModelFatness(slf, valueF);
};

/*
 * Called by Patch_AE_ApplyChanges to update the model fatness
 * Make changes in "NpcChanges.d".
 */
func void Patch_AE_MdlFatnessApply() {
    if (Patch_AE_MdlFatness_htbl) {
        MEM_SendToSpy(zERR_TYPE_WARN, "ArmorExpansion: Fatness hash table not empty! (Okay on first level change.)");
        return;
    };
    Patch_AE_MdlFatness_htbl = _HT_Create();

    // Set all the models' fatness
    MEM_Call(Patch_AE_MdlFatness);
};

/*
 * Called by Patch_AE_ApplyChanges to revert all the models' fatness to original
 */
func void Patch_AE_MdlFatnessRevert() {
    if (!Patch_AE_MdlFatness_htbl) {
        return;
    };

    // Go through all NPC-fatness combinations and reset the original values
    _HT_ForEach(Patch_AE_MdlFatness_htbl, Patch_AE_NpcOriginalMdlFatness);

    // In the end clear the NPC-fatness combinations
    _HT_Destroy(Patch_AE_MdlFatness_htbl);
    Patch_AE_MdlFatness_htbl = 0;
};

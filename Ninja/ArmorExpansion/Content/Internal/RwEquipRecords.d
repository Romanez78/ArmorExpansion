/*
 * This is internal functionality for the file "NpcChanges.d". It handles the mechanics to update the equipped ranged
 * weapons in a save game.
 *
 * To allow changing the equipped ranged weapons of NPCs in a safe way that will not impact game saves after removing
 * the patch, the original weapons have to be stored and re-equipped on saving the game. The mechanics are in this file.
 *
 * What is special here compared to the other NPC changes, is that weapons can be in use while saving and loading.
 * Exchanging a possibly drawn weapon is a bit tricky. In that case, the function "Patch_AE_EquipRangedWeapon" below
 * un-readies the current weapon, exchanges the equipped weapon, and then instantaneously draws the weapon again for
 * minimal noticeable effect. Simple tests show that this works both through saving and through loading (with and
 * without removal of the patch).
 */

// Hash table keeping track of the original equipped ranged weapons of NPCs
const int Patch_AE_NpcRangedWeapons_htbl = 0;

/*
 * Equip ranged weapon, and unequip any ranged weapons before, including exchanging currently readied weapons
 *
 * This is slightly adjusted from the function Patch_AE_EquipMeleeWeapon in "MwEquipRecords.d"
 */
func void Patch_AE_EquipRangedWeapon(var C_NPC slf, var int weaponInstance) {
    // Check if weapon already equipped and/or add it to the inventory
    if (weaponInstance != -1) {
        if (!Npc_HasItems(slf, weaponInstance)) {
            CreateInvItems(slf, weaponInstance, 1);
        };

        if (!Npc_GetInvItem(slf, weaponInstance)) {
            return;
        };

        if (item.flags & ITEM_ACTIVE_LEGO) {
            return;
        };
    };

    var int slfPtr; slfPtr = _@(slf);

    // Unready weapon of same type
    var int readied;
    if (Npc_HasReadiedRangedWeapon(slf))
        // Does not have a ranged weapon but still in fight mode: should now draw new weapon instead of keeping fists
    || ((!Npc_HasEquippedRangedWeapon(slf)) && (Npc_IsInFightMode(slf, FMODE_FIST)) && (weaponInstance != -1)) {
        const int oCNpc__EV_ForceRemoveWeapon = 7662656; //0x74EC40
        const int call0 = 0;
        if (CALL_Begin(call0)) {
            CALL_PtrParam(_@(FALSE)); // oCMsgWeapon*
            CALL__thiscall(_@(slfPtr), oCNpc__EV_ForceRemoveWeapon);
            call0 = CALL_End();
        };
        readied = TRUE;
    } else {
        readied = FALSE;
    };

    // Equip new weapon
    if (weaponInstance != -1) {
        var int itemPtr; itemPtr = _@(item);

        const int oCNpc__EquipFarWeapon = 7578384; //0x73A310
        const int call1 = 0;
        if (CALL_Begin(call1)) {
            CALL_PtrParam(_@(itemPtr));
            CALL__thiscall(_@(slfPtr), oCNpc__EquipFarWeapon);
            call1 = CALL_End();
        };

        // Important: Make sure the NPC has ammunition
        B_CreateAmmo(slf);
    };

    // Instantaneously draw new weapon (or melee weapon or fists) if previous weapon was readied
    if (readied) {
        // Determine exact mode for the new weapon
        var int fm;
        if (weaponInstance == -1) {
            fm = FMODE_FIST;
        } else {
            if (item.flags & ITEM_BOW) {
                fm = 5;
            } else if (item.flags & ITEM_CROSSBOW) {
                fm = 6;
            } else {
                fm = FMODE_FIST;
            };
        };

        // Instead of fist, take the melee weapon if available
        if (fm == FMODE_FIST) {
            if (Npc_HasEquippedMeleeWeapon(slf)) {
                var C_Item itm; itm = Npc_GetEquippedMeleeWeapon(slf);
                if (itm.flags & ITEM_DAG) {
                    fm = 2;
                } else if (itm.flags & ITEM_SWD) || (itm.flags & ITEM_AXE) {
                    fm = 3;
                } else if (itm.flags & ITEM_2HD_SWD) || (itm.flags & ITEM_2HD_AXE) {
                    fm = 4;
                };
            };
        };

        // Some debug information
        var string msg; msg = "Patch_AE_EquipRangedWeapon: ";
        msg = ConcatStrings(msg, slf.name);
        msg = ConcatStrings(msg, " now changing to fight mode ");
        msg = ConcatStrings(msg, IntToString(fm));
        MEM_Info(msg);

        const int oCNpc__SetWeaponMode2 = 7573120; //0x738E80
        const int call2 = 0;
        if (CALL_Begin(call2)) {
            CALL_IntParam(_@(fm));
            CALL__thiscall(_@(slfPtr), oCNpc__SetWeaponMode2);
            call2 = CALL_End();
        };
    };
};


/*
 * Equip new ranged weapon and store the original one in the hash table.
 * This function is called from "NpcChanges.d" for each NPC to equip a new ranged weapon from the patch.
 */
func void Patch_AE_NpcUpdateRangedWeapon(var string npcInstanceName, var int weaponInstance) {
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

    // Find the NPC's current ranged weapon and store it in the hash table
    var oCItem itm;
    var int curWeaponInst;
    if (Npc_IsInFightMode(slf, FMODE_FAR)) {
        itm = Npc_GetReadiedWeapon(slf);
        curWeaponInst = itm.instanz;
    } else if (Npc_HasEquippedRangedWeapon(slf)) {
        itm = Npc_GetEquippedRangedWeapon(slf);
        curWeaponInst = itm.instanz;
    } else {
        curWeaponInst = -1;
    };
    _HT_Insert(Patch_AE_NpcRangedWeapons_htbl, curWeaponInst, npcInstance);

    // Update the ranged weapon
    Patch_AE_EquipRangedWeapon(slf, weaponInstance);

    // Remove unequipped weapon if any
    Npc_RemoveInvItems(slf, curWeaponInst, 1);
};

/*
 * Equip a ranged weapon (without storing original in hash table, for reverting)
 * This function is called every time the game is saved, to revert all the ranged weapons to their original.
 */
func void Patch_AE_NpcOriginalRangedWeapon(var int npcInstance, var int weaponInstance) {
    // Check if NPC exists (in this world)
    var C_Npc slf; slf = Hlp_GetNpc(npcInstance);
    if (!Hlp_IsValidNpc(slf)) {
        return;
    };

    // Find the NPC's current ranged weapon and remove it from the inventory
    var oCItem itm;
    var int curWeaponInst;
    if (Npc_IsInFightMode(slf, FMODE_FAR)) {
        itm = Npc_GetReadiedWeapon(slf);
        curWeaponInst = itm.instanz;
    } else if (Npc_HasEquippedRangedWeapon(slf)) {
        itm = Npc_GetEquippedRangedWeapon(slf);
        curWeaponInst = itm.instanz;
    } else {
        curWeaponInst = -1;
    };

    // Update the ranged weapon
    Patch_AE_EquipRangedWeapon(slf, weaponInstance);

    // Remove unequipped weapon if any
    Npc_RemoveInvItems(slf, curWeaponInst, 1);
};

/*
 * Called by Patch_AE_ApplyChanges to equip the new ranged weapons
 * Make changes in "NpcChanges.d".
 */
func void Patch_AE_NpcRangedWeaponApply() {
    if (Patch_AE_NpcRangedWeapons_htbl) {
        MEM_SendToSpy(zERR_TYPE_WARN, "ArmorExpansion: RW hash table not empty! (Okay if first time level change.)");
        return;
    };
    Patch_AE_NpcRangedWeapons_htbl = _HT_Create();

    // Equip all new ranged weapons
    MEM_Call(Patch_AE_NpcRangedWeapons);
};

/*
 * Called by Patch_AE_ApplyChanges to revert all the equipped ranged weapons to original
 */
func void Patch_AE_NpcRangedWeaponRevert() {
    if (!Patch_AE_NpcRangedWeapons_htbl) {
        return;
    };

    // Go through all NPC-RW combinations and equip the original ranged weapon
    _HT_ForEach(Patch_AE_NpcRangedWeapons_htbl, Patch_AE_NpcOriginalRangedWeapon);

    // In the end clear the NPC-RW combinations
    _HT_Destroy(Patch_AE_NpcRangedWeapons_htbl);
    Patch_AE_NpcRangedWeapons_htbl = 0;
};

/*
 * Check if the bytes at a certain address are as expected (TRUE/FALSE) or hoooked (-1)
 */
func int Patch_AE_IsAddressSafe(var int address, var int expectedBytes, var int length) {
    // Check if address has bytes as expected
    if (MEM_CompareBytes(address, expectedBytes, length)) {
        return TRUE;
    };

    // Check for any hooks (safe to hook)
    if (length >= 5) {
        const int byte = 0; byte = MEM_ReadByte(address);
        if (byte == ASMINT_OP_jmp) || (byte == ASMINT_OP_call) {
            return -1;
        };
    };

    // Otherwise unsafe
    return FALSE;
};


/*
 * Some changes that are made, need to be reverted on saving to allow safely removing the patch
 * Otherwise, for example, NPCs whose armor was changed are suddenly naked after removing the patch.
 * This functionality is inspired by/copied from G1CP: https://g1cp.org
 */
func void Patch_AE_InitRevert() {
    // Addresses to hook
    const int oCSavegameManager__ClearCurrent_ot = 4429448; //0x439688
    const int CGameManager__Write_Savegame_valid = 4367110; //0x42A306

    // Expected bytes in memory for safety check
    const int bytes0[2] = { 1634271082, 33186 }; // 6A FF 68 61 A2 81 00
    const int bytes1[2] = { -645395061, 140 };   // 8B 0D 88 D9 8C 00
    const int bytes2[2] = { 1394888075, 86 };    // 8B 4D 24 53 56
    const int bytes3[2] = { -1954020211, 8 };    // 8D 04 88 8B 08

    // Check if the bytes at that addresses are safe to hook
    if (!Patch_AE_IsAddressSafe(oCGame__changeLevel, _@(bytes0), 7))
    || (!Patch_AE_IsAddressSafe(oCSavegameManager__ClearCurrent_ot, _@(bytes1), 6))
    || (!Patch_AE_IsAddressSafe(CGameManager__Write_Savegame_valid, _@(bytes2), 5))
    || (!Patch_AE_IsAddressSafe(oCSavegameManager__SetAndWriteSavegame, _@(bytes3), 5)) {
        MEM_SendToSpy(zERR_TYPE_FATAL, "ArmorExpansion: Incompatibility! Cannot place safe game hooks.");
    };

    HookEngineF(oCGame__changeLevel, 7, Patch_AE_RevertChanges);                   // Revert on levelchange
    HookEngineF(oCSavegameManager__ClearCurrent_ot, 6, Patch_AE_RevertChanges);    // Revert on loading
    HookEngineF(CGameManager__Write_Savegame_valid, 5, Patch_AE_RevertChanges);    // Revert before saving
    HookEngineF(oCSavegameManager__SetAndWriteSavegame, 5, Patch_AE_ApplyChanges); // Re-apply after saving
};


/*
 * Changes to apply when loading
 */
func void Patch_AE_ApplyChanges() {
    MEM_InitAll();
    MEM_Info("Patch_AE_ApplyChanges");
    Patch_AE_MdlFatnessApply();
    Patch_AE_NpcArmorsApply();
    Patch_AE_NpcMeleeWeaponApply();
};


/*
 * Revert the above changes on saving to allow safe removal of the patch
 */
func void Patch_AE_RevertChanges() {
    MEM_InitAll();
    MEM_Info("Patch_AE_RevertChanges");
    Patch_AE_NpcMeleeWeaponRevert();
    Patch_AE_NpcArmorsRevert();
    Patch_AE_MdlFatnessRevert();
};

/*
 * ITAR_PAL_MH_ArmorExpansion
 * ITAR_PAL_MH_FH_ArmorExpansion
 *
 * Dialogs:
 * Patch_AE_PC_ITAR_PAL_MH_FH
 * Patch_AE_PC_ITAR_PAL_MH
 */
instance Patch_AE_PC_ITAR_PAL_MH_FH (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_PAL_MH_FH_Condition;
    information = Patch_AE_PC_ITAR_PAL_MH_FH_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_PAL_MH_FH_desc;
};
func int Patch_AE_PC_ITAR_PAL_MH_FH_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_PAL_MH_ArmorExpansion);
};
func void Patch_AE_PC_ITAR_PAL_MH_FH_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_PAL_MH_FH_ArmorExpansion, ITAR_PAL_MH_ArmorExpansion);
};


instance Patch_AE_PC_ITAR_PAL_MH (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_PAL_MH_Condition;
    information = Patch_AE_PC_ITAR_PAL_MH_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_PAL_MH_desc;
};
func int Patch_AE_PC_ITAR_PAL_MH_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_PAL_MH_FH_ArmorExpansion);
};
func void Patch_AE_PC_ITAR_PAL_MH_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_PAL_MH_ArmorExpansion, ITAR_PAL_MH_FH_ArmorExpansion);
};

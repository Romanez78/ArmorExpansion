/*
 * ITAR_DJG_M
 * ITAR_DJG_MNH_ArmorExpansion
 *
 * Dialogs:
 * Patch_AE_PC_ITAR_DJG_M_NH
 * Patch_AE_PC_ITAR_DJG_M
 */
instance Patch_AE_PC_ITAR_DJG_M_NH (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_DJG_M_NH_Condition;
    information = Patch_AE_PC_ITAR_DJG_M_NH_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_DJG_M_NH_desc;
};
func int Patch_AE_PC_ITAR_DJG_M_NH_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_DJG_MNH_ArmorExpansion);
};
func void Patch_AE_PC_ITAR_DJG_M_NH_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_DJG_M, ITAR_DJG_MNH_ArmorExpansion);
};


instance Patch_AE_PC_ITAR_DJG_M (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_DJG_M_Condition;
    information = Patch_AE_PC_ITAR_DJG_M_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_DJG_M_desc;
};
func int Patch_AE_PC_ITAR_DJG_M_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_DJG_M);
};
func void Patch_AE_PC_ITAR_DJG_M_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_DJG_MNH_ArmorExpansion, ITAR_DJG_M);
};

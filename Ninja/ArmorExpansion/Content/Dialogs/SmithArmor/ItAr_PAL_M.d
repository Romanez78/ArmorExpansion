/*
 * ITAR_PAL_M
 * ITAR_PAL_M_NH_ARMOREXPANSION
 *
 * Dialogs:
 * Patch_AE_PC_ITAR_PAL_M_NH_ARMOREXPANSION
 * Patch_AE_PC_ITAR_PAL_M
 */
instance Patch_AE_PC_ITAR_PAL_M_NH_ARMOREXPANSION (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_PAL_M_NH_ARMOREXPANSION_Condition;
    information = Patch_AE_PC_ITAR_PAL_M_NH_ARMOREXPANSION_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_PAL_M_NH_ARMOREXPANSION_desc;
};
func int Patch_AE_PC_ITAR_PAL_M_NH_ARMOREXPANSION_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_PAL_M_NH_ARMOREXPANSION);
};
func void Patch_AE_PC_ITAR_PAL_M_NH_ARMOREXPANSION_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_PAL_M, ITAR_PAL_M_NH_ARMOREXPANSION);
};


instance Patch_AE_PC_ITAR_PAL_M (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_PAL_M_Condition;
    information = Patch_AE_PC_ITAR_PAL_M_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_PAL_M_desc;
};
func int Patch_AE_PC_ITAR_PAL_M_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_PAL_M);
};
func void Patch_AE_PC_ITAR_PAL_M_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_PAL_M_NH_ARMOREXPANSION, ITAR_PAL_M);
};

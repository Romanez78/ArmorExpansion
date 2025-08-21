/*
 * ITAR_CRUSADER_ArmorExpansion
 * ITAR_NH_CRUSADER_ArmorExpansion
 *
 * Dialogs:
 * Patch_AE_PC_ITAR_CRUSADER_NH
 * Patch_AE_PC_ITAR_NH_CRUSADER
 */
instance Patch_AE_PC_ITAR_CRUSADER_NH (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_CRUSADER_NH_Condition;
    information = Patch_AE_PC_ITAR_CRUSADER_NH_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_CRUSADER_NH_desc;
};
func int Patch_AE_PC_ITAR_CRUSADER_NH_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_CRUSADER_ArmorExpansion);
};
func void Patch_AE_PC_ITAR_CRUSADER_NH_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_NH_CRUSADER_ArmorExpansion, ITAR_CRUSADER_ArmorExpansion);
};


instance Patch_AE_PC_ITAR_NH_CRUSADER (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_NH_CRUSADER_Condition;
    information = Patch_AE_PC_ITAR_NH_CRUSADER_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_NH_CRUSADER_desc;
};
func int Patch_AE_PC_ITAR_NH_CRUSADER_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_NH_CRUSADER_ArmorExpansion);
};
func void Patch_AE_PC_ITAR_NH_CRUSADER_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_CRUSADER_ArmorExpansion, ITAR_NH_CRUSADER_ArmorExpansion);
};

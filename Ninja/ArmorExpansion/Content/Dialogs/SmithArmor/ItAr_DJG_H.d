/*
 * ITAR_DJG_H
 * ITAR_DJG_HNH_ArmorExpansion
 *
 * Dialogs:
 * Patch_AE_PC_ITAR_DJG_H_NH
 * Patch_AE_PC_ITAR_DJG_H
 */
instance Patch_AE_PC_ITAR_DJG_H_NH (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_DJG_H_NH_Condition;
    information = Patch_AE_PC_ITAR_DJG_H_NH_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_DJG_H_NH_desc;
};
func int Patch_AE_PC_ITAR_DJG_H_NH_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_DJG_HNH_ArmorExpansion);
};
func void Patch_AE_PC_ITAR_DJG_H_NH_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_DJG_H, ITAR_DJG_HNH_ArmorExpansion);
};


instance Patch_AE_PC_ITAR_DJG_H (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_DJG_H_Condition;
    information = Patch_AE_PC_ITAR_DJG_H_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_DJG_H_desc;
};
func int Patch_AE_PC_ITAR_DJG_H_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_DJG_H);
};
func void Patch_AE_PC_ITAR_DJG_H_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_DJG_HNH_ArmorExpansion, ITAR_DJG_H);
};

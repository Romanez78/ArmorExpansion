/*
 * ITAR_DJG_CM_ArmorExpansion
 * ITAR_DJG_CM_FH_ArmorExpansion
 *
 * Dialogs:
 * ITAR_DJG_CM_FH_ArmorExpansion
 * ITAR_DJG_CM_ArmorExpansion
 */

 // TODO: German and Polish localization
instance Patch_AE_PC_ITAR_DJG_CM_FH_ArmorExpansion (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_DJG_CM_FH_ArmorExpansion_Condition;
    information = Patch_AE_PC_ITAR_DJG_CM_FH_ArmorExpansion_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_DJG_CM_FH_ArmorExpansion_desc;
};
func int Patch_AE_PC_ITAR_DJG_CM_FH_ArmorExpansion_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_DJG_CM_FH_ArmorExpansion);
};
func void Patch_AE_PC_ITAR_DJG_CM_FH_ArmorExpansion_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_DJG_CM_ArmorExpansion, ITAR_DJG_CM_FH_ArmorExpansion);
};


instance Patch_AE_PC_ITAR_DJG_CM_ArmorExpansion (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_DJG_CM_ArmorExpansion_Condition;
    information = Patch_AE_PC_ITAR_DJG_CM_ArmorExpansion_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_DJG_CM_ArmorExpansion_desc;
};
func int Patch_AE_PC_ITAR_DJG_CM_ArmorExpansion_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_DJG_CM_ArmorExpansion);
};
func void Patch_AE_PC_ITAR_DJG_CM_ArmorExpansion_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_DJG_CM_FH_ArmorExpansion, ITAR_DJG_CM_ArmorExpansion);
};

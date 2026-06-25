/*
 * ITAR_DJG_L
 * ITAR_DJG_L_FH_ARMOREXPANSION
 *
 * Dialogs:
 * Patch_AE_PC_ITAR_DJG_L_FH_ARMOREXPANSION
 * Patch_AE_PC_ITAR_DJG_L
 */

 // TODO: German and Polish localization
instance Patch_AE_PC_ITAR_DJG_L_FH_ARMOREXPANSION(C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_DJG_L_FH_ARMOREXPANSION_Condition;
    information = Patch_AE_PC_ITAR_DJG_L_FH_ARMOREXPANSION_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_DJG_L_FH_ARMOREXPANSION_desc;
};
func int Patch_AE_PC_ITAR_DJG_L_FH_ARMOREXPANSION_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_DJG_L_FH_ARMOREXPANSION);
};
func void Patch_AE_PC_ITAR_DJG_L_FH_ARMOREXPANSION_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_DJG_L, ITAR_DJG_L_FH_ARMOREXPANSION);
};


instance Patch_AE_PC_ITAR_DJG_L(C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_DJG_L_Condition;
    information = Patch_AE_PC_ITAR_DJG_L_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_DJG_L_desc;
};
func int Patch_AE_PC_ITAR_DJG_L_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_DJG_L);
};
func void Patch_AE_PC_ITAR_DJG_L_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_DJG_L_FH_ARMOREXPANSION, ITAR_DJG_L);
};

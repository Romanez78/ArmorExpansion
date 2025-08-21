/*
 * ITAR_PAL_R_ArmorExpansion
 * ITAR_PAL_RNH_ArmorExpansion
 * ITAR_PAL_RFH_ArmorExpansion
 *
 * Dialogs:
 * Patch_AE_PC_ITAR_PAL_RNH
 * Patch_AE_PC_ITAR_PAL_RFH
 * Patch_AE_PC_ITAR_PAL_RFH_NH
 * Patch_AE_PC_ITAR_PAL_RNH_FH
 * Patch_AE_PC_ITAR_PAL_R_FH
 * Patch_AE_PC_ITAR_PAL_R_NH
 */
instance Patch_AE_PC_ITAR_PAL_RNH (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_PAL_RNH_Condition;
    information = Patch_AE_PC_ITAR_PAL_RNH_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_PAL_RNH_desc;
};
func int Patch_AE_PC_ITAR_PAL_RNH_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_PAL_R_ArmorExpansion);
};
func void Patch_AE_PC_ITAR_PAL_RNH_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_PAL_RNH_ArmorExpansion, ITAR_PAL_R_ArmorExpansion);
};


instance Patch_AE_PC_ITAR_PAL_RFH (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_PAL_RFH_Condition;
    information = Patch_AE_PC_ITAR_PAL_RFH_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_PAL_RFH_desc;
};
func int Patch_AE_PC_ITAR_PAL_RFH_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_PAL_R_ArmorExpansion);
};
func void Patch_AE_PC_ITAR_PAL_RFH_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_PAL_RFH_ArmorExpansion, ITAR_PAL_R_ArmorExpansion);
};


instance Patch_AE_PC_ITAR_PAL_RFH_NH (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_PAL_RFH_NH_Condition;
    information = Patch_AE_PC_ITAR_PAL_RFH_NH_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_PAL_RFH_NH_desc;
};
func int Patch_AE_PC_ITAR_PAL_RFH_NH_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_PAL_RNH_ArmorExpansion);
};
func void Patch_AE_PC_ITAR_PAL_RFH_NH_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_PAL_RFH_ArmorExpansion, ITAR_PAL_RNH_ArmorExpansion);
};


instance Patch_AE_PC_ITAR_PAL_RNH_FH (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_PAL_RNH_FH_Condition;
    information = Patch_AE_PC_ITAR_PAL_RNH_FH_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_PAL_RNH_FH_desc;
};
func int Patch_AE_PC_ITAR_PAL_RNH_FH_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_PAL_RFH_ArmorExpansion);
};
func void Patch_AE_PC_ITAR_PAL_RNH_FH_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_PAL_RNH_ArmorExpansion, ITAR_PAL_RFH_ArmorExpansion);
};


instance Patch_AE_PC_ITAR_PAL_R_FH (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_PAL_R_FH_Condition;
    information = Patch_AE_PC_ITAR_PAL_R_FH_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_PAL_R_FH_desc;
};
func int Patch_AE_PC_ITAR_PAL_R_FH_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_PAL_RFH_ArmorExpansion);
};
func void Patch_AE_PC_ITAR_PAL_R_FH_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_PAL_R_ArmorExpansion, ITAR_PAL_RFH_ArmorExpansion);
};


instance Patch_AE_PC_ITAR_PAL_R_NH (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_PAL_R_NH_Condition;
    information = Patch_AE_PC_ITAR_PAL_R_NH_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_PAL_R_NH_desc;
};
func int Patch_AE_PC_ITAR_PAL_R_NH_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_PAL_RNH_ArmorExpansion);
};
func void Patch_AE_PC_ITAR_PAL_R_NH_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_PAL_R_ArmorExpansion, ITAR_PAL_RNH_ArmorExpansion);
};

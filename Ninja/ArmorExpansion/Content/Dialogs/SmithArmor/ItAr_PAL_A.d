/*
 * ITAR_PAL_A_ArmorExpansion
 * ITAR_PAL_ANH_ArmorExpansion
 * ITAR_PAL_AFH_ArmorExpansion
 *
 * Dialogs:
 * Patch_AE_PC_ITAR_PAL_ANH
 * Patch_AE_PC_ITAR_PAL_AFH
 * Patch_AE_PC_ITAR_PAL_AFH_NH
 * Patch_AE_PC_ITAR_PAL_ANH_FH
 * Patch_AE_PC_ITAR_PAL_A_FH
 * Patch_AE_PC_ITAR_PAL_A_NH
 */
instance Patch_AE_PC_ITAR_PAL_ANH (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_PAL_ANH_Condition;
    information = Patch_AE_PC_ITAR_PAL_ANH_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_PAL_ANH_desc;
};
func int Patch_AE_PC_ITAR_PAL_ANH_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_PAL_A_ArmorExpansion);
};
func void Patch_AE_PC_ITAR_PAL_ANH_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_PAL_ANH_ArmorExpansion, ITAR_PAL_A_ArmorExpansion);
};


instance Patch_AE_PC_ITAR_PAL_AFH (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_PAL_AFH_Condition;
    information = Patch_AE_PC_ITAR_PAL_AFH_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_PAL_AFH_desc;
};
func int Patch_AE_PC_ITAR_PAL_AFH_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_PAL_A_ArmorExpansion);
};
func void Patch_AE_PC_ITAR_PAL_AFH_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_PAL_AFH_ArmorExpansion, ITAR_PAL_A_ArmorExpansion);
};


instance Patch_AE_PC_ITAR_PAL_AFH_NH (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_PAL_AFH_NH_Condition;
    information = Patch_AE_PC_ITAR_PAL_AFH_NH_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_PAL_AFH_NH_desc;
};
func int Patch_AE_PC_ITAR_PAL_AFH_NH_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_PAL_ANH_ArmorExpansion);
};
func void Patch_AE_PC_ITAR_PAL_AFH_NH_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_PAL_AFH_ArmorExpansion, ITAR_PAL_ANH_ArmorExpansion);
};


instance Patch_AE_PC_ITAR_PAL_ANH_FH (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_PAL_ANH_FH_Condition;
    information = Patch_AE_PC_ITAR_PAL_ANH_FH_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_PAL_ANH_FH_desc;
};
func int Patch_AE_PC_ITAR_PAL_ANH_FH_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_PAL_AFH_ArmorExpansion);
};
func void Patch_AE_PC_ITAR_PAL_ANH_FH_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_PAL_ANH_ArmorExpansion, ITAR_PAL_AFH_ArmorExpansion);
};


instance Patch_AE_PC_ITAR_PAL_A_FH (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_PAL_A_FH_Condition;
    information = Patch_AE_PC_ITAR_PAL_A_FH_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_PAL_A_FH_desc;
};
func int Patch_AE_PC_ITAR_PAL_A_FH_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_PAL_AFH_ArmorExpansion);
};
func void Patch_AE_PC_ITAR_PAL_A_FH_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_PAL_A_ArmorExpansion, ITAR_PAL_AFH_ArmorExpansion);
};


instance Patch_AE_PC_ITAR_PAL_A_NH (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_PAL_A_NH_Condition;
    information = Patch_AE_PC_ITAR_PAL_A_NH_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_PAL_A_NH_desc;
};
func int Patch_AE_PC_ITAR_PAL_A_NH_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_PAL_ANH_ArmorExpansion);
};
func void Patch_AE_PC_ITAR_PAL_A_NH_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_PAL_A_ArmorExpansion, ITAR_PAL_ANH_ArmorExpansion);
};

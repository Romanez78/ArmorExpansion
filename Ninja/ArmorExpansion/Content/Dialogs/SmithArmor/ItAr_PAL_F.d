/*
 * ITAR_PAL_F_ArmorExpansion
 * ITAR_PAL_FNH_ArmorExpansion
 * ITAR_PAL_FFH_ArmorExpansion
 *
 * Dialogs:
 * Patch_AE_PC_ITAR_PAL_FNH
 * Patch_AE_PC_ITAR_PAL_FFH
 * Patch_AE_PC_ITAR_PAL_FFH_NH
 * Patch_AE_PC_ITAR_PAL_FNH_FH
 * Patch_AE_PC_ITAR_PAL_F_FH
 * Patch_AE_PC_ITAR_PAL_F_NH
 */
instance Patch_AE_PC_ITAR_PAL_FNH (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_PAL_FNH_Condition;
    information = Patch_AE_PC_ITAR_PAL_FNH_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_PAL_FNH_desc;
};
func int Patch_AE_PC_ITAR_PAL_FNH_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_PAL_F_ArmorExpansion);
};
func void Patch_AE_PC_ITAR_PAL_FNH_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_PAL_FNH_ArmorExpansion, ITAR_PAL_F_ArmorExpansion);
};


instance Patch_AE_PC_ITAR_PAL_FFH (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_PAL_FFH_Condition;
    information = Patch_AE_PC_ITAR_PAL_FFH_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_PAL_FFH_desc;
};
func int Patch_AE_PC_ITAR_PAL_FFH_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_PAL_F_ArmorExpansion);
};
func void Patch_AE_PC_ITAR_PAL_FFH_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_PAL_FFH_ArmorExpansion, ITAR_PAL_F_ArmorExpansion);
};


instance Patch_AE_PC_ITAR_PAL_FFH_NH (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_PAL_FFH_NH_Condition;
    information = Patch_AE_PC_ITAR_PAL_FFH_NH_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_PAL_FFH_NH_desc;
};
func int Patch_AE_PC_ITAR_PAL_FFH_NH_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_PAL_FNH_ArmorExpansion);
};
func void Patch_AE_PC_ITAR_PAL_FFH_NH_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_PAL_FFH_ArmorExpansion, ITAR_PAL_FNH_ArmorExpansion);
};


instance Patch_AE_PC_ITAR_PAL_FNH_FH (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_PAL_FNH_FH_Condition;
    information = Patch_AE_PC_ITAR_PAL_FNH_FH_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_PAL_FNH_FH_desc;
};
func int Patch_AE_PC_ITAR_PAL_FNH_FH_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_PAL_FFH_ArmorExpansion);
};
func void Patch_AE_PC_ITAR_PAL_FNH_FH_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_PAL_FNH_ArmorExpansion, ITAR_PAL_FFH_ArmorExpansion);
};


instance Patch_AE_PC_ITAR_PAL_F_FH (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_PAL_F_FH_Condition;
    information = Patch_AE_PC_ITAR_PAL_F_FH_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_PAL_F_FH_desc;
};
func int Patch_AE_PC_ITAR_PAL_F_FH_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_PAL_FFH_ArmorExpansion);
};
func void Patch_AE_PC_ITAR_PAL_F_FH_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_PAL_F_ArmorExpansion, ITAR_PAL_FFH_ArmorExpansion);
};


instance Patch_AE_PC_ITAR_PAL_F_NH (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_PAL_F_NH_Condition;
    information = Patch_AE_PC_ITAR_PAL_F_NH_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_PAL_F_NH_desc;
};
func int Patch_AE_PC_ITAR_PAL_F_NH_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_PAL_FNH_ArmorExpansion);
};
func void Patch_AE_PC_ITAR_PAL_F_NH_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_PAL_F_ArmorExpansion, ITAR_PAL_FNH_ArmorExpansion);
};

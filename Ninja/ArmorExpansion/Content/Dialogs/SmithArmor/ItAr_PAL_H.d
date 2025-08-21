/*
 * ITAR_PAL_H
 * ITAR_PAL_HNH_ArmorExpansion
 * ITAR_PAL_HFH_ArmorExpansion
 *
 * Dialogs:
 * Patch_AE_PC_ITAR_PAL_HNH
 * Patch_AE_PC_ITAR_PAL_HFH
 * Patch_AE_PC_ITAR_PAL_HFH_NH
 * Patch_AE_PC_ITAR_PAL_HNH_FH
 * Patch_AE_PC_ITAR_PAL_H_FH
 * Patch_AE_PC_ITAR_PAL_H_NH
 */
instance Patch_AE_PC_ITAR_PAL_HNH (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_PAL_HNH_Condition;
    information = Patch_AE_PC_ITAR_PAL_HNH_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_PAL_HNH_desc;
};
func int Patch_AE_PC_ITAR_PAL_HNH_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_PAL_H);
};
func void Patch_AE_PC_ITAR_PAL_HNH_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_PAL_HNH_ArmorExpansion, ITAR_PAL_H);
};


instance Patch_AE_PC_ITAR_PAL_HFH (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_PAL_HFH_Condition;
    information = Patch_AE_PC_ITAR_PAL_HFH_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_PAL_HFH_desc;
};
func int Patch_AE_PC_ITAR_PAL_HFH_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_PAL_H);
};
func void Patch_AE_PC_ITAR_PAL_HFH_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_PAL_HFH_ArmorExpansion, ITAR_PAL_H);
};


instance Patch_AE_PC_ITAR_PAL_HFH_NH (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_PAL_HFH_NH_Condition;
    information = Patch_AE_PC_ITAR_PAL_HFH_NH_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_PAL_HFH_NH_desc;
};
func int Patch_AE_PC_ITAR_PAL_HFH_NH_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_PAL_HNH_ArmorExpansion);
};
func void Patch_AE_PC_ITAR_PAL_HFH_NH_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_PAL_HFH_ArmorExpansion, ITAR_PAL_HNH_ArmorExpansion);
};


instance Patch_AE_PC_ITAR_PAL_HNH_FH (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_PAL_HNH_FH_Condition;
    information = Patch_AE_PC_ITAR_PAL_HNH_FH_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_PAL_HNH_FH_desc;
};
func int Patch_AE_PC_ITAR_PAL_HNH_FH_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_PAL_HFH_ArmorExpansion);
};
func void Patch_AE_PC_ITAR_PAL_HNH_FH_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_PAL_HNH_ArmorExpansion, ITAR_PAL_HFH_ArmorExpansion);
};


instance Patch_AE_PC_ITAR_PAL_H_FH (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_PAL_H_FH_Condition;
    information = Patch_AE_PC_ITAR_PAL_H_FH_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_PAL_H_FH_desc;
};
func int Patch_AE_PC_ITAR_PAL_H_FH_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_PAL_HFH_ArmorExpansion);
};
func void Patch_AE_PC_ITAR_PAL_H_FH_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_PAL_H, ITAR_PAL_HFH_ArmorExpansion);
};


instance Patch_AE_PC_ITAR_PAL_H_NH (C_Info)
{
    npc         = PC_Hero;
    condition   = Patch_AE_PC_ITAR_PAL_H_NH_Condition;
    information = Patch_AE_PC_ITAR_PAL_H_NH_Info;
    permanent   = TRUE;
    description = Patch_AE_PC_ITAR_PAL_H_NH_desc;
};
func int Patch_AE_PC_ITAR_PAL_H_NH_Condition()
{
    Patch_AE_Smith_Basic_Condition(ITAR_PAL_HNH_ArmorExpansion);
};
func void Patch_AE_PC_ITAR_PAL_H_NH_Info()
{
    Patch_AE_Smith_ForgeAndReplace(ITAR_PAL_H, ITAR_PAL_HNH_ArmorExpansion);
};

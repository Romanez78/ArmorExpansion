instance Patch_AE_DIA_GAROND_KNIGHT_ARMORREWARD (C_INFO)
{
    npc          =  PAL_250_Garond;
    nr           =  888;
    condition    =  Patch_AE_DIA_GAROND_KNIGHT_ARMORREWARD_Condition;
    information  =  Patch_AE_DIA_GAROND_KNIGHT_ARMORREWARD_Info;
    permanent    =  FALSE;
    important    =  TRUE;
    description  =  "";
};
func int Patch_AE_DIA_GAROND_KNIGHT_ARMORREWARD_Condition()
{
    if (MIS_KilledDragons >= 2)
    && (other.guild == GIL_PAL)
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_GAROND_KNIGHT_ARMORREWARD_Info()
{
        AI_Output(self, other, PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_03);
        AI_Output(self, other, PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_04);
        AI_Output(self, other, PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_05);
    
Info_ClearChoices (Patch_AE_DIA_GAROND_KNIGHT_ARMORREWARD);
Info_AddChoice 	  (Patch_AE_DIA_GAROND_KNIGHT_ARMORREWARD,Patch_AE_DIA_GAROND_KNIGHT_ARMORREWARD_MELEE,Patch_AE_DIA_GAROND_KNIGHT_ARMORREWARD_MELEEGO);
Info_AddChoice 	  (Patch_AE_DIA_GAROND_KNIGHT_ARMORREWARD,Patch_AE_DIA_GAROND_KNIGHT_ARMORREWARD_RANGED,Patch_AE_DIA_GAROND_KNIGHT_ARMORREWARD_RANGEDGO);
};

FUNC VOID Patch_AE_DIA_GAROND_KNIGHT_ARMORREWARD_MELEEGO()
{
    B_GiveInvItems(self, other, ITAR_PAL_MH_FH_ARMOREXPANSION, 1);
        AI_Output(self, other, PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_06);
        AI_Output(other, self, PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_15_01);
    Info_ClearChoices (Patch_AE_DIA_GAROND_KNIGHT_ARMORREWARD);
};
FUNC VOID Patch_AE_DIA_GAROND_KNIGHT_ARMORREWARD_RANGEDGO()
{
    B_GiveInvItems(self, other, ITAR_PAL_CM_ARMOREXPANSION, 1);
        AI_Output(self, other, PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_06);
        AI_Output(other, self, PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_15_01);
    Info_ClearChoices (Patch_AE_DIA_GAROND_KNIGHT_ARMORREWARD);
};

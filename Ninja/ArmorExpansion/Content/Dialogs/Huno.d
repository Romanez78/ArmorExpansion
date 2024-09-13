instance Patch_AE_DIA_HUNO_PAL_REFORGE (C_INFO)
{
    npc          =  BDT_1099_Addon_Huno;
    nr           =  3;
    condition    =  Patch_AE_DIA_HUNO_PAL_REFORGE_Condition;
    information  =  Patch_AE_DIA_HUNO_PAL_REFORGE_Info;
    permanent    =  FALSE;
    description  =  Patch_AE_DIA_HUNO_PAL_REFORGE_desc;
};
func int Patch_AE_DIA_HUNO_PAL_REFORGE_Condition()
{
    if (Npc_Hasitems(other, ItAr_PAL_R_ARMOREXPANSION) > 0)
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_HUNO_PAL_REFORGE_Info()
{
    B_GivePlayerXP(25);
    AI_Output(other, self, PATCH_AE_DIA_HUNO_PAL_REFORGE_4_1);
    AI_Output(self, other, PATCH_AE_DIA_HUNO_PAL_REFORGE_3_01);
    AI_Output(self, other, PATCH_AE_DIA_HUNO_PAL_REFORGE_3_02);
    AI_Output(self, other, PATCH_AE_DIA_HUNO_PAL_REFORGE_3_03);
    B_LogEntry (Patch_AE_TOPIC_MARTIN_ARMOR, Patch_AE_DIA_HUNO_PAL_REFORGE_entry);
};

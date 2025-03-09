instance Patch_AE_DIA_LEE_SLD_SCOUTArmor (C_INFO)
{
    npc          =  SLD_800_Lee;
    nr           =  888;
    condition    =  Patch_AE_DIA_LEE_SLD_SCOUTArmor_Condition;
    information  =  Patch_AE_DIA_LEE_SLD_SCOUTArmor_Info;
    permanent    =  FALSE;
    description  =  Patch_AE_DIA_LEE_SLD_SCOUTArmor_desc;
};
func int Patch_AE_DIA_LEE_SLD_SCOUTArmor_Condition()
{
    if (Npc_Hasitems(other, ItAr_SLD_L) > 0)
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_LEE_SLD_SCOUTArmor_Info()
{
    AI_Output(other, self, PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_15_01);
    AI_Output(other, self, PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_15_02);
    AI_Output(self, other, PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_13_03);
    AI_Output(self, other, PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_13_04);
};

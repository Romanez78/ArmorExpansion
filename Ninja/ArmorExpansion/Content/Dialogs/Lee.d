instance Patch_AE_DIA_LEE_SLD_SCOUTArmor (C_INFO)
{
    npc          =  SLD_800_Lee;
    nr           =  888;
    condition    =  Patch_AE_DIA_LEE_SLD_SCOUTArmor_Condition;
    information  =  Patch_AE_DIA_LEE_SLD_SCOUTArmor_Info;
    permanent    =  TRUE;
    description  =  "Nenašla by se tu pro mně lehčí zbroj?";
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
    AI_Output(other, self, "PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_15_01"); //Nenašla by se pro mně lehhčí zbroj?.
    AI_Output(other, self, "PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_15_02"); //Radši používám zbraně na dálku.
    AI_Output(self, other, "PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_13_03"); //Já nic takového pro tebe nemám, ale nejsi první kdo něco takového chce
    AI_Output(self, other, "PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_13_04"); //Jdi za Wolfem, myslím si že on by měl pro tebe něco mít
};

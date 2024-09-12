instance Patch_AE_DIA_WOLF_SLD_SCOUTArmorBought (C_INFO)
{
    npc          =  SLD_811_Wolf;
    nr           =  888;
    condition    =  Patch_AE_DIA_WOLF_SLD_SCOUTArmorBought_Condition;
    information  =  Patch_AE_DIA_WOLF_SLD_SCOUTArmorBought_Info;
    permanent    =  TRUE;
    description  =  "Slyšel jsem že děláš zbroje pro zvědy.";
};
func int Patch_AE_DIA_WOLF_SLD_SCOUTArmorBought_Condition()
{
    if (Npc_Hasitems(other, ItAr_SLD_L) > 0)
    && (Npc_KnowsInfo(other, Patch_AE_DIA_LEE_SLD_SCOUTArmor))
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_WOLF_SLD_SCOUTArmorBought_Info()
{
    AI_Output(other, self, "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_01"); //Slyšel jsem že děláš zbroje pro zvědy.
    AI_Output(other, self, "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_02"); //chtěl bych si vyměnit tu co mám teď
    AI_Output(self, other, "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_13_03"); //Jistě, zrovna jsem jednu dokončil. Můžeš ji mít zadarmo, kvůli starým časům.
    B_GiveInvItems(self, other, ItAr_SLD_SCOUT_ARMOREXPANSION, 1);
    AI_Output(other, self, "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_06"); //Díky.
    AI_Output(self, other, "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_13_07"); //Nemáš za co
};

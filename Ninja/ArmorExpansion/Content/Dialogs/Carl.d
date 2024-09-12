instance Patch_AE_DIA_CARL_PAL_REFORGE (C_INFO)
{
    npc          =  VLK_461_Carl;
    nr           =  3;
    condition    =  Patch_AE_DIA_CARL_PAL_REFORGE_Condition;
    information  =  Patch_AE_DIA_CARL_PAL_REFORGE_Info;
    permanent    =  FALSE;
    description  =  "Nemohl by si mi opravit tuhle rezavou paladinskou zbroj?";
};
func int Patch_AE_DIA_CARL_PAL_REFORGE_Condition()
{
    if (Npc_Hasitems(other, ItAr_PAL_R_ARMOREXPANSION) > 0)
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_CARL_PAL_REFORGE_Info()
{
    B_GivePlayerXP(10);
    AI_Output(other, self, "PATCH_AE_DIA_CARL_PAL_REFORGE_4_1"); //Nemohl by si mi opravit tuhle rezavou paladinskou zbroj?
    AI_Output(self, other, "PATCH_AE_DIA_CARL_PAL_REFORGE_3_01"); //Paladinskou zbroj?.
    AI_Output(self, other, "PATCH_AE_DIA_CARL_PAL_REFORGE_3_02"); //Promiň chlapče, ale to je nad moje síly.
    AI_Output(self, other, "PATCH_AE_DIA_CARL_PAL_REFORGE_3_03"); //Budeš si muset najít jiného kováře.
    B_LogEntry(Patch_AE_TOPIC_MARTIN_ARMOR, "Carl mi zbroj neopraví.");
};

instance Patch_AE_DIA_JAN_PAL_REFORGE (C_INFO)
{
    npc          =  DJG_714_Jan;
    nr           =  3;
    condition    =  Patch_AE_DIA_JAN_PAL_REFORGE_Condition;
    information  =  Patch_AE_DIA_JAN_PAL_REFORGE_Info;
    permanent    =  FALSE;
    description  =  "Nemohl by si mi opravit tuhle rezavou paladinskou zbroj?";
};
func int Patch_AE_DIA_JAN_PAL_REFORGE_Condition()
{
    if (Npc_Hasitems(other, ItAr_PAL_R_ARMOREXPANSION) > 0)
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_JAN_PAL_REFORGE_Info()
{
    B_GivePlayerXP(50);
    AI_Output(other, self, "PATCH_AE_DIA_JAN_PAL_REFORGE_4_1"); //Nemohl by si mi opravit tuhle rezavou paladinskou zbroj?
    AI_Output(self, other, "PATCH_AE_DIA_JAN_PAL_REFORGE_3_01"); //Jsem na tenkém ledě jenom abych tu mohl pracovat.
    AI_Output(self, other, "PATCH_AE_DIA_JAN_PAL_REFORGE_3_02"); //Nehodlám riskovat že mně nějáký z tvých kolegů udá za to že se hrabu v paladinských věcech.
    AI_Output(self, other, "PATCH_AE_DIA_JAN_PAL_REFORGE_3_03"); //Budeš si muset najít jiného kováře.
    B_LogEntry (Patch_AE_TOPIC_MARTIN_ARMOR,"Drakobijec Jan mi zbroj neopraví.");
};

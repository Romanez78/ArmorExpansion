//-------------------------------------
var int Patch_AE_Matteo_GAMBESONBought;
//-------------------------------------

instance Patch_AE_DIA_Matteo_GAMBESON (C_INFO)
{
    npc          =  VLK_416_Matteo;
    nr           =  850;
    condition    =  Patch_AE_DIA_Matteo_GAMBESON_Condition;
    information  =  Patch_AE_DIA_Matteo_GAMBESON_Info;
    permanent    =  TRUE;
    description  =  "Koupit Lovecký Gambeson (350 zlatých). 20/20/20 bonus pro zbraně na dálku.";
};
func int Patch_AE_DIA_Matteo_GAMBESON_Condition()
{
    if (Npc_KnowsInfo (other, DIA_Matteo_SellWhat))
    && (Patch_AE_Matteo_GAMBESONBought == FALSE)
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_Matteo_GAMBESON_Info()
{
    AI_Output(other, self, "PATCH_AE_DIA_MATTEO_GAMBESON_15_00"); //Dobře, dej mi tu zbroj.

    if (B_GiveInvItems(other, self, ItMi_Gold, 350))
    {
        AI_Output(self, other, "PATCH_AE_DIA_MATTEO_GAMBESON_09_01"); //Bude se ti líbit.

        Patch_AE_Matteo_GAMBESONBought = B_GiveInvItems(self, other, ItAr_GAMBESON_ARMOREXPANSION, 1);
    }
    else
    {
        AI_Output(self, other, "PATCH_AE_DIA_MATTEO_GAMBESON_09_02"); //Ta zbroj má svojí cenu - a taky za ní stojí takže se vrať až budeš mít dost zlata.
    };
};

instance Patch_AE_DIA_Lord_Hagen_CROSSBOW (C_INFO)
{
    npc          =  PAL_200_Hagen;
    nr           =  990;
    condition    =  Patch_AE_DIA_Lord_Hagen_CROSSBOW_Condition;
    information  =  Patch_AE_DIA_Lord_Hagen_CROSSBOW_Info;
    permanent    =  TRUE;
    description  =  "Nenašla by se pro mně lehčí zbroj? (Vyměnit stávající)";
};
func int Patch_AE_DIA_Lord_Hagen_CROSSBOW_Condition()
{
    if (Npc_Hasitems(other, ItAr_PAL_M) > 0)
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_Lord_Hagen_CROSSBOW_Info()
{
    AI_Output(other, self, "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_01"); //Nenašla by se pro mně lehčí zbroj?.
    AI_Output(other, self, "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_02"); //Radši používám zbraně na dálku.
    AI_Output(self, other, "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_13_03"); //Můžu ti vyměnit tvojí rytířskou zbroj za odlehčenou variantu, určenou pro kušišníky.
    AI_Output(other, self, "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_04"); //Beru jí.
    B_GiveInvItems(other, self, ItAr_PAL_M, 1);
    B_GiveInvItems(self, other, ITAR_PAL_C_ARMOREXPANSION, 1);
    AI_Output(self, other, "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_9"); //Nos ji se ctí, rytíři.
};

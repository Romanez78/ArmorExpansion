instance Patch_AE_DIA_Addon_Greg_RavenDead_ARMOREXPANSION (C_INFO)
{
    npc          =  PIR_1320_Addon_Greg;
    nr           =  2;
    condition    =  Patch_AE_DIA_Addon_Greg_RavenDead_ARMOREXPANSION_Condition;
    information  =  Patch_AE_DIA_Addon_Greg_RavenDead_ARMOREXPANSION_Info;
    description  =  "Co takhle nějáká lepší zbroj?";
};
func int Patch_AE_DIA_Addon_Greg_RavenDead_ARMOREXPANSION_Condition()
{
    if ((Npc_KnowsInfo(other,DIA_Addon_Greg_RavenDead) == TRUE))
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_Addon_Greg_RavenDead_ARMOREXPANSION_Info()
{
    AI_Output(other, self, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_15_00"); //Co takhle nějáká lepší zbroj?
    AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_01"); //Sakra, co si myslíš?
    AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_02"); //Odkrouhneš Ravena a najednou je z tebe nový kapitán?
    AI_Output(other, self, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_15_03"); //Takhle jsem to nemyslel. Kapitánem zůstaneš ty, jenom mi jde o tu zbroj.
    AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_04"); //Dobrá, můžu ti prodat jeden z mých osobních kousků.
    AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_05"); //Ale přijde tě to draho, chci za ní 2700 zlatých
    B_LogEntry(Topic_Addon_PIR_Trader, "Od Grega si můžu koupit zbroj kapitána za 2700 zlatých");
};

// ------------------------------------------
var int Patch_AE_ARMOREXPANSION_BOUGHT_CAPTAIN;
// ------------------------------------------

instance Patch_AE_DIA_Addon_Greg_BUY_ARMOREXPANSION (C_INFO)
{
    npc          =  PIR_1320_Addon_Greg;
    nr           =  2;
    condition    =  Patch_AE_DIA_Addon_Greg_BUY_ARMOREXPANSION_Condition;
    information  =  Patch_AE_DIA_Addon_Greg_BUY_ARMOREXPANSION_Info;
    description  =  "Koupit kapitánský plášť (75/75/75/25/15, +5% jednoruční talent, +10 Obratnost, Cena 2700)";
};

func int Patch_AE_DIA_Addon_Greg_BUY_ARMOREXPANSION_Condition()
{
    if ((Npc_KnowsInfo(other, Patch_AE_DIA_Addon_Greg_RavenDead_ARMOREXPANSION) == TRUE))
    && (Patch_AE_ARMOREXPANSION_BOUGHT_CAPTAIN == FALSE)
    {
        return TRUE;
    };
};

func void Patch_AE_DIA_Addon_Greg_BUY_ARMOREXPANSION_Info()
{
    AI_Output(other, self, "PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_1"); //Prodej mi kapitánskou zbroj.

    if (B_GiveInvItems(other, self, ItMi_Gold, 2700))
    {
        AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_2"); //Tady jí máš, ale pamatuj si že kapitánem zůstávám já.
        B_GiveInvItems(self, other, ITAR_PIR_H_ARMOREXPANSION, 1);
        Patch_AE_ARMOREXPANSION_BOUGHT_CAPTAIN = TRUE;
    }
    else
    {
        AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_3"); //Vrať se až budeš mít u sebe dost zlata.
    };
};

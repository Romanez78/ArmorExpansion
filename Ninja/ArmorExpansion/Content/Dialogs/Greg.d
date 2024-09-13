instance Patch_AE_DIA_Addon_Greg_RavenDead_ARMOREXPANSION (C_INFO)
{
    npc          =  PIR_1320_Addon_Greg;
    nr           =  2;
    condition    =  Patch_AE_DIA_Addon_Greg_RavenDead_ARMOREXPANSION_Condition;
    information  =  Patch_AE_DIA_Addon_Greg_RavenDead_ARMOREXPANSION_Info;
    description  =  Patch_AE_DIA_Addon_Greg_RavenDead_ARMOREXPANSION_desc;
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
    AI_Output(other, self, PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_15_00);
    AI_Output(self, other, PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_01);
    AI_Output(self, other, PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_02);
    AI_Output(other, self, PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_15_03);
    AI_Output(self, other, PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_04);
    AI_Output(self, other, PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_05);
    B_LogEntry(Topic_Addon_PIR_Trader, Patch_AE_DIA_Addon_Greg_RavenDead_ARMOREXPANSION_entry);
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
    description  =  Patch_AE_DIA_Addon_Greg_BUY_ARMOREXPANSION_desc;
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
    AI_Output(other, self, PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_1);

    if (B_GiveInvItems(other, self, ItMi_Gold, 2700))
    {
        AI_Output(self, other, PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_2);
        B_GiveInvItems(self, other, ITAR_PIR_H_ARMOREXPANSION, 1);
        Patch_AE_ARMOREXPANSION_BOUGHT_CAPTAIN = TRUE;
    }
    else
    {
        AI_Output(self, other, PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_3);
    };
};

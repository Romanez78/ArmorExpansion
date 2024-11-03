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
    description  =  Patch_AE_DIA_Matteo_GAMBESON_desc;
};
func int Patch_AE_DIA_Matteo_GAMBESON_Condition()
{
    if (Npc_KnowsInfo(other, DIA_Matteo_SellWhat))
    && (Patch_AE_Matteo_GAMBESONBought == FALSE)
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_Matteo_GAMBESON_Info()
{
    AI_Output(other, self, "DIA_Matteo_LEATHER_15_00");

    if (B_GiveInvItems(other, self, ItMi_Gold, 350))
    {
        AI_Output(self, other, "DIA_MATTEO_LEATHER_09_01");

        Patch_AE_Matteo_GAMBESONBought = B_GiveInvItems(self, other, ItAr_GAMBESON_ARMOREXPANSION, 1);
    }
    else
    {
        AI_Output(self, other, "DIA_MATTEO_LEATHER_09_02");
    };
};

//-------------------------------------
var int Patch_AE_Matteo_HUNTERJACKETBought;
//-------------------------------------

instance Patch_AE_DIA_Matteo_HUNTERJACKET (C_INFO)
{
    npc          =  VLK_416_Matteo;
    nr           =  851;
    condition    =  Patch_AE_DIA_Matteo_HUNTERJACKET_Condition;
    information  =  Patch_AE_DIA_Matteo_HUNTERJACKET_Info;
    permanent    =  TRUE;
    description  =  Patch_AE_DIA_Matteo_HUNTERJACKET_desc;
};
func int Patch_AE_DIA_Matteo_HUNTERJACKET_Condition()
{
    if (Npc_KnowsInfo(other, DIA_Matteo_SellWhat))
    && (Patch_AE_Matteo_HUNTERJACKETBought == FALSE)
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_Matteo_HUNTERJACKET_Info()
{
    AI_Output(other, self, "DIA_Matteo_LEATHER_15_00");

    if (B_GiveInvItems(other, self, ItMi_Gold, 800))
    {
        AI_Output(self, other, "DIA_MATTEO_LEATHER_09_01");

        Patch_AE_Matteo_HUNTERJACKETBought = B_GiveInvItems(self, other, ITAR_ARX_HUNTERM_ArmorExpansion, 1);
    }
    else
    {
        AI_Output(self, other, "DIA_MATTEO_LEATHER_09_02");
    };
};

//-------------------------------------
var int Patch_AE_Matteo_HUNTERJACKETHBought;
//-------------------------------------

instance Patch_AE_DIA_Matteo_HUNTERJACKETH (C_INFO)
{
    npc          =  VLK_416_Matteo;
    nr           =  852;
    condition    =  Patch_AE_DIA_Matteo_HUNTERJACKETH_Condition;
    information  =  Patch_AE_DIA_Matteo_HUNTERJACKETH_Info;
    permanent    =  TRUE;
    description  =  Patch_AE_DIA_Matteo_HUNTERJACKETH_desc;
};
func int Patch_AE_DIA_Matteo_HUNTERJACKETH_Condition()
{
    if (Npc_KnowsInfo(other, DIA_Matteo_SellWhat))
    && (Patch_AE_Matteo_HUNTERJACKETHBought == FALSE)
    && (Kapitel >= 2)
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_Matteo_HUNTERJACKETH_Info()
{
    AI_Output (other, self, "DIA_Matteo_LEATHER_15_00");

    if (B_GiveInvItems(other, self, ItMi_Gold, 1800))
    {
        AI_Output(self, other, "DIA_MATTEO_LEATHER_09_01");

        Patch_AE_Matteo_HUNTERJACKETHBought = B_GiveInvItems(self, other, ITAR_ARX_HUNTERH_ArmorExpansion, 1);
    }
    else
    {
        AI_Output(self, other, "DIA_MATTEO_LEATHER_09_02");
    };
};

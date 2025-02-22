instance Patch_AE_DIA_Lord_Hagen_CROSSBOW (C_INFO)
{
    npc          =  PAL_200_Hagen;
    nr           =  990;
    condition    =  Patch_AE_DIA_Lord_Hagen_CROSSBOW_Condition;
    information  =  Patch_AE_DIA_Lord_Hagen_CROSSBOW_Info;
    permanent    =  TRUE;
    description  =  Patch_AE_DIA_Lord_Hagen_CROSSBOW_desc;
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
    AI_Output(other, self, PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_01);
    AI_Output(other, self, PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_02);
    AI_Output(self, other, PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_13_03);
    AI_Output(other, self, PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_04);
    B_GiveInvItems(other, self, ItAr_PAL_M, 1);
    B_GiveInvItems(self, other, ITAR_PAL_C_ARMOREXPANSION, 1);
    AI_Output(self, other, PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_9);
};

instance Patch_AE_DIA_Lord_Hagen_HEAVYCROSSBOW (C_INFO)
{
    npc          =  PAL_200_Hagen;
    nr           =  990;
    condition    =  Patch_AE_DIA_Lord_Hagen_HEAVYCROSSBOW_Condition;
    information  =  Patch_AE_DIA_Lord_Hagen_HEAVYCROSSBOW_Info;
    permanent    =  FALSE;
    description  =  Patch_AE_DIA_Lord_Hagen_HEAVYCROSSBOW_desc;
};
func int Patch_AE_DIA_Lord_Hagen_HEAVYCROSSBOW_Condition()
{
    if ((ItWr_SCReadsHallsofIrdorath == TRUE) && Npc_KnowsInfo(other,DIA_Lord_Hagen_AllDragonsDead))
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_Lord_Hagen_HEAVYCROSSBOW_Info()
{
    AI_Output(other, self, PATCH_AE_DIA_LORD_HAGEN_HEAVYCROSSBOW_15_01);
    AI_Output(self, other, PATCH_AE_DIA_LORD_HAGEN_HEAVYCROSSBOW_13_03);
    AI_Output(self, other, PATCH_AE_DIA_LORD_HAGEN_HEAVYCROSSBOW_13_04);    
        B_GiveInvItems(self, other, ITAR_PAL_CH_ARMOREXPANSION, 1);
    AI_Output(other, self, PATCH_AE_DIA_LORD_HAGEN_HEAVYCROSSBOW_15_05);
    AI_Output(self, other, PATCH_AE_DIA_LORD_HAGEN_HEAVYCROSSBOW_15_06);
};


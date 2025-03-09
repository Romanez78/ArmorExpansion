instance Patch_AE_DIA_ARMOREXPANSION_Ulthar (C_INFO)
{
    npc          =  KDF_502_Ulthar;
    nr           =  30;
    condition    =  Patch_AE_DIA_ARMOREXPANSION_Ulthar_Condition;
    information  =  Patch_AE_DIA_ARMOREXPANSION_Ulthar_Info;
    important    =  TRUE;
    description  =  PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_desc;
};
func int Patch_AE_DIA_ARMOREXPANSION_Ulthar_Condition()
{
    if (MIS_Ulthar_HeileSchreine_PAL == LOG_SUCCESS)
    {
            return TRUE;
    };
};
func void Patch_AE_DIA_ARMOREXPANSION_Ulthar_Info()
{
    AI_Output(self, other, PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_01);
    AI_Output(self, other, PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_02);
    AI_Output(other, self, PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_03);
    B_GiveInvItems(self, other, ItAr_Crusader_ARMOREXPANSION, 1);
};

instance Patch_AE_DIA_Gorax_KDFM_ASK (C_INFO)
{
    npc          =  KDF_508_Gorax;
    nr           =  3;
    condition    =  Patch_AE_DIA_Gorax_KDFM_ASK_Condition;
    information  =  Patch_AE_DIA_Gorax_KDFM_ASK_Info;
    permanent    =  FALSE;
    description  =  Patch_AE_DIA_Gorax_KDFM_ASK_desc;
};
func int Patch_AE_DIA_Gorax_KDFM_ASK_Condition()
{
    if (other.guild == GIL_KDF)
	&& (kapitel == 2) || (kapitel == 3)
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_Gorax_KDFM_ASK_Info()
{
    AI_Output(other, self, PATCH_AE_DIA_Gorax_KDFM_ASK_3_03);
    AI_Output(self, other, PATCH_AE_DIA_Gorax_KDFM_ASK_3_04);
    AI_Output(other, self, PATCH_AE_DIA_Gorax_KDFM_ASK_3_05);
    AI_Output(self, other, PATCH_AE_DIA_Gorax_KDFM_ASK_3_06);
};

//-------------------------------------
var int Patch_AE_GORAX_KDFM_BOUGHT;
//-------------------------------------

instance Patch_AE_DIA_Gorax_KDFM_BUY (C_INFO)
{
    npc          =  KDF_508_Gorax;
    nr           =  3;
    condition    =  Patch_AE_DIA_Gorax_KDFM_BUY_Condition;
    information  =  Patch_AE_DIA_Gorax_KDFM_BUY_Info;
    permanent    =  TRUE;
    description  =  Patch_AE_DIA_Gorax_KDFM_BUY_desc;
};
func int Patch_AE_DIA_Martin_ARKPALA_BUY_Condition()
{
    if (Patch_AE_GORAX_KDFM_BOUGHT == FALSE)
    && (Npc_KnowsInfo (other, Patch_AE_DIA_Gorax_KDFM_ASK))
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_Gorax_KDFM_BUY_Info()
{
    AI_Output(other, self, PATCH_AE_DIA_Gorax_KDFM_BUY_4_1);

    if (B_GiveInvItems(other, self, ItMi_Gold, 1500))
    {
        AI_Output(self, other, PATCH_AE_DIA_Gorax_KDFM_BUY_4_2);
        Patch_AE_GORAX_KDFM_BOUGHT = B_GiveInvItems(self, other, ItAr_KDF_M_ARMOREXPANSION, 1);
    }
    else
    {
        AI_Output(self, other, PATCH_AE_DIA_MARTIN_ARKPALA_BUY_4_3);
    };
};

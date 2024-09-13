instance Patch_AE_DIA_Martin_ARCPALA_NOTIF (C_INFO)
{
    npc          =  Mil_350_Addon_Martin;
    nr           =  3;
    condition    =  Patch_AE_DIA_Martin_ARCPALA_NOTIF_Condition;
    information  =  Patch_AE_DIA_Martin_ARCPALA_NOTIF_Info;
    permanent    =  FALSE;
    important    =  TRUE;
};
func int Patch_AE_DIA_Martin_ARCPALA_NOTIF_Condition()
{
    if (other.guild == GIL_PAL)
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_Martin_ARCPALA_NOTIF_Info()
{
    AI_Output(self, other, PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_01);
    AI_Output(self, other, PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_02);
    AI_Output(other, self, PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_03);
    AI_Output(self, other, PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_04);
    AI_Output(self, other, PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_05);
    AI_Output(self, other, PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_06);
    AI_Output(self, other, PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_07);
    AI_Output(self, other, PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_08);
    Log_CreateTopic(Patch_AE_TOPIC_MARTIN_ARMOR, LOG_MISSION);
    Log_SetTopicStatus(Patch_AE_TOPIC_MARTIN_ARMOR, LOG_RUNNING);
    B_LogEntry(Patch_AE_TOPIC_MARTIN_ARMOR, PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_entry);
};

//-------------------------------------
var int Patch_AE_Martin_ARKPALA_BOUGHT;
//-------------------------------------

instance Patch_AE_DIA_Martin_ARKPALA_BUY (C_INFO)
{
    npc          =  Mil_350_Addon_Martin;
    nr           =  3;
    condition    =  Patch_AE_DIA_Martin_ARKPALA_BUY_Condition;
    information  =  Patch_AE_DIA_Martin_ARKPALA_BUY_Info;
    permanent    =  TRUE;
    description  =  Patch_AE_DIA_Martin_ARKPALA_BUY_desc;
};
func int Patch_AE_DIA_Martin_ARKPALA_BUY_Condition()
{
    if (Patch_AE_Martin_ARKPALA_BOUGHT == FALSE)
    && (Npc_KnowsInfo (other, Patch_AE_DIA_Martin_ARCPALA_NOTIF))
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_Martin_ARKPALA_BUY_Info()
{
    AI_Output(other, self, PATCH_AE_DIA_MARTIN_ARKPALA_BUY_4_1);

    if (B_GiveInvItems(other, self, ItMi_Gold, 2000))
    {
        AI_Output(self, other, PATCH_AE_DIA_MARTIN_ARKPALA_BUY_4_2);
        B_LogEntry(Patch_AE_TOPIC_MARTIN_ARMOR, Patch_AE_DIA_Martin_ARKPALA_BUY_entry);

        Patch_AE_Martin_ARKPALA_BOUGHT = B_GiveInvItems(self, other, ItAr_PAL_R_ARMOREXPANSION, 1);
    }
    else
    {
        AI_Output(self, other, PATCH_AE_DIA_MARTIN_ARKPALA_BUY_4_3);
    };
};

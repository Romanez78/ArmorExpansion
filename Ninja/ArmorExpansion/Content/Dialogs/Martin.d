//-------------------------------------
const string Patch_AE_TOPIC_MARTIN_ARMOR = "Vyjímečná Paladinská zbroj";
//-------------------------------------

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
    AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_01"); //Slyšel jsem že si se stal paladinem.
    AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_02"); //Možná bych to pro tebe měl něco zvláštního
    AI_Output(other, self, "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_03"); //O čem to mluvíš?
    AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_04"); //Mám tu na skladě výjimečnou paladinskou zbroj.
    AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_05"); //Slyšel jsem že tenhle typ zbroje má vysokou ochranu proti magickým útokům
    AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_06"); //Ale už tu nejáký čas leží, a pobřežní počasí jí neudělalo dobře
    AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_07"); //Není to ale nic co by se nedalo opravit, ty určitě na něco přijdeš.
    AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_08"); //Za 2000 zlatých je tvoje.
    Log_CreateTopic (Patch_AE_TOPIC_MARTIN_ARMOR, LOG_MISSION);
    Log_SetTopicStatus(Patch_AE_TOPIC_MARTIN_ARMOR, LOG_RUNNING);
    B_LogEntry (Patch_AE_TOPIC_MARTIN_ARMOR,"Martin mi nabídl vyjímečnou zbroj paladina. Zní to jako zajímavá nabídka.");
};

//-------------------------------------
var int Patch_AE_Martin_ARKPALA_BOUGHT;
//-------------------------------------

instance Patch_AE_DIA_Martin_ARKPALA (C_INFO)
{
    npc          =  Mil_350_Addon_Martin;
    nr           =  3;
    condition    =  Patch_AE_DIA_Martin_ARKPALA_Condition;
    information  =  Patch_AE_DIA_Martin_ARKPALA_Info;
    permanent    =  TRUE;
    description  =  "Dobře, beru tu zbroj (Obrany: Sečné 80, Bodné 80. Cena: 2000 zlatých).";
};
func int Patch_AE_DIA_Martin_ARKPALA_Condition()
{
    if (Patch_AE_Martin_ARKPALA_BOUGHT == FALSE)
    && (Npc_KnowsInfo (other, Patch_AE_DIA_Martin_ARCPALA_NOTIF))
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_Martin_ARKPALA_Info()
{
    AI_Output(other, self, "PATCH_AE_DIA_MARTIN_ARKPALA_BOUGHT_4_1"); //Dobře, beru tu zbroj.

    if (B_GiveInvItems(other, self, ItMi_Gold, 2000))
    {
        AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARKPALA_BOUGHT_4_2"); //Dobře, tady ji máš.
        B_LogEntry (Patch_AE_TOPIC_MARTIN_ARMOR,"Koupil jsem si od Martina paladinskou zbroj. Je rezavá ale zkušený kovář by ji měl opravit, jenom najít nějakého kdo by byl ochotný to pro mně udělat.");

        Patch_AE_Martin_ARKPALA_BOUGHT = B_GiveInvItems(self, other, ItAr_PAL_R_ARMOREXPANSION, 1);
    }
    else
    {
        AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARKPALA_BOUGHT_4_3"); //Přijď až budeš mít u sebe dost zlata
    };
};

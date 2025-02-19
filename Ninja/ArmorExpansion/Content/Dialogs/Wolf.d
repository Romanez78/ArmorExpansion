instance Patch_AE_DIA_WOLF_SLD_SCOUTArmorBought(C_INFO)
{
    npc          =  SLD_811_Wolf;
    nr           =  888;
    condition    =  Patch_AE_DIA_WOLF_SLD_SCOUTArmorBought_Condition;
    information  =  Patch_AE_DIA_WOLF_SLD_SCOUTArmorBought_Info;
    permanent    =  TRUE;
    description  =  PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_desc;
};
func int Patch_AE_DIA_WOLF_SLD_SCOUTArmorBought_Condition()
{
    if (Npc_Hasitems(other, ItAr_SLD_L) > 0)
    && (Npc_KnowsInfo(other, Patch_AE_DIA_LEE_SLD_SCOUTArmor))
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_WOLF_SLD_SCOUTArmorBought_Info()
{
    AI_Output(other, self, PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_01);
    AI_Output(other, self, PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_02);
    AI_Output(self, other, PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_13_03);
    B_GiveInvItems(other, self, ItAr_SLD_L, 1);
    B_GiveInvItems(self, other, ItAr_SLD_SCOUT_ARMOREXPANSION, 1);
    AI_Output(other, self, PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_06);
    AI_Output(self, other, PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_13_07);
};

// ************************************************************
// 	  				   Hunter CrawlerArmor
// ************************************************************
var int Wolf_MakeArmor_AEXPANSION;
var int MIS_Wolf_BringCrawlerPlates_AEXPANSION;
// ---------------------------------

INSTANCE DIA_Wolf_AboutCrawler_AEXPANSION(C_INFO)
{
	npc			= SLD_811_Wolf;
	nr			= 1;
	condition	= DIA_Wolf_AboutCrawler_AEXPANSION_Condition;
	information	= DIA_Wolf_AboutCrawler_AEXPANSION_Info;
	permanent	= FALSE;
	description = "vlastně bych chtěl tu zbroj spíš na lovecké účely";
};                       
FUNC INT DIA_Wolf_AboutCrawler_AEXPANSION_Condition()
{
	if (Npc_KnowsInfo (other, DIA_Wolf_AboutCrawler))
	{
		return TRUE;
	};
};
FUNC VOID DIA_Wolf_AboutCrawler_AEXPANSION_Info()
{	
	AI_Output (other, self, "DIA_Wolf_AboutCrawler_AEXPANSION_15_00"); //vlastně bych chtěl tu zbroj spíš na lovecké účely
	AI_Output (self, other, "DIA_Wolf_AboutCrawler_AEXPANSION_08_01"); //jasně, není problém. Jenom mi přines tedy těch krunýřú 7.
	
	MIS_Wolf_BringCrawlerPlates = LOG_SUCCESS;
    Player_GotCrawlerArmor = TRUE;
    Log_SetTopicStatus(TOPIC_Wolf_BringCrawlerPlates,LOG_SUCCESS);
	MIS_Wolf_BringCrawlerPlates_AEXPANSION = LOG_RUNNING;
    Log_CreateTopic (TOPIC_Wolf_BringCrawlerPlates_AEXPANSION,LOG_MISSION);
	Log_SetTopicStatus(TOPIC_Wolf_BringCrawlerPlates_AEXPANSION,LOG_RUNNING);
	B_LogEntry (TOPIC_Wolf_BringCrawlerPlates_AEXPANSION,"Vlk mi ze 7 červích krunýřů vyková loveckou zbroj.");
};

// ************************************************************
// 	  				   BringPlates
// ************************************************************

INSTANCE DIA_Wolf_BringPlates_AEXPANSION(C_INFO)
{
	npc			= SLD_811_Wolf;
	nr			= 3;
	condition	= DIA_Wolf_BringPlates_AEXPANSION_Condition;
	information	= DIA_Wolf_BringPlates_AEXPANSION_Info;
	permanent	= TRUE;
	description = "Sehnal jsem ty červí krunýře na brnění.";
};                       
FUNC INT DIA_Wolf_BringPlates_AEXPANSION_Condition()
{
	if (MIS_Wolf_BringCrawlerPlates_AMEXPANSION == LOG_RUNNING)
	&& (Npc_HasItems (other, ItAt_CrawlerPlate) >= 7)
	{
		return TRUE;
	};
};
FUNC VOID DIA_Wolf_BringPlates_Info()
{	
	AI_Output (other, self, "DIA_Wolf_BringPlates_15_00"); 
	B_GiveInvItems (other, self, ItAt_CrawlerPlate, 7);
	AI_Output (self, other, "DIA_Wolf_BringPlates_08_01");
	MIS_Wolf_BringCrawlerPlates_AEXPANSION = LOG_SUCCESS;
	
};
                       
// ************************************************************
// 	  				  		ArmorReady
// ************************************************************
var int Player_GotCrawlerArmor_AEXPANSION;
var int Wolf_MakeArmor_AEXPANSION;                       
// --------------------

INSTANCE DIA_Wolf_ArmorReady_AEXPANSION(C_INFO)
{
	npc			= SLD_811_Wolf;
	nr			= 4;
	condition	= DIA_Wolf_ArmorReady_AEXPANSION_Condition;
	information	= DIA_Wolf_ArmorReady_AEXPANSION_Info;
	permanent	= TRUE;
	description = "Prima, a kdy ta zbroj bude?22";
};                       
FUNC INT DIA_Wolf_ArmorReady_AEXPANSION_Condition()
{
	if (Npc_KnowsInfo (other, DIA_Wolf_AboutCrawler_AEXPANSION))
	&& (Player_GotCrawlerArmor_AEXPANSION == FALSE)
	{
		return TRUE;
	};
};
FUNC VOID DIA_Wolf_ArmorReady_AEXPANSION_Info()
{	
	AI_Output (other, self, "DIA_Wolf_ArmorReady_15_00"); 

	if (Npc_HasItems (self, ItAt_CrawlerPlate) >= 7)
	{
		if (Wolf_MakeArmor_AEXPANSION == FALSE)
		{
			Wolf_Armor_Day = (Wld_GetDay() + 1);
			Wolf_MakeArmor_AEXPANSION = TRUE;
		};
		
		if (Wolf_MakeArmor_AEXPANSION == TRUE)
		&& (Wolf_Armor_Day > Wld_GetDay())
		{
			AI_Output (self, other, "DIA_Wolf_ArmorReady_08_01"); 
		}
		else
		{
			CreateInvItems (self, ItAr_Djg_CrawlerP_AEXPANSION, 1);
			Npc_RemoveInvItems (self, ItAt_CrawlerPlate, 7);
			AI_Output (self, other, "DIA_Wolf_ArmorReady_08_02"); 
			B_GiveInvItems (self, other, ItAr_Djg_CrawlerP_AEXPANSION, 1);
			AI_Output (self, other, "DIA_Wolf_ArmorReady_08_03"); 
			AI_Output (other, self, "DIA_Wolf_ArmorReady_15_04"); 
			AI_Output (self, other, "DIA_Wolf_ArmorReady_08_05"); 
			Player_GotCrawlerArmor_AEXPANSION = TRUE;
		};
	}
	else
	{
		AI_Output (self, other, "DIA_Wolf_ArmorReady_08_06"); 
		Wolf_MakeArmor_AEXPANSION = FALSE;
		MIS_Wolf_BringCrawlerPlates = LOG_RUNNING;
	};
};

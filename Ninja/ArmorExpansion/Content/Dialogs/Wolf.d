instance Patch_AE_DIA_WOLF_SLD_SCOUTArmor(C_INFO)
{
    npc          =  SLD_811_Wolf;
    nr           =  888;
    condition    =  Patch_AE_DIA_WOLF_SLD_SCOUTArmor_Condition;
    information  =  Patch_AE_DIA_WOLF_SLD_SCOUTArmor_Info;
    permanent    =  FALSE;
    description  =  PATCH_AE_DIA_WOLF_SLD_SCOUTARMOR_desc;
};
func int Patch_AE_DIA_WOLF_SLD_SCOUTArmor_Condition()
{
    if (Npc_KnowsInfo(other, Patch_AE_DIA_LEE_SLD_SCOUTArmor))
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_WOLF_SLD_SCOUTArmor_Info()
{
    AI_Output(other, self, PATCH_AE_DIA_WOLF_SLD_SCOUTARMOR_15_01);
    AI_Output(self, other, PATCH_AE_DIA_WOLF_SLD_SCOUTARMOR_15_02);
    AI_Output(self, other, PATCH_AE_DIA_WOLF_SLD_SCOUTARMOR_13_03);
};
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
    && (Npc_KnowsInfo(other, Patch_AE_DIA_WOLF_SLD_SCOUTArmor))
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_WOLF_SLD_SCOUTArmorBought_Info()
{
    AI_Output(other, self, PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_02);
    AI_Output(self, other, PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_13_03);
    B_GiveInvItems(other, self, ItAr_SLD_L, 1);
	CreateInvItems (other, ITAR_SLD_SCOUT_ArmorExpansion, 1);
	AI_EquipArmor (other, ITAR_SLD_SCOUT_ArmorExpansion);
    AI_Output(other, self, PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_06);
    AI_Output(self, other, PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_13_07);
};

// ************************************************************
// 							Armor MP freischalten
// ************************************************************

var int Wolf_Give_Sld_MP_AEXPANSION;
// -----------------------

instance DIA_Lee_ArmorM (C_INFO)
{
	npc			= SLD_811_Wolf;
	nr			= 3;
	condition	= DIA_Wolf_ArmorM_AEXPANSION_Condition;
	information	= DIA_Wolf_ArmorM_AEXPANSION_Info;
	permanent	= TRUE;
	description = DIA_Wolf_ArmorM_AEXPANSION_desc;
};                       
FUNC INT DIA_Wolf_ArmorM_AEXPANSION_Condition()
{
	if (Kapitel == 2)
	&& (other.guild == GIL_SLD)
	&& (Wolf_Give_Sld_MP_AEXPANSION == FALSE)
	{
		return TRUE;
	};
};
FUNC VOID DIA_Wolf_ArmorM_AEXPANSION_Info()
{	
	AI_Output (other,self , DIA_Wolf_ArmorM_AEXPANSION_15_00); //Co takhle nějaké lepší brnění?
	
	if (MIS_Torlof_BengarMilizKlatschen == LOG_SUCCESS)
	&& (MIS_Torlof_HolPachtVonSekob == LOG_SUCCESS)
	{
		AI_Output (self ,other, DIA_Wolf_ArmorM_AEXPANSION_04_01); //Jasně, teď už ti ho můžu prodat.
		AI_Output (self ,other, DIA_Wolf_ArmorM_AEXPANSION_04_02); //Mám tady pro tebe střední zbroj, je to celkem slušný kousek.
		
		Wolf_Give_Sld_MP_AEXPANSION = TRUE;
	}
	else
	{
		AI_Output (self ,other, DIA_Wolf_ArmorM_AEXPANSION_04_03); //Promiň, ale Lee by mi nedovolil ti ho dát jen tak. Myslím že by si nejdřív měl pomoct Torlofovi.
		AI_Output (self ,other, DIA_Wolf_ArmorM_AEXPANSION_04_04); //Až to budeš mít za sebou, rád ti prodám nějáký lepší kousek.
	};
};

// ************************************************************
// 							Armor MP kaufen
// ************************************************************
var int Wolf_SldMPGiven_AEXPANSION;
// -------------------

instance DIA_Wolf_BuyArmorMP_AEXPANSION (C_INFO)
{
	npc			= SLD_811_Wolf;
	nr			= 3;
	condition	= DIA_Wolf_BuyArmorMP_AEXPANSION_Condition;
	information	= DIA_Wolf_BuyArmorMP_AEXPANSION_Info;
	permanent	= TRUE;
	description = DIA_Wolf_BuyArmorMP_AEXPANSION_desc;
};                       
FUNC INT DIA_Wolf_BuyArmorMP_AEXPANSION_Condition()
{
	if (Wolf_Give_Sld_MP_AEXPANSION == TRUE)
	&& (Wolf_SldMPGiven_AEXPANSION == FALSE)
	{
		return TRUE;
	};
};
FUNC VOID DIA_Wolf_BuyArmorMP_AEXPANSION_Info()
{	
	AI_Output (other,self , DIA_Wolf_BuyArmorMP_AEXPANSION_15_00); //Dej mi to brnění.
	
	if (B_GiveInvItems (other, self, itmi_gold, 1000))
	{
		AI_Output (self ,other,DIA_Wolf_BuyArmorMP_AEXPANSION_04_01); //Tady je. Poměrně dobrá zbroj.
		CreateInvItems (other, ITAR_SLD_MP_ArmorExpansion, 1);
		AI_EquipArmor (other, ITAR_SLD_MP_ArmorExpansion);
			
		Wolf_SldMPGiven_AEXPANSION = TRUE;
	}
	else
	{
		AI_Output (self ,other, DIA_Wolf_BuyArmorMP_AEXPANSION_04_02); //Promiň ale nemůžu ti ho dát zadarmo, Lee by mi utrhnul hlavu kdyby zjistil že rozdávám zbroje jen tak.
	};
};

// ************************************************************
// 							Armor BOW freischalten
// ************************************************************

instance DIA_Wolf_ArmorBow_AEXPANSION (C_INFO)
{
	npc			= SLD_811_Wolf;
	nr			= 3;
	condition	= DIA_Wolf_ArmorBow_AEXPANSION_Condition;
	information	= DIA_Wolf_ArmorBow_AEXPANSION_Info;
	permanent	= FALSE;
	description = DIA_Wolf_ArmorBow_AEXPANSION_desc;
};                       
FUNC INT DIA_Wolf_ArmorBow_AEXPANSION_Condition()
{
	if (Kapitel == 3)
	&& ( (other.guild == GIL_SLD) || (other.guild == GIL_DJG) )
	{
		return TRUE;
	};
};
FUNC VOID DIA_Wolf_ArmorBow_AEXPANSION_Info()
{	
	AI_Output (other,self , DIA_Wolf_ArmorBow_AEXPANSION_15_00); //Neměl bys pro mě nějakou lepší zbroj?
	AI_Output (self ,other, DIA_Wolf_ArmorBow_AEXPANSION_04_01); //Jasně.
};

// ************************************************************
// 							Armor BOW kaufen
// ************************************************************
var int Wolf_SldBOWGiven_AEXPANSION;
// -------------------

instance DIA_Wolf_BuyArmorBow_AEXPANSION (C_INFO)
{
	npc			= SLD_811_Wolf;
	nr			= 3;
	condition	= DIA_Wolf_BuyArmorBow_AEXPANSION_Condition;
	information	= DIA_Wolf_BuyArmorBow_AEXPANSION_Info;
	permanent	= TRUE;
	description = DIA_Wolf_BuyArmorBow_AEXPANSION_desc;
};                       
FUNC INT DIA_Wolf_BuyArmorBow_AEXPANSION_Condition()
{
	if (Npc_KnowsInfo (other, DIA_Wolf_ArmorBow_AEXPANSION))
	&& (Wolf_SldBOWGiven_AEXPANSION == FALSE)
	{
		return TRUE;
	};
};
FUNC VOID DIA_Wolf_BuyArmorBow_AEXPANSION_Info()
{	
	AI_Output (other,self , DIA_Wolf_BuyArmorBow_AEXPANSION_15_00); //Dej mi to těžké brnění.
	
	if (B_GiveInvItems (other, self, itmi_gold, 2500))
	{
		AI_Output (self ,other, DIA_Wolf_BuyArmorBow_AEXPANSION_04_01); //Tady je. Parádní zbroj, jsem na ni docela hrdý.
		
		CreateInvItems (other, ITAR_SLD_BOW_ArmorExpansion, 1);
		AI_EquipArmor (other, ITAR_SLD_BOW_ArmorExpansion);
		
		Wolf_SldBOWGiven_AEXPANSION = TRUE;
	}
	else
	{
		AI_Output (self ,other, DIA_Wolf_BuyArmorBow_AEXPANSION_04_02); //Víš, jak to chodí. Nejdřív mi musíš přiníst dost peněz.
	};
};
// ************************************************************
// 	  				   Hunter CrawlerArmor
// ************************************************************
var int Wolf_MakeArmor_AEXPANSION;
// ---------------------------------

INSTANCE DIA_Wolf_AboutCrawler_AEXPANSION(C_INFO)
{
	npc			= SLD_811_Wolf;
	nr			= 1;
	condition	= DIA_Wolf_AboutCrawler_AEXPANSION_Condition;
	information	= DIA_Wolf_AboutCrawler_AEXPANSION_Info;
	permanent	= FALSE;
	description = DIA_Wolf_AboutCrawler_Description_AEXPANSION;
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
	AI_Output (other, self, DIA_Wolf_AboutCrawler_AEXPANSION_15_00); //vlastně bych chtěl tu zbroj spíš na lovecké účely
	AI_Output (self, other, DIA_Wolf_AboutCrawler_AEXPANSION_08_01); //jasně, není problém. Jenom mi přines tedy těch krunýřú 7.
	
    MIS_Wolf_BringCrawlerPlates = LOG_SUCCESS;
    Player_GotCrawlerArmor = TRUE;
    Log_SetTopicStatus(TOPIC_Wolf_BringCrawlerPlates,LOG_SUCCESS);
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
	permanent	= FALSE;
	description = DIA_Wolf_BringPlates_Description_AEXPANSION;
};                       
FUNC INT DIA_Wolf_BringPlates_AEXPANSION_Condition()
{
	if (Npc_KnowsInfo (other, DIA_Wolf_AboutCrawler_AEXPANSION))
	&& (Npc_HasItems (other, ItAt_CrawlerPlate) >= 7)
	{
		return TRUE;
	};
};
FUNC VOID DIA_Wolf_BringPlates_AEXPANSION_Info()
{	
	AI_Output (other, self, "DIA_Wolf_BringPlates_15_00"); 
	B_GiveInvItems (other, self, ItAt_CrawlerPlate, 7);
	AI_Output (self, other, "DIA_Wolf_BringPlates_08_01");
};
                       
// ************************************************************
// 	  				  		ArmorReady
// ************************************************************
//-------------------------------------
var int Patch_AE_WOLF_WORK_DAY;
var int Patch_AE_WOLF_CRAWLERARMOR_MakeArmor;
var int Patch_AE_Player_GotCRWArmor;
//-------------------------------------

instance Patch_AE_DIA_WOLF_CRAWLERARMOR (C_INFO)
{
    npc          =  SLD_811_Wolf;
    nr           =  8;
    condition    =  Patch_AE_DIA_WOLF_CRAWLERARMOR_Condition;
    information  =  Patch_AE_DIA_WOLF_CRAWLERARMOR_Info;
    permanent    =  TRUE;
    description  =  Patch_AE_DIA_WOLF_CRAWLERARMOR_Description;
};
func int Patch_AE_DIA_WOLF_CRAWLERARMOR_Condition()
{
    if (Npc_KnowsInfo (other,DIA_Wolf_AboutCrawler_AEXPANSION))
    && (Patch_AE_Player_GotCRWArmor == FALSE)
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_WOLF_CRAWLERARMOR_Info()
{
    AI_Output(other, self, "DIA_Wolf_ArmorReady_15_00");

    if (Npc_HasItems (self, ItAt_CrawlerPlate) >= 7)
    {
        if (Patch_AE_WOLF_CRAWLERARMOR_MakeArmor == FALSE)
        {
            Patch_AE_WOLF_WORK_DAY = (Wld_GetDay() + 1);
            Patch_AE_WOLF_CRAWLERARMOR_MakeArmor = TRUE;
        };

        if (Patch_AE_WOLF_CRAWLERARMOR_MakeArmor == TRUE)
        && (Patch_AE_WOLF_WORK_DAY > Wld_GetDay())
        {
            AI_Output(self, other, "DIA_Wolf_ArmorReady_08_01");
        }
        else
        {
            CreateInvItems (self, ItAr_PAL_A_ARMOREXPANSION, 1);

            AI_Output(self, other, "DIA_Wolf_ArmorReady_08_02");
            B_GiveInvItems (self, other, ItAr_Djg_CrawlerP_AEXPANSION, 1);
            AI_Output(self, other, "DIA_Wolf_ArmorReady_08_03");
            AI_Output(other, self, "DIA_Wolf_ArmorReady_15_04");
            AI_Output(self, other, "DIA_Wolf_ArmorReady_08_05");
            Patch_AE_Player_GotCRWArmor = TRUE;
        };
    }
    else
    {
        AI_Output(self, other, "DIA_Wolf_ArmorReady_08_06");
    };
};

/*
 * The Dialogs are not very compatible with other mods, because they requires a lot of functions and items, that might
 * not exist if a mod has removed them. This will result in ugly crashes and parser errors (and crying players).
 */

// *********************************************************
// 		  				      My Changes
// *********************************************************
instance Patch_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC (C_INFO)
{
	npc			 =  VLK_457_Brian;
	nr			 =  4;
	condition	 = 	Patch_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_Condition;
	information	 = 	Patch_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_Info;
	permanent	 = 	FALSE;
	description	 = 	"Potřebuju více surové oceli.";
};
func int Patch_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_Condition ()
{
	if (Kapitel >= 1)
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_Info ()
{
    AI_Output(other, self, "PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_15_01"); //Potřebuju více surové oceli.
    AI_Output(self, other, "PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_02"); //Můžu ti prodat nějáke z mých osobních zásob, ale vyjde tě to draho.
    AI_Output(self, other, "PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_03"); //200 zlatých za jeden kus.
};

instance Patch_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL		(C_INFO)
{
	npc		 = 	VLK_457_Brian;
	nr		 = 	3;
	condition	 = 	Patch_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_Condition;
	information	 = 	Patch_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_Info;
	permanent	 = 	TRUE;
	description	 = 	"Prodej mi jeden kus surové oceli. (Cena: 200 zlatých).";
};
func int Patch_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_Condition ()
{
	if (Npc_KnowsInfo (other, Patch_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC))
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_Info ()
{
	AI_Output(other, self, "PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_1"); //Prodej mi jeden kus surové oceli.

	if (B_GiveInvItems(other, self, ItMi_Gold, 200))
	{
		AI_Output(self, other, "PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_2"); //Tady je.
		B_GiveInvItems (self, other, ItMiSwordraw, 1);
	}
	else
	{
		AI_Output(self, other, "PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_3"); //Přijď až budeš mít u sebe dost zlata
	};
};
//-------------------------------------
var int Patch_AE_Matteo_GAMBESONBought;
//-------------------------------------
instance Patch_AE_DIA_Matteo_GAMBESON(C_INFO)
{
	npc			 = 	VLK_416_Matteo;
	nr			 =  850;
	condition	 = 	Patch_AE_DIA_Matteo_GAMBESON_Condition;
	information	 = 	Patch_AE_DIA_Matteo_GAMBESON_Info;
	permanent	 = 	TRUE;
	description	 = 	"Koupit Lovecký Gambeson (350 zlatých). 20/20/20 bonus pro zbraně na dálku.";
};
func int Patch_AE_DIA_Matteo_GAMBESON_Condition()
{
	if (Npc_KnowsInfo (other, DIA_Matteo_SellWhat))
	&& (Patch_AE_Matteo_GAMBESONBought == FALSE)
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_Matteo_GAMBESON_Info()
{
	AI_Output(other, self, "PATCH_AE_DIA_MATTEO_GAMBESON_15_00"); //Dobře, dej mi tu zbroj.

	if (B_GiveInvItems(other, self, ItMi_Gold, 350))
	{
		AI_Output(self, other, "PATCH_AE_DIA_MATTEO_GAMBESON_09_01"); //Bude se ti líbit.

		Patch_AE_Matteo_GAMBESONBought = B_GiveInvItems(self, other, ItAr_GAMBESON_ARMOREXPANSION, 1);
	}
	else
	{
		AI_Output(self, other, "PATCH_AE_DIA_MATTEO_GAMBESON_09_02"); //Ta zbroj má svojí cenu - a taky za ní stojí takže se vrať až budeš mít dost zlata.
	};
};
//-------------------------------------
const string	Patch_AE_TOPIC_MORTIS_ARMOR				=   "Vylepšení zbroje domobrany.";
//-------------------------------------
instance Patch_AE_DIA_MORTIS_ARMORQUESTION (C_INFO)
{
	npc			 =  MIL_314_MORTIS;
	nr			 =  4;
	condition	 = 	Patch_AE_DIA_MORTIS_ARMORQUESTION_Condition;
	information	 = 	Patch_AE_DIA_MORTIS_ARMORQUESTION_Info;
	permanent	 = 	FALSE;
	description	 = 	"Nemáš pro mně nějakou lepší zbroj?";
};
func int Patch_AE_DIA_MORTIS_ARMORQUESTION_Condition ()
{
	if (other.guild == GIL_MIL)
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_MORTIS_ARMORQUESTION_Info ()
{
    AI_Output(other, self, "PATCH_AE_DIA_MORTIS_ARMORQUESTION_15_01"); //Nemáš pro mně nějakou lepší zbroj?
    AI_Output(self, other, "PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_02"); //Jedině Lord Andre ti může dát lepší zbroj.
    AI_Output(self, other, "PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_03"); //Ale to neznamená že ti nemůžu trochu vylepšit tu co už máš, nebyl by jsi první komu jsem to dělal.
	AI_Output(other, self, "PATCH_AE_DIA_MORTIS_ARMORQUESTION_15_04"); //Co to bude stát?
	AI_Output(self, other, "PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_05"); //Budeš si muset přinést materiál, já tu žádný na zbyt nemám.
	AI_Output(self, other, "PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_06"); //A nějáké zlato za mojí práci.
	Log_CreateTopic (Patch_AE_TOPIC_MORTIS_ARMOR,LOG_NOTE);
	B_LogEntry (Patch_AE_TOPIC_MORTIS_ARMOR,"Mortis mi může vylepšit zbroje domobrany když mu přinesu materiály a zlato.");
};

instance Patch_AE_DIA_MORTIS_MIL_LTHINGS (C_INFO)
{
	npc			 =  MIL_314_MORTIS;
	nr			 =  4;
	condition	 = 	Patch_AE_DIA_MORTIS_MIL_LTHINGS_Condition;
	information	 = 	Patch_AE_DIA_MORTIS_MIL_LTHINGS_Info;
	permanent	 = 	FALSE;
	description	 = 	"Chtěl bych vylepšit lehkou zbroj";
};
func int Patch_AE_DIA_MORTIS_MIL_LTHINGS_Condition ()
{
	if (Npc_Hasitems(other, ItAr_MIL_L) > 0)
	&& (Npc_KnowsInfo (other, Patch_AE_DIA_MORTIS_ARMORQUESTION))
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_MORTIS_MIL_LTHINGS_Info ()
{
    AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_01"); //Chtěl bych vylepšit lehkou zbroj.
	AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_04"); //Co na to budeš potřebovat?.
	AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_06"); //Na lehkou zbroj bude stačit jeden ocelový prut a kančí kůže.
	AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_07"); //A řekněme že 200 zlatých mi bude za tu práci stačit.
	AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_08"); //A samozrejmě mi budeš muset taky přinést tu zbroj.
	AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_09"); //Dobrá, pokusím se to sehnat.
		B_LogEntry (Patch_AE_TOPIC_MORTIS_ARMOR,"Na vylepšení lehké zbroje bude Mortis potřebovat jeden ocelový prut, kančí kůži a 200 zlatých.");
};

instance Patch_AE_DIA_MORTIS_MIL_LReforgedArmor (C_INFO)
{
	npc			 =  MIL_314_MORTIS;
	nr			 =  4;
	condition	 = 	Patch_AE_DIA_MORTIS_MIL_LReforgedArmor_Condition;
	information	 = 	Patch_AE_DIA_MORTIS_MIL_LReforgedArmor_Info;
	permanent	 = 	TRUE;
	description	 = 	"Mám všechny potřebné materiály na vylepšení lehké zbroje.";
};
func int Patch_AE_DIA_MORTIS_MIL_LReforgedArmor_Condition ()
{
	if (Npc_HasItems(other,ItAr_MIL_L) >= 0) && (Npc_HasItems(other,ItMiSwordraw) >= 1) && (Npc_HasItems(other,ItAt_Addon_KeilerFur) >= 1) && (Npc_HasItems(other,ItMi_Gold) >= 200)
	&& (Npc_KnowsInfo (other, Patch_AE_DIA_MORTIS_MIL_LTHINGS))
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_MORTIS_MIL_LReforgedArmor_Info ()
{
    AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_15_01"); //Mám všechny potřebné materiály na vylepšení lehké zbroje.

	if (Npc_HasItems(other,ItAr_MIL_L) >= 0) && (Npc_HasItems(other,ItMiSwordraw) >= 1) && (Npc_HasItems(other,ItAt_Addon_KeilerFur) >= 1) && (Npc_HasItems(other,ItMi_Gold) >= 200)
	{
        B_GivePlayerXP(20);
        B_GiveInvItems(other, self, ItAr_MIL_L, 1);
        B_GiveInvItems(other, self, ItMiSwordraw, 1);
        B_GiveInvItems(other, self, ItAt_Addon_KeilerFur, 1);
        B_GiveInvItems(other, self, ItMi_Gold, 200);
        AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_12"); //Dobře, dám se tedy do práce.

        B_LookAtNpc(other, self);
        AI_UseMob(self, "BSFIRE", 1);
        AI_UseMob(self, "BSFIRE", -1);
        B_TurnToNpc(other, self);

        AI_UseMob(self, "BSANVIL", 1);
        AI_UseMob(self, "BSANVIL", -1);
        B_TurnToNpc(other, self);

        AI_UseMob(self, "BSCOOL", 1);
        AI_UseMob(self, "BSCOOL", -1);
        B_TurnToNpc(other, self);
        B_TurnToNpc(self, other);

        AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_13"); //Hotovo.
        B_GiveInvItems(self, other, ITAR_MIL_R_ArmorExpansion, 1);
        AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_14"); //Tady ji máš, docela se mi povedla řekl bych.
        AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_15_15"); //Díky.
		B_LogEntry (Patch_AE_TOPIC_MORTIS_ARMOR,"Mortis mi vylepšil lehkou zbroj.");
	}
	else
	{
	    AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_16"); //Vrať se až to všechno budeš mít u sebe.
	};
};

instance Patch_AE_DIA_MORTIS_MILITIA_MediumHUH (C_INFO)
{
	npc			 =  MIL_314_MORTIS;
	nr			 =  8;
	condition	 = 	Patch_AE_DIA_MORTIS_MILITIA_MediumHUH_Condition;
	information	 = 	Patch_AE_DIA_MORTIS_MILITIA_MediumHUH_Info;
	permanent	 = 	FALSE;
	description	 = 	"Chtěl bych vylepšit střední zbroj";
};
func int Patch_AE_DIA_MORTIS_MILITIA_MediumHUH_Condition ()
{
	if (Npc_Hasitems(other, ItAr_MIL_M) > 0)
	&& (Npc_KnowsInfo (other, Patch_AE_DIA_MORTIS_ARMORQUESTION))
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_MORTIS_MILITIA_MediumHUH_Info ()
{
    AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_01"); //Chtěl bych vylepšit střední zbroj.
	AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_03"); //Co na to budeš potřebovat?.
	AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_04"); //Na střední zbroj si budeš muset přinést o něco víc.
	AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_05"); //dva ocelové pruty a kůži z Warga.
	AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_06"); //Budu za tu práci chtít 600 zlatých.
	AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_08"); //Dobrá, pokusím se to sehnat.
		B_LogEntry (Patch_AE_TOPIC_MORTIS_ARMOR,"Na vylepšení střední zbroje bude Mortis potřebovat dva ocelové pruty, kůži z Warga a 600 zlatých.");
};

//-------------------------------------
var int Patch_AE_MORTIS_MILITIA_MediumArmorBought;
//-------------------------------------
instance Patch_AE_DIA_MORTIS_MILITIA_MediumArmor (C_INFO)
{
	npc			 =  MIL_314_MORTIS;
	nr			 =  8;
	condition	 = 	Patch_AE_DIA_MORTIS_MILITIA_MediumArmor_Condition;
	information	 = 	Patch_AE_DIA_MORTIS_MILITIA_MediumArmor_Info;
	permanent	 = 	TRUE;
	description	 = 	"Mám všechny potřebné materiály na vylepšení střední zbroje.";
};
func int Patch_AE_DIA_MORTIS_MILITIA_MediumArmor_Condition ()
{
	if (Patch_AE_MORTIS_MILITIA_MediumArmorBought == FALSE)
	&& (Npc_HasItems(other, ItAr_MIL_M) > 0)
    && (Npc_HasItems(other, ItMiSwordraw) >= 2)
    && (Npc_HasItems(other, ItAt_wargfur) >= 1)
    && (Npc_HasItems(other, ItMi_Gold) >= 600)
	&& (Npc_KnowsInfo (other, Patch_AE_DIA_MORTIS_MILITIA_MediumHUH))
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_MORTIS_MILITIA_MediumArmor_Info ()
{
    AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_15_01"); //Mám všechny potřebné materiály na vylepšení střední zbroje.

	if (Npc_HasItems(other, ItAr_MIL_M) > 0)
    && (Npc_HasItems(other, ItMiSwordraw) >= 2)
    && (Npc_HasItems(other, ItAt_wargfur) >= 1)
    && (Npc_HasItems(other, ItMi_Gold) >= 600)
	{
        B_GivePlayerXP(25);
        B_GiveInvItems(other, self, ItAr_MIL_M, 1);
        B_GiveInvItems(other, self, ItMiSwordraw, 2);
		B_GiveInvItems(other, self, ItAt_wargfur, 1);
        B_GiveInvItems(other, self, ItMi_Gold, 600);
        AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_15_10"); //Tady to je.
        AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_11"); //Dobře, dám se tedy do práce.

        B_LookAtNpc(other, self);
        AI_UseMob(self, "BSFIRE", 1);
        AI_UseMob(self, "BSFIRE", -1);
        B_TurnToNpc(other, self);

        AI_UseMob(self, "BSANVIL", 1);
        AI_UseMob(self, "BSANVIL", -1);
        B_TurnToNpc(other, self);

        AI_UseMob(self, "BSCOOL", 1);
        AI_UseMob(self, "BSCOOL", -1);
        B_TurnToNpc(other, self);
        B_TurnToNpc(self, other);

        AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_12"); //Hotovo.
        Patch_AE_MORTIS_MILITIA_MediumArmorBought = B_GiveInvItems(self, other, ITAR_MIL_Med2_ARMOREXPANSION, 1);
        AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_13"); //Tady ji máš, docela se mi povedla řekl bych.
        AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_15_14"); //Díky.
				B_LogEntry (Patch_AE_TOPIC_MORTIS_ARMOR,"Mortis mi vylepšil střední zbroj.");
	}
	else
	{
	    AI_Output(self, other, "PATCH_AE_DIA_PATCH_ARMOREXPANSION_MORTIS_MEDIUMARMOR_13_16"); //Vrať se až to všechno budeš mít u sebe.
	};
};

//-------------------------------------
var int Patch_AE_ANDRE_MIL_SCOUTArmorBought;
//-------------------------------------
instance Patch_AE_DIA_ANDRE_MIL_SCOUTArmor (C_INFO)
{
	npc			 =  MIL_311_ANDRE;
	nr			 =  888;
	condition	 = 	Patch_AE_DIA_ANDRE_MIL_SCOUTArmor_Condition;
	information	 = 	Patch_AE_DIA_ANDRE_MIL_SCOUTArmor_Info;
	permanent	 = 	TRUE;
	description	 = 	"Nenašla by se tu pro mně lehčí zbroj? (Vyměnit stávající)";
};
func int Patch_AE_DIA_ANDRE_MIL_SCOUTArmor_Condition ()
{
	if (Patch_AE_ANDRE_MIL_SCOUTArmorBought == FALSE)
	&& (Npc_Hasitems(other, ItAr_MIL_L) > 0)
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_ANDRE_MIL_SCOUTArmor_Info ()
{
    AI_Output(other, self, "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_01"); //Nenašla by se pro mně lehhčí zbroj?.
	AI_Output(other, self, "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_02"); //Radši používám zbraně na dálku.
    AI_Output(self, other, "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_13_03"); //Můžu ti vyměnit tvojí zbroj za zbroj zvěda. Je lehčí než standartní výbava takže budeš obratnější, ale i zranitelnější
	AI_Output(other, self, "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_04"); //Beru ji.
    B_GiveInvItems(other, self, ItAr_MIL_L, 1);
	Patch_AE_ANDRE_MIL_SCOUTArmorBought = B_GiveInvItems(self, other, ITAR_MIL_SCOUT_ARMOREXPANSION, 1);
    AI_Output(other, self, "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_9");//Tady máš, ať ti slouží dobře.
};

instance Patch_AE_DIA_ANDRE_MILITIA_ARMORREWARD (C_INFO)
{
	npc			 =  MIL_311_ANDRE;
	nr			 =  888;
	condition	 = 	Patch_AE_DIA_ANDRE_MILITIA_ARMORREWARD_Condition;
	information	 = 	Patch_AE_DIA_ANDRE_MILITIA_ARMORREWARD_Info;
	permanent	 = 	FALSE;
	important    =	TRUE;
	description	 = 	"";
};
func int Patch_AE_DIA_ANDRE_MILITIA_ARMORREWARD_Condition ()
{
	if	(MIS_ANDRE_WAREHOUSE == LOG_SUCCESS)
	&&	(MIS_Andre_REDLIGHT == LOG_SUCCESS)
	&&	(MIS_AndreHelpLobart == LOG_SUCCESS)
	&& (Npc_KnowsInfo (other, DIA_Andre_LOBART_SUCCESS))
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_ANDRE_MILITIA_ARMORREWARD_Info ()
{
		AI_Output(self, other, "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_03"); //Vykonal si všechny moje zadání.
		AI_Output(self, other, "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_04"); //Tím si mi dokázal že si zasloužíš povýšení.
		B_GiveInvItems(self, other, ITAR_MIL_M, 1);
		AI_Output(self, other, "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_05"); //Tady máš, střední zbroj domobrany.
		AI_Output(self, other, "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_06"); //Ať ti slouží vojáku.
		AI_Output(other, self, "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_15_01"); //Díky.
};

instance Patch_AE_DIA_LEE_SLD_SCOUTArmor (C_INFO)
{
	npc			 =  SLD_800_Lee;
	nr			 =  888;
	condition	 = 	Patch_AE_DIA_LEE_SLD_SCOUTArmor_Condition;
	information	 = 	Patch_AE_DIA_LEE_SLD_SCOUTArmor_Info;
	permanent	 = 	TRUE;
	description	 = 	"Nenašla by se tu pro mně lehčí zbroj?";
};
func int Patch_AE_DIA_LEE_SLD_SCOUTArmor_Condition ()
{
	if (Npc_Hasitems(other, ItAr_SLD_L) > 0)
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_LEE_SLD_SCOUTArmor_Info ()
{
    AI_Output(other, self, "PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_15_01"); //Nenašla by se pro mně lehhčí zbroj?.
	AI_Output(other, self, "PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_15_02"); //Radši používám zbraně na dálku.
    AI_Output(self, other, "PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_13_03"); //Já nic takového pro tebe nemám, ale nejsi první kdo něco takového chce
	AI_Output(self, other, "PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_13_04"); //Jdi za Wolfem, myslím si že on by měl pro tebe něco mít
};

instance Patch_AE_DIA_WOLF_SLD_SCOUTArmorBought (C_INFO)
{
	npc			 =  SLD_811_Wolf;
	nr			 =  888;
	condition	 = 	Patch_AE_DIA_WOLF_SLD_SCOUTArmorBought_Condition;
	information	 = 	Patch_AE_DIA_WOLF_SLD_SCOUTArmorBought_Info;
	permanent	 = 	TRUE;
	description	 = 	"Slyšel jsem že děláš zbroje pro zvědy.";
};
func int Patch_AE_DIA_WOLF_SLD_SCOUTArmorBought_Condition ()
{
	if (Npc_Hasitems(other, ItAr_SLD_L) > 0)
	&& (Npc_KnowsInfo (other, Patch_AE_DIA_LEE_SLD_SCOUTArmor))
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_WOLF_SLD_SCOUTArmorBought_Info ()
{
    AI_Output(other, self, "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_01"); //Slyšel jsem že děláš zbroje pro zvědy.
	AI_Output(other, self, "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_02"); //chtěl bych si vyměnit tu co mám teď
    AI_Output(self, other, "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_13_03"); //Jistě, zrovna jsem jednu dokončil. Můžeš ji mít zadarmo, kvůli starým časům.
	B_GiveInvItems(self, other, ItAr_SLD_SCOUT_ARMOREXPANSION, 1);
	AI_Output(other, self, "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_06"); //Díky.
	AI_Output(self, other, "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_13_07"); //Nemáš za co
};

//-------------------------------------
const string	Patch_AE_TOPIC_BENNET_ARMOR				=   "Vylepšení zbroje žoldáka.";
//-------------------------------------
instance Patch_AE_DIA_BENNET_SLDARMORASK (C_INFO)
{
	npc			 =  SLD_809_Bennet;
	nr			 =  887;
	condition	 = 	Patch_AE_DIA_BENNET_SLDARMORASK_Condition;
	information	 = 	Patch_AE_DIA_BENNET_SLDARMORASK_Info;
	permanent	 = 	FALSE;
	description	 = 	"Můžeš mi prodat nějakou lepší zbroj?";
};
func int Patch_AE_DIA_BENNET_SLDARMORASK_Condition ()
{
	if (other.guild == GIL_SLD)
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_BENNET_SLDARMORASK_Info ()
{
    AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLDARMORASK_15_01"); //Můžeš mi prodat nějakou lepší zbroj?.
    AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLDARMORASK_13_02"); //Ne, zbroje může rozdávat jenom Lee.
	AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLDARMORASK_13_03"); //Můžu ti ale vylepšit tu co jsi už dostal, ale budu za to něco chtít.
	AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLDARMORASK_15_04"); //A to?
	AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLDARMORASK_13_05"); //Material na výrobu, ten si přineseš sám, nebudu ti to dělat ze svých zásob.
	AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLDARMORASK_13_07"); //A nepracuju zadarmo, takže si taky připrav nějáké zlato.
		Log_CreateTopic (Patch_AE_TOPIC_BENNET_ARMOR,LOG_NOTE);
	B_LogEntry (Patch_AE_TOPIC_BENNET_ARMOR,"Bennet mi může vylepšit zbroje žoldáka když mu přinesu materiály a zlato.");
};

//-------------------------------------
var int Patch_AE_BENNET_SLD_LReforgedArmorBought;
//-------------------------------------
instance Patch_AE_DIA_BENNET_SLD_LReforgedHUH (C_INFO)
{
	npc			 =  SLD_809_Bennet;
	nr			 =  887;
	condition	 = 	Patch_AE_DIA_BENNET_SLD_LReforgedHUH_Condition;
	information	 = 	Patch_AE_DIA_BENNET_SLD_LReforgedHUH_Info;
	permanent	 = 	FALSE;
	description	 = 	"Chci si nechat vylepšit lehkou zbroj.";
};
func int Patch_AE_DIA_BENNET_SLD_LReforgedHUH_Condition ()
{
	if (Patch_AE_BENNET_SLD_LReforgedArmorBought == FALSE)
	&& (Npc_Hasitems(other, ItAr_SLD_L) > 0)
	&& (Npc_KnowsInfo (other, Patch_AE_DIA_BENNET_SLDARMORASK))
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_BENNET_SLD_LReforgedHUH_Info ()
{
    AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_01"); //Chci si nechat vylepšit lehkou zbroj.
	AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_04"); //Co na to potřebuješ?
	AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_13_06"); //Na lehkou zbroj ti postačí dva ocelové pruty a dvě vlčí kůže.
	AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_13_07"); //Budu chtít 200 zlatých za výrobu.
	AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_09"); //Dobrá.
		B_LogEntry (Patch_AE_TOPIC_BENNET_ARMOR,"Na vylepšení lehké zbroje bude Bennet potřebovat dva ocelové pruty, dvě kůže z vlka a 200 zlatých.");
};

instance Patch_AE_DIA_BENNET_SLD_LReforgedArmor (C_INFO)
{
	npc			 =  SLD_809_Bennet;
	nr			 =  887;
	condition	 = 	Patch_AE_DIA_BENNET_SLD_LReforgedArmor_Condition;
	information	 = 	Patch_AE_DIA_BENNET_SLD_LReforgedArmor_Info;
	permanent	 = 	TRUE;
	description	 = 	"Mám všechny potřebné materiály na vylepšení lehké zbroje.";
};
func int Patch_AE_DIA_BENNET_SLD_LReforgedArmor_Condition ()
{
	if (Patch_AE_BENNET_SLD_LReforgedArmorBought == FALSE)
	&& (Npc_Hasitems(other, ItAr_SLD_L) > 0)
	&& (Npc_HasItems(other, ItMiSwordraw) >= 2)
    && (Npc_HasItems(other, ItAt_Wolffur) >= 2)
    && (Npc_HasItems(other, ItMi_Gold) >= 200)
	&& (Npc_KnowsInfo (other, Patch_AE_DIA_BENNET_SLD_LReforgedHUH))
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_BENNET_SLD_LReforgedArmor_Info ()
{
    AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_01"); //Mám všechny potřebné materiály na vylepšení lehké zbroje.

	if (Npc_HasItems(other, ItAr_SLD_L) > 0)
    && (Npc_HasItems(other, ItMiSwordraw) >= 2)
    && (Npc_HasItems(other, ItAt_Wolffur) >= 2)
    && (Npc_HasItems(other, ItMi_Gold) >= 200)
	{
        B_GivePlayerXP(20);
        B_GiveInvItems(other, self, ItAr_SLD_L, 1);
        B_GiveInvItems(other, self, ItMiSwordraw, 2);
        B_GiveInvItems(other, self, ItAt_WolfFur, 2);
        B_GiveInvItems(other, self, ItMi_Gold, 200);
        AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_11"); //Tady to je.
        AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_12"); //Dobře, tak se na to podívejme.

        B_LookAtNpc(other, self);
        AI_UseMob(self, "BSFIRE", 1);
        AI_UseMob(self, "BSFIRE", -1);
        B_TurnToNpc(other, self);

        AI_UseMob(self, "BSANVIL", 1);
        AI_UseMob(self, "BSANVIL", -1);
        B_TurnToNpc(other, self);

        AI_UseMob(self, "BSCOOL", 1);
        AI_UseMob(self, "BSCOOL", -1);
        B_TurnToNpc(other, self);
        B_TurnToNpc(self, other);

        AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_13"); //Hotovo.
        Patch_AE_BENNET_SLD_LReforgedArmorBought = B_GiveInvItems(self, other, ITAR_SLD_LR_ARMOREXPANSION, 1);
        AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_14"); //Tady je, docela se mi povedla.
        AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_15"); //Díky.
				B_LogEntry (Patch_AE_TOPIC_MORTIS_ARMOR,"Bennet mi vylepšil lehkou zbroj.");
	}
	else
	{
	    AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_16"); //Vrať se až to všechno budeš mít.
	};
};

// Original dialog
instance DIA_Engor_RSkaufen		(C_INFO)
{
	npc		 	 = 	VLK_4108_Engor;
	nr		 	 = 	2;
	condition	 = 	DIA_Engor_RSkaufen_Condition;
	information	 = 	DIA_Engor_RSkaufen_Info;
	permanent 	 =  TRUE;
	description	 = 	"Koupit těžkou zbroj domobrany (Obrany: Sečné 70, Bodné 70. Cena: 2500 zlatých)";
};
//--------------------------------------
var int DIA_Engor_RSkaufen_perm;
//--------------------------------------
func int DIA_Engor_RSkaufen_Condition ()
{
	if (other.guild == GIL_MIL)
	&& Npc_KnowsInfo (other, DIA_Engor_Ruestung)
	&& (DIA_Engor_RSkaufen_perm == FALSE)
	{
		return TRUE;
	};
};
func void DIA_Engor_RSkaufen_Info ()
{
	if (B_GiveInvItems (other, self, Itmi_Gold,2500))
	{
		AI_Output(other, self, "DIA_ENGOR_RSKAUFEN_15_00"); //Dej mi tu zbroj.
		AI_Output(self, other, "DIA_ENGOR_RSKAUFEN_13_01"); //Tady ji máš, dobře tě ochrání, je to zatraceně dobrý kousek.
		B_GiveInvItems (self,other, ITAR_MIL_H_ARMOREXPANSION,1);
		DIA_Engor_RSkaufen_perm = TRUE;
	}
	else
	{
		AI_Output(self, other, "DIA_ENGOR_RSKAUFEN_13_02"); //Nejdřív mi přines to zlato.
	};
};

instance Patch_AE_DIA_Engor_ARCHER_KAUFEN		(C_INFO)
{
	npc		 	 = 	VLK_4108_Engor;
	nr		 	 = 	35;
	condition	 = 	Patch_AE_DIA_Engor_ARCHER_KAUFEN_Condition;
	information	 = 	Patch_AE_DIA_Engor_ARCHER_KAUFEN_Info;
	permanent 	 =  TRUE;
	description	 = 	"Koupit zbroj domobránce Kušišníka (65/65, bonus na dálku, Cena: 2300 zlatých)";
};
func int Patch_AE_DIA_Engor_ARCHER_KAUFEN_Condition ()
{
	if (other.guild == GIL_MIL)
	&& Npc_KnowsInfo (other, DIA_Engor_Ruestung)
	&& (DIA_Engor_RSkaufen_perm == FALSE)
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_Engor_ARCHER_KAUFEN_Info ()
{
	if (B_GiveInvItems (other, self, Itmi_Gold,2300))
	{
		AI_Output(other, self, "PATCH_AE_DIA_ENGOR_ARCHER_KAUFEN_15_00"); //Dej mi tu zbroj.
		AI_Output(self, other, "PATCH_AE_DIA_ENGOR_ARCHER_KAUFEN_13_01"); //Tady ji máš, dobře tě ochrání, je to zatraceně dobrý kousek.
		B_GiveInvItems (self,other, ITAR_MIL_P_ARMOREXPANSION,1);
		DIA_Engor_RSkaufen_perm = TRUE;
	}
	else
	{
		AI_Output(self, other, "PATCH_AE_DIA_ENGOR_ARCHER_KAUFEN_13_02"); //Nejdřív mi přines to zlato.
	};
};

//-------------------------------------
var int Patch_AE_BENNET_MERC_MReforgedArmorBought;
//-------------------------------------
instance Patch_AE_DIA_BENNET_MERC_MReforgedHUH (C_INFO)
{
	npc			 =  SLD_809_Bennet;
	nr			 =  888;
	condition	 = 	Patch_AE_DIA_BENNET_MERC_MReforgedHUH_Condition;
	information	 = 	Patch_AE_DIA_BENNET_MERC_MReforgedHUH_Info;
	permanent	 = 	FALSE;
	description	 = 	"Chci si nechat vylepšit střední zbroj.";
};
func int Patch_AE_DIA_BENNET_MERC_MReforgedHUH_Condition ()
{
	if (Patch_AE_BENNET_MERC_MReforgedArmorBought == FALSE)
	&& (Npc_Hasitems(other, ItAr_SLD_M) > 0)
	&& (Npc_KnowsInfo (other, Patch_AE_DIA_BENNET_SLDARMORASK))
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_BENNET_MERC_MReforgedHUH_Info ()
{
    AI_Output(other, self, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_01"); //Chci si nechat vylepšit střední zbroj.
	AI_Output(other, self, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_03"); //Co na to potřebuješ?
	AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_04"); //Na střední zbroj toho bude potřeba víc.
	AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_05"); //Tři ocelový pruty, a jednu kůži z Warga.
	AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_06"); //Za výrobu budu chtít, řekněme 650 zlatých.
	AI_Output(other, self, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_08"); //Dobrá.
			B_LogEntry (Patch_AE_TOPIC_BENNET_ARMOR,"Na vylepšení střední zbroje bude Bennet potřebovat tři ocelové pruty, jednu kůži ze skřetího psa, dvě kůže z trolla a 650 zlatých.");
};

instance Patch_AE_DIA_BENNET_MERC_MReforgedArmor (C_INFO)
{
	npc			 =  SLD_809_Bennet;
	nr			 =  888;
	condition	 = 	Patch_AE_DIA_BENNET_MERC_MReforgedArmor_Condition;
	information	 = 	Patch_AE_DIA_BENNET_MERC_MReforgedArmor_Info;
	permanent	 = 	TRUE;
	description	 = 	"Mám všechny potřebné materiály na vylepšení střední zbroje.";
};
func int Patch_AE_DIA_BENNET_MERC_MReforgedArmor_Condition ()
{
	if (Patch_AE_BENNET_MERC_MReforgedArmorBought == FALSE)
	&& (Npc_Hasitems(other, ItAr_SLD_M) > 0)
	&& (Npc_HasItems(other, ItMiSwordraw) >= 2)
	&& (Npc_HasItems(other, ItAt_Wargfur) >= 1)
    && (Npc_HasItems(other, ItMi_Gold) >= 650)
	&& (Npc_KnowsInfo (other, Patch_AE_DIA_BENNET_MERC_MReforgedHUH))
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_BENNET_MERC_MReforgedArmor_Info ()
{
    AI_Output(other, self, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_01"); //Mám všechny potřebné materiály na vylepšení střední zbroje.

	if (Npc_HasItems(other, ItAr_SLD_M) > 0)
    && (Npc_HasItems(other, ItMiSwordraw) >= 2)
	 && (Npc_HasItems(other, ItAt_Wargfur) >= 1)
    && (Npc_HasItems(other, ItMi_Gold) >= 650)
	{
        B_GivePlayerXP(25);
        B_GiveInvItems(other, self, ItAr_SLD_M, 1);
        B_GiveInvItems(other, self, ItMiSwordraw, 2);
		B_GiveInvItems(other, self, ItAt_WargFur, 1);
        B_GiveInvItems(other, self, ItMi_Gold, 650);
        AI_Output(other, self, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_10"); //Tady to je.
        AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_11"); //Dobře, tak se na to podívejme.

        B_LookAtNpc(other, self);
        AI_UseMob(self, "BSFIRE", 1);
        AI_UseMob(self, "BSFIRE", -1);
        B_TurnToNpc(other, self);

        AI_UseMob(self, "BSANVIL", 1);
        AI_UseMob(self, "BSANVIL", -1);
        B_TurnToNpc(other, self);

        AI_UseMob(self, "BSCOOL", 1);
        AI_UseMob(self, "BSCOOL", -1);
        B_TurnToNpc(other, self);
        B_TurnToNpc(self, other);

        AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_12"); //Hotovo.
        Patch_AE_BENNET_MERC_MReforgedArmorBought = B_GiveInvItems(self, other, ITAR_SLD_R_ARMOREXPANSION, 1);
        AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_13"); //Tady je, docela se mi povedla.
        AI_Output(other, self, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_14"); //Díky.
		B_LogEntry (Patch_AE_TOPIC_MORTIS_ARMOR,"Bennet mi vylepšil střední zbroj.");
	}
	else
	{
	    AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_16"); //Vrať se až to všechno budeš mít u sebe.
	};
};

instance Patch_AE_DIA_ARMOREXPANSION_Ulthar		(C_INFO)
{
	npc		 = 	KDF_502_Ulthar;
	nr		 = 	30;
	condition	 = 	Patch_AE_DIA_ARMOREXPANSION_Ulthar_Condition;
	information	 = 	Patch_AE_DIA_ARMOREXPANSION_Ulthar_Info;
	important	 =	TRUE;

	description  = 	"Vyčistil jsem všechny svatině.";
};

func int Patch_AE_DIA_ARMOREXPANSION_Ulthar_Condition ()
{
	if (MIS_Ulthar_HeileSchreine_PAL == LOG_SUCCESS)
		{
				return TRUE;
		};
};

func void Patch_AE_DIA_ARMOREXPANSION_Ulthar_Info ()
{
	AI_Output(self, other, "PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_01"); //Počkej, chtěli jsme tě ještě podpořit v tvém boji proti zlu novou zbrojí.
	AI_Output(self, other, "PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_02"); //Vezmi si tuhle zbroj křižáka Innose, jsem si jistý že ji využiješ.
	AI_Output(other, self, "PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_03"); //Děkuji.
	B_GiveInvItems (self, other, ItAr_Crusader_ARMOREXPANSION, 1);
};

INSTANCE Patch_AE_DIA_Lord_Hagen_CROSSBOW		(C_INFO)
{
	npc			 = 	PAL_200_Hagen;
	nr			 = 	990;
	condition	 = 	Patch_AE_DIA_Lord_Hagen_CROSSBOW_Condition;
	information	 = 	Patch_AE_DIA_Lord_Hagen_CROSSBOW_Info;
	permanent	 = 	TRUE;
	description	 = 	"Nenašla by se pro mně lehčí zbroj? (Vyměnit stávající)";
};
func int Patch_AE_DIA_Lord_Hagen_CROSSBOW_Condition ()
{
	if (Npc_Hasitems(other, ItAr_PAL_M) > 0)
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_Lord_Hagen_CROSSBOW_Info ()
{
    AI_Output(other, self, "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_01"); //Nenašla by se pro mně lehčí zbroj?.
	AI_Output(other, self, "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_02"); //Radši používám zbraně na dálku.
    AI_Output(self, other, "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_13_03"); //Můžu ti vyměnit tvojí rytířskou zbroj za odlehčenou variantu, určenou pro kušišníky.
	AI_Output(other, self, "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW15_04"); //Beru jí.
        B_GiveInvItems(other, self, ItAr_PAL_M, 1);
		B_GiveInvItems(self, other, ITAR_PAL_C_ARMOREXPANSION, 1);
        AI_Output(self, other, "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_9");//Nos ji se ctí, rytíři.
};

//-------------------------------------
const string	Patch_AE_TOPIC_MARTIN_ARMOR				=   "Vyjímečná Paladinská zbroj";
//-------------------------------------
instance Patch_AE_DIA_Martin_ARCPALA_NOTIF		(C_INFO)
{
	npc		 = 	Mil_350_Addon_Martin;
	nr		 = 	3;
	condition	 = 	Patch_AE_DIA_Martin_ARCPALA_NOTIF_Condition;
	information	 = 	Patch_AE_DIA_Martin_ARCPALA_NOTIF_Info;
	permanent	 = 	FALSE;
	important	 = 	TRUE;
};
func int Patch_AE_DIA_Martin_ARCPALA_NOTIF_Condition ()
{
	if (other.guild == GIL_PAL)
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_Martin_ARCPALA_NOTIF_Info ()
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
instance Patch_AE_DIA_Martin_ARKPALA		(C_INFO)
{
	npc		 = 	Mil_350_Addon_Martin;
	nr		 = 	3;
	condition	 = 	Patch_AE_DIA_Martin_ARKPALA_Condition;
	information	 = 	Patch_AE_DIA_Martin_ARKPALA_Info;
	permanent	 = 	TRUE;
	description	 = 	"Dobře, beru tu zbroj (Obrany: Sečné 80, Bodné 80. Cena: 2000 zlatých).";
};
func int Patch_AE_DIA_Martin_ARKPALA_Condition ()
{
	if (Patch_AE_Martin_ARKPALA_BOUGHT == FALSE)
	&& (Npc_KnowsInfo (other, Patch_AE_DIA_Martin_ARCPALA_NOTIF))
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_Martin_ARKPALA_Info ()
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

instance Patch_AE_DIA_MORTIS_PAL_REFORGE		(C_INFO)
{
	npc		 = 	MIL_314_MORTIS;
	nr		 = 	3;
	condition	 = 	Patch_AE_DIA_MORTIS_PAL_REFORGE_Condition;
	information	 = 	Patch_AE_DIA_MORTIS_PAL_REFORGE_Info;
	permanent	 = 	FALSE;
	description	 = 	"Nemohl by si mi opravit tuhle rezavou paladinskou zbroj?";
};
func int Patch_AE_DIA_MORTIS_PAL_REFORGE_Condition ()
{
	if (Npc_Hasitems(other, ItAr_PAL_R_ARMOREXPANSION) > 0)
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_MORTIS_PAL_REFORGE_Info ()
{
	B_GivePlayerXP(10);
	AI_Output(other, self, "PATCH_AE_DIA_MORTIS_PAL_REFORGE_4_1"); //Nemohl by si mi opravit tuhle rezavou paladinskou zbroj?
    AI_Output(self, other, "PATCH_AE_DIA_MORTIS_PAL_REFORGE_3_01"); //Nemohl, nemám na to čas ani zkušenosti.
    AI_Output(self, other, "PATCH_AE_DIA_MORTIS_PAL_REFORGE_3_02"); //Budeš si muset najít jiného kováře.
		B_LogEntry (Patch_AE_TOPIC_MARTIN_ARMOR,"Mortis mi zbroj neopraví.");
};

instance Patch_AE_DIA_BENNET_PAL_REFORGE		(C_INFO)
{
	npc		 = 	SLD_809_Bennet;
	nr		 = 	3;
	condition	 = 	Patch_AE_DIA_BENNET_PAL_REFORGE_Condition;
	information	 = 	Patch_AE_DIA_BENNET_PAL_REFORGE_Info;
	permanent	 = 	FALSE;
	description	 = 	"Nemohl by si mi opravit tuhle rezavou paladinskou zbroj?";
};
func int Patch_AE_DIA_BENNET_PAL_REFORGE_Condition ()
{
	if (Npc_Hasitems(other, ItAr_PAL_R_ARMOREXPANSION) > 0)
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_BENNET_PAL_REFORGE_Info ()
{
	B_GivePlayerXP(10);
	AI_Output(other, self, "PATCH_AE_DIA_BENNET_PAL_REFORGE_4_1"); //Nemohl by si mi opravit tuhle rezavou paladinskou zbroj?
    AI_Output(self, other, "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_01"); //Promiň, ale nemohl.
    AI_Output(self, other, "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_03"); //Nic proti tobě nemám, vždyť si mně dostal z vězení.
	AI_Output(self, other, "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_04"); //Ale co by si pomyslely ostatní na farmě kdybych tu začal opravovat zbroje paladinů?
	AI_Output(self, other, "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_05"); //Budeš si muset najít jiného kováře.
	B_LogEntry (Patch_AE_TOPIC_MARTIN_ARMOR,"Bennet mi zbroj neopraví.");
};

instance Patch_AE_DIA_CARL_PAL_REFORGE		(C_INFO)
{
	npc		 = 	VLK_461_Carl;
	nr		 = 	3;
	condition	 = 	Patch_AE_DIA_CARL_PAL_REFORGE_Condition;
	information	 = 	Patch_AE_DIA_CARL_PAL_REFORGE_Info;
	permanent	 = 	FALSE;
	description	 = 	"Nemohl by si mi opravit tuhle rezavou paladinskou zbroj?";
};
func int Patch_AE_DIA_CARL_PAL_REFORGE_Condition ()
{
	if (Npc_Hasitems(other, ItAr_PAL_R_ARMOREXPANSION) > 0)
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_CARL_PAL_REFORGE_Info ()
{
	B_GivePlayerXP(10);
	AI_Output(other, self, "PATCH_AE_DIA_CARL_PAL_REFORGE_4_1"); //Nemohl by si mi opravit tuhle rezavou paladinskou zbroj?
    AI_Output(self, other, "PATCH_AE_DIA_CARL_PAL_REFORGE_3_01"); //Paladinskou zbroj?.
    AI_Output(self, other, "PATCH_AE_DIA_CARL_PAL_REFORGE_3_02"); //Promiň chlapče, ale to je nad moje síly.
	AI_Output(self, other, "PATCH_AE_DIA_CARL_PAL_REFORGE_3_03"); //Budeš si muset najít jiného kováře.
	B_LogEntry (Patch_AE_TOPIC_MARTIN_ARMOR,"Carl mi zbroj neopraví.");
};

instance Patch_AE_DIA_JAN_PAL_REFORGE		(C_INFO)
{
	npc		 = 	DJG_714_Jan;
	nr		 = 	3;
	condition	 = 	Patch_AE_DIA_JAN_PAL_REFORGE_Condition;
	information	 = 	Patch_AE_DIA_JAN_PAL_REFORGE_Info;
	permanent	 = 	FALSE;
	description	 = 	"Nemohl by si mi opravit tuhle rezavou paladinskou zbroj?";
};
func int Patch_AE_DIA_JAN_PAL_REFORGE_Condition ()
{
	if (Npc_Hasitems(other, ItAr_PAL_R_ARMOREXPANSION) > 0)
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_JAN_PAL_REFORGE_Info ()
{
	B_GivePlayerXP(50);
	AI_Output(other, self, "PATCH_AE_DIA_JAN_PAL_REFORGE_4_1"); //Nemohl by si mi opravit tuhle rezavou paladinskou zbroj?
    AI_Output(self, other, "PATCH_AE_DIA_JAN_PAL_REFORGE_3_01"); //Jsem na tenkém ledě jenom abych tu mohl pracovat.
    AI_Output(self, other, "PATCH_AE_DIA_JAN_PAL_REFORGE_3_02"); //Nehodlám riskovat že mně nějáký z tvých kolegů udá za to že se hrabu v paladinských věcech.
	AI_Output(self, other, "PATCH_AE_DIA_JAN_PAL_REFORGE_3_03"); //Budeš si muset najít jiného kováře.
		B_LogEntry (Patch_AE_TOPIC_MARTIN_ARMOR,"Drakobijec Jan mi zbroj neopraví.");
};

instance Patch_AE_DIA_HUNO_PAL_REFORGE		(C_INFO)
{
	npc		 = 	BDT_1099_Addon_Huno;
	nr		 = 	3;
	condition	 = 	Patch_AE_DIA_HUNO_PAL_REFORGE_Condition;
	information	 = 	Patch_AE_DIA_HUNO_PAL_REFORGE_Info;
	permanent	 = 	FALSE;
	description	 = 	"Nemohl by si mi opravit tuhle rezavou paladinskou zbroj?";
};
func int Patch_AE_DIA_HUNO_PAL_REFORGE_Condition ()
{
	if (Npc_Hasitems(other, ItAr_PAL_R_ARMOREXPANSION) > 0)
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_HUNO_PAL_REFORGE_Info ()
{
	B_GivePlayerXP(25);
	AI_Output(other, self, "PATCH_AE_DIA_HUNO_PAL_REFORGE_4_1"); //Nemohl by si mi opravit tuhle rezavou paladinskou zbroj?
    AI_Output(self, other, "PATCH_AE_DIA_HUNO_PAL_REFORGE_3_01"); //S paladinskými zbrojemi nemám vůbec žádné zkušenosti, nic takového v kolonii nebylo.
    AI_Output(self, other, "PATCH_AE_DIA_HUNO_PAL_REFORGE_3_02"); //Promiň, ale s tímhle ti nepomůžu.
	AI_Output(self, other, "PATCH_AE_DIA_HUNO_PAL_REFORGE_3_03"); //Budeš si muset najít jiného kováře.
	B_LogEntry (Patch_AE_TOPIC_MARTIN_ARMOR,"Huno mi zbroj neopraví.");
};

instance Patch_AE_DIA_HARAD_PAL_SHOW		(C_INFO)
{
	npc		 = 	VLK_412_Harad;
	nr		 = 	3;
	condition	 = 	Patch_AE_DIA_HARAD_PAL_SHOW_Condition;
	information	 = 	Patch_AE_DIA_HARAD_PAL_SHOW_Info;
	permanent	 = 	FALSE;
	description	 = 	"Nemohl by si mi opravit tuhle rezavou paladinskou zbroj?";
};
func int Patch_AE_DIA_HARAD_PAL_SHOW_Condition ()
{
	if (Npc_Hasitems(other, ItAr_PAL_R_ARMOREXPANSION) > 0)
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_HARAD_PAL_SHOW_Info ()
{
	B_GivePlayerXP(10);
	AI_Output(other, self, "PATCH_AE_DIA_HARAD_PAL_SHOW_4_1"); //Nemohl by si mi opravit tuhle rezavou paladinskou zbroj?
    AI_Output(self, other, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_01"); //Ukaž mi ji.
        B_GiveInvItems(other, self, ItAr_PAL_R_ARMOREXPANSION, 1);
	AI_Output(self, other, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_02"); //Už je to dlouho co jsem takovou zbroj viděl.
	AI_Output(self, other, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_03"); //Jsou kované z jiné slitiny kovu a magické rudy než ostatní a pak jsou požehnány mágy z kláštera v Nordmaru
	AI_Output(self, other, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_04"); //Rez nepronikla moc hluboko, nebude moc těžké ji opravit.
	AI_Output(self, other, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_05"); //Samozřejmě pokud budu mít potřebné materiály.
		B_GiveInvItems(self, other, ITAR_PAL_R_ARMOREXPANSION, 1);
    AI_Output(self, other, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_06"); //Kde si ji sehnal?
	AI_Output(other, self, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_07"); //Prodal mi ji Martin, válela se mezi paladinským vybavením tak jsem ji chtěl použít.
	B_LogEntry (Patch_AE_TOPIC_MARTIN_ARMOR,"Harad souhlasil že mi zbroj opraví.");
};

//-------------------------------------
var int Patch_AE_HARAD_PALADIN_REFORGEBought;
//-------------------------------------
instance Patch_AE_DIA_HARAD_PALADIN_REFORGE (C_INFO)
{
	npc			 =  VLK_412_Harad;
	nr			 =  8;
	condition	 = 	Patch_AE_DIA_HARAD_PALADIN_REFORGE_Condition;
	information	 = 	Patch_AE_DIA_HARAD_PALADIN_REFORGE_Info;
	permanent	 = 	TRUE;
	description	 = 	"Takže, co budeš na opravu zbroje potřebovat?";
};
func int Patch_AE_DIA_HARAD_PALADIN_REFORGE_Condition ()
{
	if (Patch_AE_HARAD_PALADIN_REFORGEBought == FALSE)
	&& (Npc_KnowsInfo (other, Patch_AE_DIA_HARAD_PAL_SHOW))
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_HARAD_PALADIN_REFORGE_Info ()
{
    AI_Output(other, self, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_01"); //Takže, co budeš na opravu zbroje potřebovat?
    AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_02"); //Hmm, nech mně se zamyslet
	AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_04"); //Několik ocelových prutů, 6 by mělo stačit.
	AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_05"); //3 Hrudky magické oceli.
	AI_Output(other, self, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_06"); //Co budeš za svou práci chtít?
	AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_07"); //Nic. Bude mi potěšením pracovat na takovém kousku.
	AI_Output(other, self, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_08"); //Dobrá, pokusím se to všechno sehnat.
	B_LogEntry (Patch_AE_TOPIC_MARTIN_ARMOR,"Na opravu zbroje bude Harad potřebovat 6 ocelových prutů a tři hrudky rudy.");

	if (Npc_HasItems(other, ItAr_PAL_R_ARMOREXPANSION) > 0)
    && (Npc_HasItems(other, ItMiSwordraw) >= 6)
    && (Npc_HasItems(other, ItMi_Nugget) >= 3)
	{
        B_GivePlayerXP(100);
        B_GiveInvItems(other, self, ItAr_PAL_R_ARMOREXPANSION, 1);
        AI_Output(other, self, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_9");//Tady je ta zbroj.
        B_GiveInvItems(other, self, ItMiSwordraw, 6);
        B_GiveInvItems(other, self, ItMi_Nugget, 2);
        AI_Output(other, self, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_10"); //A tady potřebné materiály.
        AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_11"); //Dobrá, dám se do práce.

        B_LookAtNpc(other, self);
        AI_UseMob(self, "BSFIRE", 1);
        AI_UseMob(self, "BSFIRE", -1);
        B_TurnToNpc(other, self);

        AI_UseMob(self, "BSANVIL", 1);
        AI_UseMob(self, "BSANVIL", -1);
        B_TurnToNpc(other, self);

        AI_UseMob(self, "BSCOOL", 1);
        AI_UseMob(self, "BSCOOL", -1);
        B_TurnToNpc(other, self);

		B_LookAtNpc(other, self);
        AI_UseMob(self, "BSFIRE", 1);
        AI_UseMob(self, "BSFIRE", -1);
        B_TurnToNpc(other, self);

        AI_UseMob(self, "BSANVIL", 1);
        AI_UseMob(self, "BSANVIL", -1);
        B_TurnToNpc(other, self);

        AI_UseMob(self, "BSCOOL", 1);
        AI_UseMob(self, "BSCOOL", -1);
        B_TurnToNpc(other, self);
        B_TurnToNpc(self, other);

        AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_12"); //Hotovo.
        Patch_AE_HARAD_PALADIN_REFORGEBought = B_GiveInvItems(self, other, ITAR_PAL_F_ARMOREXPANSION, 1);
        AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_13"); //Tady je, Povedlo se mi ji opravit.
		AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_14"); //Ale nedokázal jsem ji navrátit její magickou moc.
		AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_15"); //Na to budeš potřebovat zkušeného mága ohně, který je ochotný pro tebe zbroj posvětit.
        AI_Output(other, self, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_14"); //Díky.
		B_LogEntry (Patch_AE_TOPIC_MARTIN_ARMOR,"Harad mi opravil paladinskou zbroj, ale nepodařilo se mu navrátit její magickou moc. Budu pro to muset najít ochotného mága ohně, jeden takový mně napadá.");
	}
	else
	{
	    AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_16"); //Přijď až to všechno seženeš.
	};
};

instance Patch_AE_DIA_MILTEN_PALADINARMOR (C_INFO)
{
	npc			 =  PC_Mage_NW;
	nr			 =  8;
	condition	 = 	Patch_AE_DIA_MILTEN_PALADINARMOR_Condition;
	information	 = 	Patch_AE_DIA_MILTEN_PALADINARMOR_Info;
	permanent	 = 	FALSE;
	description	 = 	"Potřebuji tvojí pomoc.";
};
func int Patch_AE_DIA_MILTEN_PALADINARMOR_Condition ()
{
	if (Npc_HasItems(other, ItAr_PAL_F_ARMOREXPANSION) > 0)
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_MILTEN_PALADINARMOR_Info ()
{
    AI_Output(other, self, "PATCH_AE_DIA_MILTEN_PALADINARMOR_15_01"); //Potřebuji tvojí pomoc.
    AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_02"); //O co jde?
	AI_Output(other, self, "PATCH_AE_DIA_MILTEN_PALADINARMOR_04"); //Potřeboval bych navrátit magickou moc této zbroji, nedokázal by si to pro mně udělat?
	AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_05"); //Ukaž mi ji
	B_GiveInvItems(other, self, ITAR_PAL_F_ARMOREXPANSION, 1);
	AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_06"); //Páni, tohle jsem nečekal.
	AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_07"); //Takové zbroje nosí paladiny z Myrtany požehnat do klášteru v Nordmaru.
		B_GiveInvItems(self, other, ITAR_PAL_F_ARMOREXPANSION, 1);
	AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_08"); //O rituálu požehnání jsem něco málo už slyšel, ale nemám ještě dostatek znalostí abych ho provedl.
	AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_09"); //Jestli se ale nepletu tak je zde v knihovně klášteru kniha která popisuje tento postup.
	AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_10"); //Budu potřebovat nějáký čas si tu knihu nastudovat. Mezitím by si se ale měl postarat o draky v hornickém údolí, víš jak na tom je Garondova jednotka.
	AI_Output(other, self, "PATCH_AE_DIA_MILTEN_PALADINARMOR_15_11"); //Jasně, uvidíme se později Miltene.
	AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_12"); //Hodně štěstí!
	B_LogEntry (Patch_AE_TOPIC_MARTIN_ARMOR,"Milten souhlasil že mi pomůže navrátit zbroji její magickou sílu, ale nejdříve si bude muset nastudovat postup rituálu. Nějáký čas mu to zabere takže mi řekl že se mám mezitím postarat o draky v hornickém údolí.");
};

instance Patch_AE_DIA_MILTEN_PLATEARMOR (C_INFO)
{
	npc			 =  PC_Mage_NW;
	nr			 =  8;
	condition	 = 	Patch_AE_DIA_MILTEN_PLATEARMOR_Condition;
	information	 = 	Patch_AE_DIA_MILTEN_PLATEARMOR_Info;
	permanent	 = 	FALSE;
	description	 = 	"Udělal si pokrok ve svých studiích?";
};
func int Patch_AE_DIA_MILTEN_PLATEARMOR_Condition ()
{
	if (Npc_KnowsInfo (other, Patch_AE_DIA_MILTEN_PALADINARMOR))
	&& (Npc_KnowsInfo (other, DIA_MiltenNW_AllDragonsDead))
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_MILTEN_PLATEARMOR_Info ()
{
    AI_Output(other, self, "PATCH_AE_DIA_MILTEN_PLATEARMOR_15_01"); //Udělal si pokrok ve svých studiích?
    AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_02"); //Ano, dokážu říct že postupu rituálu rozumím.
	AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_03"); //Ale budu potřebovat pár věcí
	AI_Output(other, self, "PATCH_AE_DIA_MILTEN_PLATEARMOR_15_04"); //Jaké?
	AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_05"); //Svitek zničení zla, ohnivé koule a 2 kamenné krystaly.
	AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_06"); //Jedině tak dokážu dosáhnout podobných výsledků jako při provedení rituálu v klášteru v Nordmaru
	AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_07"); //Dobrá, jdu sehnat ti věci.
	AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_08"); //Hodně štěstí, doufám že se ti to povede.
	B_LogEntry (Patch_AE_TOPIC_MARTIN_ARMOR,"Milten Bude na rituál potřebovat svitek zničení zla, svitek ohnivé koule a 2 kamenné krystaly.");
};

instance Patch_AE_DIA_MILTEN_RITUALARMOR (C_INFO)
{
	npc			 =  PC_Mage_NW;
	nr			 =  8;
	condition	 = 	Patch_AE_DIA_MILTEN_RITUALARMOR_Condition;
	information	 = 	Patch_AE_DIA_MILTEN_RITUALARMOR_Info;
	permanent	 = 	TRUE;
	description	 = 	"Mám vše co budeš potřebovat.";
};
func int Patch_AE_DIA_MILTEN_RITUALARMOR_Condition ()
{
	if (Npc_KnowsInfo (other,Patch_AE_DIA_MILTEN_PLATEARMOR))
    && (Npc_HasItems(other, ItSc_InstantFireball) >= 1)
    && (Npc_HasItems(other, ItSc_PalDestroyEvil) >= 1)
    && (Npc_HasItems(other, ItMi_Rockcrystal) >= 2)
	&& (Npc_HasItems(other, ITAR_PAL_F_ARMOREXPANSION) >= 1)
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_MILTEN_RITUALARMOR_Info ()
{
    AI_Output(other, self, "PATCH_AE_DIA_MILTEN_RITUALARMOR_15_01"); //Mám vše co budeš potřebovat.
		B_GiveInvItems(other, self, ITAR_PAL_F_ARMOREXPANSION, 1);
		B_GiveInvItems(other, self, ItSc_InstantFireball, 1);
		B_GiveInvItems(other, self, ItSc_PalDestroyEvil, 1);
		B_GiveInvItems(other, self, ItMi_Rockcrystal, 2);
    AI_Output(self, other, "PATCH_AE_DIA_MILTEN_RITUALARMOR_13_02"); //Skvěle. Můžu začít s rituálem.
	B_LogEntry (Patch_AE_TOPIC_MARTIN_ARMOR,"Donesl jsem Miltenovi všechno potřebné pro rituál.");
};
//-------------------------------------
var int Patch_AE_MILTEN_BIGMAGIC_DAY;
var int Patch_AE_MILTEN_LORDRMOR_MakeArmor;
var int Patch_AE_Player_GotARCArmor;
//-------------------------------------
instance Patch_AE_DIA_MILTEN_LORDRMOR (C_INFO)
{
	npc			 =  PC_Mage_NW;
	nr			 =  8;
	condition	 = 	Patch_AE_DIA_MILTEN_LORDRMOR_Condition;
	information	 = 	Patch_AE_DIA_MILTEN_LORDRMOR_Info;
	permanent	 = 	TRUE;
	description	 = 	"Super, a kdy bude rituál hotový?";
};
func int Patch_AE_DIA_MILTEN_LORDRMOR_Condition ()
{
	if (Npc_KnowsInfo (other,Patch_AE_DIA_MILTEN_RITUALARMOR))
	&& (Patch_AE_Player_GotARCArmor == FALSE)
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_MILTEN_LORDRMOR_Info()
{
	AI_Output(other, self, "PATCH_AE_DIA_MILTEN_LORDRMOR_15_00"); //Super, a kdy bude rituál hotový?

	if (Npc_HasItems(self, ItSc_InstantFireball) >= 1)
    && (Npc_HasItems(self, ItSc_PalDestroyEvil) >= 1)
    && (Npc_HasItems(self, ItMi_Rockcrystal) >= 2)
	&& (Npc_HasItems(self, ITAR_PAL_F_ARMOREXPANSION) >= 1)
	{
		if (Patch_AE_MILTEN_LORDRMOR_MakeArmor == FALSE)
		{
			Patch_AE_MILTEN_BIGMAGIC_DAY = (Wld_GetDay() + 1);
			Patch_AE_MILTEN_LORDRMOR_MakeArmor = TRUE;
		};

		if (Patch_AE_MILTEN_LORDRMOR_MakeArmor == TRUE)
		&& (Patch_AE_MILTEN_BIGMAGIC_DAY > Wld_GetDay())
		{
			AI_Output(self, other, "PATCH_AE_DIA_MILTEN_LORDRMOR_08_01"); //Chvilku to potrvá, vrať se zítra.
		}
		else
		{
			CreateInvItems (self, ItAr_PAL_A_ARMOREXPANSION, 1);

			AI_Output(self, other, "PATCH_AE_DIA_MILTEN_LORDRMOR_08_02"); //Už jsem ho provedl, povedlo se.
			B_GiveInvItems (self, other, ItAr_PAL_A_ARMOREXPANSION, 1);
			AI_Output(self, other, "PATCH_AE_DIA_MILTEN_LORDRMOR_08_03"); //Vše proběhlo překvapivě hladce.
			AI_Output(other, self, "PATCH_AE_DIA_MILTEN_LORDRMOR_15_04"); //To jsem rád, díky.
			AI_Output(self, other, "PATCH_AE_DIA_MILTEN_LORDRMOR_08_05"); //Nemáš za co, ať ti slouží.
			Patch_AE_Player_GotARCArmor = TRUE;
			Log_SetTopicStatus(Patch_AE_TOPIC_MARTIN_ARMOR, LOG_SUCCESS);
			B_LogEntry (Patch_AE_TOPIC_MARTIN_ARMOR,"Miltenovi se povedlo navrátit zbroji její magickou moc.");
		};
	}
	else
	{
		AI_Output(self, other, "PATCH_AE_DIA_WOLFEE_ARMORREADY_08_06"); //NN
	};
};

INSTANCE Patch_AE_DIA_Bennet_CROSSBOW		(C_INFO)
{
	npc			 = 	SLD_809_Bennet;
	nr			 = 	990;
	condition	 = 	Patch_AE_DIA_Bennet_CROSSBOW_Condition;
	information	 = 	Patch_AE_DIA_Bennet_CROSSBOW_Info;
	permanent	 = 	TRUE;
	description	 = 	"Neměl by se pro mně lehčí zbroj? (Vyměnit zbroj Drakobijce)";
};
func int Patch_AE_DIA_Bennet_CROSSBOW_Condition ()
{
	if (Npc_Hasitems(other, ItAr_DJG_L) > 0)
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_Bennet_CROSSBOW_Info ()
{
    AI_Output(other, self, "PATCH_AE_DIA_BENNET_CROSSBOW_15_01"); //Neměl by se pro mně lehčí zbroj?.
	AI_Output(other, self, "PATCH_AE_DIA_BENNET_CROSSBOW_15_02"); //Neber si to špatně, jsem za ní vděčný ale preferuji lehčí.
    AI_Output(self, other, "PATCH_AE_DIA_BENNET_CROSSBOW_13_03"); //Vlastně ano, jednu takovou jsem taky vytvořil, jestli chceš tak ti je můžu vyměnit.
	AI_Output(other, self, "PATCH_AE_DIA_BENNET_CROSSBOW_15_04"); //Díky, Beru jí.
        B_GiveInvItems(other, self, ItAr_DJG_L, 1);
		B_GiveInvItems(self, other, ITAR_DJG_CL_ARMOREXPANSION, 1);
        AI_Output(self, other, "PATCH_AE_DIA_BENNET_CROSSBOW_15_9");//Tady je, ať ti slouží.
};

instance Patch_AE_DIA_HARAD_END_MAKE	(C_INFO)
{
	npc		 = 	VLK_412_Harad;
	nr		 = 	8;
	condition	 = 	Patch_AE_DIA_HARAD_END_MAKE_Condition;
	information	 = 	Patch_AE_DIA_HARAD_END_MAKE_Info;
	permanent	 = 	FALSE;
	description	 = 	"Nemohl by si mi překovat moji zbroj paladina?";
};
func int Patch_AE_DIA_HARAD_END_MAKE_Condition ()
{
	if (Npc_Hasitems(other, ItAr_PAL_H) > 0)
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_HARAD_END_MAKE_Info ()
{
	AI_Output(other, self, "PATCH_AE_DIA_HARAD_END_MAKE_1"); //Nemohl by si mi překovat moji zbroj paladina?
    AI_Output(self, other, "PATCH_AE_DIA_HARAD_END_MAKE_2"); //Určitě, ale nevím co by se ti na ní nelíbilo.
	AI_Output(other, self, "PATCH_AE_DIA_HARAD_END_MAKE_3"); //Používám zbraně na dálku, tak bych ji chtěl odlehčit.
    AI_Output(self, other, "PATCH_AE_DIA_HARAD_END_MAKE_4"); //To by nemělo být těžké, určitě bych to zvládl.
	AI_Output(other, self, "PATCH_AE_DIA_HARAD_END_MAKE_5"); //Co za to budeš chtít?
    AI_Output(self, other, "PATCH_AE_DIA_HARAD_END_MAKE_6"); //Nic, službu pro paladina vykonám zadarmo.
	AI_Output(other, self, "PATCH_AE_DIA_HARAD_END_MAKE_7"); //Tady ji máš v tom případě.
        B_GiveInvItems(other, self, ItAr_PAL_H, 1);

        B_LookAtNpc(other, self);
        AI_UseMob(self, "BSFIRE", 1);
        AI_UseMob(self, "BSFIRE", -1);
        B_TurnToNpc(other, self);

        AI_UseMob(self, "BSANVIL", 1);
        AI_UseMob(self, "BSANVIL", -1);
        B_TurnToNpc(other, self);

        AI_UseMob(self, "BSCOOL", 1);
        AI_UseMob(self, "BSCOOL", -1);
        B_TurnToNpc(other, self);
        B_TurnToNpc(self, other);

	AI_Output(self, other, "PATCH_AE_DIA_HARAD_END_MAKE_8"); //Hotovo, nebylo to nic těžkého. Tady je.
		B_GiveInvItems(self, other, ITAR_PAL_CH_ARMOREXPANSION, 1);
	AI_Output(other, self, "PATCH_AE_DIA_HARAD_END_MAKE_9"); //Díky!
};

//-----------------------------
var int Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CM_permanent;
//-----------------------------
instance Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CM		(C_INFO)
{
	npc		 	 = 	SLD_809_Bennet;
	nr           = 	8;
	condition	 = 	Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CM_Condition;
	information	 = 	Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CM_Info;
	permanent	 = 	TRUE;
	description	 =	"Střední zbroj lovce draků: Ochrana:  Sečné 110, Bodné 110. (12000 Zlatých)"; //Wenn ändern, dann bitte auch in der Info-Instanz. s.u.
};

func int Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CM_Condition ()
{
	IF (Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CM_permanent == FALSE)
	&& (hero.guild == GIL_DJG)
	&& (Show_DJG_Armor_M == TRUE)
	{
		return TRUE;
	};
};

func void Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CM_Info ()
{
	AI_Output(other, self, "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_15_00"); //Koupím tu zbroj.

	if (Npc_HasItems (other,itmi_Gold) >= 12000)
	{
		AI_Output(self, other, "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_01"); //Skvěle. Bude se ti líbit.
		AI_Output(other, self, "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_15_02"); //Za takovou cenu v to doufám.
		AI_Output(self, other, "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_03"); //Přesvedčíš se, že to za tu cenu stálo.

		B_GiveInvItems (other,self,ItMi_Gold,12000);
		CreateInvItems (self,ITAR_DJG_CM_ARMOREXPANSION,1);
		B_GiveInvItems (self,other,ITAR_DJG_CM_ARMOREXPANSION,1);

		Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CM_permanent = TRUE;
	}
	else
	{
		AI_Output(self, other, "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_04"); //Nemáš dost zlatých.
	};

};

//---------------------------------------------------
var int Bennet_DIA_Bennet_PATCH_DJG_ARMOR_CH_permanent;
//---------------------------------------------------

instance DIA_Bennet_PATCH_DJG_ARMOR_CH		(C_INFO)
{
	npc		 	 = 	SLD_809_Bennet;
	nr           = 	8;
	condition	 = 	DIA_Bennet_PATCH_DJG_ARMOR_CH_Condition;
	information	 = 	DIA_Bennet_PATCH_DJG_ARMOR_CH_Info;
	permanent	 = 	TRUE;
	description	 =	"Těžká zbroj lovce draků: Obrana: Sečné 140, Bodné 140. (20000 zlatých)"; //Wenn ändern, dann bitte auch in der Info-Instanz. s.u.
};

func int DIA_Bennet_PATCH_DJG_ARMOR_CH_Condition ()
{
	IF (Bennet_DIA_Bennet_PATCH_DJG_ARMOR_CH_permanent == FALSE)
	&& (hero.guild == GIL_DJG)
	&& (Npc_KnowsInfo (other,DIA_Bennet_BetterArmor))
	{
		return TRUE;
	};
};

func void DIA_Bennet_PATCH_DJG_ARMOR_CH_Info ()
{
	AI_Output(other, self, "PATCH_AE_DIA_BENNET_DJG_ARMOR_H_15_00"); //Dej mi tu zbroj

	if (Npc_HasItems (other,itmi_Gold) >= 20000)
	{
		AI_Output(self, other, "PATCH_AE_DIA_BENNET_DJG_ARMOR_H_06_01"); //Tohle je nejlepší zbroj kterou jsem kdy vyrobil.
		AI_Output(self, other, "PATCH_AE_DIA_BENNET_DJG_ARMOR_H_06_02"); //Je to opravdový mistrovský kousek.

		B_GiveInvItems (other,self,ItMi_Gold,20000);
		CreateInvItems (self,ITAR_DJG_CH_ARMOREXPANSION,1);
		B_GiveInvItems (self,other,ITAR_DJG_CH_ARMOREXPANSION,1);

		Bennet_DIA_Bennet_PATCH_DJG_ARMOR_CH_permanent = TRUE;
	}
	else
	{
		AI_Output(self, other, "PATCH_AE_DIA_BENNET_DJG_ARMOR_H_06_03"); //Nemáš dost zlata.
	};

};

instance Patch_AE_DIA_GAROND_KNIGHT_ARMORREWARD (C_INFO)
{
	npc			 =  PAL_250_Garond;
	nr			 =  888;
	condition	 = 	Patch_AE_DIA_GAROND_KNIGHT_ARMORREWARD_Condition;
	information	 = 	Patch_AE_DIA_GAROND_KNIGHT_ARMORREWARD_Info;
	permanent	 = 	FALSE;
	important    =	TRUE;
	description	 = 	"";
};
func int Patch_AE_DIA_GAROND_KNIGHT_ARMORREWARD_Condition ()
{
	if (MIS_KilledDragons >= 2)
	&& (other.guild == GIL_PAL)
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_GAROND_KNIGHT_ARMORREWARD_Info ()
{
		AI_Output(self, other, "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_03"); //Zadrž.
		AI_Output(self, other, "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_04"); //Jsi jediný z nás komu se zatím podařilo nějákého draka zabít.
		AI_Output(self, other, "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_05"); //Mám naději že se ti povede je dostat všechny.
		B_GiveInvItems(self, other, ITAR_PAL_MH_ARMOREXPANSION, 1);
		AI_Output(self, other, "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_06"); //Tady máš, tohle by ti mělo pomoci ve tvém úkolu. A teď už běž, není moc času nazbyt.
		AI_Output(other, self, "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_15_01"); //Díky.
};

///////////////////////////////////////////////////////////////////////
//	Info RavenDead
///////////////////////////////////////////////////////////////////////
instance Patch_AE_DIA_Addon_Greg_RavenDead_ARMOREXPANSION		(C_INFO)
{
	npc		 = 	PIR_1320_Addon_Greg;
	nr		 = 	2;
	condition	 = 	Patch_AE_DIA_Addon_Greg_RavenDead_ARMOREXPANSION_Condition;
	information	 = 	Patch_AE_DIA_Addon_Greg_RavenDead_ARMOREXPANSION_Info;
	description	 = 	"Co takhle nějáká lepší zbroj?";
};
func int Patch_AE_DIA_Addon_Greg_RavenDead_ARMOREXPANSION_Condition ()
{
	if ((Npc_KnowsInfo (other,DIA_Addon_Greg_RavenDead) == TRUE))
	{
		return TRUE;
	};
};
func void Patch_AE_DIA_Addon_Greg_RavenDead_ARMOREXPANSION_Info ()
{
	AI_Output(other, self, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_15_00"); //Co takhle nějáká lepší zbroj?
	AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_01"); //Sakra, co si myslíš?
	AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_02"); //Odkrouhneš Ravena a najednou je z tebe nový kapitán?
	AI_Output(other, self, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_15_03"); //Takhle jsem to nemyslel. Kapitánem zůstaneš ty, jenom mi jde o tu zbroj.
	AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_04"); //Dobrá, můžu ti prodat jeden z mých osobních kousků.
	AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_05"); //Ale přijde tě to draho, chci za ní 2700 zlatých
	B_LogEntry (Topic_Addon_PIR_Trader, "Od Grega si můžu koupit zbroj kapitána za 2700 zlatých");
};

///////////////////////////////////////////////////////////////////////
//	Info RavenDead
///////////////////////////////////////////////////////////////////////
Var int Patch_AE_ARMOREXPANSION_BOUGHT_CAPTAIN;
instance Patch_AE_DIA_Addon_Greg_BUY_ARMOREXPANSION		(C_INFO)
{
	npc		 = 	PIR_1320_Addon_Greg;
	nr		 = 	2;
	condition	 = 	Patch_AE_DIA_Addon_Greg_BUY_ARMOREXPANSION_Condition;
	information	 = 	Patch_AE_DIA_Addon_Greg_BUY_ARMOREXPANSION_Info;

	description	 = 	"Koupit kapitánský plášť (75/75/75/25/15, +5% jednoruční talent, +10 Obratnost, Cena 2700)";
};

func int Patch_AE_DIA_Addon_Greg_BUY_ARMOREXPANSION_Condition ()
{
	if ((Npc_KnowsInfo (other,Patch_AE_DIA_Addon_Greg_RavenDead_ARMOREXPANSION) == TRUE))
	&& (Patch_AE_ARMOREXPANSION_BOUGHT_CAPTAIN == FALSE)
	{
		return TRUE;
	};
};

func void Patch_AE_DIA_Addon_Greg_BUY_ARMOREXPANSION_Info ()
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

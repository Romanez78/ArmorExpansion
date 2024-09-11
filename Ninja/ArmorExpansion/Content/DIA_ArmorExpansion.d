// *********************************************************
// 		  				      My Changes				
// *********************************************************
instance Ninja_ArmorExpansion_DIA_BRIAN_BUYRAWSTEEL_PATCHOC (C_INFO)
{
	npc			 =  VLK_457_Brian;
	nr			 =  4;
	condition	 = 	Ninja_ArmorExpansion_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_Info;
	permanent	 = 	FALSE;
	description	 = 	"Pot¯ebuju vÌce surovÈ oceli.";
};
func int Ninja_ArmorExpansion_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_Condition ()
{	
	if (Kapitel >= 1)
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_Info ()
{
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_15_01"); //Pot¯ebuju vÌce surovÈ oceli.
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_02"); //M˘ûu ti prodat nÏj·ke z m˝ch osobnÌch z·sob, ale vyjde tÏ to draho.
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_03"); //200 zlat˝ch za jeden kus.
};
instance Ninja_ArmorExpansion_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL		(C_INFO)
{
	npc		 = 	VLK_457_Brian;
	nr		 = 	3;
	condition	 = 	Ninja_ArmorExpansion_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_Info;
	permanent	 = 	TRUE;
	description	 = 	"Prodej mi jeden kus surovÈ oceli. (Cena: 200 zlat˝ch).";
};
func int Ninja_ArmorExpansion_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_Condition ()
{	
	if (Npc_KnowsInfo (other, Ninja_ArmorExpansion_DIA_BRIAN_BUYRAWSTEEL_PATCHOC))
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_Info ()
{
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_1"); //Prodej mi jeden kus surovÈ oceli.
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 200))
	{	
		AI_Output(self, other, "Ninja_ArmorExpansion_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_2"); //Tady je.
		B_GiveInvItems (self, other, ItMiSwordraw, 1);	
	}
	else 
	{
		AI_Output(self, other, "Ninja_ArmorExpansion_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_3"); //P¯ijÔ aû budeö mÌt u sebe dost zlata
	};
};
//-------------------------------------
var int Ninja_ArmorExpansion_Matteo_GAMBESONBought;
//-------------------------------------
instance Ninja_ArmorExpansion_DIA_Matteo_GAMBESON(C_INFO)
{
	npc			 = 	VLK_416_Matteo;
	nr			 =  850;
	condition	 = 	Ninja_ArmorExpansion_DIA_Matteo_GAMBESON_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_Matteo_GAMBESON_Info;
	permanent	 = 	TRUE;
	description	 = 	"Koupit Loveck˝ Gambeson (350 zlat˝ch). 20/20/20 bonus pro zbranÏ na d·lku.";
};
func int Ninja_ArmorExpansion_DIA_Matteo_GAMBESON_Condition()
{	
	if (Npc_KnowsInfo (other,Ninja_ArmorExpansion_DIA_Matteo_SellWhat))
	&& (Ninja_ArmorExpansion_Matteo_GAMBESONBought == FALSE)
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_Matteo_GAMBESON_Info()
{
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_Matteo_LEATHER_15_00"); //Dob¯e, dej mi tu zbroj.
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 350))
	{	
		AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Matteo_LEATHER_09_01"); //Bude se ti lÌbit.

		Ninja_ArmorExpansion_Matteo_GAMBESONBought = B_GiveInvItems(self, other, Ninja_ArmorExpansion_ITAR_GAMBESON, 1);
	}
	else 
	{
		AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Matteo_LEATHER_09_02"); //Ta zbroj m· svojÌ cenu - a taky za nÌ stojÌ takûe se vraù aû budeö mÌt dost zlata.
	};
};
//-------------------------------------
const string	NINJA_ARMOREXPANSION_TOPIC_MORTIS_ARMOR				=   "VylepöenÌ zbroje domobrany.";
var int Ninja_ArmorExpansion_MORTIS_ARMORQUESTION;
//-------------------------------------
instance Ninja_ArmorExpansion_DIA_MORTIS_ARMORQUESTION (C_INFO)
{
	npc			 =  MIL_314_MORTIS;
	nr			 =  4;
	condition	 = 	Ninja_ArmorExpansion_DIA_MORTIS_ARMORQUESTION_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_MORTIS_ARMORQUESTION_Info;
	permanent	 = 	FALSE;
	description	 = 	"Nem·ö pro mnÏ nÏjakou lepöÌ zbroj?";
};
func int Ninja_ArmorExpansion_DIA_MORTIS_ARMORQUESTION_Condition ()
{	
	if (other.guild == GIL_MIL)
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_MORTIS_ARMORQUESTION_Info ()
{
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MORTIS_ARMORQUESTION_15_01"); //Nem·ö pro mnÏ nÏjakou lepöÌ zbroj?
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_ARMORQUESTION_13_02"); //JedinÏ Lord Andre ti m˘ûe d·t lepöÌ zbroj.
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_ARMORQUESTION_13_03"); //Ale to neznamen· ûe ti nem˘ûu trochu vylepöit tu co uû m·ö, nebyl by jsi prvnÌ komu jsem to dÏlal.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MORTIS_ARMORQUESTION_15_04"); //Co to bude st·t?
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_ARMORQUESTION_13_05"); //Budeö si muset p¯inÈst materi·l, j· tu û·dn˝ na zbyt nem·m.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_ARMORQUESTION_13_06"); //A nÏj·kÈ zlato za mojÌ pr·ci.
	Log_CreateTopic (NINJA_ARMOREXPANSION_TOPIC_MORTIS_ARMOR,LOG_NOTE);
	B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MORTIS_ARMOR,"Mortis mi m˘ûe vylepöit zbroje domobrany kdyû mu p¯inesu materi·ly a zlato.");
};
//-------------------------------------
var int Ninja_ArmorExpansion_MORTIS_MIL_LTHINGS;
//-------------------------------------
instance Ninja_ArmorExpansion_DIA_MORTIS_MIL_LTHINGS (C_INFO)
{
	npc			 =  MIL_314_MORTIS;
	nr			 =  4;
	condition	 = 	Ninja_ArmorExpansion_DIA_MORTIS_MIL_LTHINGS_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_MORTIS_MIL_LTHINGS_Info;
	permanent	 = 	FALSE;
	description	 = 	"ChtÏl bych vylepöit lehkou zbroj";
};
func int Ninja_ArmorExpansion_DIA_MORTIS_MIL_LTHINGS_Condition ()
{	
	if (Npc_Hasitems(other, ItAr_MIL_L) > 0)
	&& (Npc_KnowsInfo (other, Ninja_ArmorExpansion_DIA_MORTIS_ARMORQUESTION))
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_MORTIS_MIL_LTHINGS_Info ()
{
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MORTIS_MIL_LTHINGS_15_01"); //ChtÏl bych vylepöit lehkou zbroj.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MORTIS_MIL_LTHINGS_15_04"); //Co na to budeö pot¯ebovat?.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_MIL_LTHINGS_13_06"); //Na lehkou zbroj bude staËit jeden ocelov˝ prut a kanËÌ k˘ûe.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_MIL_LTHINGS_13_07"); //A ¯eknÏme ûe 200 zlat˝ch mi bude za tu pr·ci staËit.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_MIL_LTHINGS_13_08"); //A samozrejmÏ mi budeö muset taky p¯inÈst tu zbroj.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MORTIS_MIL_LTHINGS_15_09"); //Dobr·, pokusÌm se to sehnat.
		B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MORTIS_ARMOR,"Na vylepöenÌ lehkÈ zbroje bude Mortis pot¯ebovat jeden ocelov˝ prut, kanËÌ k˘ûi a 200 zlat˝ch.");
};
//-------------------------------------
var int Ninja_ArmorExpansion_MORTIS_MIL_LReforgedArmor;
//-------------------------------------
instance Ninja_ArmorExpansion_DIA_MORTIS_MIL_LReforgedArmor (C_INFO)
{
	npc			 =  MIL_314_MORTIS;
	nr			 =  4;
	condition	 = 	Ninja_ArmorExpansion_DIA_MORTIS_MIL_LReforgedArmor_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_MORTIS_MIL_LReforgedArmor_Info;
	permanent	 = 	TRUE;
	description	 = 	"M·m vöechny pot¯ebnÈ materi·ly na vylepöenÌ lehkÈ zbroje.";
};
func int Ninja_ArmorExpansion_DIA_MORTIS_MIL_LReforgedArmor_Condition ()
{	
	if (Npc_HasItems(other,ItAr_MIL_L) >= 0) && (Npc_HasItems(other,ItMiSwordraw) >= 1) && (Npc_HasItems(other,ItAt_Addon_KeilerFur) >= 1) && (Npc_HasItems(other,ItMi_Gold) >= 200)
	&& (Npc_KnowsInfo (other, Ninja_ArmorExpansion_DIA_MORTIS_MIL_LTHINGS))
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_MORTIS_MIL_LReforgedArmor_Info ()
{
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MORTIS_LREFORGEDARMOR_15_01"); //M·m vöechny pot¯ebnÈ materi·ly na vylepöenÌ lehkÈ zbroje.

	if (Npc_HasItems(other,ItAr_MIL_L) >= 0) && (Npc_HasItems(other,ItMiSwordraw) >= 1) && (Npc_HasItems(other,ItAt_Addon_KeilerFur) >= 1) && (Npc_HasItems(other,ItMi_Gold) >= 200)
	{	
        B_GivePlayerXP(20);
        B_GiveInvItems(other, self, ItAr_MIL_L, 1);				
        B_GiveInvItems(other, self, ItMiSwordraw, 1);
        B_GiveInvItems(other, self, ItAt_Addon_KeilerFur, 1);
        B_GiveInvItems(other, self, ItMi_Gold, 200);
        AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_LREFORGEDARMOR_13_12"); //Dob¯e, d·m se tedy do pr·ce.
        
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
        
        AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_LREFORGEDARMOR_13_13"); //Hotovo.
        B_GiveInvItems(self, other, Ninja_ArmorExpansion_ITAR_MIL_R, 1);
        AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_LREFORGEDARMOR_13_14"); //Tady ji m·ö, docela se mi povedla ¯ekl bych.
        AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MORTIS_LREFORGEDARMOR_15_15"); //DÌky.
		B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MORTIS_ARMOR,"Mortis mi vylepöil lehkou zbroj.");
	}
	else 
	{
	    AI_Output (self, other, "Ninja_ArmorExpansion_DIA_MORTIS_LREFORGEDARMOR_13_16"); //Vraù se aû to vöechno budeö mÌt u sebe.
	};
};
//-------------------------------------
var int Ninja_ArmorExpansion_MORTIS_MILITIA_MediumHUH;
//-------------------------------------
instance Ninja_ArmorExpansion_DIA_MORTIS_MILITIA_MediumHUH (C_INFO)
{
	npc			 =  MIL_314_MORTIS;
	nr			 =  8;
	condition	 = 	Ninja_ArmorExpansion_DIA_MORTIS_MILITIA_MediumHUH_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_MORTIS_MILITIA_MediumHUH_Info;
	permanent	 = 	FALSE;
	description	 = 	"ChtÏl bych vylepöit st¯ednÌ zbroj";
};
func int Ninja_ArmorExpansion_DIA_MORTIS_MILITIA_MediumHUH_Condition ()
{	
	if (Npc_Hasitems(other, ItAr_MIL_M) > 0)
	&& (Npc_KnowsInfo (other, Ninja_ArmorExpansion_DIA_MORTIS_ARMORQUESTION))
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_MORTIS_MILITIA_MediumHUH_Info ()
{
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MORTIS_MILITIA_MediumHUH_15_01"); //ChtÏl bych vylepöit st¯ednÌ zbroj.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MORTIS_MILITIA_MediumHUH_15_03"); //Co na to budeö pot¯ebovat?.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_MILITIA_MediumHUH_13_04"); //Na st¯ednÌ zbroj si budeö muset p¯inÈst o nÏco vÌc.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_MILITIA_MediumHUH_13_05"); //dva ocelovÈ pruty a k˘ûi z Warga.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_MILITIA_MediumHUH_13_06"); //Budu za tu pr·ci chtÌt 600 zlat˝ch.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MORTIS_MILITIA_MediumHUH_15_08"); //Dobr·, pokusÌm se to sehnat.
		B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MORTIS_ARMOR,"Na vylepöenÌ st¯ednÌ zbroje bude Mortis pot¯ebovat dva ocelovÈ pruty, k˘ûi z Warga a 600 zlat˝ch.");	
};
//-------------------------------------
var int Ninja_ArmorExpansion_MORTIS_MILITIA_MediumArmorBought;
//-------------------------------------
instance Ninja_ArmorExpansion_DIA_MORTIS_MILITIA_MediumArmor (C_INFO)
{
	npc			 =  MIL_314_MORTIS;
	nr			 =  8;
	condition	 = 	Ninja_ArmorExpansion_DIA_MORTIS_MILITIA_MediumArmor_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_MORTIS_MILITIA_MediumArmor_Info;
	permanent	 = 	TRUE;
	description	 = 	"M·m vöechny pot¯ebnÈ materi·ly na vylepöenÌ st¯ednÌ zbroje.";
};
func int Ninja_ArmorExpansion_DIA_MORTIS_MILITIA_MediumArmor_Condition ()
{	
	if (Ninja_ArmorExpansion_MORTIS_MILITIA_MediumArmorBought == FALSE)
	&& (Npc_HasItems(other, ItAr_MIL_M) > 0)
    && (Npc_HasItems(other, ItMiSwordraw) >= 2)
    && (Npc_HasItems(other, ItAt_wargfur) >= 1)
    && (Npc_HasItems(other, ItMi_Gold) >= 600)
	&& (Npc_KnowsInfo (other, Ninja_ArmorExpansion_DIA_MORTIS_MILITIA_MediumHUH))
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_MORTIS_MILITIA_MediumArmor_Info ()
{
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MORTIS_MediumArmor_15_01"); //M·m vöechny pot¯ebnÈ materi·ly na vylepöenÌ st¯ednÌ zbroje.

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
        AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MORTIS_MediumArmor_15_10"); //Tady to je.
        AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_MediumArmor_13_11"); //Dob¯e, d·m se tedy do pr·ce.
        
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
        
        AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_MediumArmor_13_12"); //Hotovo.
        Ninja_ArmorExpansion_MORTIS_MILITIA_MediumArmorBought = B_GiveInvItems(self, other, Ninja_ArmorExpansion_ITAR_MIL_Med2, 1);
        AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_MediumArmor_13_13"); //Tady ji m·ö, docela se mi povedla ¯ekl bych.
        AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MORTIS_MediumArmor_15_14"); //DÌky.
				B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MORTIS_ARMOR,"Mortis mi vylepöil st¯ednÌ zbroj.");
	}
	else 
	{
	    AI_Output (self, other, "Ninja_ArmorExpansion_DIA_MORTIS_MediumArmor_13_16"); //Vraù se aû to vöechno budeö mÌt u sebe.
	};
};
//-------------------------------------
var int Ninja_ArmorExpansion_ANDRE_MIL_SCOUTArmorBought;
//-------------------------------------
instance Ninja_ArmorExpansion_DIA_ANDRE_MIL_SCOUTArmor (C_INFO)
{
	npc			 =  MIL_311_ANDRE;
	nr			 =  888;
	condition	 = 	Ninja_ArmorExpansion_DIA_ANDRE_MIL_SCOUTArmor_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_ANDRE_MIL_SCOUTArmor_Info;
	permanent	 = 	TRUE;
	description	 = 	"Nenaöla by se tu pro mnÏ lehËÌ zbroj? (VymÏnit st·vajÌcÌ)";
};
func int Ninja_ArmorExpansion_DIA_ANDRE_MIL_SCOUTArmor_Condition ()
{	
	if (Ninja_ArmorExpansion_ANDRE_MIL_SCOUTArmorBought == FALSE)
	&& (Npc_Hasitems(other, ItAr_MIL_L) > 0)
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_ANDRE_MIL_SCOUTArmor_Info ()
{
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_ANDRE_MIL_SCOUTARMOR_15_01"); //Nenaöla by se pro mnÏ lehhËÌ zbroj?.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_ANDRE_MIL_SCOUTARMOR_15_02"); //Radöi pouûÌv·m zbranÏ na d·lku.
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_ANDRE_MIL_SCOUTARMOR_13_03"); //M˘ûu ti vymÏnit tvojÌ zbroj za zbroj zvÏda. Je lehËÌ neû standartnÌ v˝bava takûe budeö obratnÏjöÌ, ale i zranitelnÏjöÌ
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_ANDRE_MIL_SCOUTARMOR_15_04"); //Beru ji.
    B_GiveInvItems(other, self, ItAr_MIL_L, 1);	
	Ninja_ArmorExpansion_ANDRE_MIL_SCOUTArmorBought = B_GiveInvItems(self, other, Ninja_ArmorExpansion_ITAR_MIL_SCOUT, 1);		
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_ANDRE_MIL_SCOUTARMOR_15_9");//Tady m·ö, aù ti slouûÌ dob¯e.
};
//-------------------------------------
var int Ninja_ArmorExpansion_ANDRE_MILITIA_ARMORREWARDBought;
//-------------------------------------
instance Ninja_ArmorExpansion_DIA_ANDRE_MILITIA_ARMORREWARD (C_INFO)
{
	npc			 =  MIL_311_ANDRE;
	nr			 =  888;
	condition	 = 	Ninja_ArmorExpansion_DIA_ANDRE_MILITIA_ARMORREWARD_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_ANDRE_MILITIA_ARMORREWARD_Info;
	permanent	 = 	FALSE;
	important    =	TRUE;
	description	 = 	"";
};
func int Ninja_ArmorExpansion_DIA_ANDRE_MILITIA_ARMORREWARD_Condition ()
{	
	if	(MIS_ANDRE_WAREHOUSE == LOG_SUCCESS)
	&&	(MIS_Andre_REDLIGHT == LOG_SUCCESS)
	&&	(MIS_AndreHelpLobart == LOG_SUCCESS)	
	&& (Npc_KnowsInfo (other, Ninja_ArmorExpansion_DIA_Andre_LOBART_SUCCESS))	
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_ANDRE_MILITIA_ARMORREWARD_Info ()
{	
		AI_Output (self,other,"Ninja_ArmorExpansion_DIA_ANDRE_MILITIA_ARMORREWARD_01_03"); //Vykonal si vöechny moje zad·nÌ.
		AI_Output (self,other,"Ninja_ArmorExpansion_DIA_ANDRE_MILITIA_ARMORREWARD_01_04"); //TÌm si mi dok·zal ûe si zaslouûÌö pov˝öenÌ.
		B_GiveInvItems(self, other, ITAR_MIL_M, 1);
		AI_Output (self,other,"Ninja_ArmorExpansion_DIA_ANDRE_MILITIA_ARMORREWARD_01_05"); //Tady m·ö, st¯ednÌ zbroj domobrany.
		AI_Output (self,other,"Ninja_ArmorExpansion_DIA_ANDRE_MILITIA_ARMORREWARD_01_06"); //Aù ti slouûÌ voj·ku.
		AI_Output (other,self,"Ninja_ArmorExpansion_DIA_ANDRE_MILITIA_ARMORREWARD_15_01"); //DÌky.
};
instance Ninja_ArmorExpansion_DIA_LEE_SLD_SCOUTArmor (C_INFO)
{
	npc			 =  SLD_800_Lee;
	nr			 =  888;
	condition	 = 	Ninja_ArmorExpansion_DIA_LEE_SLD_SCOUTArmor_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_LEE_SLD_SCOUTArmor_Info;
	permanent	 = 	TRUE;
	description	 = 	"Nenaöla by se tu pro mnÏ lehËÌ zbroj?";
};
func int Ninja_ArmorExpansion_DIA_LEE_SLD_SCOUTArmor_Condition ()
{	
	if (Npc_Hasitems(other, ItAr_SLD_L) > 0)
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_LEE_SLD_SCOUTArmor_Info ()
{
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_LEE_SLD_SCOUTArmor_15_01"); //Nenaöla by se pro mnÏ lehhËÌ zbroj?.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_LEE_SLD_SCOUTArmor_15_02"); //Radöi pouûÌv·m zbranÏ na d·lku.
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_LEE_SLD_SCOUTArmor_13_03"); //J· nic takovÈho pro tebe nem·m, ale nejsi prvnÌ kdo nÏco takovÈho chce
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_LEE_SLD_SCOUTArmor_13_04"); //Jdi za Wolfem, myslÌm si ûe on by mÏl pro tebe nÏco mÌt
};
instance Ninja_ArmorExpansion_DIA_WOLF_SLD_SCOUTArmorBought (C_INFO)
{
	npc			 =  SLD_811_Wolf;
	nr			 =  888;
	condition	 = 	Ninja_ArmorExpansion_DIA_WOLF_SLD_SCOUTArmorBought_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_WOLF_SLD_SCOUTArmorBought_Info;
	permanent	 = 	TRUE;
	description	 = 	"Slyöel jsem ûe dÏl·ö zbroje pro zvÏdy.";
};
func int Ninja_ArmorExpansion_DIA_WOLF_SLD_SCOUTArmorBought_Condition ()
{	
	if (Npc_Hasitems(other, ItAr_SLD_L) > 0)
	&& (Npc_KnowsInfo (other, Ninja_ArmorExpansion_DIA_LEE_SLD_SCOUTArmor))
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_WOLF_SLD_SCOUTArmorBought_Info ()
{
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_WOLF_SLD_SCOUTArmorBought_15_01"); //Slyöel jsem ûe dÏl·ö zbroje pro zvÏdy.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_WOLF_SLD_SCOUTArmorBought_15_02"); //chtÏl bych si vymÏnit tu co m·m teÔ
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_WOLF_SLD_SCOUTArmorBought_13_03"); //JistÏ, zrovna jsem jednu dokonËil. M˘ûeö ji mÌt zadarmo, kv˘li star˝m Ëas˘m.
	B_GiveInvItems(self, other, Ninja_ArmorExpansion_ITAR_SLD_SCOUT, 1);	
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_WOLF_SLD_SCOUTArmorBought_15_06"); //DÌky.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_WOLF_SLD_SCOUTArmorBought_13_07"); //Nem·ö za co
};
//-------------------------------------
const string	NINJA_ARMOREXPANSION_TOPIC_BENNET_ARMOR				=   "VylepöenÌ zbroje ûold·ka.";
//-------------------------------------
instance Ninja_ArmorExpansion_DIA_BENNET_SLDARMORASK (C_INFO)
{
	npc			 =  SLD_809_Bennet;
	nr			 =  887;
	condition	 = 	Ninja_ArmorExpansion_DIA_BENNET_SLDARMORASK_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_BENNET_SLDARMORASK_Info;
	permanent	 = 	FALSE;
	description	 = 	"M˘ûeö mi prodat nÏjakou lepöÌ zbroj?";
};
func int Ninja_ArmorExpansion_DIA_BENNET_SLDARMORASK_Condition ()
{	
	if (other.guild == GIL_SLD)
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_BENNET_SLDARMORASK_Info ()
{
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_BENNET_SLDARMORASK_15_01"); //M˘ûeö mi prodat nÏjakou lepöÌ zbroj?.
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_SLDARMORASK_13_02"); //Ne, zbroje m˘ûe rozd·vat jenom Lee.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_SLDARMORASK_13_03"); //M˘ûu ti ale vylepöit tu co jsi uû dostal, ale budu za to nÏco chtÌt.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_BENNET_SLDARMORASK_15_04"); //A to?
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_SLDARMORASK_13_05"); //Material na v˝robu, ten si p¯ineseö s·m, nebudu ti to dÏlat ze sv˝ch z·sob.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_SLDARMORASK_13_07"); //A nepracuju zadarmo, takûe si taky p¯iprav nÏj·kÈ zlato.
		Log_CreateTopic (NINJA_ARMOREXPANSION_TOPIC_BENNET_ARMOR,LOG_NOTE);
	B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_BENNET_ARMOR,"Bennet mi m˘ûe vylepöit zbroje ûold·ka kdyû mu p¯inesu materi·ly a zlato.");
};
instance Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedHUH (C_INFO)
{
	npc			 =  SLD_809_Bennet;
	nr			 =  887;
	condition	 = 	Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedHUH_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedHUH_Info;
	permanent	 = 	FALSE;
	description	 = 	"Chci si nechat vylepöit lehkou zbroj.";
};
func int Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedHUH_Condition ()
{	
	if (BENNET_SLD_LReforgedArmorBought == FALSE)
	&& (Npc_Hasitems(other, ItAr_SLD_L) > 0)
	&& (Npc_KnowsInfo (other, Ninja_ArmorExpansion_DIA_BENNET_SLDARMORASK))
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedHUH_Info ()
{
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedHUH_15_01"); //Chci si nechat vylepöit lehkou zbroj.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedHUH_15_04"); //Co na to pot¯ebujeö?
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedHUH_13_06"); //Na lehkou zbroj ti postaËÌ dva ocelovÈ pruty a dvÏ vlËÌ k˘ûe.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedHUH_13_07"); //Budu chtÌt 200 zlat˝ch za v˝robu.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedHUH_15_09"); //Dobr·.
		B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_BENNET_ARMOR,"Na vylepöenÌ lehkÈ zbroje bude Bennet pot¯ebovat dva ocelovÈ pruty, dvÏ k˘ûe z vlka a 200 zlat˝ch.");	
};
//-------------------------------------
var int Ninja_ArmorExpansion_BENNET_SLD_LReforgedArmorBought;
//-------------------------------------
instance Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedArmor (C_INFO)
{
	npc			 =  SLD_809_Bennet;
	nr			 =  887;
	condition	 = 	Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedArmor_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedArmor_Info;
	permanent	 = 	TRUE;
	description	 = 	"M·m vöechny pot¯ebnÈ materi·ly na vylepöenÌ lehkÈ zbroje.";
};
func int Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedArmor_Condition ()
{	
	if (Ninja_ArmorExpansion_BENNET_SLD_LReforgedArmorBought == FALSE)
	&& (Npc_Hasitems(other, ItAr_SLD_L) > 0)
	&& (Npc_HasItems(other, ItMiSwordraw) >= 2)
    && (Npc_HasItems(other, ItAt_Wolffur) >= 2)
    && (Npc_HasItems(other, ItMi_Gold) >= 200)
	&& (Npc_KnowsInfo (other, Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedHUH))
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedArmor_Info ()
{
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedArmor_15_01"); //M·m vöechny pot¯ebnÈ materi·ly na vylepöenÌ lehkÈ zbroje.	

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
        AI_Output(other, self, "Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedArmor_15_11"); //Tady to je.
        AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedArmor_13_12"); //Dob¯e, tak se na to podÌvejme.
        
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
        
        AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedArmor_13_13"); //Hotovo.
        Ninja_ArmorExpansion_BENNET_SLD_LReforgedArmorBought = B_GiveInvItems(self, other, Ninja_ArmorExpansion_ITAR_SLD_LR, 1);
        AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedArmor_13_14"); //Tady je, docela se mi povedla.
        AI_Output(other, self, "Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedArmor_15_15"); //DÌky.
				B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MORTIS_ARMOR,"Bennet mi vylepöil lehkou zbroj.");
	}
	else 
	{
	    AI_Output (self, other, "Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedArmor_13_16"); //Vraù se aû to vöechno budeö mÌt.
	};
};
instance Ninja_ArmorExpansion_DIA_Engor_RSkaufen		(C_INFO)
{
	npc		 	 = 	VLK_4108_Engor;
	nr		 	 = 	2;
	condition	 = 	Ninja_ArmorExpansion_DIA_Engor_RSkaufen_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_Engor_RSkaufen_Info;
	permanent 	 =  TRUE;
	description	 = 	"Koupit tÏûkou zbroj domobrany (Obrany: SeËnÈ 70, BodnÈ 70. Cena: 2500 zlat˝ch)"; 
};
//--------------------------------------
var int Ninja_ArmorExpansion_DIA_Engor_RSkaufen_perm;
//--------------------------------------
func int Ninja_ArmorExpansion_DIA_Engor_RSkaufen_Condition ()
{
	if (other.guild == GIL_MIL)
	&& Npc_KnowsInfo (other, Ninja_ArmorExpansion_DIA_Engor_Ruestung)
	&& (Ninja_ArmorExpansion_DIA_Engor_RSkaufen_perm == FALSE)
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_Engor_RSkaufen_Info ()
{
	if (B_GiveInvItems (other, self, Itmi_Gold,2500))
	{
		AI_Output (other, self, "Ninja_ArmorExpansion_DIA_Engor_RSkaufen_15_00"); //Dej mi tu zbroj.
		AI_Output (self, other, "Ninja_ArmorExpansion_DIA_Engor_RSkaufen_13_01"); //Tady ji m·ö, dob¯e tÏ ochr·nÌ, je to zatracenÏ dobr˝ kousek.
		B_GiveInvItems (self,other, Ninja_ArmorExpansion_ITAR_MIL_H,1);
		Ninja_ArmorExpansion_DIA_Engor_RSkaufen_perm = TRUE;
	}
	else
	{
		AI_Output (self, other, "Ninja_ArmorExpansion_DIA_Engor_RSkaufen_13_02"); //Nejd¯Ìv mi p¯ines to zlato.
	};
};
instance Ninja_ArmorExpansion_DIA_Engor_ARCHER_KAUFEN		(C_INFO)
{
	npc		 	 = 	VLK_4108_Engor;
	nr		 	 = 	35;
	condition	 = 	Ninja_ArmorExpansion_DIA_Engor_ARCHER_KAUFEN_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_Engor_ARCHER_KAUFEN_Info;
	permanent 	 =  TRUE;
	description	 = 	"Koupit zbroj domobr·nce KuöiönÌka (65/65, bonus na d·lku, Cena: 2300 zlat˝ch)"; 
};
func int Ninja_ArmorExpansion_DIA_Engor_ARCHER_KAUFEN_Condition ()
{
	if (other.guild == GIL_MIL)
	&& Npc_KnowsInfo (other, Ninja_ArmorExpansion_DIA_Engor_Ruestung)
	&& (Ninja_ArmorExpansion_DIA_Engor_RSkaufen_perm == FALSE)
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_Engor_ARCHER_KAUFEN_Info ()
{
	if (B_GiveInvItems (other, self, Itmi_Gold,2300))
	{
		AI_Output (other, self, "Ninja_ArmorExpansion_DIA_Engor_RSkaufen_15_00"); //Dej mi tu zbroj.
		AI_Output (self, other, "Ninja_ArmorExpansion_DIA_Engor_RSkaufen_13_01"); //Tady ji m·ö, dob¯e tÏ ochr·nÌ, je to zatracenÏ dobr˝ kousek.
		B_GiveInvItems (self,other, Ninja_ArmorExpansion_ITAR_MIL_P,1);
		Ninja_ArmorExpansion_DIA_Engor_RSkaufen_perm = TRUE;
	}
	else
	{
		AI_Output (self, other, "Ninja_ArmorExpansion_DIA_Engor_RSkaufen_13_02"); //Nejd¯Ìv mi p¯ines to zlato.
	};
};
instance Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedHUH (C_INFO)
{
	npc			 =  SLD_809_Bennet;
	nr			 =  888;
	condition	 = 	Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedHUH_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedHUH_Info;
	permanent	 = 	FALSE;
	description	 = 	"Chci si nechat vylepöit st¯ednÌ zbroj.";
};
func int Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedHUH_Condition ()
{	
	if (BENNET_MERC_MReforgedArmorBought == FALSE)
	&& (Npc_Hasitems(other, ItAr_SLD_M) > 0)
	&& (Npc_KnowsInfo (other, Ninja_ArmorExpansion_DIA_BENNET_SLDARMORASK))
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedHUH_Info ()
{
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedHUH_15_01"); //Chci si nechat vylepöit st¯ednÌ zbroj.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedHUH_15_03"); //Co na to pot¯ebujeö?
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedHUH_13_04"); //Na st¯ednÌ zbroj toho bude pot¯eba vÌc.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedHUH_13_05"); //T¯i ocelov˝ pruty, a jednu k˘ûi z Warga.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedHUH_13_06"); //Za v˝robu budu chtÌt, ¯eknÏme 650 zlat˝ch.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedHUH_15_08"); //Dobr·.
			B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_BENNET_ARMOR,"Na vylepöenÌ st¯ednÌ zbroje bude Bennet pot¯ebovat t¯i ocelovÈ pruty, jednu k˘ûi ze sk¯etÌho psa, dvÏ k˘ûe z trolla a 650 zlat˝ch.");
};
//-------------------------------------
var int Ninja_ArmorExpansion_BENNET_MERC_MReforgedArmorBought;
//-------------------------------------
instance Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedArmor (C_INFO)
{
	npc			 =  SLD_809_Bennet;
	nr			 =  888;
	condition	 = 	Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedArmor_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedArmor_Info;
	permanent	 = 	TRUE;
	description	 = 	"M·m vöechny pot¯ebnÈ materi·ly na vylepöenÌ st¯ednÌ zbroje.";
};
func int Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedArmor_Condition ()
{	
	if (Ninja_ArmorExpansion_BENNET_MERC_MReforgedArmorBought == FALSE)
	&& (Npc_Hasitems(other, ItAr_SLD_M) > 0)
	&& (Npc_HasItems(other, ItMiSwordraw) >= 2)
	&& (Npc_HasItems(other, ItAt_Wargfur) >= 1)
    && (Npc_HasItems(other, ItMi_Gold) >= 650)
	&& (Npc_KnowsInfo (other, Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedHUH))
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedArmor_Info ()
{
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedArmor_15_01"); //M·m vöechny pot¯ebnÈ materi·ly na vylepöenÌ st¯ednÌ zbroje.
	
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
        AI_Output(other, self, "Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedArmor_15_10"); //Tady to je.
        AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedArmor_13_11"); //Dob¯e, tak se na to podÌvejme.
        
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
        
        AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedArmor_13_12"); //Hotovo.
        Ninja_ArmorExpansion_BENNET_MERC_MReforgedArmorBought = B_GiveInvItems(self, other, Ninja_ArmorExpansion_ITAR_SLD_R, 1);
        AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedArmor_13_13"); //Tady je, docela se mi povedla.
        AI_Output(other, self, "Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedArmor_15_14"); //DÌky.
		B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MORTIS_ARMOR,"Bennet mi vylepöil st¯ednÌ zbroj.");
	}
	else 
	{
	    AI_Output (self, other, "Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedArmor_13_16"); //Vraù se aû to vöechno budeö mÌt u sebe.
	};
};
instance Ninja_ArmorExpansion_DIA_Ulthar		(C_INFO)
{
	npc		 = 	KDF_502_Ulthar;
	nr		 = 	30;
	condition	 = 	Ninja_ArmorExpansion_DIA_Ulthar_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_Ulthar_Info;
	important	 =	TRUE;

	description  = 	"VyËistil jsem vöechny svatinÏ.";
};

func int Ninja_ArmorExpansion_DIA_Ulthar_Condition ()
{
	if (MIS_Ulthar_HeileSchreine_PAL == LOG_SUCCESS)
		{
				return TRUE;
		};
};

func void Ninja_ArmorExpansion_DIA_Ulthar_Info ()
{
	AI_Output			(self, other, "Ninja_ArmorExpansion_DIA_Ulthar_05_01"); //PoËkej, chtÏli jsme tÏ jeötÏ podpo¯it v tvÈm boji proti zlu novou zbrojÌ.
	AI_Output			(self, other, "Ninja_ArmorExpansion_DIA_Ulthar_05_02"); //Vezmi si tuhle zbroj k¯iû·ka Innose, jsem si jist˝ ûe ji vyuûijeö.
	AI_Output			(other, self, "Ninja_ArmorExpansion_DIA_Ulthar_05_03"); //DÏkuji.
	B_GiveInvItems (self, other, Ninja_ArmorExpansion_ITAR_CRUSADER, 1);
};
INSTANCE Ninja_ArmorExpansion_DIA_Lord_Hagen_CROSSBOW		(C_INFO)
{
	npc			 = 	PAL_200_Hagen;
	nr			 = 	990;
	condition	 = 	Ninja_ArmorExpansion_DIA_Lord_Hagen_CROSSBOW_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_Lord_Hagen_CROSSBOW_Info;
	permanent	 = 	TRUE; 
	description	 = 	"Nenaöla by se pro mnÏ lehËÌ zbroj? (VymÏnit st·vajÌcÌ)";
};
func int Ninja_ArmorExpansion_DIA_Lord_Hagen_CROSSBOW_Condition ()
{	
	if (Npc_Hasitems(other, ItAr_PAL_M) > 0)
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_Lord_Hagen_CROSSBOW_Info ()
{
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_Lord_Hagen_CROSSBOW_15_01"); //Nenaöla by se pro mnÏ lehËÌ zbroj?.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_Lord_Hagen_CROSSBOW_15_02"); //Radöi pouûÌv·m zbranÏ na d·lku.
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Lord_Hagen_CROSSBOW_13_03"); //M˘ûu ti vymÏnit tvojÌ rytÌ¯skou zbroj za odlehËenou variantu, urËenou pro kuöiönÌky.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_Lord_Hagen_CROSSBOW15_04"); //Beru jÌ.
        B_GiveInvItems(other, self, ItAr_PAL_M, 1);	
		B_GiveInvItems(self, other, Ninja_ArmorExpansion_ITAR_PAL_C, 1);		
        AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Lord_Hagen_CROSSBOW_15_9");//Nos ji se ctÌ, rytÌ¯i.
};
//-------------------------------------
const string	NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR				=   "VyjÌmeËn· Paladinsk· zbroj";
//-------------------------------------
instance Ninja_ArmorExpansion_DIA_Martin_ARCPALA_NOTIF		(C_INFO)
{
	npc		 = 	Mil_350_Addon_Martin;
	nr		 = 	3;
	condition	 = 	Ninja_ArmorExpansion_DIA_Martin_ARCPALA_NOTIF_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_Martin_ARCPALA_NOTIF_Info;
	permanent	 = 	FALSE;
	important	 = 	TRUE;
};
func int Ninja_ArmorExpansion_DIA_Martin_ARCPALA_NOTIF_Condition ()
{	
	if (other.guild == GIL_PAL)
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_Martin_ARCPALA_NOTIF_Info ()
{
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Martin_ARCPALA_NOTIF_3_01"); //Slyöel jsem ûe si se stal paladinem.
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Martin_ARCPALA_NOTIF_3_02"); //Moûn· bych to pro tebe mÏl nÏco zvl·ötnÌho
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_Martin_ARCPALA_NOTIF_3_03"); //O Ëem to mluvÌö?
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Martin_ARCPALA_NOTIF_3_04"); //M·m tu na skladÏ v˝jimeËnou paladinskou zbroj.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Martin_ARCPALA_NOTIF_3_05"); //Slyöel jsem ûe tenhle typ zbroje m· vysokou ochranu proti magick˝m ˙tok˘m
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Martin_ARCPALA_NOTIF_3_06"); //Ale uû tu nej·k˝ Ëas leûÌ, a pob¯eûnÌ poËasÌ jÌ neudÏlalo dob¯e
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Martin_ARCPALA_NOTIF_3_07"); //NenÌ to ale nic co by se nedalo opravit, ty urËitÏ na nÏco p¯ijdeö.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Martin_ARCPALA_NOTIF_3_08"); //Za 2000 zlat˝ch je tvoje.
	Log_CreateTopic (NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR, LOG_MISSION);
	Log_SetTopicStatus(NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR, LOG_RUNNING);
	B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR,"Martin mi nabÌdl vyjÌmeËnou zbroj paladina. ZnÌ to jako zajÌmav· nabÌdka.");
};
//-------------------------------------
var int Ninja_ArmorExpansion_Martin_ARKPALA_BOUGHT;
//-------------------------------------
instance Ninja_ArmorExpansion_DIA_Martin_ARKPALA		(C_INFO)
{
	npc		 = 	Mil_350_Addon_Martin;
	nr		 = 	3;
	condition	 = 	Ninja_ArmorExpansion_DIA_Martin_ARKPALA_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_Martin_ARKPALA_Info;
	permanent	 = 	TRUE;
	description	 = 	"Dob¯e, beru tu zbroj (Obrany: SeËnÈ 80, BodnÈ 80. Cena: 2000 zlat˝ch).";
};
func int Ninja_ArmorExpansion_DIA_Martin_ARKPALA_Condition ()
{	
	if (Ninja_ArmorExpansion_Martin_ARKPALA_BOUGHT == FALSE)
	&& (Npc_KnowsInfo (other, Ninja_ArmorExpansion_DIA_Martin_ARCPALA_NOTIF))
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_Martin_ARKPALA_Info ()
{
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_Martin_ARKPALA_BOUGHT_4_1"); //Dob¯e, beru tu zbroj.
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 2000))
	{	
		AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Martin_ARKPALA_BOUGHT_4_2"); //Dob¯e, tady ji m·ö.
			B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR,"Koupil jsem si od Martina paladinskou zbroj. Je rezav· ale zkuöen˝ kov·¯ by ji mÏl opravit, jenom najÌt nÏjakÈho kdo by byl ochotn˝ to pro mnÏ udÏlat.");

		Ninja_ArmorExpansion_Martin_ARKPALA_BOUGHT = B_GiveInvItems(self, other, Ninja_ArmorExpansion_ITAR_PAL_R, 1);
	}
	else 
	{
		AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Martin_ARKPALA_BOUGHT_4_3"); //P¯ijÔ aû budeö mÌt u sebe dost zlata
	};
};
instance Ninja_ArmorExpansion_DIA_MORTIS_PAL_REFORGE		(C_INFO)
{
	npc		 = 	MIL_314_MORTIS;
	nr		 = 	3;
	condition	 = 	Ninja_ArmorExpansion_DIA_MORTIS_PAL_REFORGE_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_MORTIS_PAL_REFORGE_Info;
	permanent	 = 	FALSE;
	description	 = 	"Nemohl by si mi opravit tuhle rezavou paladinskou zbroj?";
};
func int Ninja_ArmorExpansion_DIA_MORTIS_PAL_REFORGE_Condition ()
{	
	if (Npc_Hasitems(other, Ninja_ArmorExpansion_ITAR_PAL_R) > 0)
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_MORTIS_PAL_REFORGE_Info ()
{
	B_GivePlayerXP(10);
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MORTIS_PAL_REFORGE_4_1"); //Nemohl by si mi opravit tuhle rezavou paladinskou zbroj?
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_PAL_REFORGE_3_01"); //Nemohl, nem·m na to Ëas ani zkuöenosti.
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_PAL_REFORGE_3_02"); //Budeö si muset najÌt jinÈho kov·¯e.
		B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR,"Mortis mi zbroj neopravÌ.");
};
instance Ninja_ArmorExpansion_DIA_BENNET_PAL_REFORGE		(C_INFO)
{
	npc		 = 	SLD_809_Bennet;
	nr		 = 	3;
	condition	 = 	Ninja_ArmorExpansion_DIA_BENNET_PAL_REFORGE_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_BENNET_PAL_REFORGE_Info;
	permanent	 = 	FALSE;
	description	 = 	"Nemohl by si mi opravit tuhle rezavou paladinskou zbroj?";
};
func int Ninja_ArmorExpansion_DIA_BENNET_PAL_REFORGE_Condition ()
{	
	if (Npc_Hasitems(other, Ninja_ArmorExpansion_ITAR_PAL_R) > 0)
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_BENNET_PAL_REFORGE_Info ()
{
	B_GivePlayerXP(10);
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_BENNET_PAL_REFORGE_4_1"); //Nemohl by si mi opravit tuhle rezavou paladinskou zbroj?
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_PAL_REFORGE_3_01"); //PromiÚ, ale nemohl.
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_PAL_REFORGE_3_03"); //Nic proti tobÏ nem·m, vûdyù si mnÏ dostal z vÏzenÌ.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_PAL_REFORGE_3_04"); //Ale co by si pomyslely ostatnÌ na farmÏ kdybych tu zaËal opravovat zbroje paladin˘?
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_PAL_REFORGE_3_05"); //Budeö si muset najÌt jinÈho kov·¯e.
	B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR,"Bennet mi zbroj neopravÌ.");
};
instance Ninja_ArmorExpansion_DIA_CARL_PAL_REFORGE		(C_INFO)
{
	npc		 = 	VLK_461_Carl;
	nr		 = 	3;
	condition	 = 	Ninja_ArmorExpansion_DIA_CARL_PAL_REFORGE_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_CARL_PAL_REFORGE_Info;
	permanent	 = 	FALSE;
	description	 = 	"Nemohl by si mi opravit tuhle rezavou paladinskou zbroj?";
};
func int Ninja_ArmorExpansion_DIA_CARL_PAL_REFORGE_Condition ()
{	
	if (Npc_Hasitems(other, Ninja_ArmorExpansion_ITAR_PAL_R) > 0)
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_CARL_PAL_REFORGE_Info ()
{
	B_GivePlayerXP(10);
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_CARL_PAL_REFORGE_4_1"); //Nemohl by si mi opravit tuhle rezavou paladinskou zbroj?
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_CARL_PAL_REFORGE_3_01"); //Paladinskou zbroj?.
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_CARL_PAL_REFORGE_3_02"); //PromiÚ chlapËe, ale to je nad moje sÌly.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_CARL_PAL_REFORGE_3_03"); //Budeö si muset najÌt jinÈho kov·¯e.
	B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR,"Carl mi zbroj neopravÌ.");
};
instance Ninja_ArmorExpansion_DIA_JAN_PAL_REFORGE		(C_INFO)
{
	npc		 = 	DJG_714_Jan;
	nr		 = 	3;
	condition	 = 	Ninja_ArmorExpansion_DIA_JAN_PAL_REFORGE_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_JAN_PAL_REFORGE_Info;
	permanent	 = 	FALSE;
	description	 = 	"Nemohl by si mi opravit tuhle rezavou paladinskou zbroj?";
};
func int Ninja_ArmorExpansion_DIA_JAN_PAL_REFORGE_Condition ()
{	
	if (Npc_Hasitems(other, Ninja_ArmorExpansion_ITAR_PAL_R) > 0)
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_JAN_PAL_REFORGE_Info ()
{
	B_GivePlayerXP(50);
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_JAN_PAL_REFORGE_4_1"); //Nemohl by si mi opravit tuhle rezavou paladinskou zbroj?
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_JAN_PAL_REFORGE_3_01"); //Jsem na tenkÈm ledÏ jenom abych tu mohl pracovat.
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_JAN_PAL_REFORGE_3_02"); //Nehodl·m riskovat ûe mnÏ nÏj·k˝ z tv˝ch koleg˘ ud· za to ûe se hrabu v paladinsk˝ch vÏcech.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_JAN_PAL_REFORGE_3_03"); //Budeö si muset najÌt jinÈho kov·¯e.
		B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR,"Drakobijec Jan mi zbroj neopravÌ.");
};
instance Ninja_ArmorExpansion_DIA_HUNO_PAL_REFORGE		(C_INFO)
{
	npc		 = 	BDT_1099_Addon_Huno;
	nr		 = 	3;
	condition	 = 	Ninja_ArmorExpansion_DIA_HUNO_PAL_REFORGE_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_HUNO_PAL_REFORGE_Info;
	permanent	 = 	FALSE;
	description	 = 	"Nemohl by si mi opravit tuhle rezavou paladinskou zbroj?";
};
func int Ninja_ArmorExpansion_DIA_HUNO_PAL_REFORGE_Condition ()
{	
	if (Npc_Hasitems(other, Ninja_ArmorExpansion_ITAR_PAL_R) > 0)
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_HUNO_PAL_REFORGE_Info ()
{
	B_GivePlayerXP(25);
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_HUNO_PAL_REFORGE_4_1"); //Nemohl by si mi opravit tuhle rezavou paladinskou zbroj?
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HUNO_PAL_REFORGE_3_01"); //S paladinsk˝mi zbrojemi nem·m v˘bec û·dnÈ zkuöenosti, nic takovÈho v kolonii nebylo.
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HUNO_PAL_REFORGE_3_02"); //PromiÚ, ale s tÌmhle ti nepom˘ûu.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HUNO_PAL_REFORGE_3_03"); //Budeö si muset najÌt jinÈho kov·¯e.
	B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR,"Huno mi zbroj neopravÌ.");
};
instance Ninja_ArmorExpansion_DIA_HARAD_PAL_SHOW		(C_INFO)
{
	npc		 = 	VLK_412_Harad;
	nr		 = 	3;
	condition	 = 	Ninja_ArmorExpansion_DIA_HARAD_PAL_SHOW_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_HARAD_PAL_SHOW_Info;
	permanent	 = 	FALSE;
	description	 = 	"Nemohl by si mi opravit tuhle rezavou paladinskou zbroj?";
};
func int Ninja_ArmorExpansion_DIA_HARAD_PAL_SHOW_Condition ()
{	
	if (Npc_Hasitems(other, Ninja_ArmorExpansion_ITAR_PAL_R) > 0)
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_HARAD_PAL_SHOW_Info ()
{
	B_GivePlayerXP(10);
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_HARAD_PAL_SHOW_4_1"); //Nemohl by si mi opravit tuhle rezavou paladinskou zbroj?
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PAL_SHOW_3_01"); //Ukaû mi ji.
        B_GiveInvItems(other, self, Ninja_ArmorExpansion_ITAR_PAL_R, 1);	
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PAL_SHOW_3_02"); //Uû je to dlouho co jsem takovou zbroj vidÏl.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PAL_SHOW_3_03"); //Jsou kovanÈ z jinÈ slitiny kovu a magickÈ rudy neû ostatnÌ a pak jsou poûehn·ny m·gy z kl·ötera v Nordmaru
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PAL_SHOW_3_04"); //Rez nepronikla moc hluboko, nebude moc tÏûkÈ ji opravit. 
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PAL_SHOW_3_05"); //Samoz¯ejmÏ pokud budu mÌt pot¯ebnÈ materi·ly.
		B_GiveInvItems(self, other, Ninja_ArmorExpansion_ITAR_PAL_R, 1);
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PAL_SHOW_3_06"); //Kde si ji sehnal?
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_HARAD_PAL_SHOW_3_07"); //Prodal mi ji Martin, v·lela se mezi paladinsk˝m vybavenÌm tak jsem ji chtÏl pouûÌt.
	B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR,"Harad souhlasil ûe mi zbroj opravÌ.");
};
//-------------------------------------
var int Ninja_ArmorExpansion_HARAD_PALADIN_REFORGEBought;
//-------------------------------------
instance Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE (C_INFO)
{
	npc			 =  VLK_412_Harad;
	nr			 =  8;
	condition	 = 	Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_Info;
	permanent	 = 	TRUE;
	description	 = 	"Takûe, co budeö na opravu zbroje pot¯ebovat?";
};
func int Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_Condition ()
{	
	if (Ninja_ArmorExpansion_HARAD_PALADIN_REFORGEBought == FALSE)
	&& (Npc_KnowsInfo (other, Ninja_ArmorExpansion_DIA_HARAD_PAL_SHOW))
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_Info ()
{
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_15_01"); //Takûe, co budeö na opravu zbroje pot¯ebovat?
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_02"); //Hmm, nech mnÏ se zamyslet
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_04"); //NÏkolik ocelov˝ch prut˘, 6 by mÏlo staËit.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_05"); //3 Hrudky magickÈ oceli.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_06"); //Co budeö za svou pr·ci chtÌt?
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_07"); //Nic. Bude mi potÏöenÌm pracovat na takovÈm kousku.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_15_08"); //Dobr·, pokusÌm se to vöechno sehnat. 
	B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR,"Na opravu zbroje bude Harad pot¯ebovat 6 ocelov˝ch prut˘ a t¯i hrudky rudy.");

	if (Npc_HasItems(other, Ninja_ArmorExpansion_ITAR_PAL_R) > 0)
    && (Npc_HasItems(other, ItMiSwordraw) >= 6)
    && (Npc_HasItems(other, ItMi_Nugget) >= 3)
	{	
        B_GivePlayerXP(100);
        B_GiveInvItems(other, self, Ninja_ArmorExpansion_ITAR_PAL_R, 1);				
        AI_Output(other, self, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_15_9");//Tady je ta zbroj.
        B_GiveInvItems(other, self, ItMiSwordraw, 6);
        B_GiveInvItems(other, self, ItMi_Nugget, 2);
        AI_Output(other, self, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_15_10"); //A tady pot¯ebnÈ materi·ly.
        AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_11"); //Dobr·, d·m se do pr·ce.
        
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
        
        AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_12"); //Hotovo.
        Ninja_ArmorExpansion_HARAD_PALADIN_REFORGEBought = B_GiveInvItems(self, other, Ninja_ArmorExpansion_ITAR_PAL_F, 1);
        AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_13"); //Tady je, Povedlo se mi ji opravit.
		AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_14"); //Ale nedok·zal jsem ji navr·tit jejÌ magickou moc.
		AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_15"); //Na to budeö pot¯ebovat zkuöenÈho m·ga ohnÏ, kter˝ je ochotn˝ pro tebe zbroj posvÏtit.
        AI_Output(other, self, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_15_14"); //DÌky.
		B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR,"Harad mi opravil paladinskou zbroj, ale nepoda¯ilo se mu navr·tit jejÌ magickou moc. Budu pro to muset najÌt ochotnÈho m·ga ohnÏ, jeden takov˝ mnÏ napad·.");
	}
	else 
	{
	    AI_Output (self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_16"); //P¯ijÔ aû to vöechno seûeneö.
	};
};
instance Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR (C_INFO)
{
	npc			 =  PC_Mage_NW;
	nr			 =  8;
	condition	 = 	Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_Info;
	permanent	 = 	FALSE;
	description	 = 	"Pot¯ebuji tvojÌ pomoc.";
};
func int Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_Condition ()
{	
	if (Npc_HasItems(other, Ninja_ArmorExpansion_ITAR_PAL_F) > 0)
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_Info ()
{
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_15_01"); //Pot¯ebuji tvojÌ pomoc.
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_02"); //O co jde?
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_04"); //Pot¯eboval bych navr·tit magickou moc tÈto zbroji, nedok·zal by si to pro mnÏ udÏlat?
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_05"); //Ukaû mi ji
	B_GiveInvItems(other, self, Ninja_ArmorExpansion_ITAR_PAL_F, 1);
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_06"); //P·ni, tohle jsem neËekal.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_07"); //TakovÈ zbroje nosÌ paladiny z Myrtany poûehnat do kl·öteru v Nordmaru.
		B_GiveInvItems(self, other, Ninja_ArmorExpansion_ITAR_PAL_F, 1);
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_07"); //O ritu·lu poûehn·nÌ jsem nÏco m·lo uû slyöel, ale nem·m jeötÏ dostatek znalostÌ abych ho provedl.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_07"); //Jestli se ale nepletu tak je zde v knihovnÏ kl·öteru kniha kter· popisuje tento postup.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_07"); //Budu pot¯ebovat nÏj·k˝ Ëas si tu knihu nastudovat. MezitÌm by si se ale mÏl postarat o draky v hornickÈm ˙dolÌ, vÌö jak na tom je Garondova jednotka.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_15_08"); //JasnÏ, uvidÌme se pozdÏji Miltene.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_07"); //HodnÏ ötÏstÌ!	
	B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR,"Milten souhlasil ûe mi pom˘ûe navr·tit zbroji jejÌ magickou sÌlu, ale nejd¯Ìve si bude muset nastudovat postup ritu·lu. NÏj·k˝ Ëas mu to zabere takûe mi ¯ekl ûe se m·m mezitÌm postarat o draky v hornickÈm ˙dolÌ.");
};
instance Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR (C_INFO)
{
	npc			 =  PC_Mage_NW;
	nr			 =  8;
	condition	 = 	Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_Info;
	permanent	 = 	FALSE;
	description	 = 	"Pot¯ebuji tvojÌ pomoc.";
};
func int Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_Condition ()
{	
	if (Npc_HasItems(other, Ninja_ArmorExpansion_ITAR_PAL_F) > 0)
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_Info ()
{
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_15_01"); //Pot¯ebuji tvojÌ pomoc.
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_13_02"); //O co jde?
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_04"); //Pot¯eboval bych navr·tit magickou moc tÈto zbroji, nedok·zal by si to pro mnÏ udÏlat?
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_13_05"); //Ukaû mi ji
	B_GiveInvItems(other, self, Ninja_ArmorExpansion_ITAR_PAL_F, 1);
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_13_06"); //P·ni, tohle jsem neËekal.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_13_07"); //TakovÈ zbroje nosÌ paladiny z Myrtany poûehnat do kl·öteru v Nordmaru.
		B_GiveInvItems(self, other, Ninja_ArmorExpansion_ITAR_PAL_F, 1);
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_13_08"); //O ritu·lu poûehn·nÌ jsem nÏco m·lo uû slyöel, ale nem·m jeötÏ dostatek znalostÌ abych ho provedl.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_13_09"); //Jestli se ale nepletu tak je zde v knihovnÏ kl·öteru kniha kter· popisuje tento postup.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_13_10"); //Budu pot¯ebovat nÏj·k˝ Ëas si tu knihu nastudovat. MezitÌm by si se ale mÏl postarat o draky v hornickÈm ˙dolÌ, vÌö jak na tom je Garondova jednotka.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_15_11"); //JasnÏ, uvidÌme se pozdÏji Miltene.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_13_12"); //HodnÏ ötÏstÌ!	
	B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR,"Milten souhlasil ûe mi pom˘ûe navr·tit zbroji jejÌ magickou sÌlu, ale nejd¯Ìve si bude muset nastudovat postup ritu·lu. NÏj·k˝ Ëas mu to zabere takûe mi ¯ekl ûe se m·m mezitÌm postarat o draky v hornickÈm ˙dolÌ.");
};
instance Ninja_ArmorExpansion_DIA_MILTEN_PLATEARMOR (C_INFO)
{
	npc			 =  PC_Mage_NW;
	nr			 =  8;
	condition	 = 	Ninja_ArmorExpansion_DIA_MILTEN_PLATEARMOR_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_MILTEN_PLATEARMOR_Info;
	permanent	 = 	FALSE;
	description	 = 	"UdÏlal si pokrok ve sv˝ch studiÌch?";
};
func int Ninja_ArmorExpansion_DIA_MILTEN_PLATEARMOR_Condition ()
{	
	if (Npc_KnowsInfo (other,Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR))
	&& (Npc_KnowsInfo (other,Ninja_ArmorExpansion_DIA_MiltenNW_AllDragonsDead))
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_MILTEN_PLATEARMOR_Info ()
{
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MILTEN_PLATEARMOR_15_01"); //UdÏlal si pokrok ve sv˝ch studiÌch?
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MILTEN_PLATEARMOR_13_02"); //Ano, dok·ûu ¯Ìct ûe postupu ritu·lu rozumÌm.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MILTEN_PLATEARMOR_13_03"); //Ale budu pot¯ebovat p·r vÏcÌ
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MILTEN_PLATEARMOR_15_04"); //JakÈ?
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MILTEN_PLATEARMOR_13_05"); //Svitek zniËenÌ zla, ohnivÈ koule a 2 kamennÈ krystaly.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MILTEN_PLATEARMOR_13_06"); //JedinÏ tak dok·ûu dos·hnout podobn˝ch v˝sledk˘ jako p¯i provedenÌ ritu·lu v kl·öteru v Nordmaru
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MILTEN_PLATEARMOR_13_07"); //Dobr·, jdu sehnat ti vÏci.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MILTEN_PLATEARMOR_13_08"); //HodnÏ ötÏstÌ, douf·m ûe se ti to povede.	
	B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR,"Milten Bude na ritu·l pot¯ebovat svitek zniËenÌ zla, svitek ohnivÈ koule a 2 kamennÈ krystaly.");
};
instance Ninja_ArmorExpansion_DIA_MILTEN_RITUALARMOR (C_INFO)
{
	npc			 =  PC_Mage_NW;
	nr			 =  8;
	condition	 = 	Ninja_ArmorExpansion_DIA_MILTEN_RITUALARMOR_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_MILTEN_RITUALARMOR_Info;
	permanent	 = 	TRUE;
	description	 = 	"M·m vöe co budeö pot¯ebovat.";
};
func int Ninja_ArmorExpansion_DIA_MILTEN_RITUALARMOR_Condition ()
{	
	if (Npc_KnowsInfo (other,Ninja_ArmorExpansion_DIA_MILTEN_PLATEARMOR))
    && (Npc_HasItems(other, ItSc_InstantFireball) >= 1)
    && (Npc_HasItems(other, ItSc_PalDestroyEvil) >= 1)
    && (Npc_HasItems(other, ItMi_Rockcrystal) >= 2)
	&& (Npc_HasItems(other, Ninja_ArmorExpansion_ITAR_PAL_F) >= 1)
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_MILTEN_RITUALARMOR_Info ()
{
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MILTEN_RITUALARMOR_15_01"); //M·m vöe co budeö pot¯ebovat.
		B_GiveInvItems(other, self, Ninja_ArmorExpansion_ITAR_PAL_F, 1);
		B_GiveInvItems(other, self, ItSc_InstantFireball, 1);
		B_GiveInvItems(other, self, ItSc_PalDestroyEvil, 1);
		B_GiveInvItems(other, self, ItMi_Rockcrystal, 2);
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MILTEN_RITUALARMOR_13_02"); //SkvÏle. M˘ûu zaËÌt s ritu·lem.
	B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR,"Donesl jsem Miltenovi vöechno pot¯ebnÈ pro ritu·l.");
};
//-------------------------------------
var int Ninja_ArmorExpansion_MILTEN_BIGMAGIC_DAY;
var int Ninja_ArmorExpansion_MILTEN_LORDRMOR_MakeArmor;
var int Ninja_ArmorExpansion_Player_GotARCArmor;
//-------------------------------------
instance Ninja_ArmorExpansion_DIA_MILTEN_LORDRMOR (C_INFO)
{
	npc			 =  PC_Mage_NW;
	nr			 =  8;
	condition	 = 	Ninja_ArmorExpansion_DIA_MILTEN_LORDRMOR_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_MILTEN_LORDRMOR_Info;
	permanent	 = 	TRUE;
	description	 = 	"Super, a kdy bude ritu·l hotov˝?";
};
func int Ninja_ArmorExpansion_DIA_MILTEN_LORDRMOR_Condition ()
{	
	if (Npc_KnowsInfo (other,Ninja_ArmorExpansion_DIA_MILTEN_RITUALARMOR))
	&& (Ninja_ArmorExpansion_Player_GotARCArmor == FALSE)
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_MILTEN_LORDRMOR_Info()
{	
	AI_Output (other, self, "Ninja_ArmorExpansion_DIA_MILTEN_LORDRMOR_15_00"); //Super, a kdy bude ritu·l hotov˝?

	if (Npc_HasItems(self, ItSc_InstantFireball) >= 1)
    && (Npc_HasItems(self, ItSc_PalDestroyEvil) >= 1)
    && (Npc_HasItems(self, ItMi_Rockcrystal) >= 2)
	&& (Npc_HasItems(self, Ninja_ArmorExpansion_ITAR_PAL_F) >= 1)
	{
		if (Ninja_ArmorExpansion_MILTEN_LORDRMOR_MakeArmor == FALSE)
		{
			Ninja_ArmorExpansion_MILTEN_BIGMAGIC_DAY = (Wld_GetDay() + 1);
			Ninja_ArmorExpansion_MILTEN_LORDRMOR_MakeArmor = TRUE;
		};
		
		if (Ninja_ArmorExpansion_MILTEN_LORDRMOR_MakeArmor == TRUE)
		&& (Ninja_ArmorExpansion_MILTEN_BIGMAGIC_DAY > Wld_GetDay())
		{
			AI_Output (self, other, "Ninja_ArmorExpansion_DIA_MILTEN_LORDRMOR_08_01"); //Chvilku to potrv·, vraù se zÌtra.
		}
		else
		{
			CreateInvItems (self, Ninja_ArmorExpansion_ITAR_PAL_A, 1);

			AI_Output (self, other, "Ninja_ArmorExpansion_DIA_MILTEN_LORDRMOR_08_02"); //Uû jsem ho provedl, povedlo se.
			B_GiveInvItems (self, other, Ninja_ArmorExpansion_ITAR_PAL_A, 1);
			AI_Output (self, other, "Ninja_ArmorExpansion_DIA_MILTEN_LORDRMOR_08_03"); //Vöe probÏhlo p¯ekvapivÏ hladce.
			AI_Output (other, self, "Ninja_ArmorExpansion_DIA_MILTEN_LORDRMOR_15_04"); //To jsem r·d, dÌky.
			AI_Output (self, other, "Ninja_ArmorExpansion_DIA_MILTEN_LORDRMOR_08_05"); //Nem·ö za co, aù ti slouûÌ.
			Ninja_ArmorExpansion_Player_GotARCArmor = TRUE;
			Log_SetTopicStatus(NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR, LOG_SUCCESS);
			B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR,"Miltenovi se povedlo navr·tit zbroji jejÌ magickou moc.");
		};
	}
	else
	{
		AI_Output (self, other, "Ninja_ArmorExpansion_DIA_Wolfee_ArmorReady_08_06"); //NN
	};
};
INSTANCE Ninja_ArmorExpansion_DIA_Bennet_CROSSBOW		(C_INFO)
{
	npc			 = 	SLD_809_Bennet;
	nr			 = 	990;
	condition	 = 	Ninja_ArmorExpansion_DIA_Bennet_CROSSBOW_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_Bennet_CROSSBOW_Info;
	permanent	 = 	TRUE; 
	description	 = 	"NemÏl by se pro mnÏ lehËÌ zbroj? (VymÏnit zbroj Drakobijce)";
};
func int Ninja_ArmorExpansion_DIA_Bennet_CROSSBOW_Condition ()
{	
	if (Npc_Hasitems(other, ItAr_DJG_L) > 0)
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_Bennet_CROSSBOW_Info ()
{
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_Bennet_CROSSBOW_15_01"); //NemÏl by se pro mnÏ lehËÌ zbroj?.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_Bennet_CROSSBOW_15_02"); //Neber si to öpatnÏ, jsem za nÌ vdÏËn˝ ale preferuji lehËÌ.
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Bennet_CROSSBOW_13_03"); //VlastnÏ ano, jednu takovou jsem taky vytvo¯il, jestli chceö tak ti je m˘ûu vymÏnit.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_Bennet_CROSSBOW_15_04"); //DÌky, Beru jÌ.
        B_GiveInvItems(other, self, ItAr_DJG_L, 1);	
		B_GiveInvItems(self, other, Ninja_ArmorExpansion_ITAR_DJG_CL, 1);		
        AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Bennet_CROSSBOW_15_9");//Tady je, aù ti slouûÌ.
};
instance Ninja_ArmorExpansion_DIA_HARAD_END_MAKE	(C_INFO)
{
	npc		 = 	VLK_412_Harad;
	nr		 = 	8;
	condition	 = 	Ninja_ArmorExpansion_DIA_HARAD_END_MAKE_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_HARAD_END_MAKE_Info;
	permanent	 = 	FALSE;
	description	 = 	"Nemohl by si mi p¯ekovat moji zbroj paladina?";
};
func int Ninja_ArmorExpansion_DIA_HARAD_END_MAKE_Condition ()
{	
	if (Npc_Hasitems(other, ItAr_PAL_H) > 0)
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_HARAD_END_MAKE_Info ()
{
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_HARAD_END_MAKE_1"); //Nemohl by si mi p¯ekovat moji zbroj paladina?
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_END_MAKE_2"); //UrËitÏ, ale nevÌm co by se ti na nÌ nelÌbilo.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_HARAD_END_MAKE_3"); //PouûÌv·m zbranÏ na d·lku, tak bych ji chtÏl odlehËit.
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_END_MAKE_4"); //To by nemÏlo b˝t tÏûkÈ, urËitÏ bych to zvl·dl.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_HARAD_END_MAKE_5"); //Co za to budeö chtÌt?
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_END_MAKE_6"); //Nic, sluûbu pro paladina vykon·m zadarmo.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_HARAD_END_MAKE_7"); //Tady ji m·ö v tom p¯ÌpadÏ.	
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
        
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_END_MAKE_8"); //Hotovo, nebylo to nic tÏûkÈho. Tady je.
		B_GiveInvItems(self, other, Ninja_ArmorExpansion_ITAR_PAL_CH, 1);
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_HARAD_END_MAKE_9"); //DÌky!
};
//-----------------------------
var int Ninja_ArmorExpansion_DIA_Bennet_PATCH_DJG_ARMOR_CM_permanent;
//-----------------------------

instance Ninja_ArmorExpansion_DIA_Bennet_PATCH_DJG_ARMOR_CM		(C_INFO)
{
	npc		 	 = 	SLD_809_Bennet;
	nr           = 	8;
	condition	 = 	Ninja_ArmorExpansion_DIA_Bennet_PATCH_DJG_ARMOR_CM_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_Bennet_PATCH_DJG_ARMOR_CM_Info;
	permanent	 = 	TRUE;
	description	 =	"St¯ednÌ zbroj lovce drak˘: Ochrana:  SeËnÈ 110, BodnÈ 110. (12000 Zlat˝ch)"; //Wenn ‰ndern, dann bitte auch in der Info-Instanz. s.u.
};

func int Ninja_ArmorExpansion_DIA_Bennet_PATCH_DJG_ARMOR_CM_Condition ()
{
	IF (Ninja_ArmorExpansion_DIA_Bennet_PATCH_DJG_ARMOR_CM_permanent == FALSE)
	&& (hero.guild == GIL_DJG)
	&& (Show_DJG_Armor_M == TRUE)
	{
		return TRUE;
	};	
};

func void Ninja_ArmorExpansion_DIA_Bennet_PATCH_DJG_ARMOR_CM_Info ()
{	
	AI_Output	(other,self ,"Ninja_ArmorExpansion_DIA_Bennet_DJG_ARMOR_M_15_00"); //KoupÌm tu zbroj.
	
	if (Npc_HasItems (other,itmi_Gold) >= 12000)
	{
		AI_Output 	(self ,other,"Ninja_ArmorExpansion_DIA_Bennet_DJG_ARMOR_M_06_01"); //SkvÏle. Bude se ti lÌbit.
		AI_Output	(other,self ,"Ninja_ArmorExpansion_DIA_Bennet_DJG_ARMOR_M_15_02"); //Za takovou cenu v to douf·m.
		AI_Output 	(self ,other,"Ninja_ArmorExpansion_DIA_Bennet_DJG_ARMOR_M_06_03"); //P¯esvedËÌö se, ûe to za tu cenu st·lo.
		
		B_GiveInvItems (other,self,ItMi_Gold,12000);
		CreateInvItems (self,Ninja_ArmorExpansion_ITAR_DJG_CM,1);
		B_GiveInvItems (self,other,Ninja_ArmorExpansion_ITAR_DJG_CM,1);
		
		Ninja_ArmorExpansion_DIA_Bennet_PATCH_DJG_ARMOR_CM_permanent = TRUE;
	}
	else
	{
		AI_Output 	(self ,other,"Ninja_ArmorExpansion_DIA_Bennet_DJG_ARMOR_M_06_04"); //Nem·ö dost zlat˝ch.
	};	
	
};
//---------------------------------------------------
var int Ninja_ArmorExpansion_DIA_Bennet_PATCH_DJG_ARMOR_CH_permanent;
//---------------------------------------------------

instance Ninja_ArmorExpansion_DIA_Bennet_PATCH_DJG_ARMOR_CH		(C_INFO)
{
	npc		 	 = 	SLD_809_Bennet;
	nr           = 	8;
	condition	 = 	Ninja_ArmorExpansion_DIA_Bennet_PATCH_DJG_ARMOR_CH_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_Bennet_PATCH_DJG_ARMOR_CH_Info;
	permanent	 = 	TRUE;
	description	 =	"TÏûk· zbroj lovce drak˘: Obrana: SeËnÈ 140, BodnÈ 140. (20000 zlat˝ch)"; //Wenn ‰ndern, dann bitte auch in der Info-Instanz. s.u.
};

func int Ninja_ArmorExpansion_DIA_Bennet_PATCH_DJG_ARMOR_CH_Condition ()
{
	IF (Ninja_ArmorExpansion_DIA_Bennet_PATCH_DJG_ARMOR_CH_permanent == FALSE)
	&& (hero.guild == GIL_DJG)
	&& (Npc_KnowsInfo (other,Ninja_ArmorExpansion_DIA_Bennet_BetterArmor))
	{
		return TRUE;
	};	
};

func void Ninja_ArmorExpansion_DIA_Bennet_PATCH_DJG_ARMOR_CH_Info ()
{	
	AI_Output	(other,self ,"Ninja_ArmorExpansion_DIA_Bennet_DJG_ARMOR_H_15_00"); //Dej mi tu zbroj
	
	if (Npc_HasItems (other,itmi_Gold) >= 20000)
	{
		AI_Output 	(self ,other,"Ninja_ArmorExpansion_DIA_Bennet_DJG_ARMOR_H_06_01"); //Tohle je nejlepöÌ zbroj kterou jsem kdy vyrobil.
		AI_Output 	(self ,other,"Ninja_ArmorExpansion_DIA_Bennet_DJG_ARMOR_H_06_02"); //Je to opravdov˝ mistrovsk˝ kousek.
		
		B_GiveInvItems (other,self,ItMi_Gold,20000);
		CreateInvItems (self,Ninja_ArmorExpansion_ITAR_DJG_CH,1);
		B_GiveInvItems (self,other,Ninja_ArmorExpansion_ITAR_DJG_CH,1);
		
		Ninja_ArmorExpansion_DIA_Bennet_PATCH_DJG_ARMOR_CH_permanent = TRUE;
	}
	else
	{
		AI_Output 	(self ,other,"Ninja_ArmorExpansion_DIA_Bennet_DJG_ARMOR_H_06_03"); //Nem·ö dost zlata.
	};	
	
};
instance Ninja_ArmorExpansion_DIA_GAROND_KNIGHT_ARMORREWARD (C_INFO)
{
	npc			 =  PAL_250_Garond;
	nr			 =  888;
	condition	 = 	Ninja_ArmorExpansion_DIA_GAROND_KNIGHT_ARMORREWARD_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_GAROND_KNIGHT_ARMORREWARD_Info;
	permanent	 = 	FALSE;
	important    =	TRUE;
	description	 = 	"";
};
func int Ninja_ArmorExpansion_DIA_GAROND_KNIGHT_ARMORREWARD_Condition ()
{	
	if (MIS_KilledDragons >= 2)
	&& (other.guild == GIL_PAL)
	{
		return TRUE;
	};
};
func void Ninja_ArmorExpansion_DIA_GAROND_KNIGHT_ARMORREWARD_Info ()
{	
		AI_Output (self,other,"Ninja_ArmorExpansion_DIA_GAROND_KNIGHT_ARMORREWARD_01_03"); //Zadrû.
		AI_Output (self,other,"Ninja_ArmorExpansion_DIA_GAROND_KNIGHT_ARMORREWARD_01_04"); //Jsi jedin˝ z n·s komu se zatÌm poda¯ilo nÏj·kÈho draka zabÌt.
		AI_Output (self,other,"Ninja_ArmorExpansion_DIA_GAROND_KNIGHT_ARMORREWARD_01_05"); //M·m nadÏji ûe se ti povede je dostat vöechny.
		B_GiveInvItems(self, other, Ninja_ArmorExpansion_ITAR_PAL_MH, 1);
		AI_Output (self,other,"Ninja_ArmorExpansion_DIA_GAROND_KNIGHT_ARMORREWARD_01_06"); //Tady m·ö, tohle by ti mÏlo pomoci ve tvÈm ˙kolu. A teÔ uû bÏû, nenÌ moc Ëasu nazbyt.
		AI_Output (other,self,"Ninja_ArmorExpansion_DIA_GAROND_KNIGHT_ARMORREWARD_15_01"); //DÌky.
};
///////////////////////////////////////////////////////////////////////
//	Info RavenDead
///////////////////////////////////////////////////////////////////////
instance Ninja_ArmorExpansion_DIA_Addon_Greg_RavenDead_ARMOREXPANSION_NINJA		(C_INFO)
{
	npc		 = 	PIR_1320_Addon_Greg;
	nr		 = 	2;
	condition	 = 	Ninja_ArmorExpansion_DIA_Addon_Greg_RavenDead_ARMOREXPANSION_NINJA_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_Addon_Greg_RavenDead_ARMOREXPANSION_NINJA_Info;

	description	 = 	"Co takhle nÏj·k· lepöÌ zbroj?";
};

func int Ninja_ArmorExpansion_DIA_Addon_Greg_RavenDead_ARMOREXPANSION_NINJA_Condition ()
{
	if ((Npc_KnowsInfo (other,Ninja_ArmorExpansion_DIA_Addon_Greg_RavenDead) == TRUE))
	{
		return TRUE;
	};
};

func void Ninja_ArmorExpansion_DIA_Addon_Greg_RavenDead_ARMOREXPANSION_NINJA_Info ()
{
	AI_Output	(other, self, "Ninja_ArmorExpansion_DIA_Addon_Greg_RavenDead_15_00"); //Co takhle nÏj·k· lepöÌ zbroj?
	AI_Output	(self, other, "Ninja_ArmorExpansion_DIA_Addon_Greg_RavenDead_01_01"); //Sakra, co si myslÌö?
	AI_Output	(self, other, "Ninja_ArmorExpansion_DIA_Addon_Greg_RavenDead_01_02"); //Odkrouhneö Ravena a najednou je z tebe nov˝ kapit·n?
	AI_Output	(other, self, "Ninja_ArmorExpansion_DIA_Addon_Greg_RavenDead_15_03"); //Takhle jsem to nemyslel. Kapit·nem z˘staneö ty, jenom mi jde o tu zbroj.	
	AI_Output	(self, other, "Ninja_ArmorExpansion_DIA_Addon_Greg_RavenDead_01_04"); //Dobr·, m˘ûu ti prodat jeden z m˝ch osobnÌch kousk˘.	
	AI_Output	(self, other, "Ninja_ArmorExpansion_DIA_Addon_Greg_RavenDead_01_05"); //Ale p¯ijde tÏ to draho, chci za nÌ 2700 zlat˝ch
	B_LogEntry (Topic_Addon_PIR_Trader, "Od Grega si m˘ûu koupit zbroj kapit·na za 2700 zlat˝ch");
};
///////////////////////////////////////////////////////////////////////
//	Info RavenDead
///////////////////////////////////////////////////////////////////////
Var int Ninja_ArmorExpansion_ARMOREXPANSION_BOUGHT_CAPTAIN;
instance Ninja_ArmorExpansion_DIA_Addon_Greg_BUY_ARMOREXPANSION_NINJA		(C_INFO)
{
	npc		 = 	PIR_1320_Addon_Greg;
	nr		 = 	2;
	condition	 = 	Ninja_ArmorExpansion_DIA_Addon_Greg_BUY_ARMOREXPANSION_NINJA_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_Addon_Greg_BUY_ARMOREXPANSION_NINJA_Info;

	description	 = 	"Koupit kapit·nsk˝ pl·öù (75/75/75/25/15, +5% jednoruËnÌ talent, +10 Obratnost, Cena 2700)";
};

func int Ninja_ArmorExpansion_DIA_Addon_Greg_BUY_ARMOREXPANSION_NINJA_Condition ()
{
	if ((Npc_KnowsInfo (other,Ninja_ArmorExpansion_DIA_Addon_Greg_RavenDead_ARMOREXPANSION_NINJA) == TRUE))
	&& (Ninja_ArmorExpansion_ARMOREXPANSION_BOUGHT_CAPTAIN == FALSE)
	{
		return TRUE;
	};
};

func void Ninja_ArmorExpansion_DIA_Addon_Greg_BUY_ARMOREXPANSION_NINJA_Info ()
{
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_Addon_Greg_BUY_ARMOREXPANSION_NINJA_4_1"); //Prodej mi kapit·nskou zbroj.
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 2700))
	{	
		AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Addon_Greg_BUY_ARMOREXPANSION_NINJA_4_2"); //Tady jÌ m·ö, ale pamatuj si ûe kapit·nem z˘st·v·m j·.
		B_GiveInvItems(self, other, ITAR_PIR_H_ARMOREXPANSION, 1);
        Ninja_ArmorExpansion_ARMOREXPANSION_BOUGHT_CAPTAIN = TRUE;
	}
	else 
	{
		AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Addon_Greg_BUY_ARMOREXPANSION_NINJA_4_3"); //Vraù se aû budeö mÌt u sebe dost zlata.
	};
};

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
	description	 = 	"Pot�ebuju v�ce surov� oceli.";
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
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_15_01"); //Pot�ebuju v�ce surov� oceli.
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_02"); //M��u ti prodat n�j�ke z m�ch osobn�ch z�sob, ale vyjde t� to draho.
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_03"); //200 zlat�ch za jeden kus.
};
instance Ninja_ArmorExpansion_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL		(C_INFO)
{
	npc		 = 	VLK_457_Brian;
	nr		 = 	3;
	condition	 = 	Ninja_ArmorExpansion_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_Info;
	permanent	 = 	TRUE;
	description	 = 	"Prodej mi jeden kus surov� oceli. (Cena: 200 zlat�ch).";
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
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_1"); //Prodej mi jeden kus surov� oceli.
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 200))
	{	
		AI_Output(self, other, "Ninja_ArmorExpansion_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_2"); //Tady je.
		B_GiveInvItems (self, other, ItMiSwordraw, 1);	
	}
	else 
	{
		AI_Output(self, other, "Ninja_ArmorExpansion_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_3"); //P�ij� a� bude� m�t u sebe dost zlata
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
	description	 = 	"Koupit Loveck� Gambeson (350 zlat�ch). 20/20/20 bonus pro zbran� na d�lku.";
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
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_Matteo_LEATHER_15_00"); //Dob�e, dej mi tu zbroj.
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 350))
	{	
		AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Matteo_LEATHER_09_01"); //Bude se ti l�bit.

		Ninja_ArmorExpansion_Matteo_GAMBESONBought = B_GiveInvItems(self, other, Ninja_ArmorExpansion_ITAR_GAMBESON, 1);
	}
	else 
	{
		AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Matteo_LEATHER_09_02"); //Ta zbroj m� svoj� cenu - a taky za n� stoj� tak�e se vra� a� bude� m�t dost zlata.
	};
};
//-------------------------------------
const string	NINJA_ARMOREXPANSION_TOPIC_MORTIS_ARMOR				=   "Vylep�en� zbroje domobrany.";
var int Ninja_ArmorExpansion_MORTIS_ARMORQUESTION;
//-------------------------------------
instance Ninja_ArmorExpansion_DIA_MORTIS_ARMORQUESTION (C_INFO)
{
	npc			 =  MIL_314_MORTIS;
	nr			 =  4;
	condition	 = 	Ninja_ArmorExpansion_DIA_MORTIS_ARMORQUESTION_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_MORTIS_ARMORQUESTION_Info;
	permanent	 = 	FALSE;
	description	 = 	"Nem� pro mn� n�jakou lep�� zbroj?";
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
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MORTIS_ARMORQUESTION_15_01"); //Nem� pro mn� n�jakou lep�� zbroj?
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_ARMORQUESTION_13_02"); //Jedin� Lord Andre ti m��e d�t lep�� zbroj.
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_ARMORQUESTION_13_03"); //Ale to neznamen� �e ti nem��u trochu vylep�it tu co u� m�, nebyl by jsi prvn� komu jsem to d�lal.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MORTIS_ARMORQUESTION_15_04"); //Co to bude st�t?
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_ARMORQUESTION_13_05"); //Bude� si muset p�in�st materi�l, j� tu ��dn� na zbyt nem�m.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_ARMORQUESTION_13_06"); //A n�j�k� zlato za moj� pr�ci.
	Log_CreateTopic (NINJA_ARMOREXPANSION_TOPIC_MORTIS_ARMOR,LOG_NOTE);
	B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MORTIS_ARMOR,"Mortis mi m��e vylep�it zbroje domobrany kdy� mu p�inesu materi�ly a zlato.");
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
	description	 = 	"Cht�l bych vylep�it lehkou zbroj";
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
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MORTIS_MIL_LTHINGS_15_01"); //Cht�l bych vylep�it lehkou zbroj.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MORTIS_MIL_LTHINGS_15_04"); //Co na to bude� pot�ebovat?.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_MIL_LTHINGS_13_06"); //Na lehkou zbroj bude sta�it jeden ocelov� prut a kan�� k��e.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_MIL_LTHINGS_13_07"); //A �ekn�me �e 200 zlat�ch mi bude za tu pr�ci sta�it.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_MIL_LTHINGS_13_08"); //A samozrejm� mi bude� muset taky p�in�st tu zbroj.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MORTIS_MIL_LTHINGS_15_09"); //Dobr�, pokus�m se to sehnat.
		B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MORTIS_ARMOR,"Na vylep�en� lehk� zbroje bude Mortis pot�ebovat jeden ocelov� prut, kan�� k��i a 200 zlat�ch.");
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
	description	 = 	"M�m v�echny pot�ebn� materi�ly na vylep�en� lehk� zbroje.";
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
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MORTIS_LREFORGEDARMOR_15_01"); //M�m v�echny pot�ebn� materi�ly na vylep�en� lehk� zbroje.

	if (Npc_HasItems(other,ItAr_MIL_L) >= 0) && (Npc_HasItems(other,ItMiSwordraw) >= 1) && (Npc_HasItems(other,ItAt_Addon_KeilerFur) >= 1) && (Npc_HasItems(other,ItMi_Gold) >= 200)
	{	
        B_GivePlayerXP(20);
        B_GiveInvItems(other, self, ItAr_MIL_L, 1);				
        B_GiveInvItems(other, self, ItMiSwordraw, 1);
        B_GiveInvItems(other, self, ItAt_Addon_KeilerFur, 1);
        B_GiveInvItems(other, self, ItMi_Gold, 200);
        AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_LREFORGEDARMOR_13_12"); //Dob�e, d�m se tedy do pr�ce.
        
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
        AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_LREFORGEDARMOR_13_14"); //Tady ji m�, docela se mi povedla �ekl bych.
        AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MORTIS_LREFORGEDARMOR_15_15"); //D�ky.
		B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MORTIS_ARMOR,"Mortis mi vylep�il lehkou zbroj.");
	}
	else 
	{
	    AI_Output (self, other, "Ninja_ArmorExpansion_DIA_MORTIS_LREFORGEDARMOR_13_16"); //Vra� se a� to v�echno bude� m�t u sebe.
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
	description	 = 	"Cht�l bych vylep�it st�edn� zbroj";
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
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MORTIS_MILITIA_MediumHUH_15_01"); //Cht�l bych vylep�it st�edn� zbroj.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MORTIS_MILITIA_MediumHUH_15_03"); //Co na to bude� pot�ebovat?.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_MILITIA_MediumHUH_13_04"); //Na st�edn� zbroj si bude� muset p�in�st o n�co v�c.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_MILITIA_MediumHUH_13_05"); //dva ocelov� pruty a k��i z Warga.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_MILITIA_MediumHUH_13_06"); //Budu za tu pr�ci cht�t 600 zlat�ch.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MORTIS_MILITIA_MediumHUH_15_08"); //Dobr�, pokus�m se to sehnat.
		B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MORTIS_ARMOR,"Na vylep�en� st�edn� zbroje bude Mortis pot�ebovat dva ocelov� pruty, k��i z Warga a 600 zlat�ch.");	
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
	description	 = 	"M�m v�echny pot�ebn� materi�ly na vylep�en� st�edn� zbroje.";
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
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MORTIS_MediumArmor_15_01"); //M�m v�echny pot�ebn� materi�ly na vylep�en� st�edn� zbroje.

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
        AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_MediumArmor_13_11"); //Dob�e, d�m se tedy do pr�ce.
        
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
        AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_MediumArmor_13_13"); //Tady ji m�, docela se mi povedla �ekl bych.
        AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MORTIS_MediumArmor_15_14"); //D�ky.
				B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MORTIS_ARMOR,"Mortis mi vylep�il st�edn� zbroj.");
	}
	else 
	{
	    AI_Output (self, other, "Ninja_ArmorExpansion_DIA_MORTIS_MediumArmor_13_16"); //Vra� se a� to v�echno bude� m�t u sebe.
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
	description	 = 	"Nena�la by se tu pro mn� leh�� zbroj? (Vym�nit st�vaj�c�)";
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
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_ANDRE_MIL_SCOUTARMOR_15_01"); //Nena�la by se pro mn� lehh�� zbroj?.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_ANDRE_MIL_SCOUTARMOR_15_02"); //Rad�i pou��v�m zbran� na d�lku.
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_ANDRE_MIL_SCOUTARMOR_13_03"); //M��u ti vym�nit tvoj� zbroj za zbroj zv�da. Je leh�� ne� standartn� v�bava tak�e bude� obratn�j��, ale i zraniteln�j��
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_ANDRE_MIL_SCOUTARMOR_15_04"); //Beru ji.
    B_GiveInvItems(other, self, ItAr_MIL_L, 1);	
	Ninja_ArmorExpansion_ANDRE_MIL_SCOUTArmorBought = B_GiveInvItems(self, other, Ninja_ArmorExpansion_ITAR_MIL_SCOUT, 1);		
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_ANDRE_MIL_SCOUTARMOR_15_9");//Tady m�, a� ti slou�� dob�e.
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
		AI_Output (self,other,"Ninja_ArmorExpansion_DIA_ANDRE_MILITIA_ARMORREWARD_01_03"); //Vykonal si v�echny moje zad�n�.
		AI_Output (self,other,"Ninja_ArmorExpansion_DIA_ANDRE_MILITIA_ARMORREWARD_01_04"); //T�m si mi dok�zal �e si zaslou�� pov��en�.
		B_GiveInvItems(self, other, ITAR_MIL_M, 1);
		AI_Output (self,other,"Ninja_ArmorExpansion_DIA_ANDRE_MILITIA_ARMORREWARD_01_05"); //Tady m�, st�edn� zbroj domobrany.
		AI_Output (self,other,"Ninja_ArmorExpansion_DIA_ANDRE_MILITIA_ARMORREWARD_01_06"); //A� ti slou�� voj�ku.
		AI_Output (other,self,"Ninja_ArmorExpansion_DIA_ANDRE_MILITIA_ARMORREWARD_15_01"); //D�ky.
};
instance Ninja_ArmorExpansion_DIA_LEE_SLD_SCOUTArmor (C_INFO)
{
	npc			 =  SLD_800_Lee;
	nr			 =  888;
	condition	 = 	Ninja_ArmorExpansion_DIA_LEE_SLD_SCOUTArmor_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_LEE_SLD_SCOUTArmor_Info;
	permanent	 = 	TRUE;
	description	 = 	"Nena�la by se tu pro mn� leh�� zbroj?";
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
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_LEE_SLD_SCOUTArmor_15_01"); //Nena�la by se pro mn� lehh�� zbroj?.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_LEE_SLD_SCOUTArmor_15_02"); //Rad�i pou��v�m zbran� na d�lku.
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_LEE_SLD_SCOUTArmor_13_03"); //J� nic takov�ho pro tebe nem�m, ale nejsi prvn� kdo n�co takov�ho chce
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_LEE_SLD_SCOUTArmor_13_04"); //Jdi za Wolfem, mysl�m si �e on by m�l pro tebe n�co m�t
};
instance Ninja_ArmorExpansion_DIA_WOLF_SLD_SCOUTArmorBought (C_INFO)
{
	npc			 =  SLD_811_Wolf;
	nr			 =  888;
	condition	 = 	Ninja_ArmorExpansion_DIA_WOLF_SLD_SCOUTArmorBought_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_WOLF_SLD_SCOUTArmorBought_Info;
	permanent	 = 	TRUE;
	description	 = 	"Sly�el jsem �e d�l� zbroje pro zv�dy.";
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
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_WOLF_SLD_SCOUTArmorBought_15_01"); //Sly�el jsem �e d�l� zbroje pro zv�dy.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_WOLF_SLD_SCOUTArmorBought_15_02"); //cht�l bych si vym�nit tu co m�m te�
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_WOLF_SLD_SCOUTArmorBought_13_03"); //Jist�, zrovna jsem jednu dokon�il. M��e� ji m�t zadarmo, kv�li star�m �as�m.
	B_GiveInvItems(self, other, Ninja_ArmorExpansion_ITAR_SLD_SCOUT, 1);	
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_WOLF_SLD_SCOUTArmorBought_15_06"); //D�ky.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_WOLF_SLD_SCOUTArmorBought_13_07"); //Nem� za co
};
//-------------------------------------
const string	NINJA_ARMOREXPANSION_TOPIC_BENNET_ARMOR				=   "Vylep�en� zbroje �old�ka.";
//-------------------------------------
instance Ninja_ArmorExpansion_DIA_BENNET_SLDARMORASK (C_INFO)
{
	npc			 =  SLD_809_Bennet;
	nr			 =  887;
	condition	 = 	Ninja_ArmorExpansion_DIA_BENNET_SLDARMORASK_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_BENNET_SLDARMORASK_Info;
	permanent	 = 	FALSE;
	description	 = 	"M��e� mi prodat n�jakou lep�� zbroj?";
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
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_BENNET_SLDARMORASK_15_01"); //M��e� mi prodat n�jakou lep�� zbroj?.
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_SLDARMORASK_13_02"); //Ne, zbroje m��e rozd�vat jenom Lee.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_SLDARMORASK_13_03"); //M��u ti ale vylep�it tu co jsi u� dostal, ale budu za to n�co cht�t.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_BENNET_SLDARMORASK_15_04"); //A to?
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_SLDARMORASK_13_05"); //Material na v�robu, ten si p�inese� s�m, nebudu ti to d�lat ze sv�ch z�sob.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_SLDARMORASK_13_07"); //A nepracuju zadarmo, tak�e si taky p�iprav n�j�k� zlato.
		Log_CreateTopic (NINJA_ARMOREXPANSION_TOPIC_BENNET_ARMOR,LOG_NOTE);
	B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_BENNET_ARMOR,"Bennet mi m��e vylep�it zbroje �old�ka kdy� mu p�inesu materi�ly a zlato.");
};
instance Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedHUH (C_INFO)
{
	npc			 =  SLD_809_Bennet;
	nr			 =  887;
	condition	 = 	Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedHUH_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedHUH_Info;
	permanent	 = 	FALSE;
	description	 = 	"Chci si nechat vylep�it lehkou zbroj.";
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
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedHUH_15_01"); //Chci si nechat vylep�it lehkou zbroj.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedHUH_15_04"); //Co na to pot�ebuje�?
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedHUH_13_06"); //Na lehkou zbroj ti posta�� dva ocelov� pruty a dv� vl�� k��e.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedHUH_13_07"); //Budu cht�t 200 zlat�ch za v�robu.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedHUH_15_09"); //Dobr�.
		B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_BENNET_ARMOR,"Na vylep�en� lehk� zbroje bude Bennet pot�ebovat dva ocelov� pruty, dv� k��e z vlka a 200 zlat�ch.");	
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
	description	 = 	"M�m v�echny pot�ebn� materi�ly na vylep�en� lehk� zbroje.";
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
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedArmor_15_01"); //M�m v�echny pot�ebn� materi�ly na vylep�en� lehk� zbroje.	

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
        AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedArmor_13_12"); //Dob�e, tak se na to pod�vejme.
        
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
        AI_Output(other, self, "Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedArmor_15_15"); //D�ky.
				B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MORTIS_ARMOR,"Bennet mi vylep�il lehkou zbroj.");
	}
	else 
	{
	    AI_Output (self, other, "Ninja_ArmorExpansion_DIA_BENNET_SLD_LReforgedArmor_13_16"); //Vra� se a� to v�echno bude� m�t.
	};
};
instance Ninja_ArmorExpansion_DIA_Engor_RSkaufen		(C_INFO)
{
	npc		 	 = 	VLK_4108_Engor;
	nr		 	 = 	2;
	condition	 = 	Ninja_ArmorExpansion_DIA_Engor_RSkaufen_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_Engor_RSkaufen_Info;
	permanent 	 =  TRUE;
	description	 = 	"Koupit t�kou zbroj domobrany (Obrany: Se�n� 70, Bodn� 70. Cena: 2500 zlat�ch)"; 
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
		AI_Output (self, other, "Ninja_ArmorExpansion_DIA_Engor_RSkaufen_13_01"); //Tady ji m�, dob�e t� ochr�n�, je to zatracen� dobr� kousek.
		B_GiveInvItems (self,other, Ninja_ArmorExpansion_ITAR_MIL_H,1);
		Ninja_ArmorExpansion_DIA_Engor_RSkaufen_perm = TRUE;
	}
	else
	{
		AI_Output (self, other, "Ninja_ArmorExpansion_DIA_Engor_RSkaufen_13_02"); //Nejd��v mi p�ines to zlato.
	};
};
instance Ninja_ArmorExpansion_DIA_Engor_ARCHER_KAUFEN		(C_INFO)
{
	npc		 	 = 	VLK_4108_Engor;
	nr		 	 = 	35;
	condition	 = 	Ninja_ArmorExpansion_DIA_Engor_ARCHER_KAUFEN_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_Engor_ARCHER_KAUFEN_Info;
	permanent 	 =  TRUE;
	description	 = 	"Koupit zbroj domobr�nce Ku�i�n�ka (65/65, bonus na d�lku, Cena: 2300 zlat�ch)"; 
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
		AI_Output (self, other, "Ninja_ArmorExpansion_DIA_Engor_RSkaufen_13_01"); //Tady ji m�, dob�e t� ochr�n�, je to zatracen� dobr� kousek.
		B_GiveInvItems (self,other, Ninja_ArmorExpansion_ITAR_MIL_P,1);
		Ninja_ArmorExpansion_DIA_Engor_RSkaufen_perm = TRUE;
	}
	else
	{
		AI_Output (self, other, "Ninja_ArmorExpansion_DIA_Engor_RSkaufen_13_02"); //Nejd��v mi p�ines to zlato.
	};
};
instance Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedHUH (C_INFO)
{
	npc			 =  SLD_809_Bennet;
	nr			 =  888;
	condition	 = 	Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedHUH_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedHUH_Info;
	permanent	 = 	FALSE;
	description	 = 	"Chci si nechat vylep�it st�edn� zbroj.";
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
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedHUH_15_01"); //Chci si nechat vylep�it st�edn� zbroj.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedHUH_15_03"); //Co na to pot�ebuje�?
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedHUH_13_04"); //Na st�edn� zbroj toho bude pot�eba v�c.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedHUH_13_05"); //T�i ocelov� pruty, a jednu k��i z Warga.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedHUH_13_06"); //Za v�robu budu cht�t, �ekn�me 650 zlat�ch.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedHUH_15_08"); //Dobr�.
			B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_BENNET_ARMOR,"Na vylep�en� st�edn� zbroje bude Bennet pot�ebovat t�i ocelov� pruty, jednu k��i ze sk�et�ho psa, dv� k��e z trolla a 650 zlat�ch.");
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
	description	 = 	"M�m v�echny pot�ebn� materi�ly na vylep�en� st�edn� zbroje.";
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
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedArmor_15_01"); //M�m v�echny pot�ebn� materi�ly na vylep�en� st�edn� zbroje.
	
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
        AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedArmor_13_11"); //Dob�e, tak se na to pod�vejme.
        
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
        AI_Output(other, self, "Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedArmor_15_14"); //D�ky.
		B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MORTIS_ARMOR,"Bennet mi vylep�il st�edn� zbroj.");
	}
	else 
	{
	    AI_Output (self, other, "Ninja_ArmorExpansion_DIA_BENNET_MERC_MReforgedArmor_13_16"); //Vra� se a� to v�echno bude� m�t u sebe.
	};
};
instance Ninja_ArmorExpansion_DIA_Ulthar		(C_INFO)
{
	npc		 = 	KDF_502_Ulthar;
	nr		 = 	30;
	condition	 = 	Ninja_ArmorExpansion_DIA_Ulthar_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_Ulthar_Info;
	important	 =	TRUE;

	description  = 	"Vy�istil jsem v�echny svatin�.";
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
	AI_Output			(self, other, "Ninja_ArmorExpansion_DIA_Ulthar_05_01"); //Po�kej, cht�li jsme t� je�t� podpo�it v tv�m boji proti zlu novou zbroj�.
	AI_Output			(self, other, "Ninja_ArmorExpansion_DIA_Ulthar_05_02"); //Vezmi si tuhle zbroj k�i��ka Innose, jsem si jist� �e ji vyu�ije�.
	AI_Output			(other, self, "Ninja_ArmorExpansion_DIA_Ulthar_05_03"); //D�kuji.
	B_GiveInvItems (self, other, Ninja_ArmorExpansion_ITAR_CRUSADER, 1);
};
INSTANCE Ninja_ArmorExpansion_DIA_Lord_Hagen_CROSSBOW		(C_INFO)
{
	npc			 = 	PAL_200_Hagen;
	nr			 = 	990;
	condition	 = 	Ninja_ArmorExpansion_DIA_Lord_Hagen_CROSSBOW_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_Lord_Hagen_CROSSBOW_Info;
	permanent	 = 	TRUE; 
	description	 = 	"Nena�la by se pro mn� leh�� zbroj? (Vym�nit st�vaj�c�)";
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
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_Lord_Hagen_CROSSBOW_15_01"); //Nena�la by se pro mn� leh�� zbroj?.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_Lord_Hagen_CROSSBOW_15_02"); //Rad�i pou��v�m zbran� na d�lku.
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Lord_Hagen_CROSSBOW_13_03"); //M��u ti vym�nit tvoj� ryt��skou zbroj za odleh�enou variantu, ur�enou pro ku�i�n�ky.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_Lord_Hagen_CROSSBOW15_04"); //Beru j�.
        B_GiveInvItems(other, self, ItAr_PAL_M, 1);	
		B_GiveInvItems(self, other, Ninja_ArmorExpansion_ITAR_PAL_C, 1);		
        AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Lord_Hagen_CROSSBOW_15_9");//Nos ji se ct�, ryt��i.
};
//-------------------------------------
const string	NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR				=   "Vyj�me�n� Paladinsk� zbroj";
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
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Martin_ARCPALA_NOTIF_3_01"); //Sly�el jsem �e si se stal paladinem.
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Martin_ARCPALA_NOTIF_3_02"); //Mo�n� bych to pro tebe m�l n�co zvl�tn�ho
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_Martin_ARCPALA_NOTIF_3_03"); //O �em to mluv�?
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Martin_ARCPALA_NOTIF_3_04"); //M�m tu na sklad� v�jime�nou paladinskou zbroj.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Martin_ARCPALA_NOTIF_3_05"); //Sly�el jsem �e tenhle typ zbroje m� vysokou ochranu proti magick�m �tok�m
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Martin_ARCPALA_NOTIF_3_06"); //Ale u� tu nej�k� �as le��, a pob�e�n� po�as� j� neud�lalo dob�e
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Martin_ARCPALA_NOTIF_3_07"); //Nen� to ale nic co by se nedalo opravit, ty ur�it� na n�co p�ijde�.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Martin_ARCPALA_NOTIF_3_08"); //Za 2000 zlat�ch je tvoje.
	Log_CreateTopic (NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR, LOG_MISSION);
	Log_SetTopicStatus(NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR, LOG_RUNNING);
	B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR,"Martin mi nab�dl vyj�me�nou zbroj paladina. Zn� to jako zaj�mav� nab�dka.");
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
	description	 = 	"Dob�e, beru tu zbroj (Obrany: Se�n� 80, Bodn� 80. Cena: 2000 zlat�ch).";
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
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_Martin_ARKPALA_BOUGHT_4_1"); //Dob�e, beru tu zbroj.
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 2000))
	{	
		AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Martin_ARKPALA_BOUGHT_4_2"); //Dob�e, tady ji m�.
			B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR,"Koupil jsem si od Martina paladinskou zbroj. Je rezav� ale zku�en� kov�� by ji m�l opravit, jenom naj�t n�jak�ho kdo by byl ochotn� to pro mn� ud�lat.");

		Ninja_ArmorExpansion_Martin_ARKPALA_BOUGHT = B_GiveInvItems(self, other, Ninja_ArmorExpansion_ITAR_PAL_R, 1);
	}
	else 
	{
		AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Martin_ARKPALA_BOUGHT_4_3"); //P�ij� a� bude� m�t u sebe dost zlata
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
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_PAL_REFORGE_3_01"); //Nemohl, nem�m na to �as ani zku�enosti.
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MORTIS_PAL_REFORGE_3_02"); //Bude� si muset naj�t jin�ho kov��e.
		B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR,"Mortis mi zbroj neoprav�.");
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
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_PAL_REFORGE_3_01"); //Promi�, ale nemohl.
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_PAL_REFORGE_3_03"); //Nic proti tob� nem�m, v�dy� si mn� dostal z v�zen�.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_PAL_REFORGE_3_04"); //Ale co by si pomyslely ostatn� na farm� kdybych tu za�al opravovat zbroje paladin�?
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_BENNET_PAL_REFORGE_3_05"); //Bude� si muset naj�t jin�ho kov��e.
	B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR,"Bennet mi zbroj neoprav�.");
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
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_CARL_PAL_REFORGE_3_02"); //Promi� chlap�e, ale to je nad moje s�ly.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_CARL_PAL_REFORGE_3_03"); //Bude� si muset naj�t jin�ho kov��e.
	B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR,"Carl mi zbroj neoprav�.");
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
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_JAN_PAL_REFORGE_3_01"); //Jsem na tenk�m led� jenom abych tu mohl pracovat.
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_JAN_PAL_REFORGE_3_02"); //Nehodl�m riskovat �e mn� n�j�k� z tv�ch koleg� ud� za to �e se hrabu v paladinsk�ch v�cech.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_JAN_PAL_REFORGE_3_03"); //Bude� si muset naj�t jin�ho kov��e.
		B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR,"Drakobijec Jan mi zbroj neoprav�.");
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
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HUNO_PAL_REFORGE_3_01"); //S paladinsk�mi zbrojemi nem�m v�bec ��dn� zku�enosti, nic takov�ho v kolonii nebylo.
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HUNO_PAL_REFORGE_3_02"); //Promi�, ale s t�mhle ti nepom��u.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HUNO_PAL_REFORGE_3_03"); //Bude� si muset naj�t jin�ho kov��e.
	B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR,"Huno mi zbroj neoprav�.");
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
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PAL_SHOW_3_01"); //Uka� mi ji.
        B_GiveInvItems(other, self, Ninja_ArmorExpansion_ITAR_PAL_R, 1);	
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PAL_SHOW_3_02"); //U� je to dlouho co jsem takovou zbroj vid�l.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PAL_SHOW_3_03"); //Jsou kovan� z jin� slitiny kovu a magick� rudy ne� ostatn� a pak jsou po�ehn�ny m�gy z kl�tera v Nordmaru
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PAL_SHOW_3_04"); //Rez nepronikla moc hluboko, nebude moc t�k� ji opravit. 
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PAL_SHOW_3_05"); //Samoz�ejm� pokud budu m�t pot�ebn� materi�ly.
		B_GiveInvItems(self, other, Ninja_ArmorExpansion_ITAR_PAL_R, 1);
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PAL_SHOW_3_06"); //Kde si ji sehnal?
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_HARAD_PAL_SHOW_3_07"); //Prodal mi ji Martin, v�lela se mezi paladinsk�m vybaven�m tak jsem ji cht�l pou��t.
	B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR,"Harad souhlasil �e mi zbroj oprav�.");
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
	description	 = 	"Tak�e, co bude� na opravu zbroje pot�ebovat?";
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
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_15_01"); //Tak�e, co bude� na opravu zbroje pot�ebovat?
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_02"); //Hmm, nech mn� se zamyslet
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_04"); //N�kolik ocelov�ch prut�, 6 by m�lo sta�it.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_05"); //3 Hrudky magick� oceli.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_06"); //Co bude� za svou pr�ci cht�t?
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_07"); //Nic. Bude mi pot�en�m pracovat na takov�m kousku.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_15_08"); //Dobr�, pokus�m se to v�echno sehnat. 
	B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR,"Na opravu zbroje bude Harad pot�ebovat 6 ocelov�ch prut� a t�i hrudky rudy.");

	if (Npc_HasItems(other, Ninja_ArmorExpansion_ITAR_PAL_R) > 0)
    && (Npc_HasItems(other, ItMiSwordraw) >= 6)
    && (Npc_HasItems(other, ItMi_Nugget) >= 3)
	{	
        B_GivePlayerXP(100);
        B_GiveInvItems(other, self, Ninja_ArmorExpansion_ITAR_PAL_R, 1);				
        AI_Output(other, self, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_15_9");//Tady je ta zbroj.
        B_GiveInvItems(other, self, ItMiSwordraw, 6);
        B_GiveInvItems(other, self, ItMi_Nugget, 2);
        AI_Output(other, self, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_15_10"); //A tady pot�ebn� materi�ly.
        AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_11"); //Dobr�, d�m se do pr�ce.
        
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
		AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_14"); //Ale nedok�zal jsem ji navr�tit jej� magickou moc.
		AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_15"); //Na to bude� pot�ebovat zku�en�ho m�ga ohn�, kter� je ochotn� pro tebe zbroj posv�tit.
        AI_Output(other, self, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_15_14"); //D�ky.
		B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR,"Harad mi opravil paladinskou zbroj, ale nepoda�ilo se mu navr�tit jej� magickou moc. Budu pro to muset naj�t ochotn�ho m�ga ohn�, jeden takov� mn� napad�.");
	}
	else 
	{
	    AI_Output (self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_16"); //P�ij� a� to v�echno se�ene�.
	};
};
instance Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR (C_INFO)
{
	npc			 =  PC_Mage_NW;
	nr			 =  8;
	condition	 = 	Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_Info;
	permanent	 = 	FALSE;
	description	 = 	"Pot�ebuji tvoj� pomoc.";
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
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_15_01"); //Pot�ebuji tvoj� pomoc.
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_02"); //O co jde?
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_04"); //Pot�eboval bych navr�tit magickou moc t�to zbroji, nedok�zal by si to pro mn� ud�lat?
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_05"); //Uka� mi ji
	B_GiveInvItems(other, self, Ninja_ArmorExpansion_ITAR_PAL_F, 1);
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_06"); //P�ni, tohle jsem ne�ekal.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_07"); //Takov� zbroje nos� paladiny z Myrtany po�ehnat do kl�teru v Nordmaru.
		B_GiveInvItems(self, other, Ninja_ArmorExpansion_ITAR_PAL_F, 1);
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_07"); //O ritu�lu po�ehn�n� jsem n�co m�lo u� sly�el, ale nem�m je�t� dostatek znalost� abych ho provedl.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_07"); //Jestli se ale nepletu tak je zde v knihovn� kl�teru kniha kter� popisuje tento postup.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_07"); //Budu pot�ebovat n�j�k� �as si tu knihu nastudovat. Mezit�m by si se ale m�l postarat o draky v hornick�m �dol�, v� jak na tom je Garondova jednotka.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_15_08"); //Jasn�, uvid�me se pozd�ji Miltene.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_PALADIN_REFORGE_13_07"); //Hodn� �t�st�!	
	B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR,"Milten souhlasil �e mi pom��e navr�tit zbroji jej� magickou s�lu, ale nejd��ve si bude muset nastudovat postup ritu�lu. N�j�k� �as mu to zabere tak�e mi �ekl �e se m�m mezit�m postarat o draky v hornick�m �dol�.");
};
instance Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR (C_INFO)
{
	npc			 =  PC_Mage_NW;
	nr			 =  8;
	condition	 = 	Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_Info;
	permanent	 = 	FALSE;
	description	 = 	"Pot�ebuji tvoj� pomoc.";
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
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_15_01"); //Pot�ebuji tvoj� pomoc.
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_13_02"); //O co jde?
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_04"); //Pot�eboval bych navr�tit magickou moc t�to zbroji, nedok�zal by si to pro mn� ud�lat?
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_13_05"); //Uka� mi ji
	B_GiveInvItems(other, self, Ninja_ArmorExpansion_ITAR_PAL_F, 1);
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_13_06"); //P�ni, tohle jsem ne�ekal.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_13_07"); //Takov� zbroje nos� paladiny z Myrtany po�ehnat do kl�teru v Nordmaru.
		B_GiveInvItems(self, other, Ninja_ArmorExpansion_ITAR_PAL_F, 1);
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_13_08"); //O ritu�lu po�ehn�n� jsem n�co m�lo u� sly�el, ale nem�m je�t� dostatek znalost� abych ho provedl.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_13_09"); //Jestli se ale nepletu tak je zde v knihovn� kl�teru kniha kter� popisuje tento postup.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_13_10"); //Budu pot�ebovat n�j�k� �as si tu knihu nastudovat. Mezit�m by si se ale m�l postarat o draky v hornick�m �dol�, v� jak na tom je Garondova jednotka.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_15_11"); //Jasn�, uvid�me se pozd�ji Miltene.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MILTEN_PALADINARMOR_13_12"); //Hodn� �t�st�!	
	B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR,"Milten souhlasil �e mi pom��e navr�tit zbroji jej� magickou s�lu, ale nejd��ve si bude muset nastudovat postup ritu�lu. N�j�k� �as mu to zabere tak�e mi �ekl �e se m�m mezit�m postarat o draky v hornick�m �dol�.");
};
instance Ninja_ArmorExpansion_DIA_MILTEN_PLATEARMOR (C_INFO)
{
	npc			 =  PC_Mage_NW;
	nr			 =  8;
	condition	 = 	Ninja_ArmorExpansion_DIA_MILTEN_PLATEARMOR_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_MILTEN_PLATEARMOR_Info;
	permanent	 = 	FALSE;
	description	 = 	"Ud�lal si pokrok ve sv�ch studi�ch?";
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
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MILTEN_PLATEARMOR_15_01"); //Ud�lal si pokrok ve sv�ch studi�ch?
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MILTEN_PLATEARMOR_13_02"); //Ano, dok�u ��ct �e postupu ritu�lu rozum�m.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MILTEN_PLATEARMOR_13_03"); //Ale budu pot�ebovat p�r v�c�
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MILTEN_PLATEARMOR_15_04"); //Jak�?
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MILTEN_PLATEARMOR_13_05"); //Svitek zni�en� zla, ohniv� koule a 2 kamenn� krystaly.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MILTEN_PLATEARMOR_13_06"); //Jedin� tak dok�u dos�hnout podobn�ch v�sledk� jako p�i proveden� ritu�lu v kl�teru v Nordmaru
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MILTEN_PLATEARMOR_13_07"); //Dobr�, jdu sehnat ti v�ci.
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MILTEN_PLATEARMOR_13_08"); //Hodn� �t�st�, douf�m �e se ti to povede.	
	B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR,"Milten Bude na ritu�l pot�ebovat svitek zni�en� zla, svitek ohniv� koule a 2 kamenn� krystaly.");
};
instance Ninja_ArmorExpansion_DIA_MILTEN_RITUALARMOR (C_INFO)
{
	npc			 =  PC_Mage_NW;
	nr			 =  8;
	condition	 = 	Ninja_ArmorExpansion_DIA_MILTEN_RITUALARMOR_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_MILTEN_RITUALARMOR_Info;
	permanent	 = 	TRUE;
	description	 = 	"M�m v�e co bude� pot�ebovat.";
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
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_MILTEN_RITUALARMOR_15_01"); //M�m v�e co bude� pot�ebovat.
		B_GiveInvItems(other, self, Ninja_ArmorExpansion_ITAR_PAL_F, 1);
		B_GiveInvItems(other, self, ItSc_InstantFireball, 1);
		B_GiveInvItems(other, self, ItSc_PalDestroyEvil, 1);
		B_GiveInvItems(other, self, ItMi_Rockcrystal, 2);
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_MILTEN_RITUALARMOR_13_02"); //Skv�le. M��u za��t s ritu�lem.
	B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR,"Donesl jsem Miltenovi v�echno pot�ebn� pro ritu�l.");
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
	description	 = 	"Super, a kdy bude ritu�l hotov�?";
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
	AI_Output (other, self, "Ninja_ArmorExpansion_DIA_MILTEN_LORDRMOR_15_00"); //Super, a kdy bude ritu�l hotov�?

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
			AI_Output (self, other, "Ninja_ArmorExpansion_DIA_MILTEN_LORDRMOR_08_01"); //Chvilku to potrv�, vra� se z�tra.
		}
		else
		{
			CreateInvItems (self, Ninja_ArmorExpansion_ITAR_PAL_A, 1);

			AI_Output (self, other, "Ninja_ArmorExpansion_DIA_MILTEN_LORDRMOR_08_02"); //U� jsem ho provedl, povedlo se.
			B_GiveInvItems (self, other, Ninja_ArmorExpansion_ITAR_PAL_A, 1);
			AI_Output (self, other, "Ninja_ArmorExpansion_DIA_MILTEN_LORDRMOR_08_03"); //V�e prob�hlo p�ekvapiv� hladce.
			AI_Output (other, self, "Ninja_ArmorExpansion_DIA_MILTEN_LORDRMOR_15_04"); //To jsem r�d, d�ky.
			AI_Output (self, other, "Ninja_ArmorExpansion_DIA_MILTEN_LORDRMOR_08_05"); //Nem� za co, a� ti slou��.
			Ninja_ArmorExpansion_Player_GotARCArmor = TRUE;
			Log_SetTopicStatus(NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR, LOG_SUCCESS);
			B_LogEntry (NINJA_ARMOREXPANSION_TOPIC_MARTIN_ARMOR,"Miltenovi se povedlo navr�tit zbroji jej� magickou moc.");
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
	description	 = 	"Nem�l by se pro mn� leh�� zbroj? (Vym�nit zbroj Drakobijce)";
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
    AI_Output(other, self, "Ninja_ArmorExpansion_DIA_Bennet_CROSSBOW_15_01"); //Nem�l by se pro mn� leh�� zbroj?.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_Bennet_CROSSBOW_15_02"); //Neber si to �patn�, jsem za n� vd��n� ale preferuji leh��.
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Bennet_CROSSBOW_13_03"); //Vlastn� ano, jednu takovou jsem taky vytvo�il, jestli chce� tak ti je m��u vym�nit.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_Bennet_CROSSBOW_15_04"); //D�ky, Beru j�.
        B_GiveInvItems(other, self, ItAr_DJG_L, 1);	
		B_GiveInvItems(self, other, Ninja_ArmorExpansion_ITAR_DJG_CL, 1);		
        AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Bennet_CROSSBOW_15_9");//Tady je, a� ti slou��.
};
instance Ninja_ArmorExpansion_DIA_HARAD_END_MAKE	(C_INFO)
{
	npc		 = 	VLK_412_Harad;
	nr		 = 	8;
	condition	 = 	Ninja_ArmorExpansion_DIA_HARAD_END_MAKE_Condition;
	information	 = 	Ninja_ArmorExpansion_DIA_HARAD_END_MAKE_Info;
	permanent	 = 	FALSE;
	description	 = 	"Nemohl by si mi p�ekovat moji zbroj paladina?";
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
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_HARAD_END_MAKE_1"); //Nemohl by si mi p�ekovat moji zbroj paladina?
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_END_MAKE_2"); //Ur�it�, ale nev�m co by se ti na n� nel�bilo.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_HARAD_END_MAKE_3"); //Pou��v�m zbran� na d�lku, tak bych ji cht�l odleh�it.
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_END_MAKE_4"); //To by nem�lo b�t t�k�, ur�it� bych to zvl�dl.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_HARAD_END_MAKE_5"); //Co za to bude� cht�t?
    AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_END_MAKE_6"); //Nic, slu�bu pro paladina vykon�m zadarmo.
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_HARAD_END_MAKE_7"); //Tady ji m� v tom p��pad�.	
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
        
	AI_Output(self, other, "Ninja_ArmorExpansion_DIA_HARAD_END_MAKE_8"); //Hotovo, nebylo to nic t�k�ho. Tady je.
		B_GiveInvItems(self, other, Ninja_ArmorExpansion_ITAR_PAL_CH, 1);
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_HARAD_END_MAKE_9"); //D�ky!
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
	description	 =	"St�edn� zbroj lovce drak�: Ochrana:  Se�n� 110, Bodn� 110. (12000 Zlat�ch)"; //Wenn �ndern, dann bitte auch in der Info-Instanz. s.u.
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
	AI_Output	(other,self ,"Ninja_ArmorExpansion_DIA_Bennet_DJG_ARMOR_M_15_00"); //Koup�m tu zbroj.
	
	if (Npc_HasItems (other,itmi_Gold) >= 12000)
	{
		AI_Output 	(self ,other,"Ninja_ArmorExpansion_DIA_Bennet_DJG_ARMOR_M_06_01"); //Skv�le. Bude se ti l�bit.
		AI_Output	(other,self ,"Ninja_ArmorExpansion_DIA_Bennet_DJG_ARMOR_M_15_02"); //Za takovou cenu v to douf�m.
		AI_Output 	(self ,other,"Ninja_ArmorExpansion_DIA_Bennet_DJG_ARMOR_M_06_03"); //P�esved�� se, �e to za tu cenu st�lo.
		
		B_GiveInvItems (other,self,ItMi_Gold,12000);
		CreateInvItems (self,Ninja_ArmorExpansion_ITAR_DJG_CM,1);
		B_GiveInvItems (self,other,Ninja_ArmorExpansion_ITAR_DJG_CM,1);
		
		Ninja_ArmorExpansion_DIA_Bennet_PATCH_DJG_ARMOR_CM_permanent = TRUE;
	}
	else
	{
		AI_Output 	(self ,other,"Ninja_ArmorExpansion_DIA_Bennet_DJG_ARMOR_M_06_04"); //Nem� dost zlat�ch.
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
	description	 =	"T�k� zbroj lovce drak�: Obrana: Se�n� 140, Bodn� 140. (20000 zlat�ch)"; //Wenn �ndern, dann bitte auch in der Info-Instanz. s.u.
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
		AI_Output 	(self ,other,"Ninja_ArmorExpansion_DIA_Bennet_DJG_ARMOR_H_06_01"); //Tohle je nejlep�� zbroj kterou jsem kdy vyrobil.
		AI_Output 	(self ,other,"Ninja_ArmorExpansion_DIA_Bennet_DJG_ARMOR_H_06_02"); //Je to opravdov� mistrovsk� kousek.
		
		B_GiveInvItems (other,self,ItMi_Gold,20000);
		CreateInvItems (self,Ninja_ArmorExpansion_ITAR_DJG_CH,1);
		B_GiveInvItems (self,other,Ninja_ArmorExpansion_ITAR_DJG_CH,1);
		
		Ninja_ArmorExpansion_DIA_Bennet_PATCH_DJG_ARMOR_CH_permanent = TRUE;
	}
	else
	{
		AI_Output 	(self ,other,"Ninja_ArmorExpansion_DIA_Bennet_DJG_ARMOR_H_06_03"); //Nem� dost zlata.
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
		AI_Output (self,other,"Ninja_ArmorExpansion_DIA_GAROND_KNIGHT_ARMORREWARD_01_03"); //Zadr�.
		AI_Output (self,other,"Ninja_ArmorExpansion_DIA_GAROND_KNIGHT_ARMORREWARD_01_04"); //Jsi jedin� z n�s komu se zat�m poda�ilo n�j�k�ho draka zab�t.
		AI_Output (self,other,"Ninja_ArmorExpansion_DIA_GAROND_KNIGHT_ARMORREWARD_01_05"); //M�m nad�ji �e se ti povede je dostat v�echny.
		B_GiveInvItems(self, other, Ninja_ArmorExpansion_ITAR_PAL_MH, 1);
		AI_Output (self,other,"Ninja_ArmorExpansion_DIA_GAROND_KNIGHT_ARMORREWARD_01_06"); //Tady m�, tohle by ti m�lo pomoci ve tv�m �kolu. A te� u� b�, nen� moc �asu nazbyt.
		AI_Output (other,self,"Ninja_ArmorExpansion_DIA_GAROND_KNIGHT_ARMORREWARD_15_01"); //D�ky.
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

	description	 = 	"Co takhle n�j�k� lep�� zbroj?";
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
	AI_Output	(other, self, "Ninja_ArmorExpansion_DIA_Addon_Greg_RavenDead_15_00"); //Co takhle n�j�k� lep�� zbroj?
	AI_Output	(self, other, "Ninja_ArmorExpansion_DIA_Addon_Greg_RavenDead_01_01"); //Sakra, co si mysl�?
	AI_Output	(self, other, "Ninja_ArmorExpansion_DIA_Addon_Greg_RavenDead_01_02"); //Odkrouhne� Ravena a najednou je z tebe nov� kapit�n?
	AI_Output	(other, self, "Ninja_ArmorExpansion_DIA_Addon_Greg_RavenDead_15_03"); //Takhle jsem to nemyslel. Kapit�nem z�stane� ty, jenom mi jde o tu zbroj.	
	AI_Output	(self, other, "Ninja_ArmorExpansion_DIA_Addon_Greg_RavenDead_01_04"); //Dobr�, m��u ti prodat jeden z m�ch osobn�ch kousk�.	
	AI_Output	(self, other, "Ninja_ArmorExpansion_DIA_Addon_Greg_RavenDead_01_05"); //Ale p�ijde t� to draho, chci za n� 2700 zlat�ch
	B_LogEntry (Topic_Addon_PIR_Trader, "Od Grega si m��u koupit zbroj kapit�na za 2700 zlat�ch");
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

	description	 = 	"Koupit kapit�nsk� pl᚝ (75/75/75/25/15, +5% jednoru�n� talent, +10 Obratnost, Cena 2700)";
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
	AI_Output(other, self, "Ninja_ArmorExpansion_DIA_Addon_Greg_BUY_ARMOREXPANSION_NINJA_4_1"); //Prodej mi kapit�nskou zbroj.
	
	if (B_GiveInvItems(other, self, ItMi_Gold, 2700))
	{	
		AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Addon_Greg_BUY_ARMOREXPANSION_NINJA_4_2"); //Tady j� m�, ale pamatuj si �e kapit�nem z�st�v�m j�.
		B_GiveInvItems(self, other, ITAR_PIR_H_ARMOREXPANSION, 1);
        Ninja_ArmorExpansion_ARMOREXPANSION_BOUGHT_CAPTAIN = TRUE;
	}
	else 
	{
		AI_Output(self, other, "Ninja_ArmorExpansion_DIA_Addon_Greg_BUY_ARMOREXPANSION_NINJA_4_3"); //Vra� se a� bude� m�t u sebe dost zlata.
	};
};

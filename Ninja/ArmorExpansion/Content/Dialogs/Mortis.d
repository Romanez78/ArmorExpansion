//-------------------------------------
const string Patch_AE_TOPIC_MORTIS_ARMOR = "Vylepšení zbroje domobrany.";
//-------------------------------------

instance Patch_AE_DIA_MORTIS_ARMORQUESTION (C_INFO)
{
    npc          =  MIL_314_MORTIS;
    nr           =  4;
    condition    =  Patch_AE_DIA_MORTIS_ARMORQUESTION_Condition;
    information  =  Patch_AE_DIA_MORTIS_ARMORQUESTION_Info;
    permanent    =  FALSE;
    description  =  "Nemáš pro mně nějakou lepší zbroj?";
};
func int Patch_AE_DIA_MORTIS_ARMORQUESTION_Condition()
{
    if (other.guild == GIL_MIL)
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_MORTIS_ARMORQUESTION_Info()
{
    AI_Output(other, self, "PATCH_AE_DIA_MORTIS_ARMORQUESTION_15_01"); //Nemáš pro mně nějakou lepší zbroj?
    AI_Output(self, other, "PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_02"); //Jedině Lord Andre ti může dát lepší zbroj.
    AI_Output(self, other, "PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_03"); //Ale to neznamená že ti nemůžu trochu vylepšit tu co už máš, nebyl by jsi první komu jsem to dělal.
    AI_Output(other, self, "PATCH_AE_DIA_MORTIS_ARMORQUESTION_15_04"); //Co to bude stát?
    AI_Output(self, other, "PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_05"); //Budeš si muset přinést materiál, já tu žádný na zbyt nemám.
    AI_Output(self, other, "PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_06"); //A nějáké zlato za mojí práci.
    Log_CreateTopic(Patch_AE_TOPIC_MORTIS_ARMOR, LOG_NOTE);
    B_LogEntry(Patch_AE_TOPIC_MORTIS_ARMOR, "Mortis mi může vylepšit zbroje domobrany když mu přinesu materiály a zlato.");
};

instance Patch_AE_DIA_MORTIS_MIL_LTHINGS (C_INFO)
{
    npc          =  MIL_314_MORTIS;
    nr           =  4;
    condition    =  Patch_AE_DIA_MORTIS_MIL_LTHINGS_Condition;
    information  =  Patch_AE_DIA_MORTIS_MIL_LTHINGS_Info;
    permanent    =  FALSE;
    description  =  "Chtěl bych vylepšit lehkou zbroj";
};
func int Patch_AE_DIA_MORTIS_MIL_LTHINGS_Condition()
{
    if (Npc_Hasitems(other, ItAr_MIL_L) > 0)
    && (Npc_KnowsInfo (other, Patch_AE_DIA_MORTIS_ARMORQUESTION))
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_MORTIS_MIL_LTHINGS_Info()
{
    AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_01"); //Chtěl bych vylepšit lehkou zbroj.
    AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_04"); //Co na to budeš potřebovat?.
    AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_06"); //Na lehkou zbroj bude stačit jeden ocelový prut a kančí kůže.
    AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_07"); //A řekněme že 200 zlatých mi bude za tu práci stačit.
    AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_08"); //A samozrejmě mi budeš muset taky přinést tu zbroj.
    AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_09"); //Dobrá, pokusím se to sehnat.
    B_LogEntry(Patch_AE_TOPIC_MORTIS_ARMOR, "Na vylepšení lehké zbroje bude Mortis potřebovat jeden ocelový prut, kančí kůži a 200 zlatých.");
};

instance Patch_AE_DIA_MORTIS_MIL_LReforgedArmor (C_INFO)
{
    npc          =  MIL_314_MORTIS;
    nr           =  4;
    condition    =  Patch_AE_DIA_MORTIS_MIL_LReforgedArmor_Condition;
    information  =  Patch_AE_DIA_MORTIS_MIL_LReforgedArmor_Info;
    permanent    =  TRUE;
    description  =  "Mám všechny potřebné materiály na vylepšení lehké zbroje.";
};
func int Patch_AE_DIA_MORTIS_MIL_LReforgedArmor_Condition()
{
    if (Npc_HasItems(other, ItAr_MIL_L) >= 0) && (Npc_HasItems(other, ItMiSwordraw) >= 1) && (Npc_HasItems(other, ItAt_Addon_KeilerFur) >= 1) && (Npc_HasItems(other, ItMi_Gold) >= 200)
    && (Npc_KnowsInfo(other, Patch_AE_DIA_MORTIS_MIL_LTHINGS))
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_MORTIS_MIL_LReforgedArmor_Info()
{
    AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_15_01"); //Mám všechny potřebné materiály na vylepšení lehké zbroje.

    if (Npc_HasItems(other, ItAr_MIL_L) >= 0) && (Npc_HasItems(other, ItMiSwordraw) >= 1) && (Npc_HasItems(other, ItAt_Addon_KeilerFur) >= 1) && (Npc_HasItems(other, ItMi_Gold) >= 200)
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
    npc          =  MIL_314_MORTIS;
    nr           =  8;
    condition    =  Patch_AE_DIA_MORTIS_MILITIA_MediumHUH_Condition;
    information  =  Patch_AE_DIA_MORTIS_MILITIA_MediumHUH_Info;
    permanent    =  FALSE;
    description  =  "Chtěl bych vylepšit střední zbroj";
};
func int Patch_AE_DIA_MORTIS_MILITIA_MediumHUH_Condition()
{
    if (Npc_Hasitems(other, ItAr_MIL_M) > 0)
    && (Npc_KnowsInfo (other, Patch_AE_DIA_MORTIS_ARMORQUESTION))
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_MORTIS_MILITIA_MediumHUH_Info()
{
    AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_01"); //Chtěl bych vylepšit střední zbroj.
    AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_03"); //Co na to budeš potřebovat?.
    AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_04"); //Na střední zbroj si budeš muset přinést o něco víc.
    AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_05"); //dva ocelové pruty a kůži z Warga.
    AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_06"); //Budu za tu práci chtít 600 zlatých.
    AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_08"); //Dobrá, pokusím se to sehnat.
    B_LogEntry(Patch_AE_TOPIC_MORTIS_ARMOR, "Na vylepšení střední zbroje bude Mortis potřebovat dva ocelové pruty, kůži z Warga a 600 zlatých.");
};

//-------------------------------------
var int Patch_AE_MORTIS_MILITIA_MediumArmorBought;
//-------------------------------------
instance Patch_AE_DIA_MORTIS_MILITIA_MediumArmor (C_INFO)
{
    npc          =  MIL_314_MORTIS;
    nr           =  8;
    condition    =  Patch_AE_DIA_MORTIS_MILITIA_MediumArmor_Condition;
    information  =  Patch_AE_DIA_MORTIS_MILITIA_MediumArmor_Info;
    permanent    =  TRUE;
    description  =  "Mám všechny potřebné materiály na vylepšení střední zbroje.";
};
func int Patch_AE_DIA_MORTIS_MILITIA_MediumArmor_Condition()
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
func void Patch_AE_DIA_MORTIS_MILITIA_MediumArmor_Info()
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

instance Patch_AE_DIA_MORTIS_PAL_REFORGE (C_INFO)
{
    npc          =  MIL_314_MORTIS;
    nr           =  3;
    condition    =  Patch_AE_DIA_MORTIS_PAL_REFORGE_Condition;
    information  =  Patch_AE_DIA_MORTIS_PAL_REFORGE_Info;
    permanent    =  FALSE;
    description  =  "Nemohl by si mi opravit tuhle rezavou paladinskou zbroj?";
};
func int Patch_AE_DIA_MORTIS_PAL_REFORGE_Condition()
{
    if (Npc_Hasitems(other, ItAr_PAL_R_ARMOREXPANSION) > 0)
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_MORTIS_PAL_REFORGE_Info()
{
    B_GivePlayerXP(10);
    AI_Output(other, self, "PATCH_AE_DIA_MORTIS_PAL_REFORGE_4_1"); //Nemohl by si mi opravit tuhle rezavou paladinskou zbroj?
    AI_Output(self, other, "PATCH_AE_DIA_MORTIS_PAL_REFORGE_3_01"); //Nemohl, nemám na to čas ani zkušenosti.
    AI_Output(self, other, "PATCH_AE_DIA_MORTIS_PAL_REFORGE_3_02"); //Budeš si muset najít jiného kováře.
    B_LogEntry(Patch_AE_TOPIC_MARTIN_ARMOR, "Mortis mi zbroj neopraví.");
};

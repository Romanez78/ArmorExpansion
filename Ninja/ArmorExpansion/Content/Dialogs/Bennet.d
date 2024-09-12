//-------------------------------------
const string Patch_AE_TOPIC_BENNET_ARMOR = "Vylepšení zbroje žoldáka.";
//-------------------------------------

instance Patch_AE_DIA_BENNET_SLDARMORASK (C_INFO)
{
    npc          =  SLD_809_Bennet;
    nr           =  887;
    condition    =  Patch_AE_DIA_BENNET_SLDARMORASK_Condition;
    information  =  Patch_AE_DIA_BENNET_SLDARMORASK_Info;
    permanent    =  FALSE;
    description  =  "Můžeš mi prodat nějakou lepší zbroj?";
};
func int Patch_AE_DIA_BENNET_SLDARMORASK_Condition()
{
    if (other.guild == GIL_SLD)
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_BENNET_SLDARMORASK_Info()
{
    AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLDARMORASK_15_01"); //Můžeš mi prodat nějakou lepší zbroj?.
    AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLDARMORASK_13_02"); //Ne, zbroje může rozdávat jenom Lee.
    AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLDARMORASK_13_03"); //Můžu ti ale vylepšit tu co jsi už dostal, ale budu za to něco chtít.
    AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLDARMORASK_15_04"); //A to?
    AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLDARMORASK_13_05"); //Material na výrobu, ten si přineseš sám, nebudu ti to dělat ze svých zásob.
    AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLDARMORASK_13_07"); //A nepracuju zadarmo, takže si taky připrav nějáké zlato.
    Log_CreateTopic(Patch_AE_TOPIC_BENNET_ARMOR,LOG_NOTE);
    B_LogEntry(Patch_AE_TOPIC_BENNET_ARMOR, "Bennet mi může vylepšit zbroje žoldáka když mu přinesu materiály a zlato.");
};

//-------------------------------------
var int Patch_AE_BENNET_SLD_LReforgedArmorBought;
//-------------------------------------

instance Patch_AE_DIA_BENNET_SLD_LReforgedHUH (C_INFO)
{
    npc          =  SLD_809_Bennet;
    nr           =  887;
    condition    =  Patch_AE_DIA_BENNET_SLD_LReforgedHUH_Condition;
    information  =  Patch_AE_DIA_BENNET_SLD_LReforgedHUH_Info;
    permanent    =  FALSE;
    description  =  "Chci si nechat vylepšit lehkou zbroj.";
};
func int Patch_AE_DIA_BENNET_SLD_LReforgedHUH_Condition()
{
    if (Patch_AE_BENNET_SLD_LReforgedArmorBought == FALSE)
    && (Npc_Hasitems(other, ItAr_SLD_L) > 0)
    && (Npc_KnowsInfo (other, Patch_AE_DIA_BENNET_SLDARMORASK))
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_BENNET_SLD_LReforgedHUH_Info()
{
    AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_01"); //Chci si nechat vylepšit lehkou zbroj.
    AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_04"); //Co na to potřebuješ?
    AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_13_06"); //Na lehkou zbroj ti postačí dva ocelové pruty a dvě vlčí kůže.
    AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_13_07"); //Budu chtít 200 zlatých za výrobu.
    AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_09"); //Dobrá.
    B_LogEntry(Patch_AE_TOPIC_BENNET_ARMOR, "Na vylepšení lehké zbroje bude Bennet potřebovat dva ocelové pruty, dvě kůže z vlka a 200 zlatých.");
};

instance Patch_AE_DIA_BENNET_SLD_LReforgedArmor (C_INFO)
{
    npc          =  SLD_809_Bennet;
    nr           =  887;
    condition    =  Patch_AE_DIA_BENNET_SLD_LReforgedArmor_Condition;
    information  =  Patch_AE_DIA_BENNET_SLD_LReforgedArmor_Info;
    permanent    =  TRUE;
    description  =  "Mám všechny potřebné materiály na vylepšení lehké zbroje.";
};
func int Patch_AE_DIA_BENNET_SLD_LReforgedArmor_Condition()
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
func void Patch_AE_DIA_BENNET_SLD_LReforgedArmor_Info()
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

//-------------------------------------
var int Patch_AE_BENNET_MERC_MReforgedArmorBought;
//-------------------------------------

instance Patch_AE_DIA_BENNET_MERC_MReforgedHUH (C_INFO)
{
    npc          =  SLD_809_Bennet;
    nr           =  888;
    condition    =  Patch_AE_DIA_BENNET_MERC_MReforgedHUH_Condition;
    information  =  Patch_AE_DIA_BENNET_MERC_MReforgedHUH_Info;
    permanent    =  FALSE;
    description  =  "Chci si nechat vylepšit střední zbroj.";
};
func int Patch_AE_DIA_BENNET_MERC_MReforgedHUH_Condition()
{
    if (Patch_AE_BENNET_MERC_MReforgedArmorBought == FALSE)
    && (Npc_Hasitems(other, ItAr_SLD_M) > 0)
    && (Npc_KnowsInfo (other, Patch_AE_DIA_BENNET_SLDARMORASK))
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_BENNET_MERC_MReforgedHUH_Info()
{
    AI_Output(other, self, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_01"); //Chci si nechat vylepšit střední zbroj.
    AI_Output(other, self, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_03"); //Co na to potřebuješ?
    AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_04"); //Na střední zbroj toho bude potřeba víc.
    AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_05"); //Tři ocelový pruty, a jednu kůži z Warga.
    AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_06"); //Za výrobu budu chtít, řekněme 650 zlatých.
    AI_Output(other, self, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_08"); //Dobrá.
    B_LogEntry(Patch_AE_TOPIC_BENNET_ARMOR, "Na vylepšení střední zbroje bude Bennet potřebovat tři ocelové pruty, jednu kůži ze skřetího psa, dvě kůže z trolla a 650 zlatých.");
};

instance Patch_AE_DIA_BENNET_MERC_MReforgedArmor (C_INFO)
{
    npc          =  SLD_809_Bennet;
    nr           =  888;
    condition    =  Patch_AE_DIA_BENNET_MERC_MReforgedArmor_Condition;
    information  =  Patch_AE_DIA_BENNET_MERC_MReforgedArmor_Info;
    permanent    =  TRUE;
    description  =  "Mám všechny potřebné materiály na vylepšení střední zbroje.";
};
func int Patch_AE_DIA_BENNET_MERC_MReforgedArmor_Condition()
{
    if (Patch_AE_BENNET_MERC_MReforgedArmorBought == FALSE)
    && (Npc_Hasitems(other, ItAr_SLD_M) > 0)
    && (Npc_HasItems(other, ItMiSwordraw) >= 2)
    && (Npc_HasItems(other, ItAt_Wargfur) >= 1)
    && (Npc_HasItems(other, ItMi_Gold) >= 650)
    && (Npc_KnowsInfo(other, Patch_AE_DIA_BENNET_MERC_MReforgedHUH))
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_BENNET_MERC_MReforgedArmor_Info()
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

instance Patch_AE_DIA_BENNET_PAL_REFORGE (C_INFO)
{
    npc          =  SLD_809_Bennet;
    nr           =  3;
    condition    =  Patch_AE_DIA_BENNET_PAL_REFORGE_Condition;
    information  =  Patch_AE_DIA_BENNET_PAL_REFORGE_Info;
    permanent    =  FALSE;
    description  =  "Nemohl by si mi opravit tuhle rezavou paladinskou zbroj?";
};
func int Patch_AE_DIA_BENNET_PAL_REFORGE_Condition()
{
    if (Npc_Hasitems(other, ItAr_PAL_R_ARMOREXPANSION) > 0)
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_BENNET_PAL_REFORGE_Info()
{
    B_GivePlayerXP(10);
    AI_Output(other, self, "PATCH_AE_DIA_BENNET_PAL_REFORGE_4_1"); //Nemohl by si mi opravit tuhle rezavou paladinskou zbroj?
    AI_Output(self, other, "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_01"); //Promiň, ale nemohl.
    AI_Output(self, other, "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_03"); //Nic proti tobě nemám, vždyť si mně dostal z vězení.
    AI_Output(self, other, "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_04"); //Ale co by si pomyslely ostatní na farmě kdybych tu začal opravovat zbroje paladinů?
    AI_Output(self, other, "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_05"); //Budeš si muset najít jiného kováře.
    B_LogEntry(Patch_AE_TOPIC_MARTIN_ARMOR, "Bennet mi zbroj neopraví.");
};

instance Patch_AE_DIA_Bennet_CROSSBOW (C_INFO)
{
    npc          =  SLD_809_Bennet;
    nr           =  990;
    condition    =  Patch_AE_DIA_Bennet_CROSSBOW_Condition;
    information  =  Patch_AE_DIA_Bennet_CROSSBOW_Info;
    permanent    =  TRUE;
    description  =  "Neměl by se pro mně lehčí zbroj? (Vyměnit zbroj Drakobijce)";
};
func int Patch_AE_DIA_Bennet_CROSSBOW_Condition()
{
    if (Npc_Hasitems(other, ItAr_DJG_L) > 0)
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_Bennet_CROSSBOW_Info()
{
    AI_Output(other, self, "PATCH_AE_DIA_BENNET_CROSSBOW_15_01"); //Neměl by se pro mně lehčí zbroj?.
    AI_Output(other, self, "PATCH_AE_DIA_BENNET_CROSSBOW_15_02"); //Neber si to špatně, jsem za ní vděčný ale preferuji lehčí.
    AI_Output(self, other, "PATCH_AE_DIA_BENNET_CROSSBOW_13_03"); //Vlastně ano, jednu takovou jsem taky vytvořil, jestli chceš tak ti je můžu vyměnit.
    AI_Output(other, self, "PATCH_AE_DIA_BENNET_CROSSBOW_15_04"); //Díky, Beru jí.
    B_GiveInvItems(other, self, ItAr_DJG_L, 1);
    B_GiveInvItems(self, other, ITAR_DJG_CL_ARMOREXPANSION, 1);
    AI_Output(self, other, "PATCH_AE_DIA_BENNET_CROSSBOW_15_9");//Tady je, ať ti slouží.
};

//-----------------------------
var int Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CM_permanent;
//-----------------------------
instance Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CM (C_INFO)
{
    npc          =  SLD_809_Bennet;
    nr           =  8;
    condition    =  Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CM_Condition;
    information  =  Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CM_Info;
    permanent    =  TRUE;
    description  =  "Střední zbroj lovce draků: Ochrana:  Sečné 110, Bodné 110. (12000 Zlatých)"; //Wenn ändern, dann bitte auch in der Info-Instanz. s.u.
};

func int Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CM_Condition()
{
    IF (Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CM_permanent == FALSE)
    && (hero.guild == GIL_DJG)
    && (Show_DJG_Armor_M == TRUE)
    {
        return TRUE;
    };
};

func void Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CM_Info()
{
    AI_Output(other, self, "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_15_00"); //Koupím tu zbroj.

    if (Npc_HasItems (other,itmi_Gold) >= 12000)
    {
        AI_Output(self, other, "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_01"); //Skvěle. Bude se ti líbit.
        AI_Output(other, self, "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_15_02"); //Za takovou cenu v to doufám.
        AI_Output(self, other, "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_03"); //Přesvedčíš se, že to za tu cenu stálo.

        B_GiveInvItems(other, self, ItMi_Gold, 12000);
        CreateInvItems(self, ITAR_DJG_CM_ARMOREXPANSION, 1);
        B_GiveInvItems(self, other, ITAR_DJG_CM_ARMOREXPANSION, 1);

        Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CM_permanent = TRUE;
    }
    else
    {
        AI_Output(self, other, "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_04"); //Nemáš dost zlatých.
    };

};

//---------------------------------------------------
var int Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CH_permanent;
//---------------------------------------------------
instance Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CH (C_INFO)
{
    npc          =  SLD_809_Bennet;
    nr           =  8;
    condition    =  Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CH_Condition;
    information  =  Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CH_Info;
    permanent    =  TRUE;
    description  =  "Těžká zbroj lovce draků: Obrana: Sečné 140, Bodné 140. (20000 zlatých)"; //Wenn ändern, dann bitte auch in der Info-Instanz. s.u.
};

func int Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CH_Condition()
{
    IF (Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CH_permanent == FALSE)
    && (hero.guild == GIL_DJG)
    && (Npc_KnowsInfo(other, DIA_Bennet_BetterArmor))
    {
        return TRUE;
    };
};

func void Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CH_Info()
{
    AI_Output(other, self, "Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CH_15_00"); //Dej mi tu zbroj

    if (Npc_HasItems (other,itmi_Gold) >= 20000)
    {
        AI_Output(self, other, "Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CH_06_01"); //Tohle je nejlepší zbroj kterou jsem kdy vyrobil.
        AI_Output(self, other, "Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CH_06_02"); //Je to opravdový mistrovský kousek.

        B_GiveInvItems(other, self, ItMi_Gold, 20000);
        CreateInvItems(self, ITAR_DJG_CH_ARMOREXPANSION, 1);
        B_GiveInvItems(self, other, ITAR_DJG_CH_ARMOREXPANSION, 1);

        Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CH_permanent = TRUE;
    }
    else
    {
        AI_Output(self, other, "Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CH_06_03"); //Nemáš dost zlata.
    };
};

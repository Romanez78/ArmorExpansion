instance Patch_AE_DIA_MILTEN_PALADINARMOR (C_INFO)
{
    npc          =  PC_Mage_NW;
    nr           =  8;
    condition    =  Patch_AE_DIA_MILTEN_PALADINARMOR_Condition;
    information  =  Patch_AE_DIA_MILTEN_PALADINARMOR_Info;
    permanent    =  FALSE;
    description  =  "Potřebuji tvojí pomoc.";
};
func int Patch_AE_DIA_MILTEN_PALADINARMOR_Condition()
{
    if (Npc_HasItems(other, ItAr_PAL_F_ARMOREXPANSION) > 0)
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_MILTEN_PALADINARMOR_Info()
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
    B_LogEntry(Patch_AE_TOPIC_MARTIN_ARMOR, "Milten souhlasil že mi pomůže navrátit zbroji její magickou sílu, ale nejdříve si bude muset nastudovat postup rituálu. Nějáký čas mu to zabere takže mi řekl že se mám mezitím postarat o draky v hornickém údolí.");
};

instance Patch_AE_DIA_MILTEN_PLATEARMOR (C_INFO)
{
    npc          =  PC_Mage_NW;
    nr           =  8;
    condition    =  Patch_AE_DIA_MILTEN_PLATEARMOR_Condition;
    information  =  Patch_AE_DIA_MILTEN_PLATEARMOR_Info;
    permanent    =  FALSE;
    description  =  "Udělal si pokrok ve svých studiích?";
};
func int Patch_AE_DIA_MILTEN_PLATEARMOR_Condition()
{
    if (Npc_KnowsInfo (other, Patch_AE_DIA_MILTEN_PALADINARMOR))
    && (Npc_KnowsInfo (other, DIA_MiltenNW_AllDragonsDead))
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_MILTEN_PLATEARMOR_Info()
{
    AI_Output(other, self, "PATCH_AE_DIA_MILTEN_PLATEARMOR_15_01"); //Udělal si pokrok ve svých studiích?
    AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_02"); //Ano, dokážu říct že postupu rituálu rozumím.
    AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_03"); //Ale budu potřebovat pár věcí
    AI_Output(other, self, "PATCH_AE_DIA_MILTEN_PLATEARMOR_15_04"); //Jaké?
    AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_05"); //Svitek zničení zla, ohnivé koule a 2 kamenné krystaly.
    AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_06"); //Jedině tak dokážu dosáhnout podobných výsledků jako při provedení rituálu v klášteru v Nordmaru
    AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_07"); //Dobrá, jdu sehnat ti věci.
    AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_08"); //Hodně štěstí, doufám že se ti to povede.
    B_LogEntry(Patch_AE_TOPIC_MARTIN_ARMOR, "Milten Bude na rituál potřebovat svitek zničení zla, svitek ohnivé koule a 2 kamenné krystaly.");
};

instance Patch_AE_DIA_MILTEN_RITUALARMOR (C_INFO)
{
    npc          =  PC_Mage_NW;
    nr           =  8;
    condition    =  Patch_AE_DIA_MILTEN_RITUALARMOR_Condition;
    information  =  Patch_AE_DIA_MILTEN_RITUALARMOR_Info;
    permanent    =  TRUE;
    description  =  "Mám vše co budeš potřebovat.";
};
func int Patch_AE_DIA_MILTEN_RITUALARMOR_Condition()
{
    if (Npc_KnowsInfo(other, Patch_AE_DIA_MILTEN_PLATEARMOR))
    && (Npc_HasItems(other, ItSc_InstantFireball) >= 1)
    && (Npc_HasItems(other, ItSc_PalDestroyEvil) >= 1)
    && (Npc_HasItems(other, ItMi_Rockcrystal) >= 2)
    && (Npc_HasItems(other, ITAR_PAL_F_ARMOREXPANSION) >= 1)
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_MILTEN_RITUALARMOR_Info()
{
    AI_Output(other, self, "PATCH_AE_DIA_MILTEN_RITUALARMOR_15_01"); //Mám vše co budeš potřebovat.
    B_GiveInvItems(other, self, ITAR_PAL_F_ARMOREXPANSION, 1);
    B_GiveInvItems(other, self, ItSc_InstantFireball, 1);
    B_GiveInvItems(other, self, ItSc_PalDestroyEvil, 1);
    B_GiveInvItems(other, self, ItMi_Rockcrystal, 2);
    AI_Output(self, other, "PATCH_AE_DIA_MILTEN_RITUALARMOR_13_02"); //Skvěle. Můžu začít s rituálem.
    B_LogEntry(Patch_AE_TOPIC_MARTIN_ARMOR, "Donesl jsem Miltenovi všechno potřebné pro rituál.");
};

//-------------------------------------
var int Patch_AE_MILTEN_BIGMAGIC_DAY;
var int Patch_AE_MILTEN_LORDRMOR_MakeArmor;
var int Patch_AE_Player_GotARCArmor;
//-------------------------------------

instance Patch_AE_DIA_MILTEN_LORDRMOR (C_INFO)
{
    npc          =  PC_Mage_NW;
    nr           =  8;
    condition    =  Patch_AE_DIA_MILTEN_LORDRMOR_Condition;
    information  =  Patch_AE_DIA_MILTEN_LORDRMOR_Info;
    permanent    =  TRUE;
    description  =  "Super, a kdy bude rituál hotový?";
};
func int Patch_AE_DIA_MILTEN_LORDRMOR_Condition()
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
            B_LogEntry(Patch_AE_TOPIC_MARTIN_ARMOR, "Miltenovi se povedlo navrátit zbroji její magickou moc.");
        };
    }
    else
    {
        AI_Output(self, other, "PATCH_AE_DIA_WOLFEE_ARMORREADY_08_06"); //NN
    };
};

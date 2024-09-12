instance Patch_AE_DIA_HARAD_PAL_SHOW (C_INFO)
{
    npc          =  VLK_412_Harad;
    nr           =  3;
    condition    =  Patch_AE_DIA_HARAD_PAL_SHOW_Condition;
    information  =  Patch_AE_DIA_HARAD_PAL_SHOW_Info;
    permanent    =  FALSE;
    description  =  "Nemohl by si mi opravit tuhle rezavou paladinskou zbroj?";
};
func int Patch_AE_DIA_HARAD_PAL_SHOW_Condition()
{
    if (Npc_Hasitems(other, ItAr_PAL_R_ARMOREXPANSION) > 0)
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_HARAD_PAL_SHOW_Info()
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
    B_LogEntry(Patch_AE_TOPIC_MARTIN_ARMOR, "Harad souhlasil že mi zbroj opraví.");
};

//-------------------------------------
var int Patch_AE_HARAD_PALADIN_REFORGEBought;
//-------------------------------------

instance Patch_AE_DIA_HARAD_PALADIN_REFORGE (C_INFO)
{
    npc          =  VLK_412_Harad;
    nr           =  8;
    condition    =  Patch_AE_DIA_HARAD_PALADIN_REFORGE_Condition;
    information  =  Patch_AE_DIA_HARAD_PALADIN_REFORGE_Info;
    permanent    =  TRUE;
    description  =  "Takže, co budeš na opravu zbroje potřebovat?";
};
func int Patch_AE_DIA_HARAD_PALADIN_REFORGE_Condition()
{
    if (Patch_AE_HARAD_PALADIN_REFORGEBought == FALSE)
    && (Npc_KnowsInfo (other, Patch_AE_DIA_HARAD_PAL_SHOW))
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_HARAD_PALADIN_REFORGE_Info()
{
    AI_Output(other, self, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_01"); //Takže, co budeš na opravu zbroje potřebovat?
    AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_02"); //Hmm, nech mně se zamyslet
    AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_04"); //Několik ocelových prutů, 6 by mělo stačit.
    AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_05"); //3 Hrudky magické oceli.
    AI_Output(other, self, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_06"); //Co budeš za svou práci chtít?
    AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_07"); //Nic. Bude mi potěšením pracovat na takovém kousku.
    AI_Output(other, self, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_08"); //Dobrá, pokusím se to všechno sehnat.
    B_LogEntry(Patch_AE_TOPIC_MARTIN_ARMOR, "Na opravu zbroje bude Harad potřebovat 6 ocelových prutů a tři hrudky rudy.");

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
        B_LogEntry(Patch_AE_TOPIC_MARTIN_ARMOR, "Harad mi opravil paladinskou zbroj, ale nepodařilo se mu navrátit její magickou moc. Budu pro to muset najít ochotného mága ohně, jeden takový mně napadá.");
    }
    else
    {
        AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_16"); //Přijď až to všechno seženeš.
    };
};

instance Patch_AE_DIA_HARAD_END_MAKE (C_INFO)
{
    npc          =  VLK_412_Harad;
    nr           =  8;
    condition    =  Patch_AE_DIA_HARAD_END_MAKE_Condition;
    information  =  Patch_AE_DIA_HARAD_END_MAKE_Info;
    permanent    =  FALSE;
    description  =  "Nemohl by si mi překovat moji zbroj paladina?";
};
func int Patch_AE_DIA_HARAD_END_MAKE_Condition()
{
    if (Npc_Hasitems(other, ItAr_PAL_H) > 0)
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_HARAD_END_MAKE_Info()
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

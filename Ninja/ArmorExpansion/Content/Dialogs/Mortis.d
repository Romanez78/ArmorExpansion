instance Patch_AE_DIA_MORTIS_ARMORQUESTION (C_INFO)
{
    npc          =  MIL_314_MORTIS;
    nr           =  4;
    condition    =  Patch_AE_DIA_MORTIS_ARMORQUESTION_Condition;
    information  =  Patch_AE_DIA_MORTIS_ARMORQUESTION_Info;
    permanent    =  FALSE;
    description  =  Patch_AE_DIA_MORTIS_ARMORQUESTION_desc;
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
    AI_Output(other, self, PATCH_AE_DIA_MORTIS_ARMORQUESTION_15_01);
    AI_Output(self, other, PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_02);
    AI_Output(self, other, PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_03);
    AI_Output(other, self, PATCH_AE_DIA_MORTIS_ARMORQUESTION_15_04);
    AI_Output(self, other, PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_05);
    AI_Output(self, other, PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_06);
    Log_CreateTopic(Patch_AE_TOPIC_MORTIS_ARMOR, LOG_NOTE);
    B_LogEntry(Patch_AE_TOPIC_MORTIS_ARMOR, Patch_AE_DIA_MORTIS_ARMORQUESTION_entry);
};

instance Patch_AE_DIA_MORTIS_MIL_LTHINGS (C_INFO)
{
    npc          =  MIL_314_MORTIS;
    nr           =  4;
    condition    =  Patch_AE_DIA_MORTIS_MIL_LTHINGS_Condition;
    information  =  Patch_AE_DIA_MORTIS_MIL_LTHINGS_Info;
    permanent    =  FALSE;
    description  =  Patch_AE_DIA_MORTIS_MIL_LTHINGS_desc;
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
    AI_Output(other, self, PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_01);
    AI_Output(other, self, PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_04);
    AI_Output(self, other, PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_06);
    AI_Output(self, other, PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_07);
    AI_Output(self, other, PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_08);
    AI_Output(other, self, PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_09);
    B_LogEntry(Patch_AE_TOPIC_MORTIS_ARMOR, Patch_AE_DIA_MORTIS_MIL_LTHINGS_entry);
};

instance Patch_AE_DIA_MORTIS_MIL_LReforgedArmor (C_INFO)
{
    npc          =  MIL_314_MORTIS;
    nr           =  4;
    condition    =  Patch_AE_DIA_MORTIS_MIL_LReforgedArmor_Condition;
    information  =  Patch_AE_DIA_MORTIS_MIL_LReforgedArmor_Info;
    permanent    =  TRUE;
    description  =  PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_desc;
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
    AI_Output(other, self, PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_15_01);

    if (Npc_HasItems(other, ItAr_MIL_L) >= 0) && (Npc_HasItems(other, ItMiSwordraw) >= 1) && (Npc_HasItems(other, ItAt_Addon_KeilerFur) >= 1) && (Npc_HasItems(other, ItMi_Gold) >= 200)
    {
        B_GivePlayerXP(20);
        B_GiveInvItems(other, self, ItAr_MIL_L, 1);
        B_GiveInvItems(other, self, ItMiSwordraw, 1);
        B_GiveInvItems(other, self, ItAt_Addon_KeilerFur, 1);
        B_GiveInvItems(other, self, ItMi_Gold, 200);
        AI_Output(self, other, PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_12);

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

        AI_Output(self, other, PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_13);
        B_GiveInvItems(self, other, ITAR_MIL_R_ArmorExpansion, 1);
        AI_Output(self, other, PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_14);
        AI_Output(other, self, PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_15_15);
        B_LogEntry (Patch_AE_TOPIC_MORTIS_ARMOR,PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_entry);
    }
    else
    {
        AI_Output(self, other, PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_16);
    };
};

instance Patch_AE_DIA_MORTIS_MILITIA_MediumHUH (C_INFO)
{
    npc          =  MIL_314_MORTIS;
    nr           =  8;
    condition    =  Patch_AE_DIA_MORTIS_MILITIA_MediumHUH_Condition;
    information  =  Patch_AE_DIA_MORTIS_MILITIA_MediumHUH_Info;
    permanent    =  FALSE;
    description  =  PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_desc;
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
    AI_Output(other, self, PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_01);
    AI_Output(other, self, PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_03);
    AI_Output(self, other, PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_04);
    AI_Output(self, other, PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_05);
    AI_Output(self, other, PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_06);
    AI_Output(other, self, PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_08);
    B_LogEntry(Patch_AE_TOPIC_MORTIS_ARMOR, PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_entry);
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
    description  =  PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_desc;
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
    AI_Output(other, self, PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_15_01);

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
        AI_Output(other, self, PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_15_10);
        AI_Output(self, other, PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_11);

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

        AI_Output(self, other, PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_12);
        Patch_AE_MORTIS_MILITIA_MediumArmorBought = B_GiveInvItems(self, other, ITAR_MIL_Med2_ARMOREXPANSION, 1);
        AI_Output(self, other, PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_13);
        AI_Output(other, self, PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_15_14);
        B_LogEntry(Patch_AE_TOPIC_MORTIS_ARMOR,PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_entry);
    }
    else
    {
        AI_Output(self, other, PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_16);
    };
};

instance Patch_AE_DIA_MORTIS_PAL_REFORGE (C_INFO)
{
    npc          =  MIL_314_MORTIS;
    nr           =  3;
    condition    =  Patch_AE_DIA_MORTIS_PAL_REFORGE_Condition;
    information  =  Patch_AE_DIA_MORTIS_PAL_REFORGE_Info;
    permanent    =  FALSE;
    description  =  PATCH_AE_DIA_MORTIS_PAL_REFORGE_desc;
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
    AI_Output(other, self, PATCH_AE_DIA_MORTIS_PAL_REFORGE_4_1);
    AI_Output(self, other, PATCH_AE_DIA_MORTIS_PAL_REFORGE_3_01);
    AI_Output(self, other, PATCH_AE_DIA_MORTIS_PAL_REFORGE_3_02);
    B_LogEntry(Patch_AE_TOPIC_MARTIN_ARMOR, PATCH_AE_DIA_MORTIS_PAL_REFORGE_entry);
};

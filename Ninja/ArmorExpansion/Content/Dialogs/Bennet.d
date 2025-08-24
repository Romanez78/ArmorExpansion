instance Patch_AE_DIA_BENNET_SLDARMORASK (C_INFO)
{
    npc          =  SLD_809_Bennet;
    nr           =  887;
    condition    =  Patch_AE_DIA_BENNET_SLDARMORASK_Condition;
    information  =  Patch_AE_DIA_BENNET_SLDARMORASK_Info;
    permanent    =  FALSE;
    description  =  Patch_AE_DIA_BENNET_SLDARMORASK_desc;
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
    AI_Output(other, self, PATCH_AE_DIA_BENNET_SLDARMORASK_15_01);
    AI_Output(self, other, PATCH_AE_DIA_BENNET_SLDARMORASK_13_02);
    AI_Output(self, other, PATCH_AE_DIA_BENNET_SLDARMORASK_13_03);
    AI_Output(other, self, PATCH_AE_DIA_BENNET_SLDARMORASK_15_04);
    AI_Output(self, other, PATCH_AE_DIA_BENNET_SLDARMORASK_13_05);
    AI_Output(self, other, PATCH_AE_DIA_BENNET_SLDARMORASK_13_07);
    Log_CreateTopic(Patch_AE_TOPIC_BENNET_ARMOR, LOG_NOTE);
    B_LogEntry(Patch_AE_TOPIC_BENNET_ARMOR, Patch_AE_DIA_BENNET_SLDARMORASK_entry);
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
    description  =  Patch_AE_DIA_BENNET_SLD_LReforgedHUH_desc;
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
    AI_Output(other, self, PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_01);
    AI_Output(other, self, PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_04);
    AI_Output(self, other, PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_13_06);
    AI_Output(self, other, PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_13_07);
    AI_Output(other, self, PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_09);
    B_LogEntry(Patch_AE_TOPIC_BENNET_ARMOR, Patch_AE_DIA_BENNET_SLD_LReforgedHUH_entry);
};

instance Patch_AE_DIA_BENNET_SLD_LReforgedArmor (C_INFO)
{
    npc          =  SLD_809_Bennet;
    nr           =  887;
    condition    =  Patch_AE_DIA_BENNET_SLD_LReforgedArmor_Condition;
    information  =  Patch_AE_DIA_BENNET_SLD_LReforgedArmor_Info;
    permanent    =  TRUE;
    description  =  Patch_AE_DIA_BENNET_SLD_LReforgedArmor_desc;
};
func int Patch_AE_DIA_BENNET_SLD_LReforgedArmor_Condition()
{
    if (Patch_AE_BENNET_SLD_LReforgedArmorBought == FALSE)
    && (Npc_Hasitems(other, ItAr_SLD_L) > 0)
    && (Npc_HasItems(other, Patch_AE_SmithItemCold) >= 2)
    && (Npc_HasItems(other, ItAt_Wolffur) >= 2)
    && (Npc_HasItems(other, ItMi_Gold) >= 200)
    && (Npc_KnowsInfo (other, Patch_AE_DIA_BENNET_SLD_LReforgedHUH))
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_BENNET_SLD_LReforgedArmor_Info()
{
    AI_Output(other, self, PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_01);

    if (Npc_HasItems(other, ItAr_SLD_L) > 0)
    && (Npc_HasItems(other, Patch_AE_SmithItemCold) >= 2)
    && (Npc_HasItems(other, ItAt_Wolffur) >= 2)
    && (Npc_HasItems(other, ItMi_Gold) >= 200)
    {
        B_GivePlayerXP(20);
        B_GiveInvItems(other, self, ItAr_SLD_L, 1);
        B_GiveInvItems(other, self, Patch_AE_SmithItemCold, 2);
        B_GiveInvItems(other, self, ItAt_WolfFur, 2);
        B_GiveInvItems(other, self, ItMi_Gold, 200);
        AI_Output(other, self, PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_11);
        AI_Output(self, other, PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_12);

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

        AI_Output(self, other, PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_13);
        Patch_AE_BENNET_SLD_LReforgedArmorBought = B_GiveInvItems(self, other, ITAR_SLD_LR_ARMOREXPANSION, 1);
        AI_Output(self, other, PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_14);
        AI_Output(other, self, PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_15);
        B_LogEntry(Patch_AE_TOPIC_MORTIS_ARMOR, Patch_AE_DIA_BENNET_SLD_LReforgedArmor_entry);
    }
    else
    {
        AI_Output(self, other, PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_16);
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
    description  =  Patch_AE_DIA_BENNET_MERC_MReforgedHUH_desc;
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
    AI_Output(other, self, PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_01);
    AI_Output(other, self, PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_03);
    AI_Output(self, other, PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_04);
    AI_Output(self, other, PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_05);
    AI_Output(self, other, PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_06);
    AI_Output(other, self, PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_08);
    B_LogEntry(Patch_AE_TOPIC_BENNET_ARMOR, Patch_AE_DIA_BENNET_MERC_MReforgedHUH_entry);
};

instance Patch_AE_DIA_BENNET_MERC_MReforgedArmor (C_INFO)
{
    npc          =  SLD_809_Bennet;
    nr           =  888;
    condition    =  Patch_AE_DIA_BENNET_MERC_MReforgedArmor_Condition;
    information  =  Patch_AE_DIA_BENNET_MERC_MReforgedArmor_Info;
    permanent    =  TRUE;
    description  =  Patch_AE_DIA_BENNET_MERC_MReforgedArmor_desc;
};
func int Patch_AE_DIA_BENNET_MERC_MReforgedArmor_Condition()
{
    if (Patch_AE_BENNET_MERC_MReforgedArmorBought == FALSE)
    && (Npc_Hasitems(other, ItAr_SLD_M) > 0)
    && (Npc_HasItems(other, Patch_AE_SmithItemCold) >= 2)
    && (Npc_HasItems(other, ItAt_Wargfur) >= 1)
    && (Npc_HasItems(other, ItMi_Gold) >= 650)
    && (Npc_KnowsInfo(other, Patch_AE_DIA_BENNET_MERC_MReforgedHUH))
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_BENNET_MERC_MReforgedArmor_Info()
{
    AI_Output(other, self, PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_01);

    if (Npc_HasItems(other, ItAr_SLD_M) > 0)
    && (Npc_HasItems(other, Patch_AE_SmithItemCold) >= 2)
    && (Npc_HasItems(other, ItAt_Wargfur) >= 1)
    && (Npc_HasItems(other, ItMi_Gold) >= 650)
    {
        B_GivePlayerXP(25);
        B_GiveInvItems(other, self, ItAr_SLD_M, 1);
        B_GiveInvItems(other, self, Patch_AE_SmithItemCold, 2);
        B_GiveInvItems(other, self, ItAt_WargFur, 1);
        B_GiveInvItems(other, self, ItMi_Gold, 650);
        AI_Output(other, self, PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_10);
        AI_Output(self, other, PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_11);

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

        AI_Output(self, other, PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_12);
        Patch_AE_BENNET_MERC_MReforgedArmorBought = B_GiveInvItems(self, other, ITAR_SLD_R_ARMOREXPANSION, 1);
        AI_Output(self, other, PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_13);
        AI_Output(other, self, PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_14);
        B_LogEntry(Patch_AE_TOPIC_MORTIS_ARMOR, Patch_AE_DIA_BENNET_MERC_MReforgedArmor_entry);
    }
    else
    {
        AI_Output(self, other, PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_16);
    };
};

instance Patch_AE_DIA_BENNET_PAL_REFORGE (C_INFO)
{
    npc          =  SLD_809_Bennet;
    nr           =  3;
    condition    =  Patch_AE_DIA_BENNET_PAL_REFORGE_Condition;
    information  =  Patch_AE_DIA_BENNET_PAL_REFORGE_Info;
    permanent    =  FALSE;
    description  =  Patch_AE_DIA_BENNET_PAL_REFORGE_desc;
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
    AI_Output(other, self, PATCH_AE_DIA_BENNET_PAL_REFORGE_4_1);
    AI_Output(self, other, PATCH_AE_DIA_BENNET_PAL_REFORGE_3_01);
    AI_Output(self, other, PATCH_AE_DIA_BENNET_PAL_REFORGE_3_03);
    AI_Output(self, other, PATCH_AE_DIA_BENNET_PAL_REFORGE_3_04);
    AI_Output(self, other, PATCH_AE_DIA_BENNET_PAL_REFORGE_3_05);
    B_LogEntry(Patch_AE_TOPIC_MARTIN_ARMOR, Patch_AE_DIA_BENNET_PAL_REFORGE_entry);
};

instance Patch_AE_DIA_Bennet_CROSSBOW (C_INFO)
{
    npc          =  SLD_809_Bennet;
    nr           =  990;
    condition    =  Patch_AE_DIA_Bennet_CROSSBOW_Condition;
    information  =  Patch_AE_DIA_Bennet_CROSSBOW_Info;
    permanent    =  TRUE;
    description  =  Patch_AE_DIA_Bennet_CROSSBOW_desc;
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
    AI_Output(other, self, PATCH_AE_DIA_BENNET_CROSSBOW_15_01);
    AI_Output(other, self, PATCH_AE_DIA_BENNET_CROSSBOW_15_02);
    AI_Output(self, other, PATCH_AE_DIA_BENNET_CROSSBOW_13_03);
    AI_Output(other, self, PATCH_AE_DIA_BENNET_CROSSBOW_15_04);
    B_GiveInvItems(other, self, ItAr_DJG_L, 1);
    B_GiveInvItems(self, other, ITAR_DJG_CL_ARMOREXPANSION, 1);
    AI_Output(self, other, PATCH_AE_DIA_BENNET_CROSSBOW_15_9);
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
    description  =  Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CM_desc; //Wenn ändern, dann bitte auch in der Info-Instanz. s.u.
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
    AI_Output(other, self, PATCH_AE_DIA_BENNET_DJG_ARMOR_M_15_00);

    if (Npc_HasItems (other,itmi_Gold) >= 12000)
    {
        AI_Output(self, other, PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_01);
        AI_Output(other, self, PATCH_AE_DIA_BENNET_DJG_ARMOR_M_15_02);
        AI_Output(self, other, PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_03);

        B_GiveInvItems(other, self, ItMi_Gold, 12000);
        CreateInvItems(self, ITAR_DJG_CM_ARMOREXPANSION, 1);
        B_GiveInvItems(self, other, ITAR_DJG_CM_ARMOREXPANSION, 1);

        Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CM_permanent = TRUE;
    }
    else
    {
        AI_Output(self, other, PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_04);
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
    description  =  Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CH_desc; //Wenn ändern, dann bitte auch in der Info-Instanz. s.u.
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
    AI_Output(other, self, PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_15_00);

    if (Npc_HasItems (other,itmi_Gold) >= 20000)
    {
        AI_Output(self, other, PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_06_01);
        AI_Output(self, other, PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_06_02);

        B_GiveInvItems(other, self, ItMi_Gold, 20000);
        CreateInvItems(self, ITAR_DJG_CH_ARMOREXPANSION, 1);
        B_GiveInvItems(self, other, ITAR_DJG_CH_ARMOREXPANSION, 1);

        Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CH_permanent = TRUE;
    }
    else
    {
        AI_Output(self, other, PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_06_03);
    };
};

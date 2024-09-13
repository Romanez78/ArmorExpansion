instance Patch_AE_DIA_HARAD_PAL_SHOW (C_INFO)
{
    npc          =  VLK_412_Harad;
    nr           =  3;
    condition    =  Patch_AE_DIA_HARAD_PAL_SHOW_Condition;
    information  =  Patch_AE_DIA_HARAD_PAL_SHOW_Info;
    permanent    =  FALSE;
    description  =  Patch_AE_DIA_HARAD_PAL_SHOW_desc;
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
    AI_Output(other, self, PATCH_AE_DIA_HARAD_PAL_SHOW_4_1);
    AI_Output(self, other, PATCH_AE_DIA_HARAD_PAL_SHOW_3_01);
    B_GiveInvItems(other, self, ItAr_PAL_R_ARMOREXPANSION, 1);
    AI_Output(self, other, PATCH_AE_DIA_HARAD_PAL_SHOW_3_02);
    AI_Output(self, other, PATCH_AE_DIA_HARAD_PAL_SHOW_3_03);
    AI_Output(self, other, PATCH_AE_DIA_HARAD_PAL_SHOW_3_04);
    AI_Output(self, other, PATCH_AE_DIA_HARAD_PAL_SHOW_3_05);
    B_GiveInvItems(self, other, ITAR_PAL_R_ARMOREXPANSION, 1);
    AI_Output(self, other, PATCH_AE_DIA_HARAD_PAL_SHOW_3_06);
    AI_Output(other, self, PATCH_AE_DIA_HARAD_PAL_SHOW_3_07);
    B_LogEntry(Patch_AE_TOPIC_MARTIN_ARMOR, Patch_AE_DIA_HARAD_PAL_SHOW_entry);
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
    description  =  Patch_AE_DIA_HARAD_PALADIN_REFORGE_desc;
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
    AI_Output(other, self, PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_01);
    AI_Output(self, other, PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_02);
    AI_Output(self, other, PATCH_AE_DIA_HARAD_PALADIN_REFORGE_04);
    AI_Output(self, other, PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_05);
    AI_Output(other, self, PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_06);
    AI_Output(self, other, PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_07);
    AI_Output(other, self, PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_08);
    B_LogEntry(Patch_AE_TOPIC_MARTIN_ARMOR, Patch_AE_DIA_HARAD_PALADIN_REFORGE_entry1);

    if (Npc_HasItems(other, ItAr_PAL_R_ARMOREXPANSION) > 0)
    && (Npc_HasItems(other, ItMiSwordraw) >= 6)
    && (Npc_HasItems(other, ItMi_Nugget) >= 3)
    {
        B_GivePlayerXP(100);
        B_GiveInvItems(other, self, ItAr_PAL_R_ARMOREXPANSION, 1);
        AI_Output(other, self, PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_9);
        B_GiveInvItems(other, self, ItMiSwordraw, 6);
        B_GiveInvItems(other, self, ItMi_Nugget, 2);
        AI_Output(other, self, PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_10);
        AI_Output(self, other, PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_11);

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

        AI_Output(self, other, PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_12);
        Patch_AE_HARAD_PALADIN_REFORGEBought = B_GiveInvItems(self, other, ITAR_PAL_F_ARMOREXPANSION, 1);
        AI_Output(self, other, PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_13);
        AI_Output(self, other, PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_14);
        AI_Output(self, other, PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_15);
        AI_Output(other, self, PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_14);
        B_LogEntry(Patch_AE_TOPIC_MARTIN_ARMOR, Patch_AE_DIA_HARAD_PALADIN_REFORGE_entry2);
    }
    else
    {
        AI_Output(self, other, PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_16);
    };
};

instance Patch_AE_DIA_HARAD_END_MAKE (C_INFO)
{
    npc          =  VLK_412_Harad;
    nr           =  8;
    condition    =  Patch_AE_DIA_HARAD_END_MAKE_Condition;
    information  =  Patch_AE_DIA_HARAD_END_MAKE_Info;
    permanent    =  FALSE;
    description  =  Patch_AE_DIA_HARAD_END_MAKE_desc;
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
    AI_Output(other, self, PATCH_AE_DIA_HARAD_END_MAKE_1);
    AI_Output(self, other, PATCH_AE_DIA_HARAD_END_MAKE_2);
    AI_Output(other, self, PATCH_AE_DIA_HARAD_END_MAKE_3);
    AI_Output(self, other, PATCH_AE_DIA_HARAD_END_MAKE_4);
    AI_Output(other, self, PATCH_AE_DIA_HARAD_END_MAKE_5);
    AI_Output(self, other, PATCH_AE_DIA_HARAD_END_MAKE_6);
    AI_Output(other, self, PATCH_AE_DIA_HARAD_END_MAKE_7);
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

    AI_Output(self, other, PATCH_AE_DIA_HARAD_END_MAKE_8);
    B_GiveInvItems(self, other, ITAR_PAL_CH_ARMOREXPANSION, 1);
    AI_Output(other, self, PATCH_AE_DIA_HARAD_END_MAKE_9);
};

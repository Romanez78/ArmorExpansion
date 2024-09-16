//-------------------------------------
var int Patch_AE_ANDRE_MIL_SCOUTArmorBought;
//-------------------------------------

instance Patch_AE_DIA_ANDRE_MIL_SCOUTArmor (C_INFO)
{
    npc          =  MIL_311_ANDRE;
    nr           =  888;
    condition    =  Patch_AE_DIA_ANDRE_MIL_SCOUTArmor_Condition;
    information  =  Patch_AE_DIA_ANDRE_MIL_SCOUTArmor_Info;
    permanent    =  TRUE;
    description  =  Patch_AE_DIA_ANDRE_MIL_SCOUTArmor_desc;
};
func int Patch_AE_DIA_ANDRE_MIL_SCOUTArmor_Condition()
{
    if (Patch_AE_ANDRE_MIL_SCOUTArmorBought == FALSE)
    && (Npc_Hasitems(other, ItAr_MIL_L) > 0)
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_ANDRE_MIL_SCOUTArmor_Info()
{
    AI_Output(other, self, PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_01);
    AI_Output(other, self, PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_02);
    AI_Output(self, other, PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_13_03);
    AI_Output(other, self, PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_04);
    B_GiveInvItems(other, self, ItAr_MIL_L, 1);
    Patch_AE_ANDRE_MIL_SCOUTArmorBought = B_GiveInvItems(self, other, ITAR_MIL_SCOUT_ARMOREXPANSION, 1);
    AI_Output(self, other, PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_9);
};

instance Patch_AE_DIA_ANDRE_MILITIA_ARMORREWARD (C_INFO)
{
    npc          =  MIL_311_ANDRE;
    nr           =  888;
    condition    =  Patch_AE_DIA_ANDRE_MILITIA_ARMORREWARD_Condition;
    information  =  Patch_AE_DIA_ANDRE_MILITIA_ARMORREWARD_Info;
    permanent    =  FALSE;
    important    =  TRUE;
    description  =  "";
};
func int Patch_AE_DIA_ANDRE_MILITIA_ARMORREWARD_Condition()
{
    if (MIS_ANDRE_WAREHOUSE == LOG_SUCCESS)
    && (MIS_Andre_REDLIGHT == LOG_SUCCESS)
    && (MIS_AndreHelpLobart == LOG_SUCCESS)
    && (Npc_KnowsInfo (other, DIA_Andre_LOBART_SUCCESS))
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_ANDRE_MILITIA_ARMORREWARD_Info()
{
    AI_Output(self, other, PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_03);
    AI_Output(self, other, PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_04);
    B_GiveInvItems(self, other, ITAR_MIL_M, 1);
    AI_Output(self, other, PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_05);
    AI_Output(self, other, PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_06);
    AI_Output(other, self, PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_15_01);
};

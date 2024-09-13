instance Patch_AE_DIA_MILTEN_PALADINARMOR (C_INFO)
{
    npc          =  PC_Mage_NW;
    nr           =  8;
    condition    =  Patch_AE_DIA_MILTEN_PALADINARMOR_Condition;
    information  =  Patch_AE_DIA_MILTEN_PALADINARMOR_Info;
    permanent    =  FALSE;
    description  =  Patch_AE_DIA_MILTEN_PALADINARMOR_desc;
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
    AI_Output(other, self, PATCH_AE_DIA_MILTEN_PALADINARMOR_15_01); 
    AI_Output(self, other, PATCH_AE_DIA_MILTEN_PALADINARMOR_13_02); 
    AI_Output(other, self, PATCH_AE_DIA_MILTEN_PALADINARMOR_04);    
    AI_Output(self, other, PATCH_AE_DIA_MILTEN_PALADINARMOR_13_05); 
    AI_Output(self, other, PATCH_AE_DIA_MILTEN_PALADINARMOR_13_06); 
    AI_Output(self, other, PATCH_AE_DIA_MILTEN_PALADINARMOR_13_07); 
    AI_Output(self, other, PATCH_AE_DIA_MILTEN_PALADINARMOR_13_08); 
    AI_Output(self, other, PATCH_AE_DIA_MILTEN_PALADINARMOR_13_09); 
    AI_Output(self, other, PATCH_AE_DIA_MILTEN_PALADINARMOR_13_10);
    AI_Output(other, self, PATCH_AE_DIA_MILTEN_PALADINARMOR_15_11); 
    AI_Output(self, other, PATCH_AE_DIA_MILTEN_PALADINARMOR_13_12); 
    B_LogEntry(Patch_AE_TOPIC_MARTIN_ARMOR, Patch_AE_DIA_MILTEN_PALADINARMOR_entry);
};

instance Patch_AE_DIA_MILTEN_PLATEARMOR (C_INFO)
{
    npc          =  PC_Mage_NW;
    nr           =  8;
    condition    =  Patch_AE_DIA_MILTEN_PLATEARMOR_Condition;
    information  =  Patch_AE_DIA_MILTEN_PLATEARMOR_Info;
    permanent    =  FALSE;
    description  =  Patch_AE_DIA_MILTEN_PLATEARMOR_desc;
};
func int Patch_AE_DIA_MILTEN_PLATEARMOR_Condition()
{
    if (Npc_KnowsInfo(other, Patch_AE_DIA_MILTEN_PALADINARMOR))
    && (Npc_KnowsInfo(other, DIA_MiltenNW_AllDragonsDead))
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_MILTEN_PLATEARMOR_Info()
{
    AI_Output(other, self, PATCH_AE_DIA_MILTEN_PLATEARMOR_15_01);
    AI_Output(self, other, PATCH_AE_DIA_MILTEN_PLATEARMOR_13_02);
    AI_Output(self, other, PATCH_AE_DIA_MILTEN_PLATEARMOR_13_03);
    AI_Output(other, self, PATCH_AE_DIA_MILTEN_PLATEARMOR_15_04);
    AI_Output(self, other, PATCH_AE_DIA_MILTEN_PLATEARMOR_13_05);
    AI_Output(self, other, PATCH_AE_DIA_MILTEN_PLATEARMOR_13_06);
    AI_Output(self, other, PATCH_AE_DIA_MILTEN_PLATEARMOR_13_07);
    AI_Output(self, other, PATCH_AE_DIA_MILTEN_PLATEARMOR_13_08);
    B_LogEntry(Patch_AE_TOPIC_MARTIN_ARMOR, Patch_AE_DIA_MILTEN_PLATEARMOR_entry);
};

instance Patch_AE_DIA_MILTEN_RITUALARMOR (C_INFO)
{
    npc          =  PC_Mage_NW;
    nr           =  8;
    condition    =  Patch_AE_DIA_MILTEN_RITUALARMOR_Condition;
    information  =  Patch_AE_DIA_MILTEN_RITUALARMOR_Info;
    permanent    =  TRUE;
    description  =  Patch_AE_DIA_MILTEN_RITUALARMOR_desc;
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
    AI_Output(other, self, PATCH_AE_DIA_MILTEN_RITUALARMOR_15_01);
    B_GiveInvItems(other, self, ITAR_PAL_F_ARMOREXPANSION, 1);
    B_GiveInvItems(other, self, ItSc_InstantFireball, 1);
    B_GiveInvItems(other, self, ItSc_PalDestroyEvil, 1);
    B_GiveInvItems(other, self, ItMi_Rockcrystal, 2);
    AI_Output(self, other, PATCH_AE_DIA_MILTEN_RITUALARMOR_13_02);
    B_LogEntry(Patch_AE_TOPIC_MARTIN_ARMOR, Patch_AE_DIA_MILTEN_RITUALARMOR_entry);
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
    description  =  Patch_AE_DIA_MILTEN_LORDRMOR_desc;
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
    AI_Output(other, self, PATCH_AE_DIA_MILTEN_LORDRMOR_15_00);

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
            AI_Output(self, other, PATCH_AE_DIA_MILTEN_LORDRMOR_08_01);
        }
        else
        {
            CreateInvItems (self, ItAr_PAL_A_ARMOREXPANSION, 1);

            AI_Output(self, other, PATCH_AE_DIA_MILTEN_LORDRMOR_08_02);
            B_GiveInvItems (self, other, ItAr_PAL_A_ARMOREXPANSION, 1);
            AI_Output(self, other, PATCH_AE_DIA_MILTEN_LORDRMOR_08_03);
            AI_Output(other, self, PATCH_AE_DIA_MILTEN_LORDRMOR_15_04);
            AI_Output(self, other, PATCH_AE_DIA_MILTEN_LORDRMOR_08_05);
            Patch_AE_Player_GotARCArmor = TRUE;
            Log_SetTopicStatus(Patch_AE_TOPIC_MARTIN_ARMOR, LOG_SUCCESS);
            B_LogEntry(Patch_AE_TOPIC_MARTIN_ARMOR, Patch_AE_DIA_MILTEN_LORDRMOR_entry);
        };
    }
    else
    {
        AI_Output(self, other, PATCH_AE_DIA_WOLFEE_ARMORREADY_08_06);
    };
};

instance Patch_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC (C_INFO)
{
    npc          =  VLK_457_Brian;
    nr           =  4;
    condition    =  Patch_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_Condition;
    information  =  Patch_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_Info;
    permanent    =  FALSE;
    description  =  Patch_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_desc;
};
func int Patch_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_Condition()
{
    if (Kapitel >= 1)
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_Info()
{
    AI_Output(other, self, PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_15_01);
    AI_Output(self, other, PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_02);
    AI_Output(self, other, PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_03);
};

instance Patch_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL (C_INFO)
{
    npc          =  VLK_457_Brian;
    nr           =  3;
    condition    =  Patch_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_Condition;
    information  =  Patch_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_Info;
    permanent    =  TRUE;
    description  =  Patch_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_desc;
};
func int Patch_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_Condition()
{
    if (Npc_KnowsInfo (other, Patch_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC))
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_Info()
{
    AI_Output(other, self, PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_1);

    if (B_GiveInvItems(other, self, ItMi_Gold, 200))
    {
        AI_Output(self, other, PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_2);
        B_GiveInvItems(self, other, ItMiSwordraw, 1);
    }
    else
    {
        AI_Output(self, other, PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_3);
    };
};

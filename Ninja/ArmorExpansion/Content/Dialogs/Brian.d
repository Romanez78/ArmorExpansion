instance Patch_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC (C_INFO)
{
    npc          =  VLK_457_Brian;
    nr           =  4;
    condition    =  Patch_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_Condition;
    information  =  Patch_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_Info;
    permanent    =  FALSE;
    description  =  "Potřebuju více surové oceli.";
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
    AI_Output(other, self, "PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_15_01"); //Potřebuju více surové oceli.
    AI_Output(self, other, "PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_02"); //Můžu ti prodat nějáke z mých osobních zásob, ale vyjde tě to draho.
    AI_Output(self, other, "PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_03"); //200 zlatých za jeden kus.
};

instance Patch_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL (C_INFO)
{
    npc          =  VLK_457_Brian;
    nr           =  3;
    condition    =  Patch_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_Condition;
    information  =  Patch_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_Info;
    permanent    =  TRUE;
    description  =  "Prodej mi jeden kus surové oceli. (Cena: 200 zlatých).";
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
    AI_Output(other, self, "PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_1"); //Prodej mi jeden kus surové oceli.

    if (B_GiveInvItems(other, self, ItMi_Gold, 200))
    {
        AI_Output(self, other, "PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_2"); //Tady je.
        B_GiveInvItems(self, other, ItMiSwordraw, 1);
    }
    else
    {
        AI_Output(self, other, "PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_3"); //Přijď až budeš mít u sebe dost zlata
    };
};

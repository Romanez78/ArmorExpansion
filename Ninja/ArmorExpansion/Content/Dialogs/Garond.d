instance Patch_AE_DIA_GAROND_KNIGHT_ARMORREWARD (C_INFO)
{
    npc          =  PAL_250_Garond;
    nr           =  888;
    condition    =  Patch_AE_DIA_GAROND_KNIGHT_ARMORREWARD_Condition;
    information  =  Patch_AE_DIA_GAROND_KNIGHT_ARMORREWARD_Info;
    permanent    =  FALSE;
    important    =  TRUE;
    description  =  "";
};
func int Patch_AE_DIA_GAROND_KNIGHT_ARMORREWARD_Condition()
{
    if (MIS_KilledDragons >= 2)
    && (other.guild == GIL_PAL)
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_GAROND_KNIGHT_ARMORREWARD_Info()
{
        AI_Output(self, other, "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_03"); //Zadrž.
        AI_Output(self, other, "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_04"); //Jsi jediný z nás komu se zatím podařilo nějákého draka zabít.
        AI_Output(self, other, "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_05"); //Mám naději že se ti povede je dostat všechny.
        B_GiveInvItems(self, other, ITAR_PAL_MH_ARMOREXPANSION, 1);
        AI_Output(self, other, "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_06"); //Tady máš, tohle by ti mělo pomoci ve tvém úkolu. A teď už běž, není moc času nazbyt.
        AI_Output(other, self, "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_15_01"); //Díky.
};

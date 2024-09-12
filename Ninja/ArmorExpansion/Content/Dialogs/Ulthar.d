instance Patch_AE_DIA_ARMOREXPANSION_Ulthar (C_INFO)
{
    npc          =  KDF_502_Ulthar;
    nr           =  30;
    condition    =  Patch_AE_DIA_ARMOREXPANSION_Ulthar_Condition;
    information  =  Patch_AE_DIA_ARMOREXPANSION_Ulthar_Info;
    important    =  TRUE;
    description  =  "VyÄŤistil jsem vĹˇechny svatinÄ›.";
};
func int Patch_AE_DIA_ARMOREXPANSION_Ulthar_Condition()
{
    if (MIS_Ulthar_HeileSchreine_PAL == LOG_SUCCESS)
    {
            return TRUE;
    };
};
func void Patch_AE_DIA_ARMOREXPANSION_Ulthar_Info()
{
    AI_Output(self, other, "PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_01"); //PoÄŤkej, chtÄ›li jsme tÄ› jeĹˇtÄ› podpoĹ™it v tvĂ©m boji proti zlu novou zbrojĂ­.
    AI_Output(self, other, "PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_02"); //Vezmi si tuhle zbroj kĹ™iĹľĂˇka Innose, jsem si jistĂ˝ Ĺľe ji vyuĹľijeĹˇ.
    AI_Output(other, self, "PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_03"); //DÄ›kuji.
    B_GiveInvItems (self, other, ItAr_Crusader_ARMOREXPANSION, 1);
};

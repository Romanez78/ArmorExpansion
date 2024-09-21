instance Patch_AE_DIA_LEE_SLD_SCOUTArmor (C_INFO)
{
    npc          =  SLD_800_Lee;
    nr           =  888;
    condition    =  Patch_AE_DIA_LEE_SLD_SCOUTArmor_Condition;
    information  =  Patch_AE_DIA_LEE_SLD_SCOUTArmor_Info;
    permanent    =  TRUE;
    description  =  Patch_AE_DIA_LEE_SLD_SCOUTArmor_desc;
};
func int Patch_AE_DIA_LEE_SLD_SCOUTArmor_Condition()
{
    if (Npc_Hasitems(other, ItAr_SLD_L) > 0)
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_LEE_SLD_SCOUTArmor_Info()
{
    AI_Output(other, self, PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_15_01);
    AI_Output(other, self, PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_15_02);
    AI_Output(self, other, PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_13_03);
    AI_Output(self, other, PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_13_04);
};

// ************************************************************
// 							Armor BOW Buy
// ************************************************************

var int Patch_AE_Lee_SldMCGiven;
instance Patch_AE_DIA_Lee_BuyArmorM (C_INFO)
{
	npc			= SLD_800_Lee;
	nr			= 3;
	condition	= Patch_AE_DIA_Lee_BuyArmorM_Condition;
	information	= Patch_AE_DIA_Lee_BuyArmorM_Info;
	permanent	= TRUE;
	description = Patch_AE_DIA_LEE_SLD_BOWArmor_desc;
};                       
FUNC INT Patch_AE_DIA_Lee_BuyArmorM_Condition()
{
	if (Lee_Give_Sld_M == TRUE)
    && (Patch_AE_Lee_SldMCGiven == FALSE)    
	{
		return TRUE;
	};
};
FUNC VOID Patch_AE_DIA_Lee_BuyArmorM_Info()
{	
	AI_Output (other,self , DIA_Lee_BuyArmorM_15_00);
	
	if (B_GiveInvItems (other, self, itmi_gold, 1500))
	{
		AI_Output (self ,other, DIA_Lee_BuyArmorM_04_01);
		//B_GiveInvItems (self, other, ITAR_SLD_BOW_ArmorExpansion, 1);
		CreateInvItems (other, ITAR_SLD_BOW_ArmorExpansion, 1);
		AI_EquipArmor (other, ITAR_SLD_BOW_ArmorExpansion);
			
		Patch_AE_Lee_SldMCGiven = TRUE;
	}
	else
	{
		AI_Output (self ,other, DIA_Lee_BuyArmorM_04_02);
	};
};

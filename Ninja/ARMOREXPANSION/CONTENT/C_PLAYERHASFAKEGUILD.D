func int Ninja_ArmorExpansion_C_PlayerHasFakeGuild (var C_NPC slf, var C_NPC oth)
{
	var C_Item itm; itm = Npc_GetEquippedArmor(oth);
	
	if (slf.aivar[AIV_IgnoresArmor] == TRUE)
	{
		return false;
	};
	
	if (slf.aivar[aiv_IgnoresFakeGuild] == TRUE)
	{
		return false;
	};
	
	if (C_NpcIsGateGuard(self) == TRUE)
	{
		return false;
	};	
		
    // Check, that player has an proper armor from the patch.
    var int Ninja_ArmorExpansion_HasProperArmorFromPatch;
	if  (slf.guild == oth.guild)
	{
		if  (oth.guild == GIL_NONE)
		&&	((Hlp_IsItem(itm, ITAR_GAMBESON_ARMOREXPANSION) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_PAL_ST_ARMOREXPANSION) == TRUE))		
		{		
			Ninja_ArmorExpansion_HasProperArmorFromPatch = true;
		}
		else if (oth.guild == GIL_MIL)
		&&	((Hlp_IsItem(itm, ITAR_MIL_H_ARMOREXPANSION) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_MIL_SCOUT_ARMOREXPANSION) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_MIL_R_ArmorExpansion) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_MIL_Med2_ARMOREXPANSION) == TRUE)
		||	(Hlp_IsItem(itm, ITAR_MIL_P_ARMOREXPANSION) == TRUE))
		{
			Ninja_ArmorExpansion_HasProperArmorFromPatch = true;
		}
		else if (oth.guild == GIL_PAL)
		&&	((Hlp_IsItem(itm, ITAR_PAL_A_ARMOREXPANSION) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_PAL_R_ARMOREXPANSION) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_PAL_RNH_ARMOREXPANSION) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_PAL_RFH_ARMOREXPANSION) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_PAL_ANH_ARMOREXPANSION) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_PAL_AFH_ARMOREXPANSION) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_PAL_FNH_ARMOREXPANSION) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_PAL_FFH_ARMOREXPANSION) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_PAL_MH_ARMOREXPANSION) == TRUE)		
		||	 (Hlp_IsItem(itm, ITAR_PAL_F_ARMOREXPANSION) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_PAL_C_ARMOREXPANSION) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_PAL_CH_ARMOREXPANSION) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_NH_CRUSADER_ARMOREXPANSION) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_CRUSADER_ARMOREXPANSION) == TRUE))
		{
			Ninja_ArmorExpansion_HasProperArmorFromPatch = true;
		}
		else if (oth.guild == GIL_SLD)
		&&	((Hlp_IsItem(itm, ITAR_SLD_SCOUT_ARMOREXPANSION) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_SLD_BOW_ARMOREXPANSION) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_SLD_LR_ARMOREXPANSION) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_SLD_R_ARMOREXPANSION) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_SLD_LR_ARMOREXPANSION) == TRUE))
		{
			Ninja_ArmorExpansion_HasProperArmorFromPatch = true;
		}
		else if (oth.guild == GIL_DJG)
		&&	((Hlp_IsItem(itm, ITAR_SLD_SCOUT_ARMOREXPANSION) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_SLD_BOW_ARMOREXPANSION) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_SLD_LR_ARMOREXPANSION) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_SLD_R_ARMOREXPANSION) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_DJG_CL_ARMOREXPANSION) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_DJG_CH_ARMOREXPANSION) == TRUE)	
		||	 (Hlp_IsItem(itm, ITAR_DJG_CM_ARMOREXPANSION) == TRUE)		
		||	 (Hlp_IsItem(itm, ITAR_SLD_LR_ARMOREXPANSION) == TRUE))
		{
			Ninja_ArmorExpansion_HasProperArmorFromPatch = true;
		}
        else
        {
            Ninja_ArmorExpansion_HasProperArmorFromPatch = false;
        };
	};
    
    // If has, player hasn't fake guild
    if (true == Ninja_ArmorExpansion_HasProperArmorFromPatch)
    {
        return false;
    };
    
    PassArgumentN(slf);
    PassArgumentN(oth);
    ContinueCall();
};		

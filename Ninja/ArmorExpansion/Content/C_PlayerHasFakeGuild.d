func int Patch_AE_C_PlayerHasFakeGuild (var C_NPC slf, var C_NPC oth)
{
	// First call the original function.
	// This is important to ensure that any quest-related changes of a mod are still properly executed.
	PassArgumentN(slf);
	PassArgumentN(oth);
	ContinueCall();
	var int hasFakeGuild;
	hasFakeGuild = MEM_PopIntResult(); // That is the return value from "C_PlayerHasFakeGuild".

	// If the player has does not have a fake guild according to the game/mod, there is nothing to extend.
	if (!hasFakeGuild) {
		return FALSE;
	};

	// But otherwise, correct any false positives with the new armors:

	var C_Item itm; itm = Npc_GetEquippedArmor(oth);

    // Check, that player has an proper armor from the patch.
    var int HasProperArmorFromPatch;
	if  (slf.guild == oth.guild)
	{
		if  (oth.guild == GIL_NONE)
		&&	((Hlp_IsItem(itm, ITAR_GAMBESON_ArmorExpansion) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_PAL_ST_ArmorExpansion) == TRUE))
		{
			HasProperArmorFromPatch = true;
		}
		else if (oth.guild == GIL_MIL)
		&&	((Hlp_IsItem(itm, ITAR_MIL_H_ArmorExpansion) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_MIL_SCOUT_ArmorExpansion) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_MIL_R_ArmorExpansion) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_MIL_Med2_ArmorExpansion) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_MIL_P_ArmorExpansion) == TRUE))
		{
			HasProperArmorFromPatch = true;
		}
		else if (oth.guild == GIL_PAL) ITAR_PAL_MH_FH_ArmorExpansion
		&&	((Hlp_IsItem(itm, ITAR_PAL_A_ArmorExpansion) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_PAL_R_ArmorExpansion) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_PAL_RNH_ArmorExpansion) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_PAL_RFH_ArmorExpansion) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_PAL_ANH_ArmorExpansion) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_PAL_AFH_ArmorExpansion) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_PAL_FNH_ArmorExpansion) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_PAL_FFH_ArmorExpansion) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_PAL_MH_ArmorExpansion) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_PAL_MH_FH_ArmorExpansion) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_PAL_F_ArmorExpansion) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_PAL_C_ArmorExpansion) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_PAL_CH_ArmorExpansion) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_NH_CRUSADER_ArmorExpansion) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_CRUSADER_ArmorExpansion) == TRUE))
		{
			HasProperArmorFromPatch = true;
		}
		else if (oth.guild == GIL_SLD)
		&&	((Hlp_IsItem(itm, ITAR_SLD_SCOUT_ArmorExpansion) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_SLD_BOW_ArmorExpansion) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_SLD_LR_ArmorExpansion) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_SLD_R_ArmorExpansion) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_SLD_LR_ArmorExpansion) == TRUE))
		{
			HasProperArmorFromPatch = true;
		}
		else if (oth.guild == GIL_DJG)
		&&	((Hlp_IsItem(itm, ITAR_SLD_SCOUT_ArmorExpansion) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_SLD_BOW_ArmorExpansion) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_SLD_LR_ArmorExpansion) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_SLD_R_ArmorExpansion) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_DJG_CL_ArmorExpansion) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_DJG_CH_ArmorExpansion) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_DJG_CM_ArmorExpansion) == TRUE)
		||	 (Hlp_IsItem(itm, ITAR_SLD_LR_ArmorExpansion) == TRUE))
		{
			HasProperArmorFromPatch = true;
		}
        else
        {
            HasProperArmorFromPatch = false;
        };
	};

    // If has, player hasn't fake guild
    if (true == HasProperArmorFromPatch)
    {
        return false;
    }
    else
    {
        return true;
    };
};

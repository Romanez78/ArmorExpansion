func int Patch_AE_C_PlayerHasFakeGuild (var C_NPC slf, var C_NPC oth)
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
    var int HasProperArmorFromPatch;
	if  (slf.guild == oth.guild)
	{
		if  (oth.guild == GIL_NONE)
		&&	((Hlp_IsItem(itm, Patch_AE_ITAR_GAMBESON) == TRUE)
		||	 (Hlp_IsItem(itm, Patch_AE_ITAR_PAL_ST) == TRUE))
		{
			HasProperArmorFromPatch = true;
		}
		else if (oth.guild == GIL_MIL)
		&&	((Hlp_IsItem(itm, Patch_AE_ITAR_MIL_H) == TRUE)
		||	 (Hlp_IsItem(itm, Patch_AE_ITAR_MIL_SCOUT) == TRUE)
		||	 (Hlp_IsItem(itm, Patch_AE_ITAR_MIL_R) == TRUE)
		||	 (Hlp_IsItem(itm, Patch_AE_ITAR_MIL_Med2) == TRUE)
		||	(Hlp_IsItem(itm, Patch_AE_ITAR_MIL_P) == TRUE))
		{
			HasProperArmorFromPatch = true;
		}
		else if (oth.guild == GIL_PAL)
		&&	((Hlp_IsItem(itm, Patch_AE_ITAR_PAL_A) == TRUE)
		||	 (Hlp_IsItem(itm, Patch_AE_ITAR_PAL_R) == TRUE)
		||	 (Hlp_IsItem(itm, Patch_AE_ITAR_PAL_RNH) == TRUE)
		||	 (Hlp_IsItem(itm, Patch_AE_ITAR_PAL_RFH) == TRUE)
		||	 (Hlp_IsItem(itm, Patch_AE_ITAR_PAL_ANH) == TRUE)
		||	 (Hlp_IsItem(itm, Patch_AE_ITAR_PAL_AFH) == TRUE)
		||	 (Hlp_IsItem(itm, Patch_AE_ITAR_PAL_FNH) == TRUE)
		||	 (Hlp_IsItem(itm, Patch_AE_ITAR_PAL_FFH) == TRUE)
		||	 (Hlp_IsItem(itm, Patch_AE_ITAR_PAL_MH) == TRUE)
		||	 (Hlp_IsItem(itm, Patch_AE_ITAR_PAL_F) == TRUE)
		||	 (Hlp_IsItem(itm, Patch_AE_ITAR_PAL_C) == TRUE)
		||	 (Hlp_IsItem(itm, Patch_AE_ITAR_PAL_CH) == TRUE)
		||	 (Hlp_IsItem(itm, Patch_AE_ITAR_NH_CRUSADER) == TRUE)
		||	 (Hlp_IsItem(itm, Patch_AE_ITAR_CRUSADER) == TRUE))
		{
			HasProperArmorFromPatch = true;
		}
		else if (oth.guild == GIL_SLD)
		&&	((Hlp_IsItem(itm, Patch_AE_ITAR_SLD_SCOUT) == TRUE)
		||	 (Hlp_IsItem(itm, Patch_AE_ITAR_SLD_BOW) == TRUE)
		||	 (Hlp_IsItem(itm, Patch_AE_ITAR_SLD_LR) == TRUE)
		||	 (Hlp_IsItem(itm, Patch_AE_ITAR_SLD_R) == TRUE)
		||	 (Hlp_IsItem(itm, Patch_AE_ITAR_SLD_LR) == TRUE))
		{
			HasProperArmorFromPatch = true;
		}
		else if (oth.guild == GIL_DJG)
		&&	((Hlp_IsItem(itm, Patch_AE_ITAR_SLD_SCOUT) == TRUE)
		||	 (Hlp_IsItem(itm, Patch_AE_ITAR_SLD_BOW) == TRUE)
		||	 (Hlp_IsItem(itm, Patch_AE_ITAR_SLD_LR) == TRUE)
		||	 (Hlp_IsItem(itm, Patch_AE_ITAR_SLD_R) == TRUE)
		||	 (Hlp_IsItem(itm, Patch_AE_ITAR_DJG_CL) == TRUE)
		||	 (Hlp_IsItem(itm, Patch_AE_ITAR_DJG_CH) == TRUE)
		||	 (Hlp_IsItem(itm, Patch_AE_ITAR_DJG_CM) == TRUE)
		||	 (Hlp_IsItem(itm, Patch_AE_ITAR_SLD_LR) == TRUE))
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
    };

    PassArgumentN(slf);
    PassArgumentN(oth);
    ContinueCall();
};

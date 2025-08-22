/*
 *  [CONSTANTS]
 *   - [INGREDIENTS]
 *
 *  Lists of ingredients needed to forge armors.
 *  A name of an instance of a given ingredient, is written after `__` in each of a below constant.
 *
 *  IMPORTANT: To forge an armor, a blueprint itself is needed.
 */

/*
 *  instance `ITAR_PAL_ST`
 *      Description: in `Patch_AE_Use_Plan_StewarkArmor` called by `ItWr_BluePrint_StewarkArmor_ArmorExpansion` [IT_ARMOREXPANSION.D]
 *
 * Resource amount listed in [Balancing/Default.d]
 */


/*
 *  Patch_AE_PC_ITAR_PAL_ST
 */
INSTANCE Patch_AE_PC_ITAR_PAL_ST (C_INFO)
{
	npc				= PC_Hero;
	condition		= Patch_AE_PC_ITAR_PAL_ST_Condition;
	information		= Patch_AE_PC_ITAR_PAL_ST_Info;
	permanent		= true;
    description     = Patch_AE_PC_ITAR_PAL_ST_desc;
};
FUNC INT Patch_AE_PC_ITAR_PAL_ST_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has a blueprint
        if (Npc_HasItems(hero, ItWr_BluePrint_StewarkArmor_ArmorExpansion) > 0)
        {
            return true;
        };
    };
};
FUNC VOID Patch_AE_PC_ITAR_PAL_ST_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;

    // Check ingredients

    // [ItMiSwordrawhot]
    amount_needed = Patch_AE_INGREDIENTS_ITAR_PAL_ST__ItMiSwordrawhot;
    amount_current = Npc_HasItems(hero, Patch_AE_SmithItem);

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(Patch_AE_SmithItem, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };

    // [ItAt_WargFur]
    amount_needed = Patch_AE_INGREDIENTS_ITAR_PAL_ST__ItAt_WargFur;
    amount_current = Npc_HasItems(hero, ItAt_WargFur);
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(ItAt_WargFur, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };


    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, Patch_AE_SmithItem, Patch_AE_INGREDIENTS_ITAR_PAL_ST__ItMiSwordrawhot);

        // [ItAt_WargFur]
        Npc_RemoveInvItems(hero, ItAt_WargFur, Patch_AE_INGREDIENTS_ITAR_PAL_ST__ItAt_WargFur);


        // Create an armor
        CreateInvItem(hero, ITAR_PAL_ST_ArmorExpansion);

        // Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_PAL_ST_ArmorExpansion);
    // If hasn't
    } else
    {
        // Restore a raw steel
        if (!Patch_AE_IsLHiverMasty()) // These mods require no base-resource to use the anvil
        && (!Patch_AE_IsLHiverBuddygothArtstuff())
        && (!Patch_AE_IsLHiverMarcello())
        && (!Patch_AE_IsAtariar()) {
            CreateInvItem(hero, ItMiSwordraw);
        };
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};

/*
 *  SMITHARMOR.d
 *   - forging armors
 *
 *  [Damianut 26.04.2024]
 */


// --- OBSOLETE
/*
 *  [VARIABLES]
 *   - [ARMORS]
 *
 *  I create variables for each armor, to avoid extending already created `PLAYER_TALENT_SMITH[]` array.
 *  If a variable, which starts with `Patch_AE_PLAYER_TALENT_SMITH` is true, it means, that player knows how to forge an armor with an instance name, which is written after `Patch_AE_PLAYER_TALENT_SMITH_`.
 */
// var int Patch_AE_PLAYER_TALENT_SMITH_ITAR_PAL_ST;
// --- END "OBSOLETE"


/*
 *  [CONSTANTS]
 *   - [MOBSI]
 *  Treat an anvil like another mobsi, when player wants to forge an armor from a packet.
 */
const int Patch_AE_MOBSI_SmithWeapon = 102;


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
 */
const int Patch_AE_INGREDIENTS_ITAR_PAL_ST__ItMiSwordrawhot = 6;
const int Patch_AE_INGREDIENTS_ITAR_PAL_ST__ItAt_WargFur = 3;

const int Patch_AE_INGREDIENTS_ITAR_PAL_ANH__itar_pal_a = 1;
const int Patch_AE_INGREDIENTS_ITAR_PAL_AFH__itar_pal_a = 1;
const int Patch_AE_INGREDIENTS_ITAR_PAL_A__itar_pal_anh = 1;
const int Patch_AE_INGREDIENTS_ITAR_PAL_A__itar_pal_afh = 1;
const int Patch_AE_INGREDIENTS_ITAR_PAL_ANH__itar_pal_afh = 1;
const int Patch_AE_INGREDIENTS_ITAR_PAL_AFH__itar_pal_anh = 1;

const int Patch_AE_INGREDIENTS_ITAR_PAL_fNH__itar_pal_f = 1;
const int Patch_AE_INGREDIENTS_ITAR_PAL_fFH__itar_pal_f = 1;
const int Patch_AE_INGREDIENTS_ITAR_PAL_f__itar_pal_fnh = 1;
const int Patch_AE_INGREDIENTS_ITAR_PAL_f__itar_pal_ffh = 1;
const int Patch_AE_INGREDIENTS_ITAR_PAL_fNH__itar_pal_ffh = 1;
const int Patch_AE_INGREDIENTS_ITAR_PAL_fFH__itar_pal_fnh = 1;

const int Patch_AE_INGREDIENTS_ITAR_PAL_rNH__itar_pal_r = 1;
const int Patch_AE_INGREDIENTS_ITAR_PAL_rFH__itar_pal_r = 1;
const int Patch_AE_INGREDIENTS_ITAR_PAL_r__itar_pal_rnh = 1;
const int Patch_AE_INGREDIENTS_ITAR_PAL_r__itar_pal_rfh = 1;
const int Patch_AE_INGREDIENTS_ITAR_PAL_rNH__itar_pal_rfh = 1;
const int Patch_AE_INGREDIENTS_ITAR_PAL_rFH__itar_pal_rnh = 1;

const int Patch_AE_INGREDIENTS_ITAR_CRUSADER_NH__itar_Crusader = 1;
const int Patch_AE_INGREDIENTS_ITAR_CRUSADER__itar_pal_Crusader_NH = 1;

const int Patch_AE_INGREDIENTS_ITAR_PAL_MH__ITAR_PAL_MH_FH = 1;
const int Patch_AE_INGREDIENTS_ITAR_PAL_MH_FH__ITAR_PAL_MH = 1;

const int Patch_AE_INGREDIENTS_ITAR_PAL_HNH__itar_pal_h = 1;
const int Patch_AE_INGREDIENTS_ITAR_PAL_HFH__itar_pal_h = 1;
const int Patch_AE_INGREDIENTS_ITAR_PAL_H__itar_pal_hnh = 1;
const int Patch_AE_INGREDIENTS_ITAR_PAL_H__itar_pal_hfh = 1;
const int Patch_AE_INGREDIENTS_ITAR_PAL_HNH__itar_pal_hfh = 1;
const int Patch_AE_INGREDIENTS_ITAR_PAL_HFH__itar_pal_hnh = 1;

const int Patch_AE_INGREDIENTS_Itar_djg_M_NH__itar_djg_M = 1;
const int Patch_AE_INGREDIENTS_Itar_djg_M__itar_djg_MNH = 1;

const int Patch_AE_INGREDIENTS_Itar_DJG_H_NH__itar_DJG_H = 1;
const int Patch_AE_INGREDIENTS_ITAR_DJG_H__itar_djg_Hnh = 1;

/*
 *  [FUNCTIONS & INSTANCES]
 */

/*
 *  Patch_AE_Func_Print_ProdItemsMissing
 *   - display information about missing ingredient(s)
 */
func void Patch_AE_Func_Print_ProdItemsMissing(var string ingredientName, var int missingAmount)
{
    // Build a string
    var string str; str = Patch_AE_PRINT_ProdItemsMissing__SUBSTR_1;
    str = ConcatStrings(str, ingredientName);
    str = ConcatStrings(str, Patch_AE_PRINT_ProdItemsMissing__SUBSTR_2);
    str = ConcatStrings(str, IntToString(missingAmount));

    // Print a string
    Print(str);
};

/*
 *  Patch_AE_Func_Print_ForgeSuccess
 *   - display information about an forged armor
 */
func void Patch_AE_Func_Print_ForgeSuccess(var string armorName)
{
    // Build and print a string
    Print(ConcatStrings(armorName, Patch_AE_PRINT_ForgeSuccess));
};


/*
 *  [DIALOGUES]
 */

/*
 *  Normal & Ore smithing
 *   - overwriting original condition, to take forging an armor into consideration
 */
func int Patch_AE_PC_Common_Condition()
{
    // If player already selected forging an armor
    if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        return false;
    };

    ContinueCall();
};
func int Patch_AE_PC_Ore_Condition()
{
    // If player already selected forging an armor
    if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        return false;
    };

    ContinueCall();
};


/*
 *  Patch_AE_PC_FORGE_ARMOR
 *   - select an armor forging
 */
instance Patch_AE_PC_FORGE_ARMOR(C_INFO)
{
	npc				= PC_Hero;
	nr				= 0;
	condition		= Patch_AE_PC_FORGE_ARMOR_Condition;
	information		= Patch_AE_PC_FORGE_ARMOR_Info;
	permanent		= true;
	description		= Patch_AE_PC_FORGE_ARMOR_desc;
};
func int Patch_AE_PC_FORGE_ARMOR_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHWEAPON)
    {

		return true;

    };
};
func void Patch_AE_PC_FORGE_ARMOR_Info()
{
    PLAYER_MOBSI_PRODUCTION = Patch_AE_MOBSI_SmithWeapon;
};

/*
 *  Patch_AE_PC_FORGE_ARMORBACK
 *   - unselect forging an armor
 */
instance Patch_AE_PC_FORGE_ARMORBACK(C_INFO)
{
	npc				= PC_Hero;
	nr				= 99;
	condition		= Patch_AE_PC_FORGE_ARMORBACK_Condition;
	information		= Patch_AE_PC_FORGE_ARMORBACK_Info;
	permanent		= true;
	description		= DIALOG_BACK;
};
func int Patch_AE_PC_FORGE_ARMORBACK_Condition()
{
    if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        return true;
    };
};
func void Patch_AE_PC_FORGE_ARMORBACK_Info()
{
    // Return to original constant.
	PLAYER_MOBSI_PRODUCTION = MOBSI_SmithWeapon;
};

/*
 *  Patch_AE_PC_FORGE_ARMOR_End
 *   - end mobsi dialogue
 */
instance Patch_AE_PC_FORGE_ARMOR_End(C_Info)
{
	npc				= PC_Hero;
	nr				= 999;
	condition		= Patch_AE_PC_FORGE_ARMOR_End_Condition;
	information		= Patch_AE_PC_FORGE_ARMOR_End_Info;
	permanent		= TRUE;
	description		= DIALOG_ENDE;
};
func int Patch_AE_PC_FORGE_ARMOR_End_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
	{
		return TRUE;
	};
};
func void Patch_AE_PC_FORGE_ARMOR_End_Info()
{
	CreateInvItems(self, ItMiSwordRaw, 1);
	B_ENDPRODUCTIONDIALOG();
};


/*
 *  Forging concrete armor
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
        if (0 < Npc_HasItems(hero, ItWr_BluePrint_StewarkArmor_ArmorExpansion))
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
    amount_current = Npc_HasItems(hero, Patch_AE_SmithItem) + 1; // IMPORTANT: An one of a raw steel is in a hand

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        var int itmPtr; itmPtr = Itm_GetPtr(Patch_AE_SmithItem); // Initialize and load it into "item"
        Patch_AE_Func_Print_ProdItemsMissing(item.name, amount_missing);

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
        Patch_AE_Func_Print_ProdItemsMissing(ItAt_WargFur.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };


    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, Patch_AE_SmithItem, Patch_AE_INGREDIENTS_ITAR_PAL_ST__ItMiSwordrawhot - 1);

        // [ItAt_WargFur]
        Npc_RemoveInvItems(hero, ItAt_WargFur, Patch_AE_INGREDIENTS_ITAR_PAL_ST__ItAt_WargFur);


        // Create an armor
        CreateInvItem(hero, ITAR_PAL_ST_ArmorExpansion);

        // Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_PAL_ST_ArmorExpansion.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};

INSTANCE Patch_AE_PC_ITAR_PAL_ANH (C_INFO)
{
	npc				= PC_Hero;
	condition		= Patch_AE_PC_ITAR_PAL_ANH_Condition;
	information		= Patch_AE_PC_ITAR_PAL_ANH_Info;
	permanent		= true;
    description     = Patch_AE_PC_ITAR_PAL_ANH_desc;
};
FUNC INT Patch_AE_PC_ITAR_PAL_ANH_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has armor
        if (0 < Npc_HasItems(hero, ITAR_PAL_A_ArmorExpansion))
        {
            return true;
        };
    };
};
FUNC VOID Patch_AE_PC_ITAR_PAL_ANH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;

    // Check ingredients

    // [Itar_Pal_A]
    amount_needed = Patch_AE_INGREDIENTS_ITAR_PAL_ANH__Itar_pal_a;
    amount_current = Npc_HasItems(hero, ITAR_PAL_A_ArmorExpansion); // IMPORTANT: An one of a raw steel is in a hand

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(ITAR_PAL_A_ArmorExpansion.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };

    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, - 1);
        Npc_RemoveInvItems(hero, ITAR_PAL_A_ArmorExpansion, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_ANH_ArmorExpansion);
        CreateInvItem(hero, ItMiSwordrawhot);

        // Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_PAL_ANH_ArmorExpansion.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE Patch_AE_PC_ITAR_PAL_AFH (C_INFO)
{
	npc				= PC_Hero;
	condition		= Patch_AE_PC_ITAR_PAL_AFH_Condition;
	information		= Patch_AE_PC_ITAR_PAL_AFH_Info;
	permanent		= true;
    description     = Patch_AE_PC_ITAR_PAL_AFH_desc;
};
FUNC INT Patch_AE_PC_ITAR_PAL_AFH_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has armor
        if (0 < Npc_HasItems(hero, ITAR_PAL_A_ArmorExpansion))
        {
            return true;
        };
    };
};
FUNC VOID Patch_AE_PC_ITAR_PAL_AFH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;

    // Check ingredients

    // [Itar_Pal_A]
    amount_needed = Patch_AE_INGREDIENTS_ITAR_PAL_AFH__Itar_pal_a;
    amount_current = Npc_HasItems(hero, ITAR_PAL_A_ArmorExpansion); // IMPORTANT: An one of a raw steel is in a hand

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(ITAR_PAL_A_ArmorExpansion.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };

    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, - 1);
        Npc_RemoveInvItems(hero, ITAR_PAL_A_ArmorExpansion, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_AFH_ArmorExpansion);
        CreateInvItem(hero, ItMiSwordrawhot);

        // Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_PAL_AFH_ArmorExpansion.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE Patch_AE_PC_ITAR_PAL_AFH_NH (C_INFO)
{
	npc				= PC_Hero;
	condition		= Patch_AE_PC_ITAR_PAL_AFH_NH_Condition;
	information		= Patch_AE_PC_ITAR_PAL_AFH_NH_Info;
	permanent		= true;
    description     = Patch_AE_PC_ITAR_PAL_AFH_NH_desc;
};
FUNC INT Patch_AE_PC_ITAR_PAL_AFH_NH_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has armor
        if (0 < Npc_HasItems(hero, ITAR_PAL_ANH_ArmorExpansion))
        {
            return true;
        };
    };
};
FUNC VOID Patch_AE_PC_ITAR_PAL_AFH_NH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;

    // Check ingredients

    // [Itar_Pal_A]
    amount_needed = Patch_AE_INGREDIENTS_ITAR_PAL_AFH__itar_pal_anh ;
    amount_current = Npc_HasItems(hero, ITAR_PAL_ANH_ArmorExpansion); // IMPORTANT: An one of a raw steel is in a hand

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(ITAR_PAL_ANH_ArmorExpansion.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };

    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, - 1);
        Npc_RemoveInvItems(hero, ITAR_PAL_ANH_ArmorExpansion, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_AFH_ArmorExpansion);
        CreateInvItem(hero, ItMiSwordrawhot);

		// Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_PAL_AFH_ArmorExpansion.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE Patch_AE_PC_ITAR_PAL_ANH_FH (C_INFO)
{
	npc				= PC_Hero;
	condition		= Patch_AE_PC_ITAR_PAL_ANH_FH_Condition;
	information		= Patch_AE_PC_ITAR_PAL_ANH_FH_Info;
	permanent		= true;
    description     = Patch_AE_PC_ITAR_PAL_ANH_FH_desc;
};
FUNC INT Patch_AE_PC_ITAR_PAL_ANH_FH_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has armor
        if (0 < Npc_HasItems(hero, ITAR_PAL_AFH_ArmorExpansion))
        {
            return true;
        };
    };
};
FUNC VOID Patch_AE_PC_ITAR_PAL_ANH_FH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;

    // Check ingredients

    // [Itar_Pal_A]
    amount_needed = Patch_AE_INGREDIENTS_ITAR_PAL_ANH__itar_pal_afh ;
    amount_current = Npc_HasItems(hero, ITAR_PAL_AFH_ArmorExpansion); // IMPORTANT: An one of a raw steel is in a hand

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(ITAR_PAL_AFH_ArmorExpansion.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };

    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, - 1);
        Npc_RemoveInvItems(hero, ITAR_PAL_AFH_ArmorExpansion, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_ANH_ArmorExpansion);
        CreateInvItem(hero, ItMiSwordrawhot);

		// Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_PAL_ANH_ArmorExpansion.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE Patch_AE_PC_ITAR_PAL_A_FH (C_INFO)
{
	npc				= PC_Hero;
	condition		= Patch_AE_PC_ITAR_PAL_A_FH_Condition;
	information		= Patch_AE_PC_ITAR_PAL_A_FH_Info;
	permanent		= true;
    description     = Patch_AE_PC_ITAR_PAL_A_FH_desc;
};
FUNC INT Patch_AE_PC_ITAR_PAL_A_FH_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has armor
        if (0 < Npc_HasItems(hero, ITAR_PAL_AFH_ArmorExpansion))
        {
            return true;
        };
    };
};
FUNC VOID Patch_AE_PC_ITAR_PAL_A_FH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;

    // Check ingredients

    // [Itar_Pal_A]
    amount_needed = Patch_AE_INGREDIENTS_ITAR_PAL_A__itar_pal_afh ;
    amount_current = Npc_HasItems(hero, ITAR_PAL_AFH_ArmorExpansion); // IMPORTANT: An one of a raw steel is in a hand

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(ITAR_PAL_A_ArmorExpansion.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };

    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, - 1);
        Npc_RemoveInvItems(hero, ITAR_PAL_AFH_ArmorExpansion, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_A_ArmorExpansion);
        CreateInvItem(hero, ItMiSwordrawhot);

		// Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_PAL_A_ArmorExpansion.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE Patch_AE_PC_ITAR_PAL_A_NH (C_INFO)
{
	npc				= PC_Hero;
	condition		= Patch_AE_PC_ITAR_PAL_A_NH_Condition;
	information		= Patch_AE_PC_ITAR_PAL_A_NH_Info;
	permanent		= true;
    description     = Patch_AE_PC_ITAR_PAL_A_NH_desc;
};
FUNC INT Patch_AE_PC_ITAR_PAL_A_NH_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has armor
        if (0 < Npc_HasItems(hero, ITAR_PAL_ANH_ArmorExpansion))
        {
            return true;
        };
    };
};
FUNC VOID Patch_AE_PC_ITAR_PAL_A_NH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;

    // Check ingredients

    // [Itar_Pal_A]
    amount_needed = Patch_AE_INGREDIENTS_ITAR_PAL_A__itar_pal_anh ;
    amount_current = Npc_HasItems(hero, ITAR_PAL_ANH_ArmorExpansion); // IMPORTANT: An one of a raw steel is in a hand

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(ITAR_PAL_A_ArmorExpansion.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };

    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, - 1);
        Npc_RemoveInvItems(hero, ITAR_PAL_ANH_ArmorExpansion, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_A_ArmorExpansion);
        CreateInvItem(hero, ItMiSwordrawhot);

		// Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_PAL_A_ArmorExpansion.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE Patch_AE_PC_ITAR_PAL_FNH (C_INFO)
{
	npc				= PC_Hero;
	condition		= Patch_AE_PC_ITAR_PAL_fNH_Condition;
	information		= Patch_AE_PC_ITAR_PAL_fNH_Info;
	permanent		= true;
    description     = Patch_AE_PC_ITAR_PAL_FNH_desc;
};
FUNC INT Patch_AE_PC_ITAR_PAL_FNH_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has armor
        if (0 < Npc_HasItems(hero, ITAR_PAL_F_ArmorExpansion))
        {
            return true;
        };
    };
};
FUNC VOID Patch_AE_PC_ITAR_PAL_FNH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;

    // Check ingredients

    // [Itar_Pal_A]
    amount_needed = Patch_AE_INGREDIENTS_ITAR_PAL_FNH__Itar_pal_f;
    amount_current = Npc_HasItems(hero, ITAR_PAL_F_ArmorExpansion); // IMPORTANT: An one of a raw steel is in a hand

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(ITAR_PAL_F_ArmorExpansion.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };

    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, - 1);
        Npc_RemoveInvItems(hero, ITAR_PAL_F_ArmorExpansion, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_FNH_ArmorExpansion);
        CreateInvItem(hero, ItMiSwordrawhot);

        // Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_PAL_FNH_ArmorExpansion.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE Patch_AE_PC_ITAR_PAL_FFH (C_INFO)
{
	npc				= PC_Hero;
	condition		= Patch_AE_PC_ITAR_PAL_FFH_Condition;
	information		= Patch_AE_PC_ITAR_PAL_FFH_Info;
	permanent		= true;
    description     = Patch_AE_PC_ITAR_PAL_FFH_desc;
};
FUNC INT Patch_AE_PC_ITAR_PAL_FFH_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has armor
        if (0 < Npc_HasItems(hero, ITAR_PAL_F_ArmorExpansion))
        {
            return true;
        };
    };
};
FUNC VOID Patch_AE_PC_ITAR_PAL_FFH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;

    // Check ingredients

    // [Itar_Pal_A]
    amount_needed = Patch_AE_INGREDIENTS_ITAR_PAL_FFH__Itar_pal_F;
    amount_current = Npc_HasItems(hero, ITAR_PAL_F_ArmorExpansion); // IMPORTANT: An one of a raw steel is in a hand

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(ITAR_PAL_F_ArmorExpansion.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };

    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, - 1);
        Npc_RemoveInvItems(hero, ITAR_PAL_F_ArmorExpansion, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_FFH_ArmorExpansion);
        CreateInvItem(hero, ItMiSwordrawhot);

        // Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_PAL_FFH_ArmorExpansion.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE Patch_AE_PC_ITAR_PAL_FFH_NH (C_INFO)
{
	npc				= PC_Hero;
	condition		= Patch_AE_PC_ITAR_PAL_FFH_NH_Condition;
	information		= Patch_AE_PC_ITAR_PAL_FFH_NH_Info;
	permanent		= true;
    description     = Patch_AE_PC_ITAR_PAL_FFH_NH_desc;
};
FUNC INT Patch_AE_PC_ITAR_PAL_FFH_NH_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has armor
        if (0 < Npc_HasItems(hero, ITAR_PAL_FNH_ArmorExpansion))
        {
            return true;
        };
    };
};
FUNC VOID Patch_AE_PC_ITAR_PAL_FFH_NH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;

    // Check ingredients

    // [Itar_Pal_A]
    amount_needed = Patch_AE_INGREDIENTS_ITAR_PAL_FFH__itar_pal_fnh ;
    amount_current = Npc_HasItems(hero, ITAR_PAL_FNH_ArmorExpansion); // IMPORTANT: An one of a raw steel is in a hand

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(ITAR_PAL_FNH_ArmorExpansion.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };

    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, - 1);
        Npc_RemoveInvItems(hero, ITAR_PAL_FNH_ArmorExpansion, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_FFH_ArmorExpansion);
        CreateInvItem(hero, ItMiSwordrawhot);

		// Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_PAL_FFH_ArmorExpansion.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE Patch_AE_PC_ITAR_PAL_fNH_FH (C_INFO)
{
	npc				= PC_Hero;
	condition		= Patch_AE_PC_ITAR_PAL_fNH_FH_Condition;
	information		= Patch_AE_PC_ITAR_PAL_fNH_FH_Info;
	permanent		= true;
    description     = Patch_AE_PC_ITAR_PAL_fNH_FH_desc;
};
FUNC INT Patch_AE_PC_ITAR_PAL_fNH_FH_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has armor
        if (0 < Npc_HasItems(hero, ITAR_PAL_FFH_ArmorExpansion))
        {
            return true;
        };
    };
};
FUNC VOID Patch_AE_PC_ITAR_PAL_fNH_FH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;

    // Check ingredients

    // [Itar_Pal_A]
    amount_needed = Patch_AE_INGREDIENTS_ITAR_PAL_fNH__itar_pal_ffh ;
    amount_current = Npc_HasItems(hero, ITAR_PAL_FFH_ArmorExpansion); // IMPORTANT: An one of a raw steel is in a hand

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(ITAR_PAL_FFH_ArmorExpansion.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };

    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, - 1);
        Npc_RemoveInvItems(hero, ITAR_PAL_FFH_ArmorExpansion, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_FNH_ArmorExpansion);
        CreateInvItem(hero, ItMiSwordrawhot);

		// Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_PAL_FNH_ArmorExpansion.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE Patch_AE_PC_ITAR_PAL_F_FH (C_INFO)
{
	npc				= PC_Hero;
	condition		= Patch_AE_PC_ITAR_PAL_F_FH_Condition;
	information		= Patch_AE_PC_ITAR_PAL_F_FH_Info;
	permanent		= true;
    description     = Patch_AE_PC_ITAR_PAL_F_FH_desc;
};
FUNC INT Patch_AE_PC_ITAR_PAL_F_FH_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has armor
        if (0 < Npc_HasItems(hero, ITAR_PAL_FFH_ArmorExpansion))
        {
            return true;
        };
    };
};
FUNC VOID Patch_AE_PC_ITAR_PAL_F_FH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;

    // Check ingredients

    // [Itar_Pal_A]
    amount_needed = Patch_AE_INGREDIENTS_ITAR_PAL_F__itar_pal_Ffh ;
    amount_current = Npc_HasItems(hero, ITAR_PAL_FFH_ArmorExpansion); // IMPORTANT: An one of a raw steel is in a hand

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(ITAR_PAL_F_ArmorExpansion.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };

    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, - 1);
        Npc_RemoveInvItems(hero, ITAR_PAL_FFH_ArmorExpansion, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_F_ArmorExpansion);
        CreateInvItem(hero, ItMiSwordrawhot);

		// Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_PAL_F_ArmorExpansion.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE Patch_AE_PC_ITAR_PAL_F_NH (C_INFO)
{
	npc				= PC_Hero;
	condition		= Patch_AE_PC_ITAR_PAL_F_NH_Condition;
	information		= Patch_AE_PC_ITAR_PAL_F_NH_Info;
	permanent		= true;
    description     = Patch_AE_PC_ITAR_PAL_F_NH_desc;
};
FUNC INT Patch_AE_PC_ITAR_PAL_F_NH_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has armor
        if (0 < Npc_HasItems(hero, ITAR_PAL_FNH_ArmorExpansion))
        {
            return true;
        };
    };
};
FUNC VOID Patch_AE_PC_ITAR_PAL_F_NH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;

    // Check ingredients

    // [Itar_Pal_A]
    amount_needed = Patch_AE_INGREDIENTS_ITAR_PAL_F__itar_pal_fnh ;
    amount_current = Npc_HasItems(hero, ITAR_PAL_FNH_ArmorExpansion); // IMPORTANT: An one of a raw steel is in a hand

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(ITAR_PAL_F_ArmorExpansion.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };

    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, - 1);
        Npc_RemoveInvItems(hero, ITAR_PAL_FNH_ArmorExpansion, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_F_ArmorExpansion);
        CreateInvItem(hero, ItMiSwordrawhot);

		// Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_PAL_F_ArmorExpansion.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE Patch_AE_PC_ITAR_PAL_RNH (C_INFO)
{
	npc				= PC_Hero;
	condition		= Patch_AE_PC_ITAR_PAL_RNH_Condition;
	information		= Patch_AE_PC_ITAR_PAL_RNH_Info;
	permanent		= true;
    description     = Patch_AE_PC_ITAR_PAL_RNH_desc;
};
FUNC INT Patch_AE_PC_ITAR_PAL_RNH_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has armor
        if (0 < Npc_HasItems(hero, ITAR_PAL_R_ArmorExpansion))
        {
            return true;
        };
    };
};
FUNC VOID Patch_AE_PC_ITAR_PAL_RNH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;

    // Check ingredients

    // [Itar_Pal_A]
    amount_needed = Patch_AE_INGREDIENTS_ITAR_PAL_RNH__Itar_pal_r;
    amount_current = Npc_HasItems(hero, ITAR_PAL_R_ArmorExpansion); // IMPORTANT: An one of a raw steel is in a hand

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(ITAR_PAL_R_ArmorExpansion.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };

    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, - 1);
        Npc_RemoveInvItems(hero, ITAR_PAL_R_ArmorExpansion, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_RNH_ArmorExpansion);
        CreateInvItem(hero, ItMiSwordrawhot);

        // Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_PAL_RNH_ArmorExpansion.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE Patch_AE_PC_ITAR_PAL_RFH (C_INFO)
{
	npc				= PC_Hero;
	condition		= Patch_AE_PC_ITAR_PAL_RFH_Condition;
	information		= Patch_AE_PC_ITAR_PAL_RFH_Info;
	permanent		= true;
    description     = Patch_AE_PC_ITAR_PAL_RFH_desc;
};
FUNC INT Patch_AE_PC_ITAR_PAL_RFH_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has armor
        if (0 < Npc_HasItems(hero, ITAR_PAL_R_ArmorExpansion))
        {
            return true;
        };
    };
};
FUNC VOID Patch_AE_PC_ITAR_PAL_RFH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;

    // Check ingredients

    // [Itar_Pal_A]
    amount_needed = Patch_AE_INGREDIENTS_ITAR_PAL_RFH__Itar_pal_r;
    amount_current = Npc_HasItems(hero, ITAR_PAL_R_ArmorExpansion); // IMPORTANT: An one of a raw steel is in a hand

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(ITAR_PAL_R_ArmorExpansion.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };

    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, - 1);
        Npc_RemoveInvItems(hero, ITAR_PAL_R_ArmorExpansion, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_RFH_ArmorExpansion);
        CreateInvItem(hero, ItMiSwordrawhot);

        // Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_PAL_RFH_ArmorExpansion.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE Patch_AE_PC_ITAR_PAL_RFH_NH (C_INFO)
{
	npc				= PC_Hero;
	condition		= Patch_AE_PC_ITAR_PAL_RFH_NH_Condition;
	information		= Patch_AE_PC_ITAR_PAL_RFH_NH_Info;
	permanent		= true;
    description     = Patch_AE_PC_ITAR_PAL_RFH_NH_desc;
};
FUNC INT Patch_AE_PC_ITAR_PAL_RFH_NH_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has armor
        if (0 < Npc_HasItems(hero, ITAR_PAL_RNH_ArmorExpansion))
        {
            return true;
        };
    };
};
FUNC VOID Patch_AE_PC_ITAR_PAL_RFH_NH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;

    // Check ingredients

    // [Itar_Pal_A]
    amount_needed = Patch_AE_INGREDIENTS_ITAR_PAL_RFH__itar_pal_Rnh ;
    amount_current = Npc_HasItems(hero, ITAR_PAL_RNH_ArmorExpansion); // IMPORTANT: An one of a raw steel is in a hand

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(ITAR_PAL_RNH_ArmorExpansion.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };

    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, - 1);
        Npc_RemoveInvItems(hero, ITAR_PAL_RNH_ArmorExpansion, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_RFH_ArmorExpansion);
        CreateInvItem(hero, ItMiSwordrawhot);

		// Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_PAL_RFH_ArmorExpansion.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE Patch_AE_PC_ITAR_PAL_RNH_FH (C_INFO)
{
	npc				= PC_Hero;
	condition		= Patch_AE_PC_ITAR_PAL_RNH_FH_Condition;
	information		= Patch_AE_PC_ITAR_PAL_RNH_FH_Info;
	permanent		= true;
    description     = Patch_AE_PC_ITAR_PAL_RNH_FH_desc;
};
FUNC INT Patch_AE_PC_ITAR_PAL_RNH_FH_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has armor
        if (0 < Npc_HasItems(hero, ITAR_PAL_RFH_ArmorExpansion))
        {
            return true;
        };
    };
};
FUNC VOID Patch_AE_PC_ITAR_PAL_RNH_FH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;

    // Check ingredients

    // [Itar_Pal_A]
    amount_needed = Patch_AE_INGREDIENTS_ITAR_PAL_RNH__itar_pal_Rfh ;
    amount_current = Npc_HasItems(hero, ITAR_PAL_RFH_ArmorExpansion); // IMPORTANT: An one of a raw steel is in a hand

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(ITAR_PAL_RFH_ArmorExpansion.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };

    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, - 1);
        Npc_RemoveInvItems(hero, ITAR_PAL_RFH_ArmorExpansion, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_RNH_ArmorExpansion);
        CreateInvItem(hero, ItMiSwordrawhot);

		// Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_PAL_RNH_ArmorExpansion.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE Patch_AE_PC_ITAR_PAL_R_FH (C_INFO)
{
	npc				= PC_Hero;
	condition		= Patch_AE_PC_ITAR_PAL_R_FH_Condition;
	information		= Patch_AE_PC_ITAR_PAL_R_FH_Info;
	permanent		= true;
    description     = Patch_AE_PC_ITAR_PAL_R_FH_desc;
};
FUNC INT Patch_AE_PC_ITAR_PAL_R_FH_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has armor
        if (0 < Npc_HasItems(hero, ITAR_PAL_RFH_ArmorExpansion))
        {
            return true;
        };
    };
};
FUNC VOID Patch_AE_PC_ITAR_PAL_R_FH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;

    // Check ingredients

    // [Itar_Pal_A]
    amount_needed = Patch_AE_INGREDIENTS_ITAR_PAL_R__itar_pal_rfh ;
    amount_current = Npc_HasItems(hero, ITAR_PAL_RFH_ArmorExpansion); // IMPORTANT: An one of a raw steel is in a hand

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(ITAR_PAL_R_ArmorExpansion.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };

    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, - 1);
        Npc_RemoveInvItems(hero, ITAR_PAL_RFH_ArmorExpansion, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_R_ArmorExpansion);
        CreateInvItem(hero, ItMiSwordrawhot);

		// Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_PAL_R_ArmorExpansion.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE Patch_AE_PC_ITAR_PAL_R_NH (C_INFO)
{
	npc				= PC_Hero;
	condition		= Patch_AE_PC_ITAR_PAL_R_NH_Condition;
	information		= Patch_AE_PC_ITAR_PAL_R_NH_Info;
	permanent		= true;
    description     = Patch_AE_PC_ITAR_PAL_R_NH_desc;
};
FUNC INT Patch_AE_PC_ITAR_PAL_R_NH_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has armor
        if (0 < Npc_HasItems(hero, ITAR_PAL_RNH_ArmorExpansion))
        {
            return true;
        };
    };
};
FUNC VOID Patch_AE_PC_ITAR_PAL_R_NH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;

    // Check ingredients

    // [Itar_Pal_A]
    amount_needed = Patch_AE_INGREDIENTS_ITAR_PAL_R__itar_pal_rnh ;
    amount_current = Npc_HasItems(hero, ITAR_PAL_RNH_ArmorExpansion); // IMPORTANT: An one of a raw steel is in a hand

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(ITAR_PAL_R_ArmorExpansion.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };

    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, - 1);
        Npc_RemoveInvItems(hero, ITAR_PAL_RNH_ArmorExpansion, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_R_ArmorExpansion);
        CreateInvItem(hero, ItMiSwordrawhot);

		// Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_PAL_R_ArmorExpansion.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE Patch_AE_PC_ITAR_CRUSADER_NH (C_INFO)
{
	npc				= PC_Hero;
	condition		= Patch_AE_PC_ITAR_CRUSADER_NH_Condition;
	information		= Patch_AE_PC_ITAR_CRUSADER_NH_Info;
	permanent		= true;
    description     = Patch_AE_PC_ITAR_CRUSADER_NH_desc;
};
FUNC INT Patch_AE_PC_ITAR_CRUSADER_NH_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has armor
        if (0 < Npc_HasItems(hero, ITAR_CRUSADER_ArmorExpansion))
        {
            return true;
        };
    };
};
FUNC VOID Patch_AE_PC_ITAR_CRUSADER_NH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;

    // Check ingredients

    // [Itar_Pal_A]
    amount_needed = Patch_AE_INGREDIENTS_ITAR_CRUSADER_NH__itar_Crusader ;
    amount_current = Npc_HasItems(hero, ITAR_CRUSADER_ArmorExpansion); // IMPORTANT: An one of a raw steel is in a hand

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(ITAR_NH_CRUSADER_ArmorExpansion.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };

    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, - 1);
        Npc_RemoveInvItems(hero, ITAR_CRUSADER_ArmorExpansion, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_NH_CRUSADER_ArmorExpansion);
        CreateInvItem(hero, ItMiSwordrawhot);

		// Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_NH_CRUSADER_ArmorExpansion.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE Patch_AE_PC_ITAR_nh_crusader (C_INFO)
{
	npc				= PC_Hero;
	condition		= Patch_AE_PC_ITAR_nh_crusader_Condition;
	information		= Patch_AE_PC_ITAR_nh_crusader_Info;
	permanent		= true;
    description     = Patch_AE_PC_ITAR_nh_crusader_desc;
};
FUNC INT Patch_AE_PC_ITAR_nh_crusader_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has armor
        if (0 < Npc_HasItems(hero, ITAR_NH_CRUSADER_ArmorExpansion))
        {
            return true;
        };
    };
};
FUNC VOID Patch_AE_PC_ITAR_nh_crusader_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;

    // Check ingredients

    // [Itar_Pal_A]
    amount_needed = Patch_AE_INGREDIENTS_ITAR_CRUSADER__itar_pal_Crusader_NH ;
    amount_current = Npc_HasItems(hero, ITAR_NH_CRUSADER_ArmorExpansion); // IMPORTANT: An one of a raw steel is in a hand

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(ITAR_CRUSADER_ArmorExpansion.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };

    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, - 1);
        Npc_RemoveInvItems(hero, ITAR_NH_CRUSADER_ArmorExpansion, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_CRUSADER_ArmorExpansion);
        CreateInvItem(hero, ItMiSwordrawhot);

		// Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_CRUSADER_ArmorExpansion.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};

INSTANCE Patch_AE_PC_ITAR_PAL_MH_FH (C_INFO)
{
	npc				= PC_Hero;
	condition		= Patch_AE_PC_ITAR_PAL_MH_FH_Condition;
	information		= Patch_AE_PC_ITAR_PAL_MH_FH_Info;
	permanent		= true;
    description     = Patch_AE_PC_ITAR_PAL_MH_FH_desc;
};
FUNC INT Patch_AE_PC_ITAR_PAL_MH_FH_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has armor
        if (0 < Npc_HasItems(hero, ITAR_PAL_MH_ArmorExpansion))
        {
            return true;
        };
    };
};
FUNC VOID Patch_AE_PC_ITAR_PAL_MH_FH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;

    // Check ingredients

    // [Itar_Pal_A]
    amount_needed = Patch_AE_INGREDIENTS_ITAR_PAL_MH_FH__ITAR_PAL_MH ;
    amount_current = Npc_HasItems(hero, ITAR_PAL_MH_ArmorExpansion); // IMPORTANT: An one of a raw steel is in a hand

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(ITAR_PAL_MH_ArmorExpansion.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };

    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, - 1);
        Npc_RemoveInvItems(hero, ITAR_PAL_MH_ArmorExpansion, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_MH_FH_ArmorExpansion);
        CreateInvItem(hero, ItMiSwordrawhot);

		// Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_PAL_MH_FH_ArmorExpansion.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE Patch_AE_PC_ITAR_PAL_MH (C_INFO)
{
	npc				= PC_Hero;
	condition		= Patch_AE_PC_ITAR_PAL_MH_Condition;
	information		= Patch_AE_PC_ITAR_PAL_MH_Info;
	permanent		= true;
    description     = Patch_AE_PC_PAL_MH_desc;
};
FUNC INT Patch_AE_PC_ITAR_PAL_MH_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has armor
        if (0 < Npc_HasItems(hero, ITAR_PAL_MH_FH_ArmorExpansion))
        {
            return true;
        };
    };
};
FUNC VOID Patch_AE_PC_ITAR_PAL_MH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;

    // Check ingredients

    // [Itar_Pal_A]
    amount_needed = Patch_AE_INGREDIENTS_ITAR_PAL_MH__itar_PAL_MH_FH ;
    amount_current = Npc_HasItems(hero, ITAR_PAL_MH_FH_ArmorExpansion); // IMPORTANT: An one of a raw steel is in a hand

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(ITAR_PAL_MH_FH_ArmorExpansion.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };

    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, - 1);
        Npc_RemoveInvItems(hero, ITAR_PAL_MH_FH_ArmorExpansion, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_MH_ArmorExpansion);
        CreateInvItem(hero, ItMiSwordrawhot);

		// Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_PAL_MH_ArmorExpansion.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};

INSTANCE Patch_AE_PC_ITAR_PAL_HNH (C_INFO)
{
	npc				= PC_Hero;
	condition		= Patch_AE_PC_ITAR_PAL_HNH_Condition;
	information		= Patch_AE_PC_ITAR_PAL_HNH_Info;
	permanent		= true;
    description     = Patch_AE_PC_ITAR_PAL_HNH_desc;
};
FUNC INT Patch_AE_PC_ITAR_PAL_HNH_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has armor
        if (0 < Npc_HasItems(hero, ITAR_PAL_H))
        {
            return true;
        };
    };
};
FUNC VOID Patch_AE_PC_ITAR_PAL_HNH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;

    // Check ingredients

    // [Itar_pal_h]
    amount_needed = Patch_AE_INGREDIENTS_ITAR_PAL_HNH__Itar_pal_h;
    amount_current = Npc_HasItems(hero, ITAR_PAL_H); // IMPORTANT: An one of a raw steel is in a hand

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(ITAR_PAL_H.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };

    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, - 1);
        Npc_RemoveInvItems(hero, ITAR_PAL_H, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_HNH_ArmorExpansion);
        CreateInvItem(hero, ItMiSwordrawhot);

        // Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_PAL_HNH_ArmorExpansion.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE Patch_AE_PC_ITAR_PAL_HFH (C_INFO)
{
	npc				= PC_Hero;
	condition		= Patch_AE_PC_ITAR_PAL_HFH_Condition;
	information		= Patch_AE_PC_ITAR_PAL_HFH_Info;
	permanent		= true;
    description     = Patch_AE_PC_ITAR_PAL_HFH_desc;
};
FUNC INT Patch_AE_PC_ITAR_PAL_HFH_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has armor
        if (0 < Npc_HasItems(hero, ITAR_PAL_H))
        {
            return true;
        };
    };
};
FUNC VOID Patch_AE_PC_ITAR_PAL_HFH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;

    // Check ingredients

    // [Itar_pal_h]
    amount_needed = Patch_AE_INGREDIENTS_ITAR_PAL_HFH__Itar_pal_h;
    amount_current = Npc_HasItems(hero, ITAR_PAL_H); // IMPORTANT: An one of a raw steel is in a hand

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(ITAR_PAL_H.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };

    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, - 1);
        Npc_RemoveInvItems(hero, ITAR_PAL_H, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_HFH_ArmorExpansion);
        CreateInvItem(hero, ItMiSwordrawhot);

        // Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_PAL_HFH_ArmorExpansion.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE Patch_AE_PC_ITAR_PAL_HFH_NH (C_INFO)
{
	npc				= PC_Hero;
	condition		= Patch_AE_PC_ITAR_PAL_HFH_NH_Condition;
	information		= Patch_AE_PC_ITAR_PAL_HFH_NH_Info;
	permanent		= true;
    description     = Patch_AE_PC_ITAR_PAL_HFH_NH_desc;
};
FUNC INT Patch_AE_PC_ITAR_PAL_HFH_NH_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has armor
        if (0 < Npc_HasItems(hero, ITAR_PAL_HNH_ArmorExpansion))
        {
            return true;
        };
    };
};
FUNC VOID Patch_AE_PC_ITAR_PAL_HFH_NH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;

    // Check ingredients

    // [Itar_pal_h]
    amount_needed = Patch_AE_INGREDIENTS_ITAR_PAL_HFH__itar_pal_HNH ;
    amount_current = Npc_HasItems(hero, ITAR_PAL_HNH_ArmorExpansion); // IMPORTANT: An one of a raw steel is in a hand

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(ITAR_PAL_HNH_ArmorExpansion.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };

    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, - 1);
        Npc_RemoveInvItems(hero, ITAR_PAL_HNH_ArmorExpansion, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_HFH_ArmorExpansion);
        CreateInvItem(hero, ItMiSwordrawhot);

		// Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_PAL_HFH_ArmorExpansion.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE Patch_AE_PC_ITAR_PAL_HNH_FH (C_INFO)
{
	npc				= PC_Hero;
	condition		= Patch_AE_PC_ITAR_PAL_HNH_FH_Condition;
	information		= Patch_AE_PC_ITAR_PAL_HNH_FH_Info;
	permanent		= true;
    description     = Patch_AE_PC_ITAR_PAL_HNH_FH_desc;
};
FUNC INT Patch_AE_PC_ITAR_PAL_HNH_FH_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has armor
        if (0 < Npc_HasItems(hero, ITAR_PAL_HFH_ArmorExpansion))
        {
            return true;
        };
    };
};
FUNC VOID Patch_AE_PC_ITAR_PAL_HNH_FH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;

    // Check ingredients

    // [Itar_pal_h]
    amount_needed = Patch_AE_INGREDIENTS_ITAR_PAL_HNH__itar_pal_HFH ;
    amount_current = Npc_HasItems(hero, ITAR_PAL_HFH_ArmorExpansion); // IMPORTANT: An one of a raw steel is in a hand

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(ITAR_PAL_HFH_ArmorExpansion.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };

    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, - 1);
        Npc_RemoveInvItems(hero, ITAR_PAL_HFH_ArmorExpansion, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_HNH_ArmorExpansion);
        CreateInvItem(hero, ItMiSwordrawhot);

		// Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_PAL_HNH_ArmorExpansion.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE Patch_AE_PC_Itar_pal_h_FH (C_INFO)
{
	npc				= PC_Hero;
	condition		= Patch_AE_PC_Itar_pal_h_FH_Condition;
	information		= Patch_AE_PC_Itar_pal_h_FH_Info;
	permanent		= true;
    description     = Patch_AE_PC_Itar_pal_h_FH_desc;
};
FUNC INT Patch_AE_PC_Itar_pal_h_FH_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has armor
        if (0 < Npc_HasItems(hero, ITAR_PAL_HFH_ArmorExpansion))
        {
            return true;
        };
    };
};
FUNC VOID Patch_AE_PC_Itar_pal_h_FH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;

    // Check ingredients

    // [Itar_pal_h]
    amount_needed = Patch_AE_INGREDIENTS_Itar_pal_h__itar_pal_HFH ;
    amount_current = Npc_HasItems(hero, ITAR_PAL_HFH_ArmorExpansion); // IMPORTANT: An one of a raw steel is in a hand

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(ITAR_PAL_H.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };

    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, - 1);
        Npc_RemoveInvItems(hero, ITAR_PAL_HFH_ArmorExpansion, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_H);
        CreateInvItem(hero, ItMiSwordrawhot);

		// Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_PAL_H.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE Patch_AE_PC_Itar_pal_h_NH (C_INFO)
{
	npc				= PC_Hero;
	condition		= Patch_AE_PC_Itar_pal_h_NH_Condition;
	information		= Patch_AE_PC_Itar_pal_h_NH_Info;
	permanent		= true;
    description     = Patch_AE_PC_Itar_pal_h_NH_desc;
};
FUNC INT Patch_AE_PC_Itar_pal_h_NH_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has armor
        if (0 < Npc_HasItems(hero, ITAR_PAL_HNH_ArmorExpansion))
        {
            return true;
        };
    };
};
FUNC VOID Patch_AE_PC_Itar_pal_h_NH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;

    // Check ingredients

    // [Itar_pal_h]
    amount_needed = Patch_AE_INGREDIENTS_Itar_pal_h__itar_pal_HNH ;
    amount_current = Npc_HasItems(hero, ITAR_PAL_HNH_ArmorExpansion); // IMPORTANT: An one of a raw steel is in a hand

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(ITAR_PAL_H.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };

    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, - 1);
        Npc_RemoveInvItems(hero, ITAR_PAL_HNH_ArmorExpansion, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_H);
        CreateInvItem(hero, ItMiSwordrawhot);

		// Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_PAL_H.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE Patch_AE_PC_Itar_djg_M_NH (C_INFO)
{
	npc				= PC_Hero;
	condition		= Patch_AE_PC_Itar_djg_M_NH_Condition;
	information		= Patch_AE_PC_Itar_djg_M_NH_Info;
	permanent		= true;
    description     = Patch_AE_PC_Itar_djg_M_NH_desc;
};
FUNC INT Patch_AE_PC_Itar_djg_M_NH_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has armor
        if (0 < Npc_HasItems(hero, ITAR_djg_MNH_ArmorExpansion))
        {
            return true;
        };
    };
};
FUNC VOID Patch_AE_PC_Itar_djg_M_NH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;

    // Check ingredients

    // [Itar_DJG_M]
    amount_needed = Patch_AE_INGREDIENTS_Itar_djg_M__itar_djg_MNH ;
    amount_current = Npc_HasItems(hero, ITAR_djg_MNH_ArmorExpansion); // IMPORTANT: An one of a raw steel is in a hand

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(ITAR_djg_M.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };

    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, - 1);
        Npc_RemoveInvItems(hero, ITAR_DJG_MNH_ArmorExpansion, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_djg_M);
        CreateInvItem(hero, ItMiSwordrawhot);

		// Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_djg_M.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE Patch_AE_PC_Itar_djg_M (C_INFO)
{
	npc				= PC_Hero;
	condition		= Patch_AE_PC_Itar_djg_M_Condition;
	information		= Patch_AE_PC_Itar_djg_M_Info;
	permanent		= true;
    description     = Patch_AE_PC_Itar_djg_M_desc;
};
FUNC INT Patch_AE_PC_Itar_djg_M_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has armor
        if (0 < Npc_HasItems(hero, ITAR_djg_M))
        {
            return true;
        };
    };
};
FUNC VOID Patch_AE_PC_Itar_djg_M_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;

    // Check ingredients

    // [Itar_pal_h]
    amount_needed = Patch_AE_INGREDIENTS_Itar_djg_M_NH__itar_djg_M ;
    amount_current = Npc_HasItems(hero, ITAR_djg_M); // IMPORTANT: An one of a raw steel is in a hand

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(ITAR_DJG_MNH_ArmorExpansion.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };

    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, - 1);
        Npc_RemoveInvItems(hero, ITAR_DJG_M, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_DJG_MNH_ArmorExpansion);
        CreateInvItem(hero, ItMiSwordrawhot);

		// Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_DJG_MNH_ArmorExpansion.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE Patch_AE_PC_Itar_DJG_H_NH (C_INFO)
{
	npc				= PC_Hero;
	condition		= Patch_AE_PC_Itar_DJG_H_NH_Condition;
	information		= Patch_AE_PC_Itar_DJG_H_NH_Info;
	permanent		= true;
    description     = Patch_AE_PC_Itar_DJG_H_NH_desc;
};
FUNC INT Patch_AE_PC_Itar_DJG_H_NH_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has armor
        if (0 < Npc_HasItems(hero, ITAR_DJG_HNH_ArmorExpansion))
        {
            return true;
        };
    };
};
FUNC VOID Patch_AE_PC_Itar_DJG_H_NH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;

    // Check ingredients

    // [Itar_pal_h]
    amount_needed = Patch_AE_INGREDIENTS_Itar_DJG_H__itar_DJG_HNH ;
    amount_current = Npc_HasItems(hero, ITAR_DJG_HNH_ArmorExpansion); // IMPORTANT: An one of a raw steel is in a hand

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(ITAR_DJG_H.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };

    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, - 1);
        Npc_RemoveInvItems(hero, ITAR_DJG_HNH_ArmorExpansion, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_DJG_H);
        CreateInvItem(hero, ItMiSwordrawhot);

		// Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_DJG_H.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE Patch_AE_PC_Itar_DJG_H (C_INFO)
{
	npc				= PC_Hero;
	condition		= Patch_AE_PC_Itar_DJG_H_Condition;
	information		= Patch_AE_PC_Itar_DJG_H_Info;
	permanent		= true;
    description     = Patch_AE_PC_Itar_DJG_H_desc;
};
FUNC INT Patch_AE_PC_Itar_DJG_H_Condition()
{
	if (Patch_AE_MOBSI_SmithWeapon == PLAYER_MOBSI_PRODUCTION)
    {
        // If has armor
        if (0 < Npc_HasItems(hero, ITAR_DJG_H))
        {
            return true;
        };
    };
};
FUNC VOID Patch_AE_PC_Itar_DJG_H_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;

    // Check ingredients

    // [Itar_DJG_h]
    amount_needed = Patch_AE_INGREDIENTS_Itar_DJG_H_NH__itar_DJG_H ;
    amount_current = Npc_HasItems(hero, ITAR_DJG_H); // IMPORTANT: An one of a raw steel is in a hand

    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;

        // Print message
        Patch_AE_Func_Print_ProdItemsMissing(ITAR_DJG_HNH_ArmorExpansion.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };

    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients

        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, - 1);
        Npc_RemoveInvItems(hero, ITAR_DJG_H, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_DJG_HNH_ArmorExpansion);
        CreateInvItem(hero, ItMiSwordrawhot);

		// Print an information about success
        Patch_AE_Func_Print_ForgeSuccess(ITAR_DJG_HNH_ArmorExpansion.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };


    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};

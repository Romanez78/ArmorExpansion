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
 *  If a variable, which starts with `NINJA_ARMOREXPANSION_PLAYER_TALENT_SMITH` is true, it means, that player knows how to forge an armor with an instance name, which is written after `NINJA_ARMOREXPANSION_PLAYER_TALENT_SMITH_`.
 */
// var int NINJA_ARMOREXPANSION_PLAYER_TALENT_SMITH_ITAR_PAL_ST;
// --- END "OBSOLETE"


/*
 *  [VARIABLES]
 */
var int NINJA_ARMOREXPANSION_ArmorForging; // Did player select the option to forge an armor?


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
 *      Description: in `Use_Plan_StewarkArmor` called by `ItWr_BluePrint_StewarkArmor` [IT_ARMOREXPANSION.D]
 */
const int NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_ST__ItMiSwordrawhot = 6;
const int NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_ST__ItAt_WargFur = 3;


/*
 *  [CONSTANTS]
 *   - [ALERTS]
 *
 *  The constants used to create an alert (print on a screen) about missing ingredient(s) or an forged armor.
 */
const string NINJA_ARMOREXPANSION_PRINT_ProdItemsMissing__SUBSTR_1 = "Missing: ";
const string NINJA_ARMOREXPANSION_PRINT_ProdItemsMissing__SUBSTR_2 = " x";
const string NINJA_ARMOREXPANSION_PRINT_ForgeSuccess = " forged!";


/*
 *  [FUNCTIONS & INSTANCES]
 */

/*
 *  NINJA_ARMOREXPANSION_Func_Print_ProdItemsMissing
 *   - display information about missing ingredient(s)
 */
func void NINJA_ARMOREXPANSION_Func_Print_ProdItemsMissing(var string ingredientName, var int missingAmount)
{
    // Build a string
    var string str; str = NINJA_ARMOREXPANSION_PRINT_ProdItemsMissing__SUBSTR_1;
    str = ConcatStrings(str, ingredientName);
    str = ConcatStrings(str, NINJA_ARMOREXPANSION_PRINT_ProdItemsMissing__SUBSTR_2);
    str = ConcatStrings(str, IntToString(missingAmount));
    
    // Print a string
    Print(str);
};

/*
 *  NINJA_ARMOREXPANSION_Func_Print_ForgeSuccess
 *   - display information about an forged armor
 */
func void NINJA_ARMOREXPANSION_Func_Print_ForgeSuccess(var string armorName)
{
    // Build and print a string
    Print(ConcatStrings(armorName, NINJA_ARMOREXPANSION_PRINT_ForgeSuccess));
};


/*
 *  [DIALOGUES]
 */

/*
 *  Normal & Ore smithing
 *   - overwriting original condition, to take forging an armor into consideration
 */
func int Ninja_ArmorExpansion_PC_Common_Condition()
{
    // If player already selected forging an armor
    if (true == NINJA_ARMOREXPANSION_ArmorForging)
    {
        return false;
    };
    
    ContinueCall();
};
func int Ninja_ArmorExpansion_PC_Ore_Condition()
{
    // If player already selected forging an armor
    if (true == NINJA_ARMOREXPANSION_ArmorForging)
    {
        return false;
    };
    
    ContinueCall();
};


/*
 *  NINJA_ARMOREXPANSION_PC_FORGE_ARMOR
 *   - select an armor forging
 */
instance NINJA_ARMOREXPANSION_PC_FORGE_ARMOR(C_INFO)
{
	npc				= PC_Hero;
	nr				= 0;
	condition		= NINJA_ARMOREXPANSION_PC_FORGE_ARMOR_Condition;
	information		= NINJA_ARMOREXPANSION_PC_FORGE_ARMOR_Info;
	permanent		= true;
	description		= "Forge an armor";
};
func int NINJA_ARMOREXPANSION_PC_FORGE_ARMOR_Condition()
{
	if (PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHWEAPON)
    {
        if (false == Normalwaffen)
        {
            if (false == Erzwaffen)
            {
                if (false == NINJA_ARMOREXPANSION_ArmorForging)
                {
                    return TRUE;
                };
            };
        };
    };
};
func void NINJA_ARMOREXPANSION_PC_FORGE_ARMOR_Info()
{
	NINJA_ARMOREXPANSION_ArmorForging = true;
};

/*
 *  NINJA_ARMOREXPANSION_PC_FORGE_ARMORBACK
 *   - unselect forging an armor
 */
instance NINJA_ARMOREXPANSION_PC_FORGE_ARMORBACK(C_INFO)
{
	npc				= PC_Hero;
	nr				= 99;
	condition		= NINJA_ARMOREXPANSION_PC_FORGE_ARMORBACK_Condition;
	information		= NINJA_ARMOREXPANSION_PC_FORGE_ARMORBACK_Info;
	permanent		= true;
	description		= DIALOG_BACK;
};
func int NINJA_ARMOREXPANSION_PC_FORGE_ARMORBACK_Condition()
{
    if (PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHWEAPON)
    {
        if (false == Normalwaffen)
        {
            if (false == Erzwaffen)
            {
                if (true == NINJA_ARMOREXPANSION_ArmorForging)
                {
                    return true;
                };
            };
        };
    };
};
func void NINJA_ARMOREXPANSION_PC_FORGE_ARMORBACK_Info()
{
	NINJA_ARMOREXPANSION_ArmorForging = false;
};


/*
 *  Forging concrete armor
 */

/*
 *  NINJA_ARMOREXPANSION_PC_ITAR_PAL_ST
 */
INSTANCE NINJA_ARMOREXPANSION_PC_ITAR_PAL_ST (C_INFO)
{
	npc				= PC_Hero;
	condition		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_ST_Condition;
	information		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_ST_Info;
	permanent		= true;
    description     = "Forge Stewarkská Plátová Zbroj";
};
FUNC INT NINJA_ARMOREXPANSION_PC_ITAR_PAL_ST_Condition()
{	
	if (MOBSI_SMITHWEAPON == PLAYER_MOBSI_PRODUCTION)
    {
        if (true == NINJA_ARMOREXPANSION_ArmorForging)
        {
            // If has a blueprint
            if (0 < Npc_HasItems(hero, ItWr_BluePrint_StewarkArmor))
            {	
                return true;
            };
        };
    };
};
FUNC VOID NINJA_ARMOREXPANSION_PC_ITAR_PAL_ST_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;
    
    // Check ingredients
    
    // [ItMiSwordrawhot]
    amount_needed = NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_ST__ItMiSwordrawhot;
    amount_current = Npc_HasItems(hero, ItMiSwordrawhot) + 1; // IMPORTANT: An one of a raw steel is in a hand
    
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_ARMOREXPANSION_Func_Print_ProdItemsMissing(ItMiSwordrawhot.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };
    
    // [ItAt_WargFur]
    amount_needed = NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_ST__ItAt_WargFur;
    amount_current = Npc_HasItems(hero, ItAt_WargFur);
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_ARMOREXPANSION_Func_Print_ProdItemsMissing(ItAt_WargFur.name, amount_missing);

        // Save an information, that player hasn't all ingredients
        has_all_ingredients = false;
    };
    
    
    // If player has all ingredients
    if (true == has_all_ingredients)
    {
        // Remove ingredients
        
        // [ItMiSwordrawhot]
        // IMPORTANT: An one raw steel will be removed by finishing using of an anvil
        Npc_RemoveInvItems(hero, ItMiSwordrawhot, NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_ST__ItMiSwordrawhot - 1);
        
        // [ItAt_WargFur]
        Npc_RemoveInvItems(hero, ItAt_WargFur, NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_ST__ItAt_WargFur);
        
        
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_ST);
        
        // Print an information about success
        NINJA_ARMOREXPANSION_Func_Print_ForgeSuccess(ITAR_PAL_ST.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };
    

    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};

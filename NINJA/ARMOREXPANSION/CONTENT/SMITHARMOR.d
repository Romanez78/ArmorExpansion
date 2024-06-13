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

const int NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_ANH__itar_pal_a = 1;
const int NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_AFH__itar_pal_a = 1;
const int NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_A__itar_pal_anh = 1;
const int NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_A__itar_pal_afh = 1;
const int NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_ANH__itar_pal_afh = 1;
const int NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_AFH__itar_pal_anh = 1;

const int NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_fNH__itar_pal_f = 1;
const int NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_fFH__itar_pal_f = 1;
const int NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_f__itar_pal_fnh = 1;
const int NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_f__itar_pal_ffh = 1;
const int NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_fNH__itar_pal_ffh = 1;
const int NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_fFH__itar_pal_fnh = 1;

const int NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_rNH__itar_pal_r = 1;
const int NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_rFH__itar_pal_r = 1;
const int NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_r__itar_pal_rnh = 1;
const int NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_r__itar_pal_rfh = 1;
const int NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_rNH__itar_pal_rfh = 1;
const int NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_rFH__itar_pal_rnh = 1;

const int NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_CRUSADER_NH__itar_Crusader = 1;
const int NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_CRUSADER__itar_pal_Crusader_NH = 1;

/*
 *  [CONSTANTS]
 *   - [ALERTS]
 *
 *  The constants used to create an alert (print on a screen) about missing ingredient(s) or an forged armor.
 */
const string NINJA_ARMOREXPANSION_PRINT_ProdItemsMissing__SUBSTR_1 = "Chybí: ";
const string NINJA_ARMOREXPANSION_PRINT_ProdItemsMissing__SUBSTR_2 = " x";
const string NINJA_ARMOREXPANSION_PRINT_ForgeSuccess = " vyrobeno!";


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
	description		= "Vykovat Zbroj";
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

INSTANCE NINJA_ARMOREXPANSION_PC_ITAR_PAL_ANH (C_INFO)
{
	npc				= PC_Hero;
	condition		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_ANH_Condition;
	information		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_ANH_Info;
	permanent		= true;
    description     = "Odebrat Helmu z Obohacené paladinské zbroje";
};
FUNC INT NINJA_ARMOREXPANSION_PC_ITAR_PAL_ANH_Condition()
{	
	if (MOBSI_SMITHWEAPON == PLAYER_MOBSI_PRODUCTION)
    {
        if (true == NINJA_ARMOREXPANSION_ArmorForging)
        {
            // If has armor
            if (0 < Npc_HasItems(hero, Itar_Pal_A))
            {	
                return true;
            };
        };
    };
};
FUNC VOID NINJA_ARMOREXPANSION_PC_ITAR_PAL_ANH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;
    
    // Check ingredients
    
    // [Itar_Pal_A]
    amount_needed = NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_ANH__Itar_pal_a;
    amount_current = Npc_HasItems(hero, Itar_Pal_A); // IMPORTANT: An one of a raw steel is in a hand
    
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_ARMOREXPANSION_Func_Print_ProdItemsMissing(Itar_Pal_A.name, amount_missing);

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
        Npc_RemoveInvItems(hero, Itar_pal_a, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_ANH);
        CreateInvItem(hero, ItMiSwordrawhot);
		
        // Print an information about success
        NINJA_ARMOREXPANSION_Func_Print_ForgeSuccess(ITAR_PAL_ANH.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };
    

    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE NINJA_ARMOREXPANSION_PC_ITAR_PAL_AFH (C_INFO)
{
	npc				= PC_Hero;
	condition		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_AFH_Condition;
	information		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_AFH_Info;
	permanent		= true;
    description     = "Sklopit hledí Obohacené paladinské zbroje";
};
FUNC INT NINJA_ARMOREXPANSION_PC_ITAR_PAL_AFH_Condition()
{	
	if (MOBSI_SMITHWEAPON == PLAYER_MOBSI_PRODUCTION)
    {
        if (true == NINJA_ARMOREXPANSION_ArmorForging)
        {
            // If has armor
            if (0 < Npc_HasItems(hero, Itar_Pal_A))
            {	
                return true;
            };
        };
    };
};
FUNC VOID NINJA_ARMOREXPANSION_PC_ITAR_PAL_AFH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;
    
    // Check ingredients
    
    // [Itar_Pal_A]
    amount_needed = NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_AFH__Itar_pal_a;
    amount_current = Npc_HasItems(hero, Itar_Pal_A); // IMPORTANT: An one of a raw steel is in a hand
    
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_ARMOREXPANSION_Func_Print_ProdItemsMissing(Itar_Pal_A.name, amount_missing);

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
        Npc_RemoveInvItems(hero, Itar_pal_a, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_AFH);
        CreateInvItem(hero, ItMiSwordrawhot);
		
        // Print an information about success
        NINJA_ARMOREXPANSION_Func_Print_ForgeSuccess(ITAR_PAL_AFH.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };
    

    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE NINJA_ARMOREXPANSION_PC_ITAR_PAL_AFH_NH (C_INFO)
{
	npc				= PC_Hero;
	condition		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_AFH_NH_Condition;
	information		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_AFH_NH_Info;
	permanent		= true;
    description     = "Sklopit hledí Obohacené paladinské zbroje";
};
FUNC INT NINJA_ARMOREXPANSION_PC_ITAR_PAL_AFH_NH_Condition()
{	
	if (MOBSI_SMITHWEAPON == PLAYER_MOBSI_PRODUCTION)
    {
        if (true == NINJA_ARMOREXPANSION_ArmorForging)
        {
            // If has armor
            if (0 < Npc_HasItems(hero, Itar_Pal_ANH))
            {	
                return true;
            };
        };
    };
};
FUNC VOID NINJA_ARMOREXPANSION_PC_ITAR_PAL_AFH_NH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;
    
    // Check ingredients
    
    // [Itar_Pal_A]
    amount_needed = NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_AFH__itar_pal_anh ;
    amount_current = Npc_HasItems(hero, Itar_Pal_ANH); // IMPORTANT: An one of a raw steel is in a hand
    
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_ARMOREXPANSION_Func_Print_ProdItemsMissing(Itar_Pal_ANH.name, amount_missing);

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
        Npc_RemoveInvItems(hero, Itar_pal_anh, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_AFH);
        CreateInvItem(hero, ItMiSwordrawhot);
        
		// Print an information about success
        NINJA_ARMOREXPANSION_Func_Print_ForgeSuccess(ITAR_PAL_AFH.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };
    

    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE NINJA_ARMOREXPANSION_PC_ITAR_PAL_ANH_FH (C_INFO)
{
	npc				= PC_Hero;
	condition		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_ANH_FH_Condition;
	information		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_ANH_FH_Info;
	permanent		= true;
    description     = "Odebrat Helmu Obohacené paladinské zbroje";
};
FUNC INT NINJA_ARMOREXPANSION_PC_ITAR_PAL_ANH_FH_Condition()
{	
	if (MOBSI_SMITHWEAPON == PLAYER_MOBSI_PRODUCTION)
    {
        if (true == NINJA_ARMOREXPANSION_ArmorForging)
        {
            // If has armor
            if (0 < Npc_HasItems(hero, Itar_Pal_AFH))
            {	
                return true;
            };
        };
    };
};
FUNC VOID NINJA_ARMOREXPANSION_PC_ITAR_PAL_ANH_FH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;
    
    // Check ingredients
    
    // [Itar_Pal_A]
    amount_needed = NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_ANH__itar_pal_afh ;
    amount_current = Npc_HasItems(hero, Itar_Pal_AFH); // IMPORTANT: An one of a raw steel is in a hand
    
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_ARMOREXPANSION_Func_Print_ProdItemsMissing(Itar_Pal_AFH.name, amount_missing);

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
        Npc_RemoveInvItems(hero, Itar_pal_afh, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_ANH);
        CreateInvItem(hero, ItMiSwordrawhot);
        
		// Print an information about success
        NINJA_ARMOREXPANSION_Func_Print_ForgeSuccess(ITAR_PAL_ANH.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };
    

    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE NINJA_ARMOREXPANSION_PC_ITAR_PAL_A_FH (C_INFO)
{
	npc				= PC_Hero;
	condition		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_A_FH_Condition;
	information		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_A_FH_Info;
	permanent		= true;
    description     = "Vyklopit hledí Obohacené paladinské zbroje";
};
FUNC INT NINJA_ARMOREXPANSION_PC_ITAR_PAL_A_FH_Condition()
{	
	if (MOBSI_SMITHWEAPON == PLAYER_MOBSI_PRODUCTION)
    {
        if (true == NINJA_ARMOREXPANSION_ArmorForging)
        {
            // If has armor
            if (0 < Npc_HasItems(hero, Itar_Pal_AFH))
            {	
                return true;
            };
        };
    };
};
FUNC VOID NINJA_ARMOREXPANSION_PC_ITAR_PAL_A_FH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;
    
    // Check ingredients
    
    // [Itar_Pal_A]
    amount_needed = NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_A__itar_pal_afh ;
    amount_current = Npc_HasItems(hero, Itar_Pal_AFH); // IMPORTANT: An one of a raw steel is in a hand
    
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_ARMOREXPANSION_Func_Print_ProdItemsMissing(Itar_Pal_A.name, amount_missing);

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
        Npc_RemoveInvItems(hero, Itar_pal_afh, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_A);
        CreateInvItem(hero, ItMiSwordrawhot);
        
		// Print an information about success
        NINJA_ARMOREXPANSION_Func_Print_ForgeSuccess(ITAR_PAL_A.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };
    

    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE NINJA_ARMOREXPANSION_PC_ITAR_PAL_A_NH (C_INFO)
{
	npc				= PC_Hero;
	condition		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_A_NH_Condition;
	information		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_A_NH_Info;
	permanent		= true;
    description     = "Vyklopit hledí Obohacené paladinské zbroje";
};
FUNC INT NINJA_ARMOREXPANSION_PC_ITAR_PAL_A_NH_Condition()
{	
	if (MOBSI_SMITHWEAPON == PLAYER_MOBSI_PRODUCTION)
    {
        if (true == NINJA_ARMOREXPANSION_ArmorForging)
        {
            // If has armor
            if (0 < Npc_HasItems(hero, Itar_Pal_ANH))
            {	
                return true;
            };
        };
    };
};
FUNC VOID NINJA_ARMOREXPANSION_PC_ITAR_PAL_A_NH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;
    
    // Check ingredients
    
    // [Itar_Pal_A]
    amount_needed = NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_A__itar_pal_anh ;
    amount_current = Npc_HasItems(hero, Itar_Pal_ANH); // IMPORTANT: An one of a raw steel is in a hand
    
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_ARMOREXPANSION_Func_Print_ProdItemsMissing(Itar_Pal_A.name, amount_missing);

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
        Npc_RemoveInvItems(hero, Itar_pal_anh, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_A);
        CreateInvItem(hero, ItMiSwordrawhot);
        
		// Print an information about success
        NINJA_ARMOREXPANSION_Func_Print_ForgeSuccess(ITAR_PAL_A.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };
    

    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE NINJA_ARMOREXPANSION_PC_ITAR_PAL_FNH (C_INFO)
{
	npc				= PC_Hero;
	condition		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_fNH_Condition;
	information		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_fNH_Info;
	permanent		= true;
    description     = "Odebrat Helmu z opravené paladinské zbroje";
};
FUNC INT NINJA_ARMOREXPANSION_PC_ITAR_PAL_FNH_Condition()
{	
	if (MOBSI_SMITHWEAPON == PLAYER_MOBSI_PRODUCTION)
    {
        if (true == NINJA_ARMOREXPANSION_ArmorForging)
        {
            // If has armor
            if (0 < Npc_HasItems(hero, Itar_Pal_F))
            {	
                return true;
            };
        };
    };
};
FUNC VOID NINJA_ARMOREXPANSION_PC_ITAR_PAL_FNH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;
    
    // Check ingredients
    
    // [Itar_Pal_A]
    amount_needed = NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_FNH__Itar_pal_f;
    amount_current = Npc_HasItems(hero, Itar_Pal_F); // IMPORTANT: An one of a raw steel is in a hand
    
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_ARMOREXPANSION_Func_Print_ProdItemsMissing(Itar_Pal_F.name, amount_missing);

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
        Npc_RemoveInvItems(hero, Itar_pal_F, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_FNH);
        CreateInvItem(hero, ItMiSwordrawhot);
		
        // Print an information about success
        NINJA_ARMOREXPANSION_Func_Print_ForgeSuccess(ITAR_PAL_FNH.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };
    

    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE NINJA_ARMOREXPANSION_PC_ITAR_PAL_FFH (C_INFO)
{
	npc				= PC_Hero;
	condition		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_FFH_Condition;
	information		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_FFH_Info;
	permanent		= true;
    description     = "Sklopit hledí opravené paladinské zbroje";
};
FUNC INT NINJA_ARMOREXPANSION_PC_ITAR_PAL_FFH_Condition()
{	
	if (MOBSI_SMITHWEAPON == PLAYER_MOBSI_PRODUCTION)
    {
        if (true == NINJA_ARMOREXPANSION_ArmorForging)
        {
            // If has armor
            if (0 < Npc_HasItems(hero, Itar_Pal_F))
            {	
                return true;
            };
        };
    };
};
FUNC VOID NINJA_ARMOREXPANSION_PC_ITAR_PAL_FFH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;
    
    // Check ingredients
    
    // [Itar_Pal_A]
    amount_needed = NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_FFH__Itar_pal_F;
    amount_current = Npc_HasItems(hero, Itar_Pal_F); // IMPORTANT: An one of a raw steel is in a hand
    
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_ARMOREXPANSION_Func_Print_ProdItemsMissing(Itar_Pal_F.name, amount_missing);

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
        Npc_RemoveInvItems(hero, Itar_pal_F, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_FFH);
        CreateInvItem(hero, ItMiSwordrawhot);
		
        // Print an information about success
        NINJA_ARMOREXPANSION_Func_Print_ForgeSuccess(ITAR_PAL_FFH.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };
    

    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE NINJA_ARMOREXPANSION_PC_ITAR_PAL_FFH_NH (C_INFO)
{
	npc				= PC_Hero;
	condition		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_FFH_NH_Condition;
	information		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_FFH_NH_Info;
	permanent		= true;
    description     = "Sklopit hledí opravené paladinské zbroje";
};
FUNC INT NINJA_ARMOREXPANSION_PC_ITAR_PAL_FFH_NH_Condition()
{	
	if (MOBSI_SMITHWEAPON == PLAYER_MOBSI_PRODUCTION)
    {
        if (true == NINJA_ARMOREXPANSION_ArmorForging)
        {
            // If has armor
            if (0 < Npc_HasItems(hero, Itar_Pal_FNH))
            {	
                return true;
            };
        };
    };
};
FUNC VOID NINJA_ARMOREXPANSION_PC_ITAR_PAL_FFH_NH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;
    
    // Check ingredients
    
    // [Itar_Pal_A]
    amount_needed = NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_FFH__itar_pal_fnh ;
    amount_current = Npc_HasItems(hero, Itar_Pal_FNH); // IMPORTANT: An one of a raw steel is in a hand
    
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_ARMOREXPANSION_Func_Print_ProdItemsMissing(Itar_Pal_FNH.name, amount_missing);

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
        Npc_RemoveInvItems(hero, Itar_pal_fnh, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_fFH);
        CreateInvItem(hero, ItMiSwordrawhot);
        
		// Print an information about success
        NINJA_ARMOREXPANSION_Func_Print_ForgeSuccess(ITAR_PAL_fFH.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };
    

    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE NINJA_ARMOREXPANSION_PC_ITAR_PAL_fNH_FH (C_INFO)
{
	npc				= PC_Hero;
	condition		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_fNH_FH_Condition;
	information		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_fNH_FH_Info;
	permanent		= true;
    description     = "Odebrat Helmu opravené paladinské zbroje";
};
FUNC INT NINJA_ARMOREXPANSION_PC_ITAR_PAL_fNH_FH_Condition()
{	
	if (MOBSI_SMITHWEAPON == PLAYER_MOBSI_PRODUCTION)
    {
        if (true == NINJA_ARMOREXPANSION_ArmorForging)
        {
            // If has armor
            if (0 < Npc_HasItems(hero, Itar_Pal_fFH))
            {	
                return true;
            };
        };
    };
};
FUNC VOID NINJA_ARMOREXPANSION_PC_ITAR_PAL_fNH_FH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;
    
    // Check ingredients
    
    // [Itar_Pal_A]
    amount_needed = NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_fNH__itar_pal_ffh ;
    amount_current = Npc_HasItems(hero, Itar_Pal_fFH); // IMPORTANT: An one of a raw steel is in a hand
    
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_ARMOREXPANSION_Func_Print_ProdItemsMissing(Itar_Pal_fFH.name, amount_missing);

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
        Npc_RemoveInvItems(hero, Itar_pal_ffh, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_fNH);
        CreateInvItem(hero, ItMiSwordrawhot);
        
		// Print an information about success
        NINJA_ARMOREXPANSION_Func_Print_ForgeSuccess(ITAR_PAL_fNH.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };
    

    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE NINJA_ARMOREXPANSION_PC_ITAR_PAL_F_FH (C_INFO)
{
	npc				= PC_Hero;
	condition		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_F_FH_Condition;
	information		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_F_FH_Info;
	permanent		= true;
    description     = "Vyklopit hledí opravené paladinské zbroje";
};
FUNC INT NINJA_ARMOREXPANSION_PC_ITAR_PAL_F_FH_Condition()
{	
	if (MOBSI_SMITHWEAPON == PLAYER_MOBSI_PRODUCTION)
    {
        if (true == NINJA_ARMOREXPANSION_ArmorForging)
        {
            // If has armor
            if (0 < Npc_HasItems(hero, Itar_Pal_FFH))
            {	
                return true;
            };
        };
    };
};
FUNC VOID NINJA_ARMOREXPANSION_PC_ITAR_PAL_F_FH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;
    
    // Check ingredients
    
    // [Itar_Pal_A]
    amount_needed = NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_F__itar_pal_Ffh ;
    amount_current = Npc_HasItems(hero, Itar_Pal_FFH); // IMPORTANT: An one of a raw steel is in a hand
    
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_ARMOREXPANSION_Func_Print_ProdItemsMissing(Itar_Pal_F.name, amount_missing);

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
        Npc_RemoveInvItems(hero, Itar_pal_Ffh, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_F);
        CreateInvItem(hero, ItMiSwordrawhot);
        
		// Print an information about success
        NINJA_ARMOREXPANSION_Func_Print_ForgeSuccess(ITAR_PAL_F.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };
    

    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE NINJA_ARMOREXPANSION_PC_ITAR_PAL_F_NH (C_INFO)
{
	npc				= PC_Hero;
	condition		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_F_NH_Condition;
	information		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_F_NH_Info;
	permanent		= true;
    description     = "Vyklopit hledí Obohacené paladinské zbroje";
};
FUNC INT NINJA_ARMOREXPANSION_PC_ITAR_PAL_F_NH_Condition()
{	
	if (MOBSI_SMITHWEAPON == PLAYER_MOBSI_PRODUCTION)
    {
        if (true == NINJA_ARMOREXPANSION_ArmorForging)
        {
            // If has armor
            if (0 < Npc_HasItems(hero, Itar_Pal_FNH))
            {	
                return true;
            };
        };
    };
};
FUNC VOID NINJA_ARMOREXPANSION_PC_ITAR_PAL_F_NH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;
    
    // Check ingredients
    
    // [Itar_Pal_A]
    amount_needed = NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_F__itar_pal_fnh ;
    amount_current = Npc_HasItems(hero, Itar_Pal_FNH); // IMPORTANT: An one of a raw steel is in a hand
    
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_ARMOREXPANSION_Func_Print_ProdItemsMissing(Itar_Pal_F.name, amount_missing);

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
        Npc_RemoveInvItems(hero, Itar_pal_fnh, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_F);
        CreateInvItem(hero, ItMiSwordrawhot);
        
		// Print an information about success
        NINJA_ARMOREXPANSION_Func_Print_ForgeSuccess(ITAR_PAL_F.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };
    

    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE NINJA_ARMOREXPANSION_PC_ITAR_PAL_RNH (C_INFO)
{
	npc				= PC_Hero;
	condition		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_RNH_Condition;
	information		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_RNH_Info;
	permanent		= true;
    description     = "Odebrat Helmu z Rezavé paladinské zbroje";
};
FUNC INT NINJA_ARMOREXPANSION_PC_ITAR_PAL_RNH_Condition()
{	
	if (MOBSI_SMITHWEAPON == PLAYER_MOBSI_PRODUCTION)
    {
        if (true == NINJA_ARMOREXPANSION_ArmorForging)
        {
            // If has armor
            if (0 < Npc_HasItems(hero, Itar_Pal_R))
            {	
                return true;
            };
        };
    };
};
FUNC VOID NINJA_ARMOREXPANSION_PC_ITAR_PAL_RNH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;
    
    // Check ingredients
    
    // [Itar_Pal_A]
    amount_needed = NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_RNH__Itar_pal_r;
    amount_current = Npc_HasItems(hero, Itar_Pal_R); // IMPORTANT: An one of a raw steel is in a hand
    
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_ARMOREXPANSION_Func_Print_ProdItemsMissing(Itar_Pal_R.name, amount_missing);

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
        Npc_RemoveInvItems(hero, Itar_pal_r, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_RNH);
        CreateInvItem(hero, ItMiSwordrawhot);
		
        // Print an information about success
        NINJA_ARMOREXPANSION_Func_Print_ForgeSuccess(ITAR_PAL_RNH.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };
    

    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE NINJA_ARMOREXPANSION_PC_ITAR_PAL_RFH (C_INFO)
{
	npc				= PC_Hero;
	condition		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_RFH_Condition;
	information		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_RFH_Info;
	permanent		= true;
    description     = "Sklopit hledí Rezavé paladinské zbroje";
};
FUNC INT NINJA_ARMOREXPANSION_PC_ITAR_PAL_RFH_Condition()
{	
	if (MOBSI_SMITHWEAPON == PLAYER_MOBSI_PRODUCTION)
    {
        if (true == NINJA_ARMOREXPANSION_ArmorForging)
        {
            // If has armor
            if (0 < Npc_HasItems(hero, Itar_Pal_R))
            {	
                return true;
            };
        };
    };
};
FUNC VOID NINJA_ARMOREXPANSION_PC_ITAR_PAL_RFH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;
    
    // Check ingredients
    
    // [Itar_Pal_A]
    amount_needed = NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_RFH__Itar_pal_r;
    amount_current = Npc_HasItems(hero, Itar_Pal_R); // IMPORTANT: An one of a raw steel is in a hand
    
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_ARMOREXPANSION_Func_Print_ProdItemsMissing(Itar_Pal_R.name, amount_missing);

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
        Npc_RemoveInvItems(hero, Itar_pal_r, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_RFH);
        CreateInvItem(hero, ItMiSwordrawhot);
		
        // Print an information about success
        NINJA_ARMOREXPANSION_Func_Print_ForgeSuccess(ITAR_PAL_RFH.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };
    

    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE NINJA_ARMOREXPANSION_PC_ITAR_PAL_RFH_NH (C_INFO)
{
	npc				= PC_Hero;
	condition		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_RFH_NH_Condition;
	information		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_RFH_NH_Info;
	permanent		= true;
    description     = "Sklopit hledí Rezavé paladinské zbroje";
};
FUNC INT NINJA_ARMOREXPANSION_PC_ITAR_PAL_RFH_NH_Condition()
{	
	if (MOBSI_SMITHWEAPON == PLAYER_MOBSI_PRODUCTION)
    {
        if (true == NINJA_ARMOREXPANSION_ArmorForging)
        {
            // If has armor
            if (0 < Npc_HasItems(hero, Itar_Pal_RNH))
            {	
                return true;
            };
        };
    };
};
FUNC VOID NINJA_ARMOREXPANSION_PC_ITAR_PAL_RFH_NH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;
    
    // Check ingredients
    
    // [Itar_Pal_A]
    amount_needed = NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_RFH__itar_pal_Rnh ;
    amount_current = Npc_HasItems(hero, Itar_Pal_RNH); // IMPORTANT: An one of a raw steel is in a hand
    
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_ARMOREXPANSION_Func_Print_ProdItemsMissing(Itar_Pal_RNH.name, amount_missing);

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
        Npc_RemoveInvItems(hero, Itar_pal_rnh, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_RFH);
        CreateInvItem(hero, ItMiSwordrawhot);
        
		// Print an information about success
        NINJA_ARMOREXPANSION_Func_Print_ForgeSuccess(ITAR_PAL_RFH.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };
    

    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE NINJA_ARMOREXPANSION_PC_ITAR_PAL_RNH_FH (C_INFO)
{
	npc				= PC_Hero;
	condition		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_RNH_FH_Condition;
	information		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_RNH_FH_Info;
	permanent		= true;
    description     = "Odebrat Helmu Rezavé paladinské zbroje";
};
FUNC INT NINJA_ARMOREXPANSION_PC_ITAR_PAL_RNH_FH_Condition()
{	
	if (MOBSI_SMITHWEAPON == PLAYER_MOBSI_PRODUCTION)
    {
        if (true == NINJA_ARMOREXPANSION_ArmorForging)
        {
            // If has armor
            if (0 < Npc_HasItems(hero, Itar_Pal_RFH))
            {	
                return true;
            };
        };
    };
};
FUNC VOID NINJA_ARMOREXPANSION_PC_ITAR_PAL_RNH_FH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;
    
    // Check ingredients
    
    // [Itar_Pal_A]
    amount_needed = NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_RNH__itar_pal_Rfh ;
    amount_current = Npc_HasItems(hero, Itar_Pal_RFH); // IMPORTANT: An one of a raw steel is in a hand
    
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_ARMOREXPANSION_Func_Print_ProdItemsMissing(Itar_Pal_RFH.name, amount_missing);

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
        Npc_RemoveInvItems(hero, Itar_pal_Rfh, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_RNH);
        CreateInvItem(hero, ItMiSwordrawhot);
        
		// Print an information about success
        NINJA_ARMOREXPANSION_Func_Print_ForgeSuccess(ITAR_PAL_RNH.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };
    

    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE NINJA_ARMOREXPANSION_PC_ITAR_PAL_R_FH (C_INFO)
{
	npc				= PC_Hero;
	condition		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_R_FH_Condition;
	information		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_R_FH_Info;
	permanent		= true;
    description     = "Vyklopit hledí Rezavé paladinské zbroje";
};
FUNC INT NINJA_ARMOREXPANSION_PC_ITAR_PAL_R_FH_Condition()
{	
	if (MOBSI_SMITHWEAPON == PLAYER_MOBSI_PRODUCTION)
    {
        if (true == NINJA_ARMOREXPANSION_ArmorForging)
        {
            // If has armor
            if (0 < Npc_HasItems(hero, Itar_Pal_RFH))
            {	
                return true;
            };
        };
    };
};
FUNC VOID NINJA_ARMOREXPANSION_PC_ITAR_PAL_R_FH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;
    
    // Check ingredients
    
    // [Itar_Pal_A]
    amount_needed = NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_R__itar_pal_rfh ;
    amount_current = Npc_HasItems(hero, Itar_Pal_RFH); // IMPORTANT: An one of a raw steel is in a hand
    
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_ARMOREXPANSION_Func_Print_ProdItemsMissing(Itar_Pal_R.name, amount_missing);

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
        Npc_RemoveInvItems(hero, Itar_pal_rfh, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_R);
        CreateInvItem(hero, ItMiSwordrawhot);
        
		// Print an information about success
        NINJA_ARMOREXPANSION_Func_Print_ForgeSuccess(ITAR_PAL_R.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };
    

    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE NINJA_ARMOREXPANSION_PC_ITAR_PAL_R_NH (C_INFO)
{
	npc				= PC_Hero;
	condition		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_R_NH_Condition;
	information		= NINJA_ARMOREXPANSION_PC_ITAR_PAL_R_NH_Info;
	permanent		= true;
    description     = "Vyklopit hledí Rezavé paladinské zbroje";
};
FUNC INT NINJA_ARMOREXPANSION_PC_ITAR_PAL_R_NH_Condition()
{	
	if (MOBSI_SMITHWEAPON == PLAYER_MOBSI_PRODUCTION)
    {
        if (true == NINJA_ARMOREXPANSION_ArmorForging)
        {
            // If has armor
            if (0 < Npc_HasItems(hero, Itar_Pal_RNH))
            {	
                return true;
            };
        };
    };
};
FUNC VOID NINJA_ARMOREXPANSION_PC_ITAR_PAL_R_NH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;
    
    // Check ingredients
    
    // [Itar_Pal_A]
    amount_needed = NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_PAL_R__itar_pal_rnh ;
    amount_current = Npc_HasItems(hero, Itar_Pal_RNH); // IMPORTANT: An one of a raw steel is in a hand
    
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_ARMOREXPANSION_Func_Print_ProdItemsMissing(Itar_Pal_R.name, amount_missing);

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
        Npc_RemoveInvItems(hero, Itar_pal_rnh, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_PAL_R);
        CreateInvItem(hero, ItMiSwordrawhot);
        
		// Print an information about success
        NINJA_ARMOREXPANSION_Func_Print_ForgeSuccess(ITAR_PAL_R.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };
    

    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE NINJA_ARMOREXPANSION_PC_ITAR_CRUSADER_NH (C_INFO)
{
	npc				= PC_Hero;
	condition		= NINJA_ARMOREXPANSION_PC_ITAR_CRUSADER_NH_Condition;
	information		= NINJA_ARMOREXPANSION_PC_ITAR_CRUSADER_NH_Info;
	permanent		= true;
    description     = "Odebrat Helmu ze zbroje køižáka";
};
FUNC INT NINJA_ARMOREXPANSION_PC_ITAR_CRUSADER_NH_Condition()
{	
	if (MOBSI_SMITHWEAPON == PLAYER_MOBSI_PRODUCTION)
    {
        if (true == NINJA_ARMOREXPANSION_ArmorForging)
        {
            // If has armor
            if (0 < Npc_HasItems(hero, Itar_Crusader))
            {	
                return true;
            };
        };
    };
};
FUNC VOID NINJA_ARMOREXPANSION_PC_ITAR_CRUSADER_NH_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;
    
    // Check ingredients
    
    // [Itar_Pal_A]
    amount_needed = NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_CRUSADER_NH__itar_Crusader ;
    amount_current = Npc_HasItems(hero, Itar_Crusader); // IMPORTANT: An one of a raw steel is in a hand
    
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_ARMOREXPANSION_Func_Print_ProdItemsMissing(Itar_nh_Crusader.name, amount_missing);

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
        Npc_RemoveInvItems(hero, Itar_crusader, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_nh_crusader);
        CreateInvItem(hero, ItMiSwordrawhot);
        
		// Print an information about success
        NINJA_ARMOREXPANSION_Func_Print_ForgeSuccess(ITAR_nh_crusader.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };
    

    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
INSTANCE NINJA_ARMOREXPANSION_PC_ITAR_nh_crusader (C_INFO)
{
	npc				= PC_Hero;
	condition		= NINJA_ARMOREXPANSION_PC_ITAR_nh_crusader_Condition;
	information		= NINJA_ARMOREXPANSION_PC_ITAR_nh_crusader_Info;
	permanent		= true;
    description     = "Vrátit helmu ke zbroji køížáka";
};
FUNC INT NINJA_ARMOREXPANSION_PC_ITAR_nh_crusader_Condition()
{	
	if (MOBSI_SMITHWEAPON == PLAYER_MOBSI_PRODUCTION)
    {
        if (true == NINJA_ARMOREXPANSION_ArmorForging)
        {
            // If has armor
            if (0 < Npc_HasItems(hero, Itar_nh_crusader))
            {	
                return true;
            };
        };
    };
};
FUNC VOID NINJA_ARMOREXPANSION_PC_ITAR_nh_crusader_Info()
{
	var int has_all_ingredients; has_all_ingredients = true;
    var int amount_needed;
    var int amount_current;
    var int amount_missing;
    
    // Check ingredients
    
    // [Itar_Pal_A]
    amount_needed = NINJA_ARMOREXPANSION_INGREDIENTS_ITAR_CRUSADER__itar_pal_Crusader_NH ;
    amount_current = Npc_HasItems(hero, Itar_nh_crusader); // IMPORTANT: An one of a raw steel is in a hand
    
    if (amount_needed > amount_current)
    {
        // Count missing ingredients
        amount_missing = amount_needed - amount_current;
    
        // Print message
        NINJA_ARMOREXPANSION_Func_Print_ProdItemsMissing(Itar_Crusader.name, amount_missing);

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
        Npc_RemoveInvItems(hero, Itar_nh_crusader, 1);
        // Create an armor
        CreateInvItem(hero, ITAR_crusader);
        CreateInvItem(hero, ItMiSwordrawhot);
        
		// Print an information about success
        NINJA_ARMOREXPANSION_Func_Print_ForgeSuccess(ITAR_crusader.name);
    // If hasn't
    } else
    {
        // Restore a raw steel
        CreateInvItem(hero, ItMiSwordrawhot);
    };
    

    // Quit a dialogue window
	B_ENDPRODUCTIONDIALOG();
};
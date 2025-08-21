/*
 *  SMITHARMOR.d
 *   - forging armors
 *
 *  [Damianut 26.04.2024]
 */


/*
 *  [CONSTANTS]
 *   - [MOBSI]
 *  Treat an anvil like another mobsi, when player wants to forge an armor from a packet.
 */
const int Patch_AE_MOBSI_SmithWeapon = 102;


/*
 *  [FUNCTIONS & INSTANCES]
 */

/*
 *  Patch_AE_Func_Print_ProdItemsMissing
 *   - display information about missing ingredient(s)
 */
func void Patch_AE_Func_Print_ProdItemsMissing(var int ingredientInst, var int missingAmount)
{
    var int itmPtr; itmPtr = Itm_GetPtr(ingredientInst); // Initialize and load it into "item"
    var string ingredientName; ingredientName = item.name;

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
func void Patch_AE_Func_Print_ForgeSuccess(var int armorInst)
{
    var int itmPtr; itmPtr = Itm_GetPtr(armorInst); // Initialize and load it into "item"
    var string armorName; armorName = item.name;

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
	permanent		= TRUE;
	description		= Patch_AE_PC_FORGE_ARMOR_desc;
};
func int Patch_AE_PC_FORGE_ARMOR_Condition()
{
    // Safely check if the variables "Normalwaffen" and "Erzwaffen" exist
    var int Normalwaffen; Normalwaffen = Patch_AE_ReadInteger("Normalwaffen", FALSE);
    var int Erzwaffen; Erzwaffen = Patch_AE_ReadInteger("Erzwaffen", FALSE);

	if (PLAYER_MOBSI_PRODUCTION == MOBSI_SMITHWEAPON) && (Normalwaffen == FALSE) && (Erzwaffen == FALSE) // Do not show during the other sub-menus
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
    if (PLAYER_MOBSI_PRODUCTION == Patch_AE_MOBSI_SmithWeapon)
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
	if (PLAYER_MOBSI_PRODUCTION == Patch_AE_MOBSI_SmithWeapon)
	{
		return TRUE;
	};
};
func void Patch_AE_PC_FORGE_ARMOR_End_Info()
{
	CreateInvItems(self, Patch_AE_SmithItem, 1);  // Default: ItMiSwordrawhot
	B_ENDPRODUCTIONDIALOG();
};

/*
 * Basic condition and info dialogs
 */
func int Patch_AE_Smith_Basic_Condition(var int armorInst)
{
    if (PLAYER_MOBSI_PRODUCTION == Patch_AE_MOBSI_SmithWeapon)
    {
        // If has armor
        if (Npc_HasItems(hero, armorInst) > 0)
        {
            return TRUE;
        };
    };
};
func void Patch_AE_Smith_ForgeAndReplace(var int armorInst, var int removeItemInst)
{
    Npc_RemoveInvItems(hero, removeItemInst, 1);
    CreateInvItem(hero, armorInst);
    Patch_AE_Func_Print_ForgeSuccess(armorInst);
    B_ENDPRODUCTIONDIALOG();
};

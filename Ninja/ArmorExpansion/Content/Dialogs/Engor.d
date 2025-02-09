/*
 * DIA_Engor_RSkaufen
 *
 * In order not to overwrite the dialog and potentially overwrite crucial changes of a mod, hook the info
 * function of the dialog "DIA_Engor_RSkaufen" and also hook the function "B_GiveInvItems".
 *
 * In the info function set "Patch_AE_DIA_Engor_RSkaufen_Active" to TRUE and afterwards back to FALSE.
 * When "B_GiveInvItems" is called, we know that it was called from inside the dialog function and can now
 * overwrite the armor item that is given.
 */
const int Patch_AE_DIA_Engor_RSkaufen_Active = FALSE;
func void Patch_AE_DIA_Engor_RSkaufen_Info()
{
    Patch_AE_DIA_Engor_RSkaufen_Active = TRUE;
    ContinueCall(); // Executes "DIA_Engor_RSkaufen_Info" as normal
    Patch_AE_DIA_Engor_RSkaufen_Active = FALSE;
};
func int Patch_AE_B_GiveInvItems(var C_NPC giver, var C_NPC taker, var int itemInstance, var int amount)
{
    // Exchange the armor when it is happening in the dialog "DIA_Engor_RSkaufen".
    if (Patch_AE_DIA_Engor_RSkaufen_Active == TRUE)   // Check if in specific dialog
    && (Hlp_GetInstanceID(giver) == VLK_4108_Engor) { // Check if Engor is giving
        itemInstance = ITAR_MIL_H_ARMOREXPANSION;     // Overwrite the item
    };

    // Continue with the original function
    PassArgumentN(giver);
    PassArgumentN(taker);
    PassArgumentI(itemInstance);
    PassArgumentI(amount);
    ContinueCall(); // Executes "B_GiveInvItems" as normal (return value remains on the stack)
};

instance Patch_AE_DIA_Engor_ARCHER_KAUFEN (C_INFO)
{
    npc          =  VLK_4108_Engor;
    nr           =  35;
    condition    =  Patch_AE_DIA_Engor_ARCHER_KAUFEN_Condition;
    information  =  Patch_AE_DIA_Engor_ARCHER_KAUFEN_Info;
    permanent    =  TRUE;
    description  =  Patch_AE_DIA_Engor_ARCHER_KAUFEN_desc;
};
func int Patch_AE_DIA_Engor_ARCHER_KAUFEN_Condition()
{
    if (other.guild == GIL_MIL)
    && Npc_KnowsInfo (other, DIA_Engor_Ruestung)
    && (DIA_Engor_RSkaufen_perm == FALSE)
    {
        return TRUE;
    };
};
func void Patch_AE_DIA_Engor_ARCHER_KAUFEN_Info()
{
    if (B_GiveInvItems(other, self, Itmi_Gold, 2500))
    {
        AI_Output(other, self, PATCH_AE_DIA_ENGOR_ARCHER_KAUFEN_15_00);
        AI_Output(self, other, PATCH_AE_DIA_ENGOR_ARCHER_KAUFEN_13_01);
        B_GiveInvItems(self, other, ITAR_MILP_H_ARMOREXPANSION,1);
        DIA_Engor_RSkaufen_perm = TRUE;
    }
    else
    {
        AI_Output(self, other, PATCH_AE_DIA_ENGOR_ARCHER_KAUFEN_13_02);
    };
};

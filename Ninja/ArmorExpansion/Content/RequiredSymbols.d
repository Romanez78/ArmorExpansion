/*
 * This file lists all symbols (mostly functions and constants) that have to exist.
 * If they don't the patch will be terminated with an user-friendly error, informing the user that it is not
 * compatible.
 */

const int    Patch_AE_RequiredSymbolsMax = 2; // Adjust this constant when adding more symbols below

const string Patch_AE_RequiredSymbols[Patch_AE_RequiredSymbolsMax] =
{
    "ItAr_Mil_M",
    "ItAr_Mil_M" // This is twice here for now, because an array must have at least 2 elements
};

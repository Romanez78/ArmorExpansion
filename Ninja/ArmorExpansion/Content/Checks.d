/*
 * Perform checks for required functions and constants
 */
func string Patch_AE_CheckSymbolExist(var string symbolName, var string symbolList) {
    // Create line break character
    const string newline = ""; const int once = 0;
    if (!once) { newline = STR_Unescape("\n"); once = 1; };

    // Check if symbol exists
    if (MEM_FindParserSymbol(STR_Upper(symbolName)) == -1) {
        symbolList = ConcatStrings(symbolList, newline);
        symbolList = ConcatStrings(symbolList, symbolName);
    };

    // Return updated list
    return symbolList;
};


/*
 * This function is called on game start to check for all symbols required to run the patch.
 * If any required symbols is not found. The game terminates with a user-friendly error: the mod is not compatible.
 */
func void Patch_AE_SymbolChecks() {
    var string missing; missing = "";

    // Functions
    missing = Patch_AE_CheckSymbolExist("B_SetNpcVisual", missing);

    // Constants
    // ...

    // Evaluate checks
    if (!Hlp_StrCmp(missing, "")) {
        // Stop Gothic completely if an expected symbol is missing
        MEM_SendToSpy(
            zERR_TYPE_FATAL,
            ConcatStrings("ArmorExpansion: Mod incompatible! Expected symbols not found:", missing)
        );
    };
};

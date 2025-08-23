/*
 * Safely retrieve the content of an integer symbol. Return a default value if it does not exist as expected.
 */
func int Patch_AE_ReadInteger(var string symbolName, var int default) {
    var int symbPtr; symbPtr = MEM_GetSymbol(STR_Upper(symbolName));
    if (!symbPtr) { return default; };
    var zCPar_Symbol symb; symb = _^(symbPtr);
    if ((symb.bitfield & zCPar_Symbol_bitfield_type) != zPAR_TYPE_INT) { return default; };
    if ((symb.bitfield & zCPar_Symbol_bitfield_ele) != 1) { return default; };
    return symb.content;
};

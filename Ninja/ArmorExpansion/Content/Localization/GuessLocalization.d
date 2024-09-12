/*
 * Guess localization
 * Indices are assigned in no particular order (new ones added at the end)
 * Source: https://github.com/szapp/Ninja/wiki/Inject-Changes#localization
 */
const int Patch_AE_Lang_EN =  0;
const int Patch_AE_Lang_DE =  1;
const int Patch_AE_Lang_PL =  2;
const int Patch_AE_Lang_RU =  3;
const int Patch_AE_Lang_IT =  4;
const int Patch_AE_Lang_ES =  5;
const int Patch_AE_Lang_FR =  6;
const int Patch_AE_Lang_CS =  7;
const int Patch_AE_Lang_HU =  8;
const int Patch_AE_Lang_RO =  9;
const int Patch_AE_Lang_UK = 10;
const int Patch_AE_Lang_TR = 11;
const int Patch_AE_Lang_CY = 12;

func int Patch_AE_GuessLocalization() {
    var int pan; pan = MEM_GetSymbol("MOBNAME_PAN");
    if (pan) {
        var zCPar_Symbol panSymb; panSymb = _^(pan);
        var string panName; panName = MEM_ReadString(panSymb.content);
        if (Hlp_StrCmp(panName, "Pfanne")) {              // DE cp1252
            return Patch_AE_Lang_DE;
        } else if (Hlp_StrCmp(panName, "Patelnia")) {     // PL cp1250
            return Patch_AE_Lang_PL;
        } else if (Hlp_StrCmp(panName, "Ńęîâîđîäŕ")) {    // RU cp1251
            return Patch_AE_Lang_RU;
        } else if (Hlp_StrCmp(panName, "Padella")) {      // IT cp1252
            return Patch_AE_Lang_IT;
        } else if (Hlp_StrCmp(panName, "Sartén")) {       // ES cp1252
            return Patch_AE_Lang_ES;
        } else if (Hlp_StrCmp(panName, "Casserole")) {    // FR cp1252
            return Patch_AE_Lang_FR;
        } else if (Hlp_StrCmp(panName, "Pánvička"))
               || (Hlp_StrCmp(panName, "Pánev")) {        // CS cp1250
            return Patch_AE_Lang_CS;
        } else if (Hlp_StrCmp(panName, "Serpenyő")) {     // HU cp1250
            return Patch_AE_Lang_HU;
        } else if (Hlp_StrCmp(panName, "Tigaie")) {       // RO cp1250
            return Patch_AE_Lang_RO;
        } else if (Hlp_StrCmp(panName, "Ďŕňĺëüí˙")) {     // UK cp1251
            return Patch_AE_Lang_UK;
        } else if (Hlp_StrCmp(panName, "Tava")) {         // TR cp1254
            return Patch_AE_Lang_TR;
        } else if (Hlp_StrCmp(panName, "Padell")) {       // CY
            return Patch_AE_Lang_CY;
        };
    };
    return Patch_AE_Lang_EN; // Otherwise EN
};

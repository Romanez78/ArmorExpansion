/*
 * Route the balancing adjustment based on active mod.
 */
func void Patch_AE_RouteBalancing() {
    // Default resources (individually overwritten in the functions below, where necessary)
    Patch_AE_SmithItem = MEM_GetSymbolIndex("ITMISWORDRAWHOT");
    Patch_AE_SmithItemCold = MEM_GetSymbolIndex("ITMISWORDRAW");

    // Item stats and bonuses
    if      (Patch_AE_IsLHiverMasty())               { Patch_AE_BalanceLHiverMasty();               }
    else if (Patch_AE_IsLHiverBuddygothArtstuff())   { Patch_AE_BalanceLHiverBuddygothArtstuff();   }
    else if (Patch_AE_IsLHiverMarcello())            { Patch_AE_BalanceLHiverMarcello();            }
    else if (Patch_AE_IsAtariar())                   { Patch_AE_BalanceAtariar();                   }
    else if (Patch_AE_IsShieldsMod())                { Patch_AE_BalanceShieldsMod();                }
    else if (Patch_AE_IsBalanceMinimodBalance())     { Patch_AE_BalanceMinimodBalance();            }
    ;
};

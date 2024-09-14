instance Patch_AE_DeadTreasureHunter (C_Npc)
{
    // Minimally necessary attributes
    name          = Patch_AE_DeadTreasureHunter__name;
    attribute[0]  = 0; // No health: spawn dead
    attribute[1]  = 0;
    start_aistate = ZS_Patch_AE_Placeholder; // Empty AI state to keep the NPC in the game
    senses        = 7;
    senses_range  = 2000;

    // Visual: Define possibly missing constants locally
    const int Face_N_OldBald_Jeremiah = 108;
    const int BodyTex_N = 1;
    Mdl_SetVisual(self, "HUMANS.MDS");
    Mdl_SetVisualBody(self, "HUM_BODY_NAKED0", BodyTex_N, 0, "Hum_Head_FatBald", Face_N_OldBald_Jeremiah, 0, MEM_GetSymbolIndex("ITAR_DJG_CRAWLER"));
    Mdl_SetModelFatness(self, 2);

    // Inventory
    // Using MEM_GetSymbolIndex prevents crashes in case the item does not exist in the mod
    CreateInvItems(self, ITWR_BluePrint_StewarkArmor_ArmorExpansion, 1);
    CreateInvItems(self, MEM_GetSymbolIndex("ITMI_Gold"), 250);
    CreateInvItems(self, MEM_GetSymbolIndex("ITMI_Goldplate"), 1);
    CreateInvItems(self, MEM_GetSymbolIndex("ITMI_Silverring"), 2);
    CreateInvItems(self, MEM_GetSymbolIndex("ITMI_Silvercup"), 3);
    CreateInvItems(self, MEM_GetSymbolIndex("ITMI_SilverNecklace"), 1);
    CreateInvItems(self, MEM_GetSymbolIndex("ITMI_Goldcup"), 1);
    CreateInvItems(self, MEM_GetSymbolIndex("ITFO_Bacon"), 1);
    CreateInvItems(self, MEM_GetSymbolIndex("ITFO_Bread"), 2);
    CreateInvItems(self, MEM_GetSymbolIndex("ITFO_Cheese"), 1);
    CreateInvItems(self, MEM_GetSymbolIndex("ItPl_SwampHerb"), 3);
    CreateInvItems(self, MEM_GetSymbolIndex("ItMiSwordraw"), 4);
    CreateInvItems(self, MEM_GetSymbolIndex("ItMi_Zeitspalt_Addon"), 1);
    CreateInvItems(self, MEM_GetSymbolIndex("ItMi_Nugget"), 1);
    CreateInvItems(self, MEM_GetSymbolIndex("ItMw_Rubinklinge"), 1);
};
func void ZS_Patch_AE_Placeholder() {};
func int ZS_Patch_AE_Placeholder_loop() {};

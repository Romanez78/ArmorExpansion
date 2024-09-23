/*
 * Add new armors for existing NPC
 * If an NPC does not exist, nothing happens.
 *
 * Why is this necessary? Why not just overwrite the NPC instance?
 *
 * When loading a save, the contents of NPC instance function is overwritten by the values from the save game.
 * So, if someone uses this patch on a save game, the armors would not be changed!
 * With these function calls, the NPCs will always update to the correct armor.
 */
func void Patch_AE_NpcArmors() {
    Patch_AE_NpcUpdateArmor("Mil_309_Stadtwache",     ITAR_MIL_M);                    // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("Mil_310_Stadtwache",     ITAR_MIL_M);                    // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("Mil_312_Wulfgar",        ITAR_MIL_H_ArmorExpansion);     // Originally ITAR_MIL_M
    Patch_AE_NpcUpdateArmor("Mil_313_Boltan",         ITAR_MIL_H_ArmorExpansion);     // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("Mil_317_Ruga",           ITAR_MIL_P_ArmorExpansion);     // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("Mil_318_Miliz",          ITAR_MIL_M);                    // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("Mil_319_Pablo",          ITAR_MIL_Med2_ArmorExpansion);  // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("Mil_320_Miliz",          ITAR_MIL_SCOUT_ArmorExpansion); // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("Mil_324_Peck",           ITAR_MIL_R_ArmorExpansion);     // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("Mil_325_Miliz",          ITAR_MIL_M);                    // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("Mil_327_Miliz",          ITAR_MIL_SCOUT_ArmorExpansion); // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("Mil_332_Stadtwache",     ITAR_MIL_M);                    // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("Mil_333_Stadtwache",     ITAR_MIL_M);                    // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("Mil_337_Mika",           ITAR_MIL_Med2_ArmorExpansion);  // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("Mil_350_Addon_Martin",   ITAR_MIL_M);                    // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("Pal_204_Torwache",       ITAR_CRUSADER_ArmorExpansion);  // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("Pal_205_Torwache",       ITAR_CRUSADER_ArmorExpansion);  // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("Pal_207_Girion",         ITAR_PAL_MH_ArmorExpansion);    // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("Pal_207_Girion_DI",      ITAR_PAL_MH_ArmorExpansion);    // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("Pal_216_Cedric",         ITAR_PAL_MH_ArmorExpansion);    // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("Pal_218_Ritter",         ITAR_PAL_MH_ArmorExpansion);    // Originally ITAR_PAL_H
    Patch_AE_NpcUpdateArmor("Pal_225_Schiffswache",   ITAR_PAL_MH_ArmorExpansion);    // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("Pal_233_Ritter",         ITAR_PAL_C_ArmorExpansion);     // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("Pal_235_Ritter",         ITAR_PAL_MH_ArmorExpansion);    // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("Pal_238_Ritter",         ITAR_PAL_C_ArmorExpansion);     // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("Pal_240_Ritter",         ITAR_PAL_MH_ArmorExpansion);    // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("PAL_253_Wache",          ITAR_PAL_MH_ArmorExpansion);    // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("PAL_258_Keroloth",       ITAR_PAL_MH_ArmorExpansion);    // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("PAL_262_Wache",          ITAR_PAL_MH_ArmorExpansion);    // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("PAL_263_Wache",          ITAR_PAL_MH_ArmorExpansion);    // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("PAL_266_Ritter",         ITAR_PAL_C_ArmorExpansion);     // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("PAL_267_Sengrath",       ITAR_PAL_C_ArmorExpansion);     // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("Pal_269_Ritter",         ITAR_PAL_C_ArmorExpansion);     // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("PAL_270_Ritter",         ITAR_PAL_MH_ArmorExpansion);    // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("PAL_274_Ritter",         ITAR_PAL_C_ArmorExpansion);     // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("PAL_297_Ritter",         ITAR_PAL_MH_ArmorExpansion);    // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("PAL_298_Ritter",         ITAR_PAL_MH_ArmorExpansion);    // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("SLD_802_Buster",         ITAR_SLD_LR_ArmorExpansion);    // Originally ITAR_SLD_L
    Patch_AE_NpcUpdateArmor("SLD_808_Jarvis",         ITAR_SLD_R_ArmorExpansion);     // Originally ITAR_SLD_M
    Patch_AE_NpcUpdateArmor("SLD_811_Wolf",           ITAR_SLD_R_ArmorExpansion);     // Originally ITAR_SLD_M
    Patch_AE_NpcUpdateArmor("SLD_811_Wolf_DI",        ITAR_SLD_R_ArmorExpansion);     // Originally ITAR_SLD_M
    Patch_AE_NpcUpdateArmor("SLD_815_Soeldner",       ITAR_SLD_SCOUT_ArmorExpansion); // Originally ITAR_SLD_L
    Patch_AE_NpcUpdateArmor("SLD_816_Fester",         ITAR_SLD_LR_ArmorExpansion);    // Originally ITAR_SLD_L
    Patch_AE_NpcUpdateArmor("SLD_817_Soeldner",       ITAR_SLD_BOW_ArmorExpansion);   // Originally ITAR_SLD_L
    Patch_AE_NpcUpdateArmor("SLD_818_Soeldner",       ITAR_SLD_BOW_ArmorExpansion);   // Originally ITAR_SLD_M
    Patch_AE_NpcUpdateArmor("SLD_822_Raoul",          ITAR_SLD_LR_ArmorExpansion);    // Originally ITAR_SLD_L
    Patch_AE_NpcUpdateArmor("DJG_709_Rethon",         ITAR_DJG_CM_ArmorExpansion);    // Originally ITAR_DJG_M
    Patch_AE_NpcUpdateArmor("DJG_710_Kjorn",          ITAR_DJG_CL_ArmorExpansion);    // Originally ITAR_DJG_L
    Patch_AE_NpcUpdateArmor("DJG_711_Godar",          ITAR_DJG_CM_ArmorExpansion);    // Originally ITAR_DJG_M
    Patch_AE_NpcUpdateArmor("DJG_715_Ferros",         ITAR_DJG_CL_ArmorExpansion);    // Originally ITAR_DJG_L
    Patch_AE_NpcUpdateArmor("VLK_4100_Brutus",        ITAR_MIL_H_ArmorExpansion);     // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("VLK_4104_Waffenknecht",  ITAR_MIL_SCOUT_ArmorExpansion); // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("VLK_4105_Waffenknecht",  ITAR_MIL_P_ArmorExpansion);     // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("VLK_4108_Engor",         ITAR_MIL_Med2_ArmorExpansion);  // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("VLK_4120_Bilgot",        ITAR_MIL_R_ArmorExpansion);     // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("VLK_4101_Waffenknecht",  ITAR_MIL_M);                    // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("VLK_4140_Waffenknecht",  ITAR_MIL_R_ArmorExpansion);     // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("VLK_4145_Waffenknecht",  ITAR_MIL_P_ArmorExpansion);     // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("VLK_440_Bartok",         ITAR_GAMBESON_ArmorExpansion);  // Originally ITAR_Vlk_L
};

/*
 * Equip melee weapons
 */
func void Patch_AE_NpcMeleeWeapons() {
    Patch_AE_NpcUpdateMeleeWeapon("MIL_327_Miliz",          ItMw_Shortsword1);        // Originally ItMw_1h_Mil_Sword
    Patch_AE_NpcUpdateMeleeWeapon("MIL_320_Miliz",          ItMw_Shortsword1);        // Originally ItMw_1h_Mil_Sword
    Patch_AE_NpcUpdateMeleeWeapon("VLK_4145_Waffenknecht",  ItMw_1h_Mil_Sword);       // Originally ItMw_1h_Mil_Sword
    Patch_AE_NpcUpdateMeleeWeapon("VLK_4105_Waffenknecht",  ItMw_1h_Mil_Sword);       // Originally ItMw_1h_Vlk_Sword
    Patch_AE_NpcUpdateMeleeWeapon("PAL_208_Paladin",        ItMw_1H_Pal_Sword);       // Originally ItMw_2H_Pal_Sword
    Patch_AE_NpcUpdateMeleeWeapon("PAL_253_Wache",          ItMw_2H_Pal_Sword);       // Originally ItMw_1H_Pal_Sword
    Patch_AE_NpcUpdateMeleeWeapon("PAL_266_Ritter",         ItMw_1H_Pal_Sword);       // Originally ItMw_2H_Pal_Sword
    Patch_AE_NpcUpdateMeleeWeapon("PAL_269_Ritter",         ItMw_1H_Pal_Sword);       // Originally ItMw_1H_Pal_Sword
    Patch_AE_NpcUpdateMeleeWeapon("DJG_709_Rethon",         ItMw_1h_Sld_Sword);       // Originally ItMw_1h_Sld_Sword
    Patch_AE_NpcUpdateMeleeWeapon("DJG_711_Godar",          ItMw_1h_Sld_Sword);       // Originally ItMw_1h_Sld_Sword
    Patch_AE_NpcUpdateMeleeWeapon("DJG_710_Kjorn",          ItMw_1h_Sld_Sword);       // Originally ItMw_1h_Sld_Sword
};

/*
 * Adjust the model fatness of NPCs. The purpose here is to avoid clipping in conjunction with new armors
 */
func void Patch_AE_MdlFatness() {
    Patch_AE_NpcUpdateMdlFatness("PAL_204_Torwache",     0.0);                        // Originally 0.5
    Patch_AE_NpcUpdateMdlFatness("PAL_205_Torwache",     0.0);                        // Originally 1.0
};

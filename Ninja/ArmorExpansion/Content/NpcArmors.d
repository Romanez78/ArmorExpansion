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
    Patch_AE_NpcUpdateArmor("Mil_309_Stadtwache",     ITAR_MIL_M);              // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("Mil_310_Stadtwache",     ITAR_MIL_M);              // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("Mil_312_Wulfgar",        Patch_AE_ITAR_MIL_H);     // Originally ITAR_MIL_M
    Patch_AE_NpcUpdateArmor("Mil_313_Boltan",         Patch_AE_ITAR_MIL_H);     // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("Mil_317_Ruga",           Patch_AE_ITAR_MIL_P);     // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("Mil_319_Pablo",          Patch_AE_ITAR_MIL_Med2);  // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("Mil_324_Peck",           Patch_AE_ITAR_MIL_R);     // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("Mil_327_Miliz",          Patch_AE_ITAR_MIL_SCOUT); // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("Mil_332_Stadtwache",     ITAR_MIL_M);              // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("Mil_333_Stadtwache",     ITAR_MIL_M);              // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("Mil_337_Mika",           Patch_AE_ITAR_MIL_Med2);  // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("Pal_204_Torwache",       Patch_AE_ITAR_CRUSADER);  // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("Pal_205_Torwache",       Patch_AE_ITAR_CRUSADER);  // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("Pal_207_Girion",         Patch_AE_ITAR_PAL_MH);    // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("Pal_207_Girion_DI",      Patch_AE_ITAR_PAL_MH);    // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("Pal_216_Cedric",         Patch_AE_ITAR_PAL_MH);    // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("PAL_253_Wache",          Patch_AE_ITAR_PAL_MH);    // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("PAL_258_Keroloth",       Patch_AE_ITAR_PAL_MH);    // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("PAL_262_Wache",          Patch_AE_ITAR_PAL_MH);    // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("PAL_263_Wache",          Patch_AE_ITAR_PAL_MH);    // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("PAL_266_Ritter",         Patch_AE_ITAR_PAL_C);     // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("PAL_267_Sengrath",       Patch_AE_ITAR_PAL_C);     // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("PAL_270_Ritter",         Patch_AE_ITAR_PAL_MH);    // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("PAL_274_Ritter",         Patch_AE_ITAR_PAL_C);     // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("PAL_297_Ritter",         Patch_AE_ITAR_PAL_MH);    // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("PAL_298_Ritter",         Patch_AE_ITAR_PAL_MH);    // Originally ITAR_PAL_M
    Patch_AE_NpcUpdateArmor("SLD_802_Buster",         Patch_AE_ITAR_SLD_LR);    // Originally ITAR_SLD_L
    Patch_AE_NpcUpdateArmor("SLD_808_Jarvis",         Patch_AE_ITAR_SLD_R);     // Originally ITAR_SLD_M
    Patch_AE_NpcUpdateArmor("SLD_811_Wolf",           Patch_AE_ITAR_SLD_R);     // Originally ITAR_SLD_M
    Patch_AE_NpcUpdateArmor("SLD_811_Wolf_DI",        Patch_AE_ITAR_SLD_R);     // Originally ITAR_SLD_M
    Patch_AE_NpcUpdateArmor("SLD_815_Soeldner",       Patch_AE_ITAR_SLD_SCOUT); // Originally ITAR_SLD_L
    Patch_AE_NpcUpdateArmor("SLD_816_Fester",         Patch_AE_ITAR_SLD_LR);    // Originally ITAR_SLD_L
    Patch_AE_NpcUpdateArmor("SLD_817_Soeldner",       Patch_AE_ITAR_SLD_BOW);   // Originally ITAR_SLD_L
    Patch_AE_NpcUpdateArmor("SLD_822_Raoul",          Patch_AE_ITAR_SLD_LR);    // Originally ITAR_SLD_L
    Patch_AE_NpcUpdateArmor("VLK_4100_Brutus",        Patch_AE_ITAR_MIL_Med2);  // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("VLK_4104_Waffenknecht",  Patch_AE_ITAR_MIL_SCOUT); // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("VLK_4105_Waffenknecht",  Patch_AE_ITAR_MIL_P);     // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("VLK_4108_Engor",         Patch_AE_ITAR_MIL_Med2);  // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("VLK_4120_Bilgot",        Patch_AE_ITAR_MIL_R);     // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("VLK_4140_Waffenknecht",  Patch_AE_ITAR_MIL_R);     // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("VLK_4145_Waffenknecht",  Patch_AE_ITAR_MIL_P);     // Originally ITAR_MIL_L
    Patch_AE_NpcUpdateArmor("VLK_440_Bartok",         Patch_AE_ITAR_GAMBESON);  // Originally ITAR_Vlk_L
};

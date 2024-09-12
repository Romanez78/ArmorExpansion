func void Patch_AE_LocalizeEnglish() {
    // Blue print
    ItWr_BluePrint_StewarkArmor_ArmorExpansion__name = "Nákres na výrobu plátové zbroje ze Stewarku";
    Patch_AE_Use_Plan_StewarkArmor__line1 = "     Nákres na výrobu plátové zbroje ze Stewarku";
    Patch_AE_Use_Plan_StewarkArmor__line2 = "";
    Patch_AE_Use_Plan_StewarkArmor__line3 = "";
    Patch_AE_Use_Plan_StewarkArmor__line4 = "Tohle je nákres pro všechny schopné kováře města Stewark,";
    Patch_AE_Use_Plan_StewarkArmor__line5 = "máte za úkol vyrobit nové kusy zbroje kterou bude";
    Patch_AE_Use_Plan_StewarkArmor__line5 = "vybavena stráž města.";
    Patch_AE_Use_Plan_StewarkArmor__line6 = "Suroviny dostanete brzy, na výrobu jedné zbroje budete potřebovat:";
    Patch_AE_Use_Plan_StewarkArmor__line7 = "-6 Kusů surového železa";
    Patch_AE_Use_Plan_StewarkArmor__line8 = "-3 Kůže Warga";
    Patch_AE_Use_Plan_StewarkArmor__line9 = "Návod k výrobě je na druhé straně tohoto nákresu.";
    Patch_AE_Use_Plan_StewarkArmor__line10 = "";
    Patch_AE_Use_Plan_StewarkArmor__line11 = "Pokud budete přistiženi jak prodáváte suroviny";
    Patch_AE_Use_Plan_StewarkArmor__line12 = "nebo nákres, budete tvrdě potrestáni.";
    Patch_AE_Use_Plan_StewarkArmor__line13 = "";
    Patch_AE_Use_Plan_StewarkArmor__line14 = "";
    Patch_AE_Use_Plan_StewarkArmor__line15 = "";
    Patch_AE_Use_Plan_StewarkArmor__line16 = "";
    Patch_AE_Use_Plan_StewarkArmor__line17 = "Rozkaz vydal velitel městské stráže Cenric";
    Patch_AE_Use_Plan_StewarkArmor__line18 = "";
    Patch_AE_Use_Plan_StewarkArmor__line19 = "";

    // Armor names
    ITAR_MIL_H_ArmorExpansion__name = "Heavy Militia Armor";
    ITAR_GAMBESON_ArmorExpansion__name = "Hunting Gambeson";
    ITAR_PAL_A_ArmorExpansion__name = "Enriched Paladin Armor";
    ITAR_PAL_R_ArmorExpansion__name = "Rusty Paladin Armor";
    ITAR_PAL_F_ArmorExpansion__name = "Repaired Paladin Armor";
    ITAR_PAL_C_ArmorExpansion__name = "Knight Crossbowman Armor";
    ITAR_MIL_Med2_ArmorExpansion__name = "Improved Medium Militia Armor";
    ITAR_MIL_P_ArmorExpansion__name = "Militia Crossbowman Armor";
    ITAR_MIL_M__name = "Medium Militia Armor";
    ITAR_DJG_CL_ArmorExpansion__name = "Light Dragontracker Armor";
    ITAR_SLD_BOW_ArmorExpansion__name = "Mercenary Archer Armor";
    ITAR_MIL_R_ArmorExpansion__name = "Improved Light Militia Armor";
    ITAR_CRUSADER_ArmorExpansion__name = "Crusader Armor";
    ITAR_SLD_SCOUT_ArmorExpansion__name = "Mercenary Hunter Armor";
    ITAR_MIL_SCOUT_ArmorExpansion__name = "Royal Scout Armor";
    ITAR_SLD_R_ArmorExpansion__name = "Improved Medium Mercenary Armor";
    ITAR_SLD_LR_ArmorExpansion__name = "Improved Light Mercenary Armor";
    ITAR_PAL_CH_ArmorExpansion__name = "Paladin Crossbowman Armor";
    ITAR_DJG_CH_ArmorExpansion__name = "Heavy Dragontracker Armor";
    ITAR_DJG_CM_ArmorExpansion__name = "Medium Dragontracker Armor";
    ITAR_PAL_ST_ArmorExpansion__name = "Stewark Plate Armor";
    ITAR_PAL_MH_ArmorExpansion__name = "Heavy Knight Armor";
    ITAR_PIR_H_ArmorExpansion__name = "Pirate Captain's Coat";
    ITAR_PAL_ANH_ArmorExpansion__name = "Enriched Paladin Armor";
    ITAR_PAL_RNH_ArmorExpansion__name = "Rusty Paladin Armor";
    ITAR_PAL_FNH_ArmorExpansion__name = "Repaired Paladin Armor";
    ITAR_PAL_AFH_ArmorExpansion__name = "Enriched Paladin Armor";
    ITAR_PAL_RFH_ArmorExpansion__name = "Rusty Paladin Armor";
    ITAR_PAL_FFH_ArmorExpansion__name = "Repaired Paladin Armor";
    ITAR_NH_CRUSADER_ArmorExpansion_name = "Crusader Armor";

    // Armor bonus
    Patch_AE_TEXT_MaxManaBonus20 = "+20 Maximum Mana Bonus";
    Patch_AE_TEXT_MaxManaBonus40 = "+40 Maximum Mana Bonus";
    Patch_AE_TEXT_OldArmor = "This armor has seen better days";
    Patch_AE_TEXT_ArcheryBonus3 = "+3% Archery Bonus";
    Patch_AE_TEXT_ArcheryBonus5 = "+5% Archery Bonus";
    Patch_AE_TEXT_TwoHandedBonus5 = "+5% Two-Handed Bonus";
    Patch_AE_TEXT_DexBonus10_OneHandedBonus10 = "+10 Dexterity Bonus, +10% One-handed Bonus";

    // ==============
    //    DIALOGS
    // ==============

    // Andre
    Patch_AE_DIA_ANDRE_MIL_SCOUTArmor_desc = "Is there any lighter armor for me? (Replace current armor)";
    // AI_Output(other, self, "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_01_EN"); //Couldn't you find lighter armor for me?
    // AI_Output(other, self, "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_02_EN"); //I prefer to fight at a distance.
    // AI_Output(self, other, "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_13_03_EN"); //I can trade you your armor for the armor of a scout. It's lighter than standard equipment, so you'll be more agile, but also more vulnerable.
    // AI_Output(other, self, "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_04_EN"); //I'll take it.
    // AI_Output(other, self, "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_9_EN"); //Here, let it serve you well.

    // AI_Output(self, other, "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_03_EN"); //You did all my assignments.
    // AI_Output(self, other, "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_04_EN"); //You proved to me that you deserve a promotion.
    // AI_Output(self, other, "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_05_EN"); //Here you go, militia medium armor.
    // AI_Output(self, other, "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_06_EN"); //Serve you right, soldier.
    // AI_Output(other, self, "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_15_01_EN"); /Thank you.


    // Localized OU (do not change)
    PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_01 = "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_01_EN";
    PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_02 = "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_02_EN";
    PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_13_03 = "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_13_03_EN";
    PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_04 = "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_04_EN";
    PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_9 = "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_9_EN";
    PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_03 = "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_03_EN";
    PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_04 = "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_04_EN";
    PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_05 = "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_05_EN";
    PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_06 = "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_06_EN";
    PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_15_01 = "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_15_01_EN";
};

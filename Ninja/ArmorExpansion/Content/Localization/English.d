func void Patch_AE_LocalizeEnglish() {
    // NPC
    Patch_AE_DeadTreasureHunter__name = "Dead Treasure Hunter";

    // Blue print
    ItWr_BluePrint_StewarkArmor_ArmorExpansion__name = "Stewark plate armor Forging Blueprint";
    Patch_AE_Use_Plan_StewarkArmor__line1 = "Stewark plate armor Forging Blueprint";
    Patch_AE_Use_Plan_StewarkArmor__line2 = "This is a blueprint for all skilled blacksmiths of Stewark, you are tasked with making new suits of armor to equip the city guard.";
    Patch_AE_Use_Plan_StewarkArmor__line3 = "To make one suit of armor you will need these the raw materials:";
    Patch_AE_Use_Plan_StewarkArmor__line4 = "-6 Raw Steel Billets";
    Patch_AE_Use_Plan_StewarkArmor__line5 = "-3 Warg skins";
    Patch_AE_Use_Plan_StewarkArmor__line6 = "Instructions for making it are on the other side of this blueprint.";
    Patch_AE_Use_Plan_StewarkArmor__line7 = "If you are caught selling the raw materials or the blueprint, you will be severely punished.";
    Patch_AE_Use_Plan_StewarkArmor__line8 = "This order was given by commander Cenric of the City Guard";

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

    // Alerts: The constants used to create an alert (print on a screen) about missing ingredient(s) or an forged armor.
    Patch_AE_PRINT_ProdItemsMissing__SUBSTR_1 = "Missing: ";
    Patch_AE_PRINT_ProdItemsMissing__SUBSTR_2 = " x";
    Patch_AE_PRINT_ForgeSuccess = " forged!";

    // ==============
    //    DIALOGS
    // ==============

    // ------
    // Andre
    // ------

    Patch_AE_DIA_ANDRE_MIL_SCOUTArmor_desc = "Couldn't you find lighter armor for me? (Replace Light Milita Armor)";
    // AI_Output(other, self, "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_01_EN"); //Couldn't you find lighter armor for me?
    // AI_Output(other, self, "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_02_EN"); //I prefer to keep my distance.
    // AI_Output(self, other, "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_13_03_EN"); //I can trade you your armor for the armor of a scout. It's lighter than standard equipment, so you'll be more agile, but also more vulnerable.
    // AI_Output(other, self, "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_04_EN"); //I'll take it.
    // AI_Output(other, self, "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_9_EN"); //Here, let it serve you well.

    // AI_Output(self, other, "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_03_EN"); //You completed all of my assignments.
    // AI_Output(self, other, "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_04_EN"); //You proved to me that you deserve a promotion.
    // AI_Output(self, other, "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_05_EN"); //Here you go, medium militia armor.
    // AI_Output(self, other, "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_06_EN"); //I hope it will serve you well soldier.
    // AI_Output(other, self, "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_15_01_EN"); //Thanks.

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

    // ------
    // Bennet
    // ------

    Patch_AE_TOPIC_BENNET_ARMOR = "Mercenary Armor Improvement.";

    Patch_AE_DIA_BENNET_SLDARMORASK_desc = "Can you sell me some better armor?";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLDARMORASK_15_01_EN"); //Can you sell me some better armor?
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLDARMORASK_13_02_EN"); //No, only Lee can give out armor.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLDARMORASK_13_03_EN"); //But I can improve the one you already got, it'll cost you though.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLDARMORASK_15_04_EN"); //What do you need for it?
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLDARMORASK_13_05_EN"); //The materials to make it, you bring them yourself, I won't make it from my own supplies.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLDARMORASK_13_07_EN"); //And I don't work for free, so get some gold ready too.
    Patch_AE_DIA_BENNET_SLDARMORASK_entry = "Bennet can upgrade my mercenary armor if I bring him materials and gold.";

    Patch_AE_DIA_BENNET_SLD_LReforgedHUH_desc = "I want to have my light armor improved.";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_01_EN"); //I want to have my light armor improved.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_04_EN"); //What do you need for that?
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_13_06_EN"); //Two raw steel billets and two wolf skins will do for light armor.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_13_07_EN"); //I'll charge you 200 gold pieces for it.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_09_EN"); //All right.
    Patch_AE_DIA_BENNET_SLD_LReforgedHUH_entry = "To upgrade the light armor, Bennet will need two raw steel billets, two wolf skins and 200 gold.";

    Patch_AE_DIA_BENNET_SLD_LReforgedArmor_desc = "I have all the materials I need to improve the light armor.";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_01_EN"); //I have all the materials needed to improve my light armor.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_11_EN"); //Here you go.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_12_EN"); //Okay, let's take a look at it then.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_13_EN"); //Done.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_14_EN"); //Here it is, I think i did a good job.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_15_EN"); //Thank you.
    Patch_AE_DIA_BENNET_SLD_LReforgedArmor_entry = "Bennet improved my light armor.";
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_16_EN"); //Come back when you've got it all with you.

    Patch_AE_DIA_BENNET_MERC_MReforgedHUH_desc = "I want to get my medium armor improved.";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_01_EN"); //I want to get my medium armor improved.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_03_EN"); //What do you need for that?
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_04_EN"); //You'll need more than last time for the medium armor.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_05_EN"); //Three raw steel billets, and one Warg skin.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_06_EN"); //I'll want, say, 650 gold to make it.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_08_EN"); //All right.
    Patch_AE_DIA_BENNET_MERC_MReforgedHUH_entry = "To improve medium armor, Bennet will need three raw steel billets, one warg skin and 650 gold.";

    Patch_AE_DIA_BENNET_MERC_MReforgedArmor_desc = "I have all the materials I need to improve my medium armor.";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_01_EN"); //I have all the materials needed to improve my medium armor.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_10_EN"); //Here you go.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_11_EN"); //Okay, let's take a look at it then.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_12_EN"); //Done.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_13_EN"); //Here it is, I think i did a good job.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_14_EN"); //Thank you.
    Patch_AE_DIA_BENNET_MERC_MReforgedArmor_entry = "Bennet improved my medium armor.";
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_16_EN"); //Come back when you've got it all with you.

    Patch_AE_DIA_BENNET_PAL_REFORGE_desc = "Could you fix this rusty paladin armor for me?";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_PAL_REFORGE_4_1_EN"); //Could you fix this rusty paladin armor for me?
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_01_EN"); //I'm sorry, but I can't.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_03_EN"); //I have nothing against you, you got me out of jail after all.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_04_EN"); //But what would the others on the farm think if I started repairing paladin armor here?
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_05_EN"); //You'll have to find another blacksmith.
    Patch_AE_DIA_BENNET_PAL_REFORGE_entry = "Bennet's not gonna fix my armor.";

    Patch_AE_DIA_Bennet_CROSSBOW_desc = "Do you have any lighter armor for me? (Replace Light Dragonhunter armor)";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_CROSSBOW_15_01_EN"); //Do you have there any lighter armor for me?
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_CROSSBOW_15_02_EN"); //Don't get me wrong, I'm grateful for it, but I would prefer something less heavy.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_CROSSBOW_13_03_EN"); //Actually, yes, I've made one of those, if you want I can swap it for you.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_CROSSBOW_15_04_EN"); //Thanks, I'll take it.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_CROSSBOW_15_9_EN"); //Here it is, may it serve you well.

    Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CM_desc = "Medium DragonTracker Armor: Protection: Blade 110, Point 110. (12000 Gold)";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_15_00_EN"); //I'll buy the armor.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_01_EN"); //Oh, great. You'll like it.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_15_02_EN"); //At this price, I hope so.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_03_EN"); //You'll see it was worth the price.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_04_EN"); //You don't have enough gold.

    Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CH_desc = "Heavy DragonTracker Armor: Protection: Blade 140, Point 140 (20000 gold)";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_15_00_EN"); //Give me the armor.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_06_01_EN"); //This is the best armor I've ever made.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_06_02_EN"); //It's a true masterpiece.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_06_03_EN"); //You don't have enough gold.

    // Localized OU (do not change)
    PATCH_AE_DIA_BENNET_SLDARMORASK_15_01 = "PATCH_AE_DIA_BENNET_SLDARMORASK_15_01_EN";
    PATCH_AE_DIA_BENNET_SLDARMORASK_13_02 = "PATCH_AE_DIA_BENNET_SLDARMORASK_13_02_EN";
    PATCH_AE_DIA_BENNET_SLDARMORASK_13_03 = "PATCH_AE_DIA_BENNET_SLDARMORASK_13_03_EN";
    PATCH_AE_DIA_BENNET_SLDARMORASK_15_04 = "PATCH_AE_DIA_BENNET_SLDARMORASK_15_04_EN";
    PATCH_AE_DIA_BENNET_SLDARMORASK_13_05 = "PATCH_AE_DIA_BENNET_SLDARMORASK_13_05_EN";
    PATCH_AE_DIA_BENNET_SLDARMORASK_13_07 = "PATCH_AE_DIA_BENNET_SLDARMORASK_13_07_EN";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_01 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_01_EN";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_04 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_04_EN";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_13_06 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_13_06_EN";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_13_07 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_13_07_EN";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_09 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_09_EN";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_01 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_01_EN";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_11 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_11_EN";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_12 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_12_EN";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_13 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_13_EN";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_14 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_14_EN";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_15 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_15_EN";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_16 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_16_EN";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_01 ="PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_01_EN";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_03 ="PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_03_EN";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_04 ="PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_04_EN";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_05 ="PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_05_EN";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_06 ="PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_06_EN";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_08 ="PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_08_EN";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_01 = "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_01_EN";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_10 = "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_10_EN";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_11 = "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_11_EN";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_12 = "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_12_EN";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_13 = "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_13_EN";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_14 = "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_14_EN";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_16 = "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_16_EN";
    PATCH_AE_DIA_BENNET_PAL_REFORGE_4_1 = "PATCH_AE_DIA_BENNET_PAL_REFORGE_4_1_EN";
    PATCH_AE_DIA_BENNET_PAL_REFORGE_3_01 = "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_01_EN";
    PATCH_AE_DIA_BENNET_PAL_REFORGE_3_03 = "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_03_EN";
    PATCH_AE_DIA_BENNET_PAL_REFORGE_3_04 = "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_04_EN";
    PATCH_AE_DIA_BENNET_PAL_REFORGE_3_05 = "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_05_EN";
    PATCH_AE_DIA_BENNET_CROSSBOW_15_01 = "PATCH_AE_DIA_BENNET_CROSSBOW_15_01_EN";
    PATCH_AE_DIA_BENNET_CROSSBOW_15_02 = "PATCH_AE_DIA_BENNET_CROSSBOW_15_02_EN";
    PATCH_AE_DIA_BENNET_CROSSBOW_13_03 = "PATCH_AE_DIA_BENNET_CROSSBOW_13_03_EN";
    PATCH_AE_DIA_BENNET_CROSSBOW_15_04 = "PATCH_AE_DIA_BENNET_CROSSBOW_15_04_EN";
    PATCH_AE_DIA_BENNET_CROSSBOW_15_9 = "PATCH_AE_DIA_BENNET_CROSSBOW_15_9_EN";
    PATCH_AE_DIA_BENNET_DJG_ARMOR_M_15_00 = "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_15_00_EN";
    PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_01 = "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_01_EN";
    PATCH_AE_DIA_BENNET_DJG_ARMOR_M_15_02 = "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_15_02_EN";
    PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_03 = "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_03_EN";
    PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_04 = "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_04_EN";
    PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_15_00 = "PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_15_00_EN";
    PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_06_01 = "PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_06_01_EN";
    PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_06_02 = "PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_06_02_EN";
    PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_06_03 = "PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_06_03_EN";

    // ------
    // Brian
    // ------

    Patch_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_desc = "I need more raw steel.";
    // AI_Output(other, self, "PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_15_01_EN"); //I need more raw steel.
    // AI_Output(self, other, "PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_02_EN"); //I can sell you some of my personal stock, but it'll cost you a lot.
    // AI_Output(self, other, "PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_03_EN"); //200 gold a piece.

    Patch_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_desc = "Sell me one piece of raw steel. (200 gold).";
    // AI_Output(other, self, "PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_1_EN"); //Sell me one piece of raw steel.
    // AI_Output(self, other, "PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_2_EN"); //Here it is.
    // AI_Output(self, other, "PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_3_EN"); //Come back when you have enough gold on you.

    // Localized OU (do not change)
    PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_15_01 = "PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_15_01_EN";
    PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_02 = "PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_02_EN";
    PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_03 = "PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_03_EN";
    PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_1 = "PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_1_EN";
    PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_2 = "PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_2_EN";
    PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_3 = "PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_3_EN";

    // ------
    // Carl
    // ------

    Patch_AE_DIA_CARL_PAL_REFORGE_desc = "Could you fix this rusty paladin armor for me?";
    // AI_Output(other, self, "PATCH_AE_DIA_CARL_PAL_REFORGE_4_1_EN"); //Could you fix this rusty paladin armor for me?
    // AI_Output(self, other, "PATCH_AE_DIA_CARL_PAL_REFORGE_3_01_EN"); //Paladin armor?
    // AI_Output(self, other, "PATCH_AE_DIA_CARL_PAL_REFORGE_3_02_EN"); //I'm sorry, boy, but that's beyond me.
    // AI_Output(self, other, "PATCH_AE_DIA_CARL_PAL_REFORGE_3_03_EN"); //You'll have to find another blacksmith.
    Patch_AE_DIA_CARL_PAL_REFORGE_entry = "Carl's not gonna fix my armor.";

    // Localized OU (do not change)
    PATCH_AE_DIA_CARL_PAL_REFORGE_4_1 = "PATCH_AE_DIA_CARL_PAL_REFORGE_4_1_EN";
    PATCH_AE_DIA_CARL_PAL_REFORGE_3_01 = "PATCH_AE_DIA_CARL_PAL_REFORGE_3_01_EN";
    PATCH_AE_DIA_CARL_PAL_REFORGE_3_02 = "PATCH_AE_DIA_CARL_PAL_REFORGE_3_02_EN";
    PATCH_AE_DIA_CARL_PAL_REFORGE_3_03 = "PATCH_AE_DIA_CARL_PAL_REFORGE_3_03_EN";

    // ------
    // Engor
    // ------

    Patch_AE_DIA_Engor_ARCHER_KAUFEN_desc = "Buy Milita Crossbowman Armor (65/65, Archery bonus, Price: 2300 gold)";
    // AI_Output(other, self, "PATCH_AE_DIA_ENGOR_ARCHER_KAUFEN_15_00_EN"); //Give me the armor.
    // AI_Output(self, other, "PATCH_AE_DIA_ENGOR_ARCHER_KAUFEN_13_01_EN"); //Here it is, it'll protect you well, it's a damn good piece.
    // AI_Output(self, other, "PATCH_AE_DIA_ENGOR_ARCHER_KAUFEN_13_02_EN"); //Bring me the gold first.

    // Localized OU (do not change)
    PATCH_AE_DIA_ENGOR_ARCHER_KAUFEN_15_00 = "PATCH_AE_DIA_ENGOR_ARCHER_KAUFEN_15_00_EN";
    PATCH_AE_DIA_ENGOR_ARCHER_KAUFEN_13_01 = "PATCH_AE_DIA_ENGOR_ARCHER_KAUFEN_13_01_EN";
    PATCH_AE_DIA_ENGOR_ARCHER_KAUFEN_13_02 = "PATCH_AE_DIA_ENGOR_ARCHER_KAUFEN_13_02_EN";

    // ------
    // Garond
    // ------

    // AI_Output(self, other, "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_03_EN"); //Hold on.
    // AI_Output(self, other, "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_04_EN"); //You're the only one of us who's managed to kill a dragon so far.
    // AI_Output(self, other, "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_05_EN"); //I'm hoping you can get them all.
    // AI_Output(self, other, "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_06_EN"); //Here, this should help you in your mission. Now go, there's no time to waste.
    // AI_Output(other, self, "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_15_01_EN"); //Thanks.

    // Localized OU (do not change)
    PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_03 = "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_03_EN";
    PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_04 = "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_04_EN";
    PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_05 = "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_05_EN";
    PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_06 = "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_06_EN";
    PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_15_01 = "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_15_01_EN";

    // ------
    // Greg
    // ------

    Patch_AE_DIA_Addon_Greg_RavenDead_ARMOREXPANSION_desc = "How about some better armor?";
    // AI_Output(other, self, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_15_00_EN"); //How about some better armor?
    // AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_01_EN"); //What the hell do you think?
    // AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_02_EN"); //You knock off Raven and suddenly you're the new captain?
    // AI_Output(other, self, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_15_03_EN"); //That's not what I meant. You're still the captain. I'm just asking about armor.
    // AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_04_EN"); //All right, I can sell you one of my personal pieces.
    // AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_05_EN"); //But it'll cost you. I want 2700 gold for it.
    Patch_AE_DIA_Addon_Greg_RavenDead_ARMOREXPANSION_entry = "I can buy a captain's cloak from Greg for 2700 gold";

    Patch_AE_DIA_Addon_Greg_BUY_ARMOREXPANSION_desc = "Buy Captain's Cloak (75/75/75/25/15, +5% one-handed talent, +10 Dexterity, Price 2700)";
    // AI_Output(other, self, "PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_1_EN"); //Sell me the captain's armor.
    // AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_2_EN"); //Here you go, but remember, I'm still the captain.
    // AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_3_EN"); //Come back when you have enough gold.

    // Localized OU (do not change)
    PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_15_00 = "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_15_00_EN";
    PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_01 = "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_01_EN";
    PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_02 = "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_02_EN";
    PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_15_03 = "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_15_03_EN";
    PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_04 = "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_04_EN";
    PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_05 = "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_05_EN";
    PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_1 = "PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_1_EN";
    PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_2 = "PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_2_EN";
    PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_3 = "PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_3_EN";

    // ------
    // Hagen
    // ------

    Patch_AE_DIA_Lord_Hagen_CROSSBOW_desc = "Would there be any lighter armor for me? (Replace Knight Armor)";
    // AI_Output(other, self, "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_01_EN"); //Would there be any lighter armor for me?
    // AI_Output(other, self, "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_02_EN"); //I prefer to use ranged weapons.
    // AI_Output(self, other, "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_13_03_EN"); //I can swap your knight's armor for a lighter version designed for our crossbowmen.
    // AI_Output(other, self, "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_04_EN"); //I'll take it.
    // AI_Output(self, other, "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_9_EN"); //Wear it with honor, knight.

    // Localized OU (do not change)
    PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_01 = "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_01_EN";
    PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_02 = "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_02_EN";
    PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_13_03 = "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_13_03_EN";
    PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_04 = "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_04_EN";
    PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_9 = "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_9_EN";

    // ------
    // Harad
    // ------

    Patch_AE_DIA_HARAD_PAL_SHOW_desc = "Could you fix this rusty paladin armor for me?";
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_PAL_SHOW_4_1_EN"); //Could you fix this rusty paladin armor for me?
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_01_EN"); //Let me see.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_02_EN"); //It's been a long time since I've seen armor like this.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_03_EN"); //They are forged from a different alloy of steel and magical ore than the others, and then blessed by the mages from the Monastery in Nordmar.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_04_EN"); //The rust hasn't penetrated very deeply, it won't be too hard to repair.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_05_EN"); //If I have the materials, of course.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_06_EN"); //Where did you get it?
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_07_EN"); //Martin sold it to me, it was lying around amongst the paladin equipment so I wanted to use it.
    Patch_AE_DIA_HARAD_PAL_SHOW_entry = "Harad agreed to repair my armor.";

    Patch_AE_DIA_HARAD_PALADIN_REFORGE_desc = "So, what are you gonna need to repair the armor?";
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_01_EN"); //So, what are you gonna need to repair the armor?
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_02_EN"); //Hmm, let me think.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_04_EN"); //A few raw steel billets, six should be enough.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_05_EN"); //3 lumps of magical ore.
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_06_EN"); //What do you want for your work?
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_07_EN"); //Nothing. It would be an honor to work on armor like this.
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_08_EN"); //All right, I'll try to get it all.
    Patch_AE_DIA_HARAD_PALADIN_REFORGE_entry1 = "Harad will need 6 Raw steel billets and three lumps of ore to repair the armor.";
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_9_EN");//Here's the armor.
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_10_EN"); //And here are the materials.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_11_EN"); //All right, I'll get to work.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_12_EN"); //Done.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_13_EN"); //Here it is, I managed to fix it.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_14_EN"); //But I couldn't restore its magical powers.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_15_EN"); //For that, you'll need an experienced fire mage willing to consecrate the armor for you.
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_14_EN"); //Thank you.
    Patch_AE_DIA_HARAD_PALADIN_REFORGE_entry2 = "Harad repaired my paladin armor, but failed to restore its magical powers. I'll have to find a willing fire mage for that, I can think of one.";
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_16_EN"); //Come back when you've got it all.

    Patch_AE_DIA_HARAD_END_MAKE_desc = "Could you reforge my paladin armor for me? (Less protection, archery bonus)";
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_END_MAKE_1_EN"); //Could you reforge my paladin armor for me?
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_END_MAKE_2_EN"); //Sure, but I can't think of a reason you wouldn't like it.
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_END_MAKE_3_EN"); //I use ranged weapons, so I'd like it if it was a bit lighter.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_END_MAKE_4_EN"); //That shouldn't be too hard. I'm sure I could do it.
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_END_MAKE_5_EN"); //What do you want for it?
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_END_MAKE_6_EN"); //Nothing. It would be an honor to do this service for a paladin.
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_END_MAKE_7_EN"); //In that case, here it is.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_END_MAKE_8_EN"); //Done. It wasn't hard. Here you go.
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_END_MAKE_9_EN"); //Thank you.

    // Localized OU (do not change)
    PATCH_AE_DIA_HARAD_PAL_SHOW_4_1 = "PATCH_AE_DIA_HARAD_PAL_SHOW_4_1_EN";
    PATCH_AE_DIA_HARAD_PAL_SHOW_3_01 = "PATCH_AE_DIA_HARAD_PAL_SHOW_3_01_EN";
    PATCH_AE_DIA_HARAD_PAL_SHOW_3_02 = "PATCH_AE_DIA_HARAD_PAL_SHOW_3_02_EN";
    PATCH_AE_DIA_HARAD_PAL_SHOW_3_03 = "PATCH_AE_DIA_HARAD_PAL_SHOW_3_03_EN";
    PATCH_AE_DIA_HARAD_PAL_SHOW_3_04 = "PATCH_AE_DIA_HARAD_PAL_SHOW_3_04_EN";
    PATCH_AE_DIA_HARAD_PAL_SHOW_3_05 = "PATCH_AE_DIA_HARAD_PAL_SHOW_3_05_EN";
    PATCH_AE_DIA_HARAD_PAL_SHOW_3_06 = "PATCH_AE_DIA_HARAD_PAL_SHOW_3_06_EN";
    PATCH_AE_DIA_HARAD_PAL_SHOW_3_07 = "PATCH_AE_DIA_HARAD_PAL_SHOW_3_07_EN";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_01 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_01_EN";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_02 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_02_EN";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_04 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_04_EN";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_05 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_05_EN";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_06 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_06_EN";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_07 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_07_EN";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_08 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_08_EN";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_9 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_9_EN";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_10 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_10_EN";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_11 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_11_EN";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_12 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_12_EN";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_13 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_13_EN";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_14 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_14_EN";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_15 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_15_EN";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_14 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_14_EN";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_16 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_16_EN";
    PATCH_AE_DIA_HARAD_END_MAKE_1 = "PATCH_AE_DIA_HARAD_END_MAKE_1_EN";
    PATCH_AE_DIA_HARAD_END_MAKE_2 = "PATCH_AE_DIA_HARAD_END_MAKE_2_EN";
    PATCH_AE_DIA_HARAD_END_MAKE_3 = "PATCH_AE_DIA_HARAD_END_MAKE_3_EN";
    PATCH_AE_DIA_HARAD_END_MAKE_4 = "PATCH_AE_DIA_HARAD_END_MAKE_4_EN";
    PATCH_AE_DIA_HARAD_END_MAKE_5 = "PATCH_AE_DIA_HARAD_END_MAKE_5_EN";
    PATCH_AE_DIA_HARAD_END_MAKE_6 = "PATCH_AE_DIA_HARAD_END_MAKE_6_EN";
    PATCH_AE_DIA_HARAD_END_MAKE_7 = "PATCH_AE_DIA_HARAD_END_MAKE_7_EN";
    PATCH_AE_DIA_HARAD_END_MAKE_8 = "PATCH_AE_DIA_HARAD_END_MAKE_8_EN";
    PATCH_AE_DIA_HARAD_END_MAKE_9 = "PATCH_AE_DIA_HARAD_END_MAKE_9_EN";

    // ------
    // Huno
    // ------

    Patch_AE_DIA_HUNO_PAL_REFORGE_desc = "Could you fix this rusty paladin armor for me?";
    // AI_Output(other, self, "PATCH_AE_DIA_HUNO_PAL_REFORGE_4_1_EN"); //Could you fix this rusty paladin armor for me?
    // AI_Output(self, other, "PATCH_AE_DIA_HUNO_PAL_REFORGE_3_01_EN"); //I have absolutely no experience with paladin armor. There was nothing like it in the colony.
    // AI_Output(self, other, "PATCH_AE_DIA_HUNO_PAL_REFORGE_3_02_EN"); //I'm sorry, but I can't help you with this.
    // AI_Output(self, other, "PATCH_AE_DIA_HUNO_PAL_REFORGE_3_03_EN"); //You'll have to find another blacksmith.
    Patch_AE_DIA_HUNO_PAL_REFORGE_entry = "Huno won't fix my armor.";

    // Localized OU (do not change)
    PATCH_AE_DIA_HUNO_PAL_REFORGE_4_1 = "PATCH_AE_DIA_HUNO_PAL_REFORGE_4_1_EN";
    PATCH_AE_DIA_HUNO_PAL_REFORGE_3_01 = "PATCH_AE_DIA_HUNO_PAL_REFORGE_3_01_EN";
    PATCH_AE_DIA_HUNO_PAL_REFORGE_3_02 = "PATCH_AE_DIA_HUNO_PAL_REFORGE_3_02_EN";
    PATCH_AE_DIA_HUNO_PAL_REFORGE_3_03 = "PATCH_AE_DIA_HUNO_PAL_REFORGE_3_03_EN";

    // ------
    // Jan
    // ------

    Patch_AE_DIA_JAN_PAL_REFORGE_desc = "Could you fix this rusty paladin armor for me?";
    // AI_Output(other, self, "PATCH_AE_DIA_JAN_PAL_REFORGE_4_1_EN"); //Could you fix this rusty paladin armor for me?
    // AI_Output(self, other, "PATCH_AE_DIA_JAN_PAL_REFORGE_3_01_EN"); //I'm on thin ice just to be allowed to work here.
    // AI_Output(self, other, "PATCH_AE_DIA_JAN_PAL_REFORGE_3_02_EN"); //I'm not gonna risk one of your colleagues reporting me for digging through paladin supplies.
    // AI_Output(self, other, "PATCH_AE_DIA_JAN_PAL_REFORGE_3_03_EN"); //You'll have to find another blacksmith.
    Patch_AE_DIA_JAN_PAL_REFORGE_entry = "Dragonhunter Jan will not repair my armor.";

    // Localized OU (do not change)
    PATCH_AE_DIA_JAN_PAL_REFORGE_4_1 = "PATCH_AE_DIA_JAN_PAL_REFORGE_4_1_EN";
    PATCH_AE_DIA_JAN_PAL_REFORGE_3_01 = "PATCH_AE_DIA_JAN_PAL_REFORGE_3_01_EN";
    PATCH_AE_DIA_JAN_PAL_REFORGE_3_02 = "PATCH_AE_DIA_JAN_PAL_REFORGE_3_02_EN";
    PATCH_AE_DIA_JAN_PAL_REFORGE_3_03 = "PATCH_AE_DIA_JAN_PAL_REFORGE_3_03_EN";

    // ------
    // Lee
    // ------

    Patch_AE_DIA_LEE_SLD_SCOUTArmor_desc = "Is there any lighter armor for me?";
    // AI_Output(other, self, "PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_15_01_EN"); //Is there any lighter armor for me?
    // AI_Output(other, self, "PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_15_02_EN"); //I prefer to keep my distance.
    // AI_Output(self, other, "PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_13_03_EN"); //I don't have anything like that for you, but you're not the first one to ask for something like this.
    // AI_Output(self, other, "PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_13_04_EN"); //Go to Wolf. I think he should have something for you.

    Patch_AE_DIA_LEE_SLD_BOWArmor_desc = "Buy Mercenary Archer Armor. (Protection: Weapons 55, Arrows 55, Archery Bonus. price 1500 gold).";

    // Localized OU (do not change)
    PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_15_01 = "PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_15_01_EN";
    PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_15_02 = "PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_15_02_EN";
    PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_13_03 = "PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_13_03_EN";
    PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_13_04 = "PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_13_04_EN";

    // ------
    // Martin
    // ------

    Patch_AE_TOPIC_MARTIN_ARMOR = "Exceptional Paladin Armor";

    // AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_01_EN"); //I heard you became a paladin.
    // AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_02_EN"); //I might have something special for you
    // AI_Output(other, self, "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_03_EN"); //What are you talking about?
    // AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_04_EN"); //I have some exceptional paladin armor in stock here.
    // AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_05_EN"); //I hear this type of armor has high protection against magical attacks, while increasing the wearer's own magical abilites.
    // AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_06_EN"); //But it's been lying around for a while, and the coastal weather hasn't done it any good.
    // AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_07_EN"); //It's nothing that can't be repaired. You'll figure something out.
    // AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_08_EN"); //For 2000 gold, it's yours.
    PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_entry = "Martin offered an exceptional suit armor of paladin armor for 2000 gold. Sounds like an interesting offer.";

    Patch_AE_DIA_Martin_ARKPALA_BUY_desc = "Okay, I'll take the armor (Protection: Blade 80, Point 80. Cost: 2000 gold).";
    // AI_Output(other, self, "PATCH_AE_DIA_MARTIN_ARKPALA_BUY_4_1_EN"); //Okay, I'll take the armor.
    // AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARKPALA_BUY_4_2_EN"); //Allright, here you go.
    // AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARKPALA_BUY_4_3_EN"); //Come back when you have enough gold on you
    Patch_AE_DIA_Martin_ARKPALA_BUY_entry = "I bought the paladin armor from Martin. It's rusted but a skilled smith should be able to repair it, I just need to find someone willing to do it for me.";

    // Localized OU (do not change)
    PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_01 = "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_01_EN";
    PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_02 = "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_02_EN";
    PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_03 = "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_03_EN";
    PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_04 = "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_04_EN";
    PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_05 = "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_05_EN";
    PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_06 = "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_06_EN";
    PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_07 = "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_07_EN";
    PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_08 = "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_08_EN";
    PATCH_AE_DIA_MARTIN_ARKPALA_BUY_4_1 = "PATCH_AE_DIA_MARTIN_ARKPALA_BUY_4_1_EN";
    PATCH_AE_DIA_MARTIN_ARKPALA_BUY_4_2 = "PATCH_AE_DIA_MARTIN_ARKPALA_BUY_4_2_EN";
    PATCH_AE_DIA_MARTIN_ARKPALA_BUY_4_3 = "PATCH_AE_DIA_MARTIN_ARKPALA_BUY_4_3_EN";

    // ------
    // Matteo
    // ------

    Patch_AE_DIA_Matteo_GAMBESON_desc = "Buy Hunting Gambeson (Protection: Blade 20, Point 20. Cost: 350 gold).";
    // AI_Output(other, self, "PATCH_AE_DIA_MATTEO_GAMBESON_15_00_EN"); //Okay, give me the armor.
    // AI_Output(self, other, "PATCH_AE_DIA_MATTEO_GAMBESON_09_01_EN"); //You'll like it.
    // AI_Output(self, other, "PATCH_AE_DIA_MATTEO_GAMBESON_09_02_EN"); //The armor's worth its weight in gold, so come back when you have enough.

    // Localized OU (do not change)
    PATCH_AE_DIA_MATTEO_GAMBESON_15_00 = "PATCH_AE_DIA_MATTEO_GAMBESON_15_00_EN";
    PATCH_AE_DIA_MATTEO_GAMBESON_09_01 = "PATCH_AE_DIA_MATTEO_GAMBESON_09_01_EN";
    PATCH_AE_DIA_MATTEO_GAMBESON_09_02 = "PATCH_AE_DIA_MATTEO_GAMBESON_09_02_EN";

    // ------
    // Milten
    // ------

    Patch_AE_DIA_MILTEN_PALADINARMOR_desc = "I need your help.";
    // AI_Output(other, self, "PATCH_AE_DIA_MILTEN_PALADINARMOR_15_01_EN"); //I need your help.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_02_EN"); //What's going on?
    // AI_Output(other, self, "PATCH_AE_DIA_MILTEN_PALADINARMOR_04_EN"); //I need to restore the magical powers of this armor, could you do that for me?
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_05_EN"); //Let me see it.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_06_EN"); //Wow, I didn't see this coming.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_07_EN"); //This kind of armor is taken by the paladins from Myrtana to be blessed in the monastery in Nordmar.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_08_EN"); //I've heard a little about the blessing ritual, but I don't have enough knowledge to perform it yet.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_09_EN"); //If I'm not mistaken, there is a book in the monastery's library that describes the process.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_10_EN"); //I'll need some time to study the book. In the meantime, you should take care of the dragons in the valley of mines, you know how Garond's unit won't survive for long.
    // AI_Output(other, self, "PATCH_AE_DIA_MILTEN_PALADINARMOR_15_11_EN"); //Yeah, I'll see you later Milten.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_12_EN"); //Good luck!
    Patch_AE_DIA_MILTEN_PALADINARMOR_entry = "Milten agreed to help me restore the armor's magical power, but first he has to study the consecration process. It will take him some time, so he told me to take care of the dragons in the valley of mines in the meantime.";

    Patch_AE_DIA_MILTEN_PLATEARMOR_desc = "Have you made progress in your studies?";
    // AI_Output(other, self, "PATCH_AE_DIA_MILTEN_PLATEARMOR_15_01_EN"); //Have you made progress in your studies?
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_02_EN"); //Yes, I can say that I understand the ritual process.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_03_EN"); //But I'm going to need a few things.
    // AI_Output(other, self, "PATCH_AE_DIA_MILTEN_PLATEARMOR_15_04_EN"); //What are they?
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_05_EN"); //A scroll of destroy evil, fireball and two rock crystals.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_06_EN"); //This is the only way I'll be able to achieve results similar to that of a ritual in the Nordmar monastery.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_07_EN"); //Okay, I'll go get those things.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_08_EN"); //Good luck, I hope you succeed.
    Patch_AE_DIA_MILTEN_PLATEARMOR_entry = "Milten You will need a scroll of destroy evil, a scroll of fireball and 2 rock crystals for the ritual.";

    Patch_AE_DIA_MILTEN_RITUALARMOR_desc = "I have everything you need.";
    // AI_Output(other, self, "PATCH_AE_DIA_MILTEN_RITUALARMOR_15_01_EN"); //I have everything you need.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_RITUALARMOR_13_02_EN"); //Oh, great. I can start the ritual.
    Patch_AE_DIA_MILTEN_RITUALARMOR_entry = "I brought Milten everything he needed for the ritual.";

    Patch_AE_DIA_MILTEN_LORDRMOR_desc = "Great, and when will the ritual be complete?";
    // AI_Output(other, self, "PATCH_AE_DIA_MILTEN_LORDRMOR_15_00_EN"); //Great, and when will the ritual be complete?
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_LORDRMOR_08_01_EN"); //It's gonna take a while. Come back tomorrow.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_LORDRMOR_08_02_EN"); //I've already done it, it was a success.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_LORDRMOR_08_03_EN"); //Everything went surprisingly smoothly.
    // AI_Output(other, self, "PATCH_AE_DIA_MILTEN_LORDRMOR_15_04_EN"); //I'm glad. Thank you.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_LORDRMOR_08_05_EN"); //You're welcome. May the armor serve you well.
    // AI_Output(self, other, "PATCH_AE_DIA_WOLFEE_ARMORREADY_08_06_EN"); //NN
    Patch_AE_DIA_MILTEN_LORDRMOR_entry = "Milten managed to restore the armor to its magical powers.";

    // Localized OU (do not change)
    PATCH_AE_DIA_MILTEN_PALADINARMOR_15_01 = "PATCH_AE_DIA_MILTEN_PALADINARMOR_15_01_EN";
    PATCH_AE_DIA_MILTEN_PALADINARMOR_13_02 = "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_02_EN";
    PATCH_AE_DIA_MILTEN_PALADINARMOR_04 = "PATCH_AE_DIA_MILTEN_PALADINARMOR_04_EN";
    PATCH_AE_DIA_MILTEN_PALADINARMOR_13_05 = "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_05_EN";
    PATCH_AE_DIA_MILTEN_PALADINARMOR_13_06 = "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_06_EN";
    PATCH_AE_DIA_MILTEN_PALADINARMOR_13_07 = "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_07_EN";
    PATCH_AE_DIA_MILTEN_PALADINARMOR_13_08 = "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_08_EN";
    PATCH_AE_DIA_MILTEN_PALADINARMOR_13_09 = "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_09_EN";
    PATCH_AE_DIA_MILTEN_PALADINARMOR_13_10 = "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_10_EN";
    PATCH_AE_DIA_MILTEN_PALADINARMOR_15_11 = "PATCH_AE_DIA_MILTEN_PALADINARMOR_15_11_EN";
    PATCH_AE_DIA_MILTEN_PALADINARMOR_13_12 = "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_12_EN";
    PATCH_AE_DIA_MILTEN_PLATEARMOR_15_01 = "PATCH_AE_DIA_MILTEN_PLATEARMOR_15_01_EN";
    PATCH_AE_DIA_MILTEN_PLATEARMOR_13_02 = "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_02_EN";
    PATCH_AE_DIA_MILTEN_PLATEARMOR_13_03 = "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_03_EN";
    PATCH_AE_DIA_MILTEN_PLATEARMOR_15_04 = "PATCH_AE_DIA_MILTEN_PLATEARMOR_15_04_EN";
    PATCH_AE_DIA_MILTEN_PLATEARMOR_13_05 = "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_05_EN";
    PATCH_AE_DIA_MILTEN_PLATEARMOR_13_06 = "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_06_EN";
    PATCH_AE_DIA_MILTEN_PLATEARMOR_13_07 = "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_07_EN";
    PATCH_AE_DIA_MILTEN_PLATEARMOR_13_08 = "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_08_EN";
    PATCH_AE_DIA_MILTEN_RITUALARMOR_15_01 = "PATCH_AE_DIA_MILTEN_RITUALARMOR_15_01_EN";
    PATCH_AE_DIA_MILTEN_RITUALARMOR_13_02 = "PATCH_AE_DIA_MILTEN_RITUALARMOR_13_02_EN";
    PATCH_AE_DIA_MILTEN_LORDRMOR_15_00 = "PATCH_AE_DIA_MILTEN_LORDRMOR_15_00_EN";
    PATCH_AE_DIA_MILTEN_LORDRMOR_08_01 = "PATCH_AE_DIA_MILTEN_LORDRMOR_08_01_EN";
    PATCH_AE_DIA_MILTEN_LORDRMOR_08_02 = "PATCH_AE_DIA_MILTEN_LORDRMOR_08_02_EN";
    PATCH_AE_DIA_MILTEN_LORDRMOR_08_03 = "PATCH_AE_DIA_MILTEN_LORDRMOR_08_03_EN";
    PATCH_AE_DIA_MILTEN_LORDRMOR_15_04 = "PATCH_AE_DIA_MILTEN_LORDRMOR_15_04_EN";
    PATCH_AE_DIA_MILTEN_LORDRMOR_08_05 = "PATCH_AE_DIA_MILTEN_LORDRMOR_08_05_EN";
    PATCH_AE_DIA_WOLFEE_ARMORREADY_08_06 = "PATCH_AE_DIA_WOLFEE_ARMORREADY_08_06_EN";

    // ------
    // Mortis
    // ------

    Patch_AE_TOPIC_MORTIS_ARMOR = "Milita Armor improvement.";

    PATCH_AE_DIA_MORTIS_ARMORQUESTION_desc = "Don't you have any better armor for me?";
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_ARMORQUESTION_15_01_EN"); //Don't you have any better armor for me?
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_02_EN"); //Only Lord Andre can give you better armor.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_03_EN"); //But that doesn't mean I can't improve the one you already have. You wouldn't be the first person I've done ir for.
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_ARMORQUESTION_15_04_EN"); //What will it cost?
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_05_EN"); //You'll have to bring your own materials, I don't have any left to spare.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_06_EN"); //And some gold for my work.
    PATCH_AE_DIA_MORTIS_ARMORQUESTION_entry = "Mortis can improve my militia armor if I bring him materials and gold.";

    PATCH_AE_DIA_MORTIS_MIL_LTHINGS_desc = "I'd like to improve my light armor";
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_01_EN"); //I'd like to improve my light armor.
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_04_EN"); //What do you need for that?
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_06_EN"); //For light armor, one raw steel and boarskin will suffice.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_07_EN"); //And let's say 200 gold will be enough for me.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_08_EN"); //And of course, you'll have to bring me the armor.
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_09_EN"); //All right, I'll try to get it.
    PATCH_AE_DIA_MORTIS_MIL_LTHINGS_entry = "To improve my light armor Mortis will need one raw steel, a boar skin and 200 gold coins.";

    PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_desc = "I have all the materials I need to improve my light armor.";
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_15_01_EN"); //I have all the materials I need to improve my light armor.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_12_EN"); //All right, I'll get to work.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_13_EN"); //Done.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_14_EN"); //Here you go, I think I've done a pretty good job.
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_15_15_EN"); //Thank you.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_16_EN"); //Come back when you've got it all with you.
    PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_entry = "Mortis improved my light armor.";

    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_desc = "I'd like to improve my medium armor";
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_01_EN"); //I'd like to improve my medium armor.
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_03_EN"); //What do you need for that?
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_04_EN"); //You'll need to bring a little more than last time for the medium armor.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_05_EN"); //two raw steel billets and a Warg skin.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_06_EN"); //I'll charge you 600 gold for the job.
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_08_EN"); //All right, I'll try to get it.
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_entry = "To improve the medium armor Mortis will need two raw steel billets, a Warg skin and 600 gold.";

    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_desc = "I have all the materials I need to improve my medium armor.";
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_15_01_EN"); //I've got all the materials I need to improve my medium armor.
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_15_10_EN"); //Here you go.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_11_EN"); //Okay, I'll get to work.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_12_EN"); //Done.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_13_EN"); //Here you go, I think I've done a pretty good job.
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_15_14_EN"); //Thank you.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_16_EN"); //Come back when you've got it all with you.
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_entry = "Mortis improved my medium armor.";

    PATCH_AE_DIA_MORTIS_PAL_REFORGE_desc = "Could you fix this rusty paladin armor for me?";
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_PAL_REFORGE_4_1_EN"); //Could you fix this rusty paladin armor for me?
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_PAL_REFORGE_3_01_EN"); //No, I don't have the time or the skill.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_PAL_REFORGE_3_02_EN"); //You'll have to find another blacksmith.
    PATCH_AE_DIA_MORTIS_PAL_REFORGE_entry = "Mortis will not repair my armor.";

    // Localized OU (do not change)
    PATCH_AE_DIA_MORTIS_ARMORQUESTION_15_01 = "PATCH_AE_DIA_MORTIS_ARMORQUESTION_15_01_EN";
    PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_02 = "PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_02_EN";
    PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_03 = "PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_03_EN";
    PATCH_AE_DIA_MORTIS_ARMORQUESTION_15_04 = "PATCH_AE_DIA_MORTIS_ARMORQUESTION_15_04_EN";
    PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_05 = "PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_05_EN";
    PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_06 = "PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_06_EN";
    PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_01 = "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_01_EN";
    PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_04 = "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_04_EN";
    PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_06 = "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_06_EN";
    PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_07 = "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_07_EN";
    PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_08 = "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_08_EN";
    PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_09 = "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_09_EN";
    PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_15_01 = "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_15_01_EN";
    PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_12 = "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_12_EN";
    PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_13 = "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_13_EN";
    PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_14 = "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_14_EN";
    PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_15_15 = "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_15_15_EN";
    PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_16 = "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_16_EN";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_01 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_01_EN";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_03 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_03_EN";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_04 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_04_EN";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_05 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_05_EN";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_06 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_06_EN";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_08 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_08_EN";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_15_01 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_15_01_EN";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_15_10 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_15_10_EN";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_11 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_11_EN";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_12 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_12_EN";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_13 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_13_EN";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_15_14 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_15_14_EN";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_16 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_16_EN";
    PATCH_AE_DIA_MORTIS_PAL_REFORGE_4_1 = "PATCH_AE_DIA_MORTIS_PAL_REFORGE_4_1_EN";
    PATCH_AE_DIA_MORTIS_PAL_REFORGE_3_01 = "PATCH_AE_DIA_MORTIS_PAL_REFORGE_3_01_EN";
    PATCH_AE_DIA_MORTIS_PAL_REFORGE_3_02 = "PATCH_AE_DIA_MORTIS_PAL_REFORGE_3_02_EN";

    // ----
    // Hero
    // ----

    Patch_AE_PC_FORGE_ARMOR_desc = "Forge Weapon";
    Patch_AE_PC_ITAR_PAL_ST_desc = "Forge Stewark Plate Armor";
    Patch_AE_PC_ITAR_PAL_ANH_desc = "Remove Helm from Enriched Paladin Armor";
    Patch_AE_PC_ITAR_PAL_AFH_desc = "Lower the visor of the Enriched Paladin Armor";
    Patch_AE_PC_ITAR_PAL_AFH_NH_desc = "Lower the visor of the Enriched Paladin Armor";
    Patch_AE_PC_ITAR_PAL_ANH_FH_desc = "Remove the Helm of the Enriched Paladin Armor";
    Patch_AE_PC_ITAR_PAL_A_FH_desc = "Put up the visor of the Enriched Paladin Armor";
    Patch_AE_PC_ITAR_PAL_A_NH_desc = "Put up the visor of the Enriched Paladin Armor";
    Patch_AE_PC_ITAR_PAL_FNH_desc = "Remove Helm from repaired paladin armor";
    Patch_AE_PC_ITAR_PAL_FFH_desc = "Lower the visor of the repaired paladin armor";
    Patch_AE_PC_ITAR_PAL_FFH_NH_desc = "Lower the visor of the repaired paladin armor";
    Patch_AE_PC_ITAR_PAL_fNH_FH_desc = "Remove Helmet from repaired paladin armor";
    Patch_AE_PC_ITAR_PAL_F_FH_desc = "Put up the visor of the repaired paladin armor";
    Patch_AE_PC_ITAR_PAL_F_NH_desc = "Put up the visor of the Enriched Paladin Armor";
    Patch_AE_PC_ITAR_PAL_RNH_desc = "Remove Helm from Rusted Paladin Armor";
    Patch_AE_PC_ITAR_PAL_RFH_desc = "Lower the visor of the Rusted Paladin Armor";
    Patch_AE_PC_ITAR_PAL_RFH_NH_desc = "Lower the visor of the Rusted Paladin Armor";
    Patch_AE_PC_ITAR_PAL_RNH_FH_desc = "Remove the Helmet of the Rusty Paladin Armor";
    Patch_AE_PC_ITAR_PAL_R_FH_desc = "Put up the visor of the Rusty Paladin Armor";
    Patch_AE_PC_ITAR_PAL_R_NH_desc = "Put up the visor of the Rusty Paladin Armor";
    Patch_AE_PC_ITAR_CRUSADER_NH_desc = "Remove Helmet from Crusader Armor";
    Patch_AE_PC_ITAR_nh_crusader_desc = "Return Helmet to Crusader Armor";

    // ------
    // Ulthar
    // ------

    PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_desc = "I've cleaned out all the shrines.";
    // AI_Output(self, other, "PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_01_EN"); //Wait, we wanted to support you in your fight against evil with a new armor.
    // AI_Output(self, other, "PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_02_EN"); //Take this armor of the Crusader of Innos, I'm sure you'll find use for it.
    // AI_Output(other, self, "PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_03_EN"); //Thanks.

    // Localized OU (do not change)
    PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_01 = "PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_01_EN";
    PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_02 = "PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_02_EN";
    PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_03 = "PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_03_EN";

    // ----
    // Wolf
    // ----

    PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_desc = "I hear you make lighter armor for mercenaries (Replaces Light Mercenary Armor).";
    // AI_Output(other, self, "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_01_EN"); //I hear you make lighter armor for mercenaries.
    // AI_Output(other, self, "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_02_EN"); //I'd like to replace the one I have now.
    // AI_Output(self, other, "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_13_03_EN"); //Sure, I just finished one. You can have it for free, for old time's sake.
    // AI_Output(other, self, "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_06_EN"); //Thanks man.
    // AI_Output(self, other, "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_13_07_EN"); //You're welcome.

    // Localized OU (do not change)
    PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_01 = "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_01_EN";
    PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_02 = "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_02_EN";
    PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_13_03 = "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_13_03_EN";
    PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_06 = "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_06_EN";
    PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_13_07 = "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_13_07_EN";
};

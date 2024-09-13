func void Patch_AE_LocalizeEnglish() {
    // Blue print
    ItWr_BluePrint_StewarkArmor_ArmorExpansion__name = "Drawing for the production of Stewark plate armour";
    Patch_AE_Use_Plan_StewarkArmor__line1 = "    Drawing for the production of Stewark plate armour";
    Patch_AE_Use_Plan_StewarkArmor__line2 = "";
    Patch_AE_Use_Plan_StewarkArmor__line3 = "";
    Patch_AE_Use_Plan_StewarkArmor__line4 = "This is a blueprint for all skilled blacksmiths of Stewark,";
    Patch_AE_Use_Plan_StewarkArmor__line5 = "you are tasked with making new pieces of armour";
    Patch_AE_Use_Plan_StewarkArmor__line5 = "to equip the city guard.";
    Patch_AE_Use_Plan_StewarkArmor__line6 = "To make one piece of armor you will need these the raw materials:";
    Patch_AE_Use_Plan_StewarkArmor__line7 = "-6 pieces of pig iron";
    Patch_AE_Use_Plan_StewarkArmor__line8 = "-3 Warg skins";
    Patch_AE_Use_Plan_StewarkArmor__line9 = "Instructions for making it are on the other side of this blueprint.";
    Patch_AE_Use_Plan_StewarkArmor__line10 = "";
    Patch_AE_Use_Plan_StewarkArmor__line11 = "If you are caught selling the raw materials";
    Patch_AE_Use_Plan_StewarkArmor__line12 = "or the blueprint, you will be severely punished.";
    Patch_AE_Use_Plan_StewarkArmor__line13 = "";
    Patch_AE_Use_Plan_StewarkArmor__line14 = "";
    Patch_AE_Use_Plan_StewarkArmor__line15 = "";
    Patch_AE_Use_Plan_StewarkArmor__line16 = "";
    Patch_AE_Use_Plan_StewarkArmor__line17 = "The order was given by the commander of the Cenric City Guard";
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

    // ------
    // Andre
    // ------

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

    // ------
    // Bennet
    // ------

    Patch_AE_TOPIC_BENNET_ARMOR = "Mercenary Armor Upgrade.";

    Patch_AE_DIA_BENNET_SLDARMORASK_desc = "Can you sell me some better armor?";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLDARMORASK_15_01_EN"); //Can you sell me some better armor?
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLDARMORASK_13_02_EN"); //No, only Lee can give out armor.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLDARMORASK_13_03_EN"); //I can upgrade the one you already got, but I'll charge you something.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLDARMORASK_15_04_EN"); //What's that?
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLDARMORASK_13_05_EN"); //The materials to make it, you bring them yourself, I won't make it from my own supplies.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLDARMORASK_13_07_EN"); //And I don't work for free, so get some gold ready too.
    Patch_AE_DIA_BENNET_SLDARMORASK_entry = "Bennet can upgrade my mercenary armor if I bring him materials and gold.";

    Patch_AE_DIA_BENNET_SLD_LReforgedHUH_desc = "I want to have my light armor upgraded.";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_01_EN"); //I want to have my light armor upgraded.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_04_EN"); //What do you need for that?
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_13_06_EN"); //Two steel bars and two wolf skins will do for light armor.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_13_07_EN"); //I'll charge 200 gold pieces for making it.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_09_EN"); //All right.
    Patch_AE_DIA_BENNET_SLD_LReforgedHUH_entry = "To upgrade the light armor, Bennet will need two steel rods, two wolf skins and 200 gold.";

    Patch_AE_DIA_BENNET_SLD_LReforgedArmor_desc = "I have all the materials I need to upgrade the light armor.";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_01_EN"); //I have all the materials needed to upgrade my light armor.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_11_EN"); //Here you go.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_12_EN"); //Okay, let's take a look.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_13_EN"); //It's done.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_14_EN"); //There she is, I'm pretty good.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_15_EN"); //Thank you.
    Patch_AE_DIA_BENNET_SLD_LReforgedArmor_entry = "Bennet upgraded my light armor.";
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_16_EN"); //Come back when you've got it all.

    Patch_AE_DIA_BENNET_MERC_MReforgedHUH_desc = "I want to get my medium armor upgraded.";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_01_EN"); //I want to get my medium armor upgraded.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_03_EN"); //What do you need for that?
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_04_EN"); //You'll need more than that for medium armor.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_05_EN"); //Three steel bars, and one Wargo skin.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_06_EN"); //I'll want, say, 650 gold to make it.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_08_EN"); //All right.
    Patch_AE_DIA_BENNET_MERC_MReforgedHUH_entry = "To upgrade his medium armor, Bennet will need three steel bars, one orc dog skin, two troll skins and 650 gold.";

    Patch_AE_DIA_BENNET_MERC_MReforgedArmor_desc = "I have all the materials I need to upgrade my medium armor.";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_01_EN"); //I have all the materials needed to upgrade my medium armor.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_10_EN"); //Here you go.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_11_EN"); //Okay, let's take a look.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_12_EN"); //It's done.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_13_EN"); //There she is, I'm pretty good.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_14_EN"); //Thank you.
    Patch_AE_DIA_BENNET_MERC_MReforgedArmor_entry = "Bennet upgraded my middle armor.";
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_16_EN"); //Come back when you have it all with you.

    Patch_AE_DIA_BENNET_PAL_REFORGE_desc = "Could you fix this rusty paladin armor for me?";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_PAL_REFORGE_4_1_EN"); //Could you fix this rusty paladin armor for me?
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_01_EN"); //I'm sorry, but I can't.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_03_EN"); //I have nothing against you, you got me out of prison.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_04_EN"); //But what would the others on the farm think if I started repairing paladin armor here?
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_05_EN"); //You'll have to find another blacksmith.
    Patch_AE_DIA_BENNET_PAL_REFORGE_entry = "Bennet's not gonna fix my armor.";

    Patch_AE_DIA_Bennet_CROSSBOW_desc = "Is there any lighter armor for me? (Replace the Dragonslayer's armor)";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_CROSSBOW_15_01_EN"); //Is there any lighter armor for me?
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_CROSSBOW_15_02_EN"); //Don't get me wrong, I'm grateful for it, but I prefer it lighter.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_CROSSBOW_13_03_EN"); //Actually, yes, I've made one of those, if you want I can swap them for you.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_CROSSBOW_15_04_EN"); //Thanks, I'll take it.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_CROSSBOW_15_9_EN"); //Here it is, may it serve you well.

    Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CM_desc = "Dragon Hunter's Medium Armour: Protection: Severe 110, Stabbing 110. (12000 Gold)";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_15_00_EN"); //I'll buy the armor.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_01_EN"); //Oh, great. You'll like it.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_15_02_EN"); //At this price, I hope so.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_03_EN"); //You'll see it was worth the price.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_04_EN"); //You don't have enough gold.

    Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CH_desc = "Heavy Armour of the Dragon Hunter: Defence: Cutting 140, Stabbing 140 (20000 gold)";
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

};

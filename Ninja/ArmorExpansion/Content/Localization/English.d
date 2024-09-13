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

    // ------
    // Brian
    // ------

    Patch_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_desc = "I need more raw steel.";
    // AI_Output(other, self, "PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_15_01_EN"); //I need more raw steel.
    // AI_Output(self, other, "PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_02_EN"); //I can sell you some of my personal stock, but it'll cost you dearly.
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

    Patch_AE_DIA_Engor_ARCHER_KAUFEN_desc = "Buy Kushishnik's Home Guard Armour (65/65, distance bonus, Price: 2300 gold)";
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
    // AI_Output(self, other, "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_06_EN"); //Here, this should help you in your quest. Now go, there's not much time to waste.
    // AI_Output(other, self, "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_15_01_EN"); //Thank you.

    // Localized OU (do not change)
    const string PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_03 = "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_03_EN";
    const string PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_04 = "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_04_EN";
    const string PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_05 = "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_05_EN";
    const string PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_06 = "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_06_EN";
    const string PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_15_01 = "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_15_01_EN";

    // ------
    // Greg
    // ------

    const string Patch_AE_DIA_Addon_Greg_RavenDead_ARMOREXPANSION_desc = "Co takhle nějáká lepší zbroj?";
    // AI_Output(other, self, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_15_00_EN"); //How about some better armor?
    // AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_01_EN"); //What the hell do you think?
    // AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_02_EN"); //You knock off Raven and suddenly you're the new captain?
    // AI_Output(other, self, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_15_03_EN"); //That's not what I meant. You're still the captain. I'm just worried about the armor.
    // AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_04_EN"); //All right, I can sell you one of my personal pieces.
    // AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_05_EN"); //But it'll cost you a lot. I want 2700 gold for it.
    const string Patch_AE_DIA_Addon_Greg_RavenDead_ARMOREXPANSION_entry = "I can buy a captain's armor from Greg for 2700 gold";

    const string Patch_AE_DIA_Addon_Greg_BUY_ARMOREXPANSION_desc = "Buy Captain's Cloak (75/75/75/25/15, +5% one-handed talent, +10 Dexterity, Price 2700)";
    // AI_Output(other, self, "PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_1_EN"); //Sell me the captain's armor.
    // AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_2_EN"); //Here you go, but remember, I'm still the captain.
    // AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_3_EN"); //Come back when you have enough gold.

    // Localized OU (do not change)
    const string PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_15_00 = "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_15_00_EN";
    const string PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_01 = "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_01_EN";
    const string PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_02 = "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_02_EN";
    const string PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_15_03 = "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_15_03_EN";
    const string PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_04 = "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_04_EN";
    const string PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_05 = "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_05_EN";
    const string PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_1 = "PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_1_EN";
    const string PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_2 = "PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_2_EN";
    const string PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_3 = "PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_3_EN";

    // ------
    // Hagen
    // ------

    const string Patch_AE_DIA_Lord_Hagen_CROSSBOW_desc = "Is there any lighter armor for me? (Replace current armor)";
    // AI_Output(other, self, "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_01_EN"); //Is there any lighter armor for me?
    // AI_Output(other, self, "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_02_EN"); //I prefer to use ranged weapons.
    // AI_Output(self, other, "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_13_03_EN"); //I can trade you your knight's armor for a lighter version designed for crossbowmen.
    // AI_Output(other, self, "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_04_EN"); //I'll take it.
    // AI_Output(self, other, "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_9_EN"); //Wear it with honor, knight.

    // Localized OU (do not change)
    const string PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_01 = "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_01_EN";
    const string PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_02 = "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_02_EN";
    const string PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_13_03 = "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_13_03_EN";
    const string PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_04 = "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_04_EN";
    const string PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_9 = "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_9_EN";

    // ------
    // Harad
    // ------

    const string Patch_AE_DIA_HARAD_PAL_SHOW_desc = "Could you fix this rusty paladin armor for me?";
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_PAL_SHOW_4_1_EN"); //Could you fix this rusty paladin armor for me?
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_01_EN"); //Let me see it.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_02_EN"); //It's been a long time since I've seen armor like this.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_03_EN"); //They are forged from a different alloy of metal and magical ore than the others, and then blessed by the mages of the Nordmar Monastery.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_04_EN"); //The rust hasn't penetrated very deeply, it won't be too hard to repair.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_05_EN"); //If I have the materials, of course.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_06_EN"); //Where did you get it?
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_07_EN"); //Martin sold it to me, it was lying around amongst the paladin equipment so I wanted to use it.
    const string Patch_AE_DIA_HARAD_PAL_SHOW_entry = "Harad agreed to repair my armor.";

    const string Patch_AE_DIA_HARAD_PALADIN_REFORGE_desc = "So, what are you gonna need to repair your armor?";
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_01_EN"); //So, what are you gonna need to repair your armor?
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_02_EN"); //Hmm, let me think.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_04_EN"); //A few steel rods, six should do it.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_05_EN"); //3 lumps of magical steel.
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_06_EN"); //What do you want for your work?
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_07_EN"); //Nothing. It would be a pleasure to work on a piece like this.
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_08_EN"); //All right, I'll try to get it all.
    const string Patch_AE_DIA_HARAD_PALADIN_REFORGE_entry1 = "Harad will need 6 steel bars and three lumps of ore to repair the armour.";
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_9_EN");//Here's the armor.
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_10_EN"); //And here are the materials.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_11_EN"); //All right, I'll get to work.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_12_EN"); //I'm done.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_13_EN"); //Here it is, I managed to fix it.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_14_EN"); //But I couldn't restore its magical powers.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_15_EN"); //For that, you'll need an experienced fire mage willing to consecrate the armor for you.
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_14_EN"); //Thank you, sir.
    const string Patch_AE_DIA_HARAD_PALADIN_REFORGE_entry2 = "Harad repaired my paladin armor, but failed to restore its magical powers. I'll have to find a willing fire mage for that, I can think of one.";
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_16_EN"); //Come back when you've got it all.

    const string Patch_AE_DIA_HARAD_END_MAKE_desc = "Could you reforge my paladin armor for me?";
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_END_MAKE_1_EN"); //Could you reforge my paladin armor for me?
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_END_MAKE_2_EN"); //Sure, but I don't know what you wouldn't like about it.
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_END_MAKE_3_EN"); //I use ranged weapons, so I'd like to lighten it up.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_END_MAKE_4_EN"); //It shouldn't be too hard. I'm sure I could do it.
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_END_MAKE_5_EN"); //What do you want for it?
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_END_MAKE_6_EN"); //Nothing. I'll do the paladin's service for free.
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_END_MAKE_7_EN"); //Here you go, in that case.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_END_MAKE_8_EN"); //Done. It wasn't hard. Here you go.
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_END_MAKE_9_EN"); //Thank you.

    // Localized OU (do not change)
    const string PATCH_AE_DIA_HARAD_PAL_SHOW_4_1 = "PATCH_AE_DIA_HARAD_PAL_SHOW_4_1_EN";
    const string PATCH_AE_DIA_HARAD_PAL_SHOW_3_01 = "PATCH_AE_DIA_HARAD_PAL_SHOW_3_01_EN";
    const string PATCH_AE_DIA_HARAD_PAL_SHOW_3_02 = "PATCH_AE_DIA_HARAD_PAL_SHOW_3_02_EN";
    const string PATCH_AE_DIA_HARAD_PAL_SHOW_3_03 = "PATCH_AE_DIA_HARAD_PAL_SHOW_3_03_EN";
    const string PATCH_AE_DIA_HARAD_PAL_SHOW_3_04 = "PATCH_AE_DIA_HARAD_PAL_SHOW_3_04_EN";
    const string PATCH_AE_DIA_HARAD_PAL_SHOW_3_05 = "PATCH_AE_DIA_HARAD_PAL_SHOW_3_05_EN";
    const string PATCH_AE_DIA_HARAD_PAL_SHOW_3_06 = "PATCH_AE_DIA_HARAD_PAL_SHOW_3_06_EN";
    const string PATCH_AE_DIA_HARAD_PAL_SHOW_3_07 = "PATCH_AE_DIA_HARAD_PAL_SHOW_3_07_EN";
    const string PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_01 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_01_EN";
    const string PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_02 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_02_EN";
    const string PATCH_AE_DIA_HARAD_PALADIN_REFORGE_04 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_04_EN";
    const string PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_05 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_05_EN";
    const string PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_06 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_06_EN";
    const string PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_07 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_07_EN";
    const string PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_08 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_08_EN";
    const string PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_9 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_9_EN";
    const string PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_10 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_10_EN";
    const string PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_11 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_11_EN";
    const string PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_12 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_12_EN";
    const string PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_13 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_13_EN";
    const string PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_14 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_14_EN";
    const string PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_15 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_15_EN";
    const string PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_14 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_14_EN";
    const string PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_16 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_16_EN";
    const string PATCH_AE_DIA_HARAD_END_MAKE_1 = "PATCH_AE_DIA_HARAD_END_MAKE_1_EN";
    const string PATCH_AE_DIA_HARAD_END_MAKE_2 = "PATCH_AE_DIA_HARAD_END_MAKE_2_EN";
    const string PATCH_AE_DIA_HARAD_END_MAKE_3 = "PATCH_AE_DIA_HARAD_END_MAKE_3_EN";
    const string PATCH_AE_DIA_HARAD_END_MAKE_4 = "PATCH_AE_DIA_HARAD_END_MAKE_4_EN";
    const string PATCH_AE_DIA_HARAD_END_MAKE_5 = "PATCH_AE_DIA_HARAD_END_MAKE_5_EN";
    const string PATCH_AE_DIA_HARAD_END_MAKE_6 = "PATCH_AE_DIA_HARAD_END_MAKE_6_EN";
    const string PATCH_AE_DIA_HARAD_END_MAKE_7 = "PATCH_AE_DIA_HARAD_END_MAKE_7_EN";
    const string PATCH_AE_DIA_HARAD_END_MAKE_8 = "PATCH_AE_DIA_HARAD_END_MAKE_8_EN";
    const string PATCH_AE_DIA_HARAD_END_MAKE_9 = "PATCH_AE_DIA_HARAD_END_MAKE_9_EN";

};

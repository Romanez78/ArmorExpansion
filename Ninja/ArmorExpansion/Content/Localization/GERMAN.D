//German Translation for version 1.2 done by iyumichan on Nexusmods.com

func void Patch_AE_LocalizeGerman() {
    // NPC
    Patch_AE_DeadTreasureHunter__name = "Toter Schatzjäger";

    // Blue print
    ItWr_BluePrint_StewarkArmor_ArmorExpansion__name = "Stewark Plattenrüstung-Schmiedeplan";
    Patch_AE_Use_Plan_StewarkArmor__line1 = "Stewark Plattenrüstung-Schmiedeplan";
    Patch_AE_Use_Plan_StewarkArmor__line2 = "Dies ist ein Schmiedeplan für alle begabten Schmiede aus Stewark. Hiermit sind sie verplichtet die Stadtwache mit neuen Rüstungen ausrüsten.";
    Patch_AE_Use_Plan_StewarkArmor__line3 = "Um eine Rüstung herzustellen brauchst du diese Materialien:";
    Patch_AE_Use_Plan_StewarkArmor__line4 = "-6 Rohstahl";
    Patch_AE_Use_Plan_StewarkArmor__line5 = "-3 Wargfelle";
    Patch_AE_Use_Plan_StewarkArmor__line6 = "Eine Anleitung zur Herstellung der Rüstung befindet sich auf der Rückseite.";
    Patch_AE_Use_Plan_StewarkArmor__line7 = "Das Verkaufen der Materialien oder des Schmiedeplans ist eine strafbare Handlung.";
    Patch_AE_Use_Plan_StewarkArmor__line8 = "Dies ist ein Befehl des Commandanten Cenrin der Stadtwache.";

    // Armor names
    ITAR_MIL_H_ArmorExpansion__name = "Schwere Milizrüstung";
    ITAR_MILP_H_ArmorExpansion__name = "Schwere Armbrustschützen Milizrüstung";   
    ITAR_GAMBESON_ArmorExpansion__name = "Jäger Stoffrüstung";
    ITAR_PAL_A_ArmorExpansion__name = "Angereicherte Paladinrüstung";
    ITAR_PAL_R_ArmorExpansion__name = "Rostige Paladinrüstung";
    ITAR_PAL_F_ArmorExpansion__name = "Reparierte Paladinrüstung";
    ITAR_PAL_C_ArmorExpansion__name = "Armbrustschützen Ritterrüstung";
    ITAR_PAL_CM_ArmorExpansion__name = "Schwere Armbrustschützen Ritterrüstung";    
    ITAR_MIL_Med2_ArmorExpansion__name = "Verbesserte Mittlere Milizrüstung";
    ITAR_MIL_P_ArmorExpansion__name = "Armbrustschützen Milizrüstung";
    ITAR_MIL_M__name = "Mittlere Milizrüstung";
    ITAR_DJG_CL_ArmorExpansion__name = "Leichte Drachenjägerrüstung";
    ITAR_SLD_BOW_ArmorExpansion__name = "Schwere Söldner-Jagdrüstung";
    ITAR_MIL_R_ArmorExpansion__name = "Verbesserte Leichte Milizrüstung";
    ITAR_CRUSADER_ArmorExpansion__name = "Kreuzritterrüstung";
    ITAR_SLD_SCOUT_ArmorExpansion__name = "Leichte Söldner-Jagdrüstung";
    ITAR_SLD_MP_ArmorExpansion__name = "Mittlere Söldner-Jagdrüstung";
    ITAR_MIL_SCOUT_ArmorExpansion__name = "Rüstung eines Armbrustschützen-Rekruten der Miliz";
    ITAR_SLD_R_ArmorExpansion__name = "Verbesserte Mittlere Söldnerrüstung";
    ITAR_SLD_LR_ArmorExpansion__name = "Verbesserte Leichte Söldnerrüstung";
    ITAR_PAL_CH_ArmorExpansion__name = "Armbrustschützen Paladinrüstung";
    ITAR_DJG_CH_ArmorExpansion__name = "Schwere Drachenjägerrüstung";
    ITAR_DJG_CM_ArmorExpansion__name = "Mittlere Drachenjägerrüstung";
    ITAR_PAL_ST_ArmorExpansion__name = "Stewark Plattenrüstung";
    ITAR_PAL_MH_ArmorExpansion__name = "Schwere Ritterrüstung";
    ITAR_PIR_H_ArmorExpansion__name = "Kapitäns Mantel";
    ITAR_PAL_ANH_ArmorExpansion__name = "Angereicherte Paladinrüstung";
    ITAR_PAL_RNH_ArmorExpansion__name = "Rostige Paladinrüstung";
    ITAR_PAL_FNH_ArmorExpansion__name = "Reparierte Paladinrüstung";
    ITAR_PAL_AFH_ArmorExpansion__name = "Angereicherte Paladinrüstung";
    ITAR_PAL_RFH_ArmorExpansion__name = "Rostige Paladinrüstung";
    ITAR_PAL_FFH_ArmorExpansion__name = "Reparierte Paladinrüstung";
    ITAR_NH_CRUSADER_ArmorExpansion_name = "Kreuzritterrüstung";
    ITAR_ARX_HUNTERM_ArmorExpansion__name = "Jagdjacke";
    ITAR_ARX_HUNTERH_ArmorExpansion__name = "Verstärkte Jagdjacke";
    ITAR_KDF_M_ArmorExpansion__name = "Mittlere Feuerrobe";
    
    // Armor bonus
    Patch_AE_TEXT_MaxManaBonus20 = "+20 Maximaler Mana Bonus";
    Patch_AE_TEXT_MaxManaBonus40 = "+40 Maximaler Mana Bonus";
    Patch_AE_TEXT_OldArmor = "Diese Rüstung hat seine besten Tage schon hinter sich.";
    Patch_AE_TEXT_ArcheryBonus3 = "+3% Bogen Bonus";
    Patch_AE_TEXT_ArcheryBonus5 = "+5% Bogen Bonus";
    Patch_AE_TEXT_ArcheryBonus6 = "+6% Bogen Bonus";    
    Patch_AE_TEXT_TwoHandedBonus5 = "+5% Zweihand Bonus";
    Patch_AE_TEXT_DexBonus10_OneHandedBonus10 = "+10 Geschicklichkeit Bonus, +10% Einhand Bonus";

    // Alerts: The constants used to create an alert (print on a screen) about missing ingredient(s) or an forged armor.
    Patch_AE_PRINT_ProdItemsMissing__SUBSTR_1 = "Fehlende Materialen: ";
    Patch_AE_PRINT_ProdItemsMissing__SUBSTR_2 = " x";
    Patch_AE_PRINT_ForgeSuccess = " geschmiedet!";

    // ==============
    //    DIALOGS
    // ==============

    // ------
    // Andre
    // ------
    
    Patch_AE_DIA_ANDRE_MILITIA_ARMORREWARD_MELEE = "(Wählen Sie Mittlere Milizrüstung)";
    Patch_AE_DIA_ANDRE_MILITIA_ARMORREWARD_RANGED = "(Wählen Sie eine mittlere Miliz-Armbrustschützenrüstung)";
    Patch_AE_DIA_ANDRE_MIL_SCOUTArmor_desc = "Hast du keine leichtere Rüstung für mich? (Leichte Milizrüstung ersetzen)";
    // AI_Output(other, self, "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_01_DE"); //Couldn't you find lighter armor for me?
    // AI_Output(other, self, "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_02_DE"); //I prefer to keep my distance.
    // AI_Output(self, other, "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_13_03_DE"); //I can trade you your armor for the armor of a scout. It's lighter than standard equipment, so you'll be more agile, but also more vulnerable.
    // AI_Output(other, self, "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_04_DE"); //I'll take it.
    // AI_Output(other, self, "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_9_DE"); //Here, let it serve you well.

    // AI_Output(self, other, "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_03_DE"); //You completed all of my assignments.
    // AI_Output(self, other, "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_04_DE"); //You proved to me that you deserve a promotion.
    // AI_Output(self, other, "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_05_DE"); //Here you go, medium militia armor.
    // AI_Output(self, other, "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_06_DE"); //I hope it will serve you well soldier.
    // AI_Output(other, self, "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_15_01_DE"); //Thanks.

    // Localized OU (do not change)
    PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_01 = "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_01_DE";
    PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_02 = "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_02_DE";
    PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_13_03 = "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_13_03_DE";
    PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_04 = "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_04_DE";
    PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_9 = "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_9_DE";
    PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_03 = "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_03_DE";
    PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_04 = "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_04_DE";
    PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_05 = "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_05_DE";
    PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_06 = "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_06_DE";
    PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_15_01 = "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_15_01_DE";

    // ------
    // Bennet
    // ------

    Patch_AE_TOPIC_BENNET_ARMOR = "Söldnerrüstung-Verbesserungen.";

    Patch_AE_DIA_BENNET_SLDARMORASK_desc = "Hast du keine bessere Rüstung für mich?";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLDARMORASK_15_01_DE"); //Can you sell me some better armor?
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLDARMORASK_13_02_DE"); //No, only Lee can give out armor.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLDARMORASK_13_03_DE"); //But I can improve the one you already got, it'll cost you though.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLDARMORASK_15_04_DE"); //What do you need for it?
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLDARMORASK_13_05_DE"); //The materials to make it, you bring them yourself, I won't make it from my own supplies.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLDARMORASK_13_07_DE"); //And I don't work for free, so get some gold ready too.
    Patch_AE_DIA_BENNET_SLDARMORASK_entry = "Bennet kann meine Söldnerrüstungen verbesseren, wenn ich ihm Gold und Materialien bringe.";

    Patch_AE_DIA_BENNET_SLD_LReforgedHUH_desc = "Ich will meine leichte Rüstung verbessern.";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_01_DE"); //I want to have my light armor improved.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_04_DE"); //What do you need for that?
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_13_06_DE"); //Two raw steel billets and two wolf skins will do for light armor.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_13_07_DE"); //I'll charge you 200 gold pieces for it.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_09_DE"); //All right.
    Patch_AE_DIA_BENNET_SLD_LReforgedHUH_entry = "Um meine leichte Rüstung zu verbessern braucht Bennet zwei Stück Rohstahl, zwei Wolfsfelle und 200 Gold.";

    Patch_AE_DIA_BENNET_SLD_LReforgedArmor_desc = "Ich habe alle Materialien um meine leichte Rüstung zu verbessern.";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_01_DE"); //I have all the materials needed to improve my light armor.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_11_DE"); //Here you go.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_12_DE"); //Okay, let's take a look at it then.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_13_DE"); //Done.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_14_DE"); //Here it is, I think i did a good job.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_15_DE"); //Thank you.
    Patch_AE_DIA_BENNET_SLD_LReforgedArmor_entry = "Bennet hat meine leichte Rüstung verbessert.";
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_16_DE"); //Come back when you've got it all with you.

    Patch_AE_DIA_BENNET_MERC_MReforgedHUH_desc = "Ich will meine mittlere Rüstung verbessern.";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_01_DE"); //I want to get my medium armor improved.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_03_DE"); //What do you need for that?
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_04_DE"); //You'll need more than last time for the medium armor.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_05_DE"); //Three raw steel billets, and one Warg skin.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_06_DE"); //I'll want, say, 650 gold to make it.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_08_DE"); //All right.
    Patch_AE_DIA_BENNET_MERC_MReforgedHUH_entry = "Um meine mittlere Rüstung zu verbessern braucht Bennet drei Stück Rohstahl, ein Wargfell und 650 Gold.";

    Patch_AE_DIA_BENNET_MERC_MReforgedArmor_desc = "Ich habe alle Materialien um meine mittlere Rüstung zu verbessern.";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_01_DE"); //I have all the materials needed to improve my medium armor.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_10_DE"); //Here you go.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_11_DE"); //Okay, let's take a look at it then.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_12_DE"); //Done.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_13_DE"); //Here it is, I think i did a good job.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_14_DE"); //Thank you.
    Patch_AE_DIA_BENNET_MERC_MReforgedArmor_entry = "Bennet hat meine mittlere Rüstung verbessert.";
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_16_DE"); //Come back when you've got it all with you.

    Patch_AE_DIA_BENNET_PAL_REFORGE_desc = "Kannst du diese rostige Paladinrüstung für mich reparieren?";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_PAL_REFORGE_4_1_DE"); //Could you fix this rusty paladin armor for me?
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_01_DE"); //I'm sorry, but I can't.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_03_DE"); //I have nothing against you, you got me out of jail after all.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_04_DE"); //But what would the others on the farm think if I started repairing paladin armor here?
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_05_DE"); //You'll have to find another blacksmith.
    Patch_AE_DIA_BENNET_PAL_REFORGE_entry = "Bennet wird meine Rüstung nicht reparieren.";

    Patch_AE_DIA_Bennet_CROSSBOW_desc = "Hast du keine leichtere Rüstung für mich? (Leichte Drachenjägerrüstung ersetzen)";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_CROSSBOW_15_01_DE"); //Do you have there any lighter armor for me?
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_CROSSBOW_15_02_DE"); //Don't get me wrong, I'm grateful for it, but I would prefer something less heavy.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_CROSSBOW_13_03_DE"); //Actually, yes, I've made one of those, if you want I can swap it for you.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_CROSSBOW_15_04_DE"); //Thanks, I'll take it.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_CROSSBOW_15_9_DE"); //Here it is, may it serve you well.

    Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CM_desc = "Mittlere Drachenjägerrüstung (12000 Gold)";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_15_00_DE"); //I'll buy the armor.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_01_DE"); //Oh, great. You'll like it.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_15_02_DE"); //At this price, I hope so.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_03_DE"); //You'll see it was worth the price.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_04_DE"); //You don't have enough gold.

    Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CH_desc = "Schwere Drachenjägerrüstung (20000 Gold)";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_15_00_DE"); //Give me the armor.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_06_01_DE"); //This is the best armor I've ever made.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_06_02_DE"); //It's a true masterpiece.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_06_03_DE"); //You don't have enough gold.

    // Localized OU (do not change)
    PATCH_AE_DIA_BENNET_SLDARMORASK_15_01 = "PATCH_AE_DIA_BENNET_SLDARMORASK_15_01_DE";
    PATCH_AE_DIA_BENNET_SLDARMORASK_13_02 = "PATCH_AE_DIA_BENNET_SLDARMORASK_13_02_DE";
    PATCH_AE_DIA_BENNET_SLDARMORASK_13_03 = "PATCH_AE_DIA_BENNET_SLDARMORASK_13_03_DE";
    PATCH_AE_DIA_BENNET_SLDARMORASK_15_04 = "PATCH_AE_DIA_BENNET_SLDARMORASK_15_04_DE";
    PATCH_AE_DIA_BENNET_SLDARMORASK_13_05 = "PATCH_AE_DIA_BENNET_SLDARMORASK_13_05_DE";
    PATCH_AE_DIA_BENNET_SLDARMORASK_13_07 = "PATCH_AE_DIA_BENNET_SLDARMORASK_13_07_DE";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_01 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_01_DE";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_04 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_04_DE";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_13_06 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_13_06_DE";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_13_07 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_13_07_DE";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_09 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_09_DE";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_01 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_01_DE";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_11 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_11_DE";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_12 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_12_DE";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_13 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_13_DE";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_14 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_14_DE";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_15 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_15_DE";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_16 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_16_DE";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_01 ="PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_01_DE";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_03 ="PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_03_DE";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_04 ="PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_04_DE";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_05 ="PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_05_DE";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_06 ="PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_06_DE";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_08 ="PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_08_DE";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_01 = "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_01_DE";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_10 = "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_10_DE";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_11 = "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_11_DE";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_12 = "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_12_DE";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_13 = "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_13_DE";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_14 = "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_14_DE";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_16 = "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_16_DE";
    PATCH_AE_DIA_BENNET_PAL_REFORGE_4_1 = "PATCH_AE_DIA_BENNET_PAL_REFORGE_4_1_DE";
    PATCH_AE_DIA_BENNET_PAL_REFORGE_3_01 = "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_01_DE";
    PATCH_AE_DIA_BENNET_PAL_REFORGE_3_03 = "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_03_DE";
    PATCH_AE_DIA_BENNET_PAL_REFORGE_3_04 = "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_04_DE";
    PATCH_AE_DIA_BENNET_PAL_REFORGE_3_05 = "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_05_DE";
    PATCH_AE_DIA_BENNET_CROSSBOW_15_01 = "PATCH_AE_DIA_BENNET_CROSSBOW_15_01_DE";
    PATCH_AE_DIA_BENNET_CROSSBOW_15_02 = "PATCH_AE_DIA_BENNET_CROSSBOW_15_02_DE";
    PATCH_AE_DIA_BENNET_CROSSBOW_13_03 = "PATCH_AE_DIA_BENNET_CROSSBOW_13_03_DE";
    PATCH_AE_DIA_BENNET_CROSSBOW_15_04 = "PATCH_AE_DIA_BENNET_CROSSBOW_15_04_DE";
    PATCH_AE_DIA_BENNET_CROSSBOW_15_9 = "PATCH_AE_DIA_BENNET_CROSSBOW_15_9_DE";
    PATCH_AE_DIA_BENNET_DJG_ARMOR_M_15_00 = "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_15_00_DE";
    PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_01 = "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_01_DE";
    PATCH_AE_DIA_BENNET_DJG_ARMOR_M_15_02 = "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_15_02_DE";
    PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_03 = "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_03_DE";
    PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_04 = "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_04_DE";
    PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_15_00 = "PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_15_00_DE";
    PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_06_01 = "PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_06_01_DE";
    PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_06_02 = "PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_06_02_DE";
    PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_06_03 = "PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_06_03_DE";

    // ------
    // Brian
    // ------

    Patch_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_desc = "Ich brauche mehr Rohstahl.";
    // AI_Output(other, self, "PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_15_01_DE"); //I need more raw steel.
    // AI_Output(self, other, "PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_02_DE"); //I can sell you some of my personal stock, but it'll cost you a lot.
    // AI_Output(self, other, "PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_03_DE"); //200 gold a piece.

    Patch_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_desc = "Verkauf mir ein Stück Rohstahl. (200 Gold).";
    // AI_Output(other, self, "PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_1_DE"); //Sell me one piece of raw steel.
    // AI_Output(self, other, "PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_2_DE"); //Here it is.
    // AI_Output(self, other, "PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_3_DE"); //Come back when you have enough gold on you.

    // Localized OU (do not change)
    PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_15_01 = "PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_15_01_DE";
    PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_02 = "PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_02_DE";
    PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_03 = "PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_03_DE";
    PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_1 = "PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_1_DE";
    PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_2 = "PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_2_DE";
    PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_3 = "PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_3_DE";

    // ------
    // Carl
    // ------

    Patch_AE_DIA_CARL_PAL_REFORGE_desc = "Kannst du diese rostige Paladinrüstung für mich reparieren?";
    // AI_Output(other, self, "PATCH_AE_DIA_CARL_PAL_REFORGE_4_1_DE"); //Kannst du diese rostige Paladinrüstung für mich reparieren?
    // AI_Output(self, other, "PATCH_AE_DIA_CARL_PAL_REFORGE_3_01_DE"); //Paladin armor?
    // AI_Output(self, other, "PATCH_AE_DIA_CARL_PAL_REFORGE_3_02_DE"); //I'm sorry, boy, but that's beyond me.
    // AI_Output(self, other, "PATCH_AE_DIA_CARL_PAL_REFORGE_3_03_DE"); //You'll have to find another blacksmith.
    Patch_AE_DIA_CARL_PAL_REFORGE_entry = "Carl wird meine Rüstung nicht reparieren.";

    // Localized OU (do not change)
    PATCH_AE_DIA_CARL_PAL_REFORGE_4_1 = "PATCH_AE_DIA_CARL_PAL_REFORGE_4_1_DE";
    PATCH_AE_DIA_CARL_PAL_REFORGE_3_01 = "PATCH_AE_DIA_CARL_PAL_REFORGE_3_01_DE";
    PATCH_AE_DIA_CARL_PAL_REFORGE_3_02 = "PATCH_AE_DIA_CARL_PAL_REFORGE_3_02_DE";
    PATCH_AE_DIA_CARL_PAL_REFORGE_3_03 = "PATCH_AE_DIA_CARL_PAL_REFORGE_3_03_DE";

    // ------
    // Engor
    // ------

    Patch_AE_DIA_engor_ARCHER_KAUFEN_desc = "Armbrustschützen-Milizrüstung kaufen (2300 Gold)";
    // AI_Output(other, self, "PATCH_AE_DIA_engor_ARCHER_KAUFEN_15_00_DE"); //Give me the armor.
    // AI_Output(self, other, "PATCH_AE_DIA_engor_ARCHER_KAUFEN_13_01_DE"); //Here it is, it'll protect you well, it's a damn good piece.
    // AI_Output(self, other, "PATCH_AE_DIA_engor_ARCHER_KAUFEN_13_02_DE"); //Bring me the gold first.

    // Localized OU (do not change)
    PATCH_AE_DIA_engor_ARCHER_KAUFEN_15_00 = "PATCH_AE_DIA_engor_ARCHER_KAUFEN_15_00_DE";
    PATCH_AE_DIA_engor_ARCHER_KAUFEN_13_01 = "PATCH_AE_DIA_engor_ARCHER_KAUFEN_13_01_DE";
    PATCH_AE_DIA_engor_ARCHER_KAUFEN_13_02 = "PATCH_AE_DIA_engor_ARCHER_KAUFEN_13_02_DE";

    // ------
    // Garond
    // ------
    
    Patch_AE_DIA_GAROND_KNIGHT_ARMORREWARD_MELEE = "(Wählen Sie eine schwere Ritterrüstung)";
    Patch_AE_DIA_GAROND_KNIGHT_ARMORREWARD_RANGED = "(Wählen Sie eine schwere Ritter-Armbrustschützenrüstung)";
    // AI_Output(self, other, "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_03_DE"); //Hold on.
    // AI_Output(self, other, "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_04_DE"); //You're the only one of us who's managed to kill a dragon so far.
    // AI_Output(self, other, "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_05_DE"); //I'm hoping you can get them all.
    // AI_Output(self, other, "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_06_DE"); //Here, this should help you in your mission. Now go, there's no time to waste.
    // AI_Output(other, self, "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_15_01_DE"); //Thanks.

    // Localized OU (do not change)
    PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_03 = "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_03_DE";
    PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_04 = "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_04_DE";
    PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_05 = "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_05_DE";
    PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_06 = "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_06_DE";
    PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_15_01 = "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_15_01_DE";

    // ------
    // Greg
    // ------

    Patch_AE_DIA_Addon_Greg_RavenDead_ARMOREXPANSION_desc = "Wie wäre es mit etwas besserer Rüstung?";
    // AI_Output(other, self, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_15_00_DE"); //How about some better armor?
    // AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_01_DE"); //What the hell do you think?
    // AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_02_DE"); //You knock off Raven and suddenly you're the new captain?
    // AI_Output(other, self, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_15_03_DE"); //That's not what I meant. You're still the captain. I'm just asking about armor.
    // AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_04_DE"); //All right, I can sell you one of my personal pieces.
    // AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_05_DE"); //But it'll cost you. I want 2700 gold for it.
    Patch_AE_DIA_Addon_Greg_RavenDead_ARMOREXPANSION_entry = "Ich kann für 2700 Gold von Greg einen Kapitäns Mantel kaufen.";

    Patch_AE_DIA_Addon_Greg_BUY_ARMOREXPANSION_desc = "Kapitäns Mantel kaufen (2700 Gold)";
    // AI_Output(other, self, "PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_1_DE"); //Sell me the captain's armor.
    // AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_2_DE"); //Here you go, but remember, I'm still the captain.
    // AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_3_DE"); //Come back when you have enough gold.

    // Localized OU (do not change)
    PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_15_00 = "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_15_00_DE";
    PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_01 = "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_01_DE";
    PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_02 = "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_02_DE";
    PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_15_03 = "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_15_03_DE";
    PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_04 = "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_04_DE";
    PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_05 = "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_05_DE";
    PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_1 = "PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_1_DE";
    PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_2 = "PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_2_DE";
    PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_3 = "PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_3_DE";

    // ------
    // Hagen
    // ------

    Patch_AE_DIA_Lord_Hagen_CROSSBOW_desc = "Hast du keine leichtere Rüstung für mich? (Ritterrüstung ersetzen)";
    // AI_Output(other, self, "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_01_DE"); //Would there be any lighter armor for me?
    // AI_Output(other, self, "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_02_DE"); //I prefer to use ranged weapons.
    // AI_Output(self, other, "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_13_03_DE"); //I can swap your knight's armor for a lighter version designed for our crossbowmen.
    // AI_Output(other, self, "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_04_DE"); //I'll take it.
    // AI_Output(self, other, "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_9_DE"); //Wear it with honor, knight.

    // Localized OU (do not change)
    PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_01 = "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_01_DE";
    PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_02 = "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_02_DE";
    PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_13_03 = "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_13_03_DE";
    PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_04 = "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_04_DE";
    PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_9 = "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_9_DE";

    // ------
    // Harad
    // ------

    Patch_AE_DIA_HARAD_PAL_SHOW_desc = "Kannst du diese rostige Paladinrüstung für mich reparieren?";
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_PAL_SHOW_4_1_DE"); //Could you fix this rusty paladin armor for me?
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_01_DE"); //Let me see.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_02_DE"); //It's been a long time since I've seen armor like this.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_03_DE"); //They are forged from a different alloy of steel and magical ore than the others, and then blessed by the mages from the Monastery in Nordmar.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_04_DE"); //The rust hasn't penetrated very deeply, it won't be too hard to repair.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_05_DE"); //If I have the materials, of course.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_06_DE"); //Where did you get it?
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_07_DE"); //Martin sold it to me, it was lying around amongst the paladin equipment so I wanted to use it.
    Patch_AE_DIA_HARAD_PAL_SHOW_entry = "Harad wird die Rüstung für mich reparieren.";

    Patch_AE_DIA_HARAD_PALADIN_REFORGE_desc = "Was brauchst du zum reparieren der Rüstung?";
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_01_DE"); //So, what are you gonna need to repair the armor?
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_02_DE"); //Hmm, let me think.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_04_DE"); //A few raw steel billets, six should be enough.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_05_DE"); //3 lumps of magical ore.
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_06_DE"); //What do you want for your work?
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_07_DE"); //Nothing. It would be an honor to work on armor like this.
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_08_DE"); //All right, I'll try to get it all.
    Patch_AE_DIA_HARAD_PALADIN_REFORGE_entry1 = "Um die Rüstung zu reparieren braucht Harad sechs Stück Rohstahl und drei Erzbrocken.";
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_9_DE");//Here's the armor.
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_10_DE"); //And here are the materials.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_11_DE"); //All right, I'll get to work.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_12_DE"); //Done.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_13_DE"); //Here it is, I managed to fix it.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_14_DE"); //But I couldn't restore its magical powers.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_15_DE"); //For that, you'll need an experienced fire mage willing to consecrate the armor for you.
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_14_DE"); //Thank you.
    Patch_AE_DIA_HARAD_PALADIN_REFORGE_entry2 = "Harad hat die Paladinrüstung repariert, konnte aber dessen magische Kräfte nicht wiederherstellen. Dazu werde ich wohl einen Feuermagier finden müssen.";
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_16_DE"); //Come back when you've got it all.

    Patch_AE_DIA_HARAD_end_MAKE_desc = "Kannst du die Paladinrüstung für mich verändern? (Weniger Schutz, Bogen Bonus)";
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_end_MAKE_1_DE"); //Could you reforge my paladin armor for me?
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_end_MAKE_2_DE"); //Sure, but I can't think of a reason you wouldn't like it.
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_end_MAKE_3_DE"); //I use ranged weapons, so I'd like it if it was a bit lighter.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_end_MAKE_4_DE"); //That shouldn't be too hard. I'm sure I could do it.
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_end_MAKE_5_DE"); //What do you want for it?
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_end_MAKE_6_DE"); //Nothing. It would be an honor to do this service for a paladin.
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_end_MAKE_7_DE"); //In that case, here it is.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_end_MAKE_8_DE"); //Done. It wasn't hard. Here you go.
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_end_MAKE_9_DE"); //Thank you.

    // Localized OU (do not change)
    PATCH_AE_DIA_HARAD_PAL_SHOW_4_1 = "PATCH_AE_DIA_HARAD_PAL_SHOW_4_1_DE";
    PATCH_AE_DIA_HARAD_PAL_SHOW_3_01 = "PATCH_AE_DIA_HARAD_PAL_SHOW_3_01_DE";
    PATCH_AE_DIA_HARAD_PAL_SHOW_3_02 = "PATCH_AE_DIA_HARAD_PAL_SHOW_3_02_DE";
    PATCH_AE_DIA_HARAD_PAL_SHOW_3_03 = "PATCH_AE_DIA_HARAD_PAL_SHOW_3_03_DE";
    PATCH_AE_DIA_HARAD_PAL_SHOW_3_04 = "PATCH_AE_DIA_HARAD_PAL_SHOW_3_04_DE";
    PATCH_AE_DIA_HARAD_PAL_SHOW_3_05 = "PATCH_AE_DIA_HARAD_PAL_SHOW_3_05_DE";
    PATCH_AE_DIA_HARAD_PAL_SHOW_3_06 = "PATCH_AE_DIA_HARAD_PAL_SHOW_3_06_DE";
    PATCH_AE_DIA_HARAD_PAL_SHOW_3_07 = "PATCH_AE_DIA_HARAD_PAL_SHOW_3_07_DE";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_01 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_01_DE";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_02 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_02_DE";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_04 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_04_DE";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_05 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_05_DE";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_06 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_06_DE";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_07 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_07_DE";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_08 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_08_DE";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_9 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_9_DE";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_10 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_10_DE";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_11 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_11_DE";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_12 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_12_DE";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_13 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_13_DE";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_14 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_14_DE";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_15 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_15_DE";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_14 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_14_DE";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_16 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_16_DE";
    PATCH_AE_DIA_HARAD_end_MAKE_1 = "PATCH_AE_DIA_HARAD_end_MAKE_1_DE";
    PATCH_AE_DIA_HARAD_end_MAKE_2 = "PATCH_AE_DIA_HARAD_end_MAKE_2_DE";
    PATCH_AE_DIA_HARAD_end_MAKE_3 = "PATCH_AE_DIA_HARAD_end_MAKE_3_DE";
    PATCH_AE_DIA_HARAD_end_MAKE_4 = "PATCH_AE_DIA_HARAD_end_MAKE_4_DE";
    PATCH_AE_DIA_HARAD_end_MAKE_5 = "PATCH_AE_DIA_HARAD_end_MAKE_5_DE";
    PATCH_AE_DIA_HARAD_end_MAKE_6 = "PATCH_AE_DIA_HARAD_end_MAKE_6_DE";
    PATCH_AE_DIA_HARAD_end_MAKE_7 = "PATCH_AE_DIA_HARAD_end_MAKE_7_DE";
    PATCH_AE_DIA_HARAD_end_MAKE_8 = "PATCH_AE_DIA_HARAD_end_MAKE_8_DE";
    PATCH_AE_DIA_HARAD_end_MAKE_9 = "PATCH_AE_DIA_HARAD_end_MAKE_9_DE";

    // ------
    // Huno
    // ------

    Patch_AE_DIA_HUNO_PAL_REFORGE_desc = "Kannst du diese rostige Paladinrüstung für mich reparieren?";
    // AI_Output(other, self, "PATCH_AE_DIA_HUNO_PAL_REFORGE_4_1_DE"); //Could you fix this rusty paladin armor for me?
    // AI_Output(self, other, "PATCH_AE_DIA_HUNO_PAL_REFORGE_3_01_DE"); //I have absolutely no experience with paladin armor. There was nothing like it in the colony.
    // AI_Output(self, other, "PATCH_AE_DIA_HUNO_PAL_REFORGE_3_02_DE"); //I'm sorry, but I can't help you with this.
    // AI_Output(self, other, "PATCH_AE_DIA_HUNO_PAL_REFORGE_3_03_DE"); //You'll have to find another blacksmith.
    Patch_AE_DIA_HUNO_PAL_REFORGE_entry = "Huno wird meine Rüstung nicht reparieren.";

    // Localized OU (do not change)
    PATCH_AE_DIA_HUNO_PAL_REFORGE_4_1 = "PATCH_AE_DIA_HUNO_PAL_REFORGE_4_1_DE";
    PATCH_AE_DIA_HUNO_PAL_REFORGE_3_01 = "PATCH_AE_DIA_HUNO_PAL_REFORGE_3_01_DE";
    PATCH_AE_DIA_HUNO_PAL_REFORGE_3_02 = "PATCH_AE_DIA_HUNO_PAL_REFORGE_3_02_DE";
    PATCH_AE_DIA_HUNO_PAL_REFORGE_3_03 = "PATCH_AE_DIA_HUNO_PAL_REFORGE_3_03_DE";

    // ------
    // Jan
    // ------

    Patch_AE_DIA_JAN_PAL_REFORGE_desc = "Kannst du diese rostige Paladinrüstung für mich reparieren?";
    // AI_Output(other, self, "PATCH_AE_DIA_JAN_PAL_REFORGE_4_1_DE"); //Could you fix this rusty paladin armor for me?
    // AI_Output(self, other, "PATCH_AE_DIA_JAN_PAL_REFORGE_3_01_DE"); //I'm on thin ice just to be allowed to work here.
    // AI_Output(self, other, "PATCH_AE_DIA_JAN_PAL_REFORGE_3_02_DE"); //I'm not gonna risk one of your colleagues reporting me for digging through paladin supplies.
    // AI_Output(self, other, "PATCH_AE_DIA_JAN_PAL_REFORGE_3_03_DE"); //You'll have to find another blacksmith.
    Patch_AE_DIA_JAN_PAL_REFORGE_entry = "Jan wird meine Rüstung nicht reparieren.";

    // Localized OU (do not change)
    PATCH_AE_DIA_JAN_PAL_REFORGE_4_1 = "PATCH_AE_DIA_JAN_PAL_REFORGE_4_1_DE";
    PATCH_AE_DIA_JAN_PAL_REFORGE_3_01 = "PATCH_AE_DIA_JAN_PAL_REFORGE_3_01_DE";
    PATCH_AE_DIA_JAN_PAL_REFORGE_3_02 = "PATCH_AE_DIA_JAN_PAL_REFORGE_3_02_DE";
    PATCH_AE_DIA_JAN_PAL_REFORGE_3_03 = "PATCH_AE_DIA_JAN_PAL_REFORGE_3_03_DE";

    // ------
    // Lee
    // ------

    Patch_AE_DIA_LEE_SLD_SCOUTArmor_desc = "Gibt es auch eine leichtere Rüstung?";
    // AI_Output(other, self, "PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_15_01_DE"); //Is there any lighter armor for me?
    // AI_Output(other, self, "PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_15_02_DE"); //I prefer to keep my distance.
    // AI_Output(self, other, "PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_13_03_DE"); //I don't have anything like that for you, but you're not the first one to ask for something like this.
    // AI_Output(self, other, "PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_13_04_DE"); //Go to Wolf. I think he should have something for you.

    Patch_AE_DIA_LEE_SLD_BOWArmor_desc = "Bogenschützen-Söldnerrüstung kaufen. (1500 Gold).";

    // Localized OU (do not change)
    PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_15_01 = "PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_15_01_DE";
    PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_15_02 = "PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_15_02_DE";
    PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_13_03 = "PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_13_03_DE";
    PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_13_04 = "PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_13_04_DE";

    // ------
    // Martin
    // ------

    Patch_AE_TOPIC_MARTIN_ARMOR = "Einzigartige Paladinrüstung";

    // AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_01_DE"); //I heard you became a paladin.
    // AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_02_DE"); //I might have something special for you
    // AI_Output(other, self, "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_03_DE"); //What are you talking about?
    // AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_04_DE"); //I have some exceptional paladin armor in stock here.
    // AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_05_DE"); //I hear this type of armor has high protection against magical attacks, while increasing the wearer's own magical abilites.
    // AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_06_DE"); //But it's been lying around for a while, and the coastal weather hasn't done it any good.
    // AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_07_DE"); //It's nothing that can't be repaired. You'll figure something out.
    // AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_08_DE"); //For 2000 gold, it's yours.
    PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_entry = "Martin hat mir angeboten mir für 2000 Gold eine einzigartige Paladinrüstung zu verkaufen. Hört sich interesant an.";

    Patch_AE_DIA_Martin_ARKPALA_BUY_desc = "Ok, Ich will die Rüstung. (2000 Gold).";
    // AI_Output(other, self, "PATCH_AE_DIA_MARTIN_ARKPALA_BUY_4_1_DE"); //Okay, I'll take the armor.
    // AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARKPALA_BUY_4_2_DE"); //Allright, here you go.
    // AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARKPALA_BUY_4_3_DE"); //Come back when you have enough gold on you
    Patch_AE_DIA_Martin_ARKPALA_BUY_entry = "Ich habe die Paladinrüstung von Martin gekauft. Sie ist verrosten aber ein guter Schmied kann sie vermutlich reparieren. Ich muss nur einen finden.";

    // Localized OU (do not change)
    PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_01 = "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_01_DE";
    PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_02 = "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_02_DE";
    PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_03 = "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_03_DE";
    PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_04 = "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_04_DE";
    PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_05 = "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_05_DE";
    PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_06 = "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_06_DE";
    PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_07 = "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_07_DE";
    PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_08 = "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_08_DE";
    PATCH_AE_DIA_MARTIN_ARKPALA_BUY_4_1 = "PATCH_AE_DIA_MARTIN_ARKPALA_BUY_4_1_DE";
    PATCH_AE_DIA_MARTIN_ARKPALA_BUY_4_2 = "PATCH_AE_DIA_MARTIN_ARKPALA_BUY_4_2_DE";
    PATCH_AE_DIA_MARTIN_ARKPALA_BUY_4_3 = "PATCH_AE_DIA_MARTIN_ARKPALA_BUY_4_3_DE";

    // ------
    // Matteo
    // ------

    Patch_AE_DIA_Matteo_GAMBESON_desc = "Jäger Stoffrüstung kaufen. (350 Gold).";
    // AI_Output(other, self, "PATCH_AE_DIA_MATTEO_GAMBESON_15_00_DE"); //Okay, give me the armor.
    // AI_Output(self, other, "PATCH_AE_DIA_MATTEO_GAMBESON_09_01_DE"); //You'll like it.
    // AI_Output(self, other, "PATCH_AE_DIA_MATTEO_GAMBESON_09_02_DE"); //The armor's worth its weight in gold, so come back when you have enough.

    // Localized OU (do not change)
    PATCH_AE_DIA_MATTEO_GAMBESON_15_00 = "PATCH_AE_DIA_MATTEO_GAMBESON_15_00_DE";
    PATCH_AE_DIA_MATTEO_GAMBESON_09_01 = "PATCH_AE_DIA_MATTEO_GAMBESON_09_01_DE";
    PATCH_AE_DIA_MATTEO_GAMBESON_09_02 = "PATCH_AE_DIA_MATTEO_GAMBESON_09_02_DE";

    // ------
    // Milten
    // ------

    Patch_AE_DIA_MILTEN_PALADINARMOR_desc = "Ich brauche deine Hilfe.";
    // AI_Output(other, self, "PATCH_AE_DIA_MILTEN_PALADINARMOR_15_01_DE"); //I need your help.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_02_DE"); //What's going on?
    // AI_Output(other, self, "PATCH_AE_DIA_MILTEN_PALADINARMOR_04_DE"); //I need to restore the magical powers of this armor, could you do that for me?
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_05_DE"); //Let me see it.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_06_DE"); //Wow, I didn't see this coming.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_07_DE"); //This kind of armor is taken by the paladins from Myrtana to be blessed in the monastery in Nordmar.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_08_DE"); //I've heard a little about the blessing ritual, but I don't have enough knowledge to perform it yet.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_09_DE"); //If I'm not mistaken, there is a book in the monastery's library that describes the process.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_10_DE"); //I'll need some time to study the book. In the meantime, you should take care of the dragons in the valley of mines, you know how Garond's unit won't survive for long.
    // AI_Output(other, self, "PATCH_AE_DIA_MILTEN_PALADINARMOR_15_11_DE"); //Yeah, I'll see you later Milten.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_12_DE"); //Good luck!
    Patch_AE_DIA_MILTEN_PALADINARMOR_entry = "Milten wird versuchen die magischen Kräfte der Rüstung wiederherzustellen. Zuerst muss er aber einige Nachforschungen betreiben. Das wird etwas dauern. Ich sollte mich in der Zwischenzeit um die Drachen kümmern.";

    Patch_AE_DIA_MILTEN_PLATEARMOR_desc = "Hast du bei deinen Nachforschungen Fortschritte gemacht?";
    // AI_Output(other, self, "PATCH_AE_DIA_MILTEN_PLATEARMOR_15_01_DE"); //Have you made progress in your studies?
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_02_DE"); //Yes, I can say that I understand the ritual process.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_03_DE"); //But I'm going to need a few things.
    // AI_Output(other, self, "PATCH_AE_DIA_MILTEN_PLATEARMOR_15_04_DE"); //What are they?
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_05_DE"); //A scroll of destroy evil, fireball and two rock crystals.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_06_DE"); //This is the only way I'll be able to achieve results similar to that of a ritual in the Nordmar monastery.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_07_DE"); //Okay, I'll go get those things.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_08_DE"); //Good luck, I hope you succeed.
    Patch_AE_DIA_MILTEN_PLATEARMOR_entry = "Um die Rüstung zu stärken braucht Milten eine Schriftrolle Böses vernichten, eine Schriftrolle Feuerball und zwei Bergkristalle.";

    Patch_AE_DIA_MILTEN_RITUALARMOR_desc = "Ich habe alles was du brauchst.";
    // AI_Output(other, self, "PATCH_AE_DIA_MILTEN_RITUALARMOR_15_01_DE"); //I have everything you need.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_RITUALARMOR_13_02_DE"); //Oh, great. I can start the ritual.
    Patch_AE_DIA_MILTEN_RITUALARMOR_entry = "Ich habe Milten alles gebracht, was er für das Ritual braucht.";

    Patch_AE_DIA_MILTEN_LORDRMOR_desc = "Toll, wann ist das Ritual vollendet?";
    // AI_Output(other, self, "PATCH_AE_DIA_MILTEN_LORDRMOR_15_00_DE"); //Great, and when will the ritual be complete?
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_LORDRMOR_08_01_DE"); //It's gonna take a while. Come back tomorrow.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_LORDRMOR_08_02_DE"); //I've already done it, it was a success.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_LORDRMOR_08_03_DE"); //Everything went surprisingly smoothly.
    // AI_Output(other, self, "PATCH_AE_DIA_MILTEN_LORDRMOR_15_04_DE"); //I'm glad. Thank you.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_LORDRMOR_08_05_DE"); //You're welcome. May the armor serve you well.
    // AI_Output(self, other, "PATCH_AE_DIA_WOLFEE_ARMORREADY_08_06_DE"); //NN
    Patch_AE_DIA_MILTEN_LORDRMOR_entry = "Milten hat es geschafft die magischen Kräfte der Rüstung wiederherzustellen.";

    // Localized OU (do not change)
    PATCH_AE_DIA_MILTEN_PALADINARMOR_15_01 = "PATCH_AE_DIA_MILTEN_PALADINARMOR_15_01_DE";
    PATCH_AE_DIA_MILTEN_PALADINARMOR_13_02 = "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_02_DE";
    PATCH_AE_DIA_MILTEN_PALADINARMOR_04 = "PATCH_AE_DIA_MILTEN_PALADINARMOR_04_DE";
    PATCH_AE_DIA_MILTEN_PALADINARMOR_13_05 = "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_05_DE";
    PATCH_AE_DIA_MILTEN_PALADINARMOR_13_06 = "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_06_DE";
    PATCH_AE_DIA_MILTEN_PALADINARMOR_13_07 = "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_07_DE";
    PATCH_AE_DIA_MILTEN_PALADINARMOR_13_08 = "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_08_DE";
    PATCH_AE_DIA_MILTEN_PALADINARMOR_13_09 = "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_09_DE";
    PATCH_AE_DIA_MILTEN_PALADINARMOR_13_10 = "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_10_DE";
    PATCH_AE_DIA_MILTEN_PALADINARMOR_15_11 = "PATCH_AE_DIA_MILTEN_PALADINARMOR_15_11_DE";
    PATCH_AE_DIA_MILTEN_PALADINARMOR_13_12 = "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_12_DE";
    PATCH_AE_DIA_MILTEN_PLATEARMOR_15_01 = "PATCH_AE_DIA_MILTEN_PLATEARMOR_15_01_DE";
    PATCH_AE_DIA_MILTEN_PLATEARMOR_13_02 = "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_02_DE";
    PATCH_AE_DIA_MILTEN_PLATEARMOR_13_03 = "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_03_DE";
    PATCH_AE_DIA_MILTEN_PLATEARMOR_15_04 = "PATCH_AE_DIA_MILTEN_PLATEARMOR_15_04_DE";
    PATCH_AE_DIA_MILTEN_PLATEARMOR_13_05 = "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_05_DE";
    PATCH_AE_DIA_MILTEN_PLATEARMOR_13_06 = "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_06_DE";
    PATCH_AE_DIA_MILTEN_PLATEARMOR_13_07 = "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_07_DE";
    PATCH_AE_DIA_MILTEN_PLATEARMOR_13_08 = "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_08_DE";
    PATCH_AE_DIA_MILTEN_RITUALARMOR_15_01 = "PATCH_AE_DIA_MILTEN_RITUALARMOR_15_01_DE";
    PATCH_AE_DIA_MILTEN_RITUALARMOR_13_02 = "PATCH_AE_DIA_MILTEN_RITUALARMOR_13_02_DE";
    PATCH_AE_DIA_MILTEN_LORDRMOR_15_00 = "PATCH_AE_DIA_MILTEN_LORDRMOR_15_00_DE";
    PATCH_AE_DIA_MILTEN_LORDRMOR_08_01 = "PATCH_AE_DIA_MILTEN_LORDRMOR_08_01_DE";
    PATCH_AE_DIA_MILTEN_LORDRMOR_08_02 = "PATCH_AE_DIA_MILTEN_LORDRMOR_08_02_DE";
    PATCH_AE_DIA_MILTEN_LORDRMOR_08_03 = "PATCH_AE_DIA_MILTEN_LORDRMOR_08_03_DE";
    PATCH_AE_DIA_MILTEN_LORDRMOR_15_04 = "PATCH_AE_DIA_MILTEN_LORDRMOR_15_04_DE";
    PATCH_AE_DIA_MILTEN_LORDRMOR_08_05 = "PATCH_AE_DIA_MILTEN_LORDRMOR_08_05_DE";
    PATCH_AE_DIA_WOLFEE_ARMORREADY_08_06 = "PATCH_AE_DIA_WOLFEE_ARMORREADY_08_06_DE";

    // ------
    // Mortis
    // ------

    Patch_AE_TOPIC_MORTIS_ARMOR = "Milizrüstung-Verbesserungen";

    PATCH_AE_DIA_MORTIS_ARMORQUESTION_desc = "Hast du keine bessere Rüstung für mich?";
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_ARMORQUESTION_15_01_DE"); //Don't you have any better armor for me?
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_02_DE"); //Only Lord Andre can give you better armor.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_03_DE"); //But that doesn't mean I can't improve the one you already have. You wouldn't be the first person I've done ir for.
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_ARMORQUESTION_15_04_DE"); //What will it cost?
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_05_DE"); //You'll have to bring your own materials, I don't have any left to spare.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_06_DE"); //And some gold for my work.
    PATCH_AE_DIA_MORTIS_ARMORQUESTION_entry = "Mortis kann meine Milizrüstung verbesseren, wenn ich ihm Gold und Materialien bringe.";

    PATCH_AE_DIA_MORTIS_MIL_LTHINGS_desc = "Ich will meine leichte Rüstung verbessern.";
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_01_DE"); //I'd like to improve my light armor.
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_04_DE"); //What do you need for that?
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_06_DE"); //For light armor, one raw steel and boarskin will suffice.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_07_DE"); //And let's say 200 gold will be enough for me.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_08_DE"); //And of course, you'll have to bring me the armor.
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_09_DE"); //All right, I'll try to get it.
    PATCH_AE_DIA_MORTIS_MIL_LTHINGS_entry = "Um meine leichte Rüstung zu verbessern braucht Mortis ein Stück Rohstahl, ein Keilerfell und 200 Gold.";

    PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_desc = "Ich habe alle Materialien um meine leichte Rüstung zu verbessern.";
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_15_01_DE"); //I have all the materials I need to improve my light armor.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_12_DE"); //All right, I'll get to work.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_13_DE"); //Done.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_14_DE"); //Here you go, I think I've done a pretty good job.
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_15_15_DE"); //Thank you.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_16_DE"); //Come back when you've got it all with you.
    PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_entry = "Mortis hat meine leichte Rüstung verbessert.";

    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_desc = "Ich will meine mittlere Rüstung verbessern.";
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_01_DE"); //I'd like to improve my medium armor.
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_03_DE"); //What do you need for that?
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_04_DE"); //You'll need to bring a little more than last time for the medium armor.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_05_DE"); //two raw steel billets and a Warg skin.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_06_DE"); //I'll charge you 600 gold for the job.
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_08_DE"); //All right, I'll try to get it.
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_entry = "Um meine leichte Rüstung zu verbessern braucht Mortis zwei Stück Rohstahl, ein Wargfell und 600 Gold.";

    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_desc = "Ich habe alle Materialien um meine mittlere Rüstung zu verbessern.";
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_15_01_DE"); //I've got all the materials I need to improve my medium armor.
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_15_10_DE"); //Here you go.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_11_DE"); //Okay, I'll get to work.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_12_DE"); //Done.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_13_DE"); //Here you go, I think I've done a pretty good job.
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_15_14_DE"); //Thank you.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_16_DE"); //Come back when you've got it all with you.
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_entry = "Mortis hat meine mittlere Rüstung verbessert.";

    PATCH_AE_DIA_MORTIS_PAL_REFORGE_desc = "Kannst du diese rostige Paladinrüstung für mich reparieren?";
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_PAL_REFORGE_4_1_DE"); //Could you fix this rusty paladin armor for me?
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_PAL_REFORGE_3_01_DE"); //No, I don't have the time or the skill.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_PAL_REFORGE_3_02_DE"); //You'll have to find another blacksmith.
    PATCH_AE_DIA_MORTIS_PAL_REFORGE_entry = "Mortis wird meine Rüstung nicht reparieren.";

    // Localized OU (do not change)
    PATCH_AE_DIA_MORTIS_ARMORQUESTION_15_01 = "PATCH_AE_DIA_MORTIS_ARMORQUESTION_15_01_DE";
    PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_02 = "PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_02_DE";
    PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_03 = "PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_03_DE";
    PATCH_AE_DIA_MORTIS_ARMORQUESTION_15_04 = "PATCH_AE_DIA_MORTIS_ARMORQUESTION_15_04_DE";
    PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_05 = "PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_05_DE";
    PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_06 = "PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_06_DE";
    PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_01 = "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_01_DE";
    PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_04 = "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_04_DE";
    PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_06 = "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_06_DE";
    PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_07 = "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_07_DE";
    PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_08 = "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_08_DE";
    PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_09 = "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_09_DE";
    PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_15_01 = "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_15_01_DE";
    PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_12 = "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_12_DE";
    PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_13 = "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_13_DE";
    PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_14 = "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_14_DE";
    PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_15_15 = "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_15_15_DE";
    PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_16 = "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_16_DE";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_01 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_01_DE";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_03 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_03_DE";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_04 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_04_DE";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_05 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_05_DE";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_06 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_06_DE";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_08 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_08_DE";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_15_01 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_15_01_DE";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_15_10 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_15_10_DE";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_11 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_11_DE";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_12 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_12_DE";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_13 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_13_DE";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_15_14 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_15_14_DE";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_16 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_16_DE";
    PATCH_AE_DIA_MORTIS_PAL_REFORGE_4_1 = "PATCH_AE_DIA_MORTIS_PAL_REFORGE_4_1_DE";
    PATCH_AE_DIA_MORTIS_PAL_REFORGE_3_01 = "PATCH_AE_DIA_MORTIS_PAL_REFORGE_3_01_DE";
    PATCH_AE_DIA_MORTIS_PAL_REFORGE_3_02 = "PATCH_AE_DIA_MORTIS_PAL_REFORGE_3_02_DE";

    // ----
    // Hero
    // ----

    Patch_AE_PC_FORGE_ARMOR_desc = "Rüstung schmieden.";
    Patch_AE_PC_ITAR_PAL_ST_desc = "Stewark Plattenrüstung schmieden.";
    Patch_AE_PC_ITAR_PAL_ANH_desc = "Den Helm der Angereicherten Paladinrüstung entfernen.";
    Patch_AE_PC_ITAR_PAL_AFH_desc = "Das Visier der Angereicherten Paladinrüstung herunterziehen";
    Patch_AE_PC_ITAR_PAL_AFH_NH_desc = "Das Visier der Angereicherten Paladinrüstung herunterziehen";
    Patch_AE_PC_ITAR_PAL_ANH_FH_desc = "Den Helm der Angereicherten Paladinrüstung entfernen";
    Patch_AE_PC_ITAR_PAL_A_FH_desc = "Das Visier der Angereicherten Paladinrüstung hochziehen";
    Patch_AE_PC_ITAR_PAL_A_NH_desc = "Das Visier der Angereicherten Paladinrüstung hochziehen";
    Patch_AE_PC_ITAR_PAL_FNH_desc = "Den Helm der Reparierten Paladinrüstung entfernen";
    Patch_AE_PC_ITAR_PAL_FFH_desc = "Das Visier der Reparierten Paladinrüstung herunterziehen";
    Patch_AE_PC_ITAR_PAL_FFH_NH_desc = "Das Visier der Reparierten Paladinrüstung herunterziehen";
    Patch_AE_PC_ITAR_PAL_fNH_FH_desc = "Den Helm der Reparierten Paladinrüstung entfernen";
    Patch_AE_PC_ITAR_PAL_F_FH_desc = "Das Visier der Reparierten Paladinrüstung hochziehen";
    Patch_AE_PC_ITAR_PAL_F_NH_desc = "Das Visier der Angereicherten Paladinrüstung hochziehen";
    Patch_AE_PC_ITAR_PAL_RNH_desc = "Den Helm der Rostigen Paladinrüstung entfernen";
    Patch_AE_PC_ITAR_PAL_RFH_desc = "Das Visier der Rostigen Paladinrüstung herunterziehen";
    Patch_AE_PC_ITAR_PAL_RFH_NH_desc = "Das Visier der Rostigen Paladinrüstung herunterziehen";
    Patch_AE_PC_ITAR_PAL_RNH_FH_desc = "Den Helm der Rostigen Paladinrüstung entfernen";
    Patch_AE_PC_ITAR_PAL_R_FH_desc = "Das Visier der Rostigen Paladinrüstung hochziehen";
    Patch_AE_PC_ITAR_PAL_R_NH_desc = "Das Visier der Rostigen Paladinrüstung hochziehen";
    Patch_AE_PC_ITAR_CRUSADER_NH_desc = "Den Helm der Kreuzritterrüstung entfernen";
    Patch_AE_PC_ITAR_nh_crusader_desc = "Einen Helm zur Kreuzritterrüstung hinzufügen";

    // ------
    // Ulthar
    // ------

    PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_desc = "Ich habe alle Schreine bereinigt.";
    // AI_Output(self, other, "PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_01_DE"); //Wait, we wanted to support you in your fight against evil with a new armor.
    // AI_Output(self, other, "PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_02_DE"); //Take this armor of the Crusader of Innos, I'm sure you'll find use for it.
    // AI_Output(other, self, "PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_03_DE"); //Thanks.

    // Localized OU (do not change)
    PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_01 = "PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_01_DE";
    PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_02 = "PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_02_DE";
    PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_03 = "PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_03_DE";

    // ----
    // Wolf
    // ----

    PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_desc = "Ich habe gehört du stellst leichtere Rüstung für Söldner her. (Söldnerrüstung ersetzen)";
    // AI_Output(other, self, "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_01_DE"); //I hear you make lighter armor for mercenaries.
    // AI_Output(other, self, "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_02_DE"); //I'd like to replace the one I have now.
    // AI_Output(self, other, "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_13_03_DE"); //Sure, I just finished one. You can have it for free, for old time's sake.
    // AI_Output(other, self, "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_06_DE"); //Thanks man.
    // AI_Output(self, other, "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_13_07_DE"); //You're welcome.

    // Localized OU (do not change)
    PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_01 = "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_01_DE";
    PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_02 = "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_02_DE";
    PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_13_03 = "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_13_03_DE";
    PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_06 = "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_06_DE";
    PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_13_07 = "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_13_07_DE";
};

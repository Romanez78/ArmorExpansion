func void Patch_AE_LocalizePolish() {
    // NPC
    Patch_AE_DeadTreasureHunter__name = "Martwy poszukiwacz skarbów";

    // Blue print 
    ItWr_BluePrint_StewarkArmor_ArmorExpansion__name = "Plan produkcji stewarskiej zbroi płytowej";
    Patch_AE_Use_Plan_StewarkArmor__line1 = "Plan produkcji stewarskiej zbroi płytowej";
    Patch_AE_Use_Plan_StewarkArmor__line2 = "Jest to plan dla wszystkich wykwalifikowanych kowali w Stewark, których zadaniem jest stworzenie nowych elementów zbroi dla straży miejskiej.";
    Patch_AE_Use_Plan_StewarkArmor__line3 = "Do wykonania jednej sztuki zbroi potrzebne będą następujące surowce:";
    Patch_AE_Use_Plan_StewarkArmor__line4 = "-6 kawałków surowej stali";
    Patch_AE_Use_Plan_StewarkArmor__line5 = "-3 skóry warga";
    Patch_AE_Use_Plan_StewarkArmor__line6 = "Instrukcja wytwarzania zbroi jest na drugiej stronie plany.";
    Patch_AE_Use_Plan_StewarkArmor__line7 = "Jeśli zostaniesz przyłapany na sprzedaży surowców lub planów, zostaniesz surowo ukarany.";
    Patch_AE_Use_Plan_StewarkArmor__line8 = "Rozkaz został wydany przez dowódcę straży miejskiej miasta Cenric";

    // Armor names
    ITAR_MIL_H_ArmorExpansion__name = "Ciężki pancerz straży";
    ITAR_GAMBESON_ArmorExpansion__name = "Przeszywanica myśliwego";
    ITAR_PAL_A_ArmorExpansion__name = "Wzmocniony pancerz paladyna";
    ITAR_PAL_R_ArmorExpansion__name = "Zardzewiały pancerz paladyna";
    ITAR_PAL_F_ArmorExpansion__name = "Naprawiony pancerz paladyna";
    ITAR_PAL_C_ArmorExpansion__name = "Zbroja rycerskiego kusznika";
    ITAR_MIL_Med2_ArmorExpansion__name = "Ulepszony średni pancerz straży";
    ITAR_MIL_P_ArmorExpansion__name = "Zbroja kusznika straży";
    ITAR_MIL_M__name = "Średnia zbroja straży";
    ITAR_DJG_CL_ArmorExpansion__name = "Lekki pancerz tropiciela smoków";
    ITAR_SLD_BOW_ArmorExpansion__name = "Zbroja łowcy nagród";
    ITAR_MIL_R_ArmorExpansion__name = "Ulepszony lekki pancerz straży";
    ITAR_CRUSADER_ArmorExpansion__name = "Zbroja krzyżowca";
    ITAR_SLD_SCOUT_ArmorExpansion__name = "Pancerz najemnego myśliwego";
    ITAR_MIL_SCOUT_ArmorExpansion__name = "Królewski pancerz zwiadowcy";
    ITAR_SLD_R_ArmorExpansion__name = "Ulepszony średni pancerz najemnika";
    ITAR_SLD_LR_ArmorExpansion__name = "Ulepszony lekki pancerz najemnika";
    ITAR_PAL_CH_ArmorExpansion__name = "Zbroja kusznika paladyna";
    ITAR_DJG_CH_ArmorExpansion__name = "Cieżki pancerz tropiciela smoków";
    ITAR_DJG_CM_ArmorExpansion__name = "Średni pancerz tropiciela smoków";
    ITAR_PAL_ST_ArmorExpansion__name = "Stewarska zbroja płytowa";
    ITAR_PAL_MH_ArmorExpansion__name = "Ciężka zbroja rycerska";
    ITAR_PIR_H_ArmorExpansion__name = "Pancerz kapitana";
    ITAR_PAL_ANH_ArmorExpansion__name = "Wzbogacony pancerz paladyna";
    ITAR_PAL_RNH_ArmorExpansion__name = "Zardzewiały pancerz paladyna";
    ITAR_PAL_FNH_ArmorExpansion__name = "Naprawiony pancerz paladyna";
    ITAR_PAL_AFH_ArmorExpansion__name = "Wzbogacony pancerz paladyna";
    ITAR_PAL_RFH_ArmorExpansion__name = "Zardzewiały pancerz paladyna";
    ITAR_PAL_FFH_ArmorExpansion__name = "Naprawiony pancerz paladyna";
    ITAR_NH_CRUSADER_ArmorExpansion_name = "Zbroja krzyżowca";

    // Armor bonus
    Patch_AE_TEXT_MaxManaBonus20 = "+20 maksymalnej many";
    Patch_AE_TEXT_MaxManaBonus40 = "+40 maksymalnej many";
    Patch_AE_TEXT_OldArmor = "Ta zbroja widziała już lepsze dni";
    Patch_AE_TEXT_ArcheryBonus3 = "+3% posługiwania się łukiem";
    Patch_AE_TEXT_ArcheryBonus5 = "+5% posługiwania się łukiem";
    Patch_AE_TEXT_TwoHandedBonus5 = "+5% walki bronią dwuręczną";
    Patch_AE_TEXT_DexBonus10_OneHandedBonus10 = "+10 zręczności, +10% walki bronią jednoręczną";

    // Alerts: The constants used to create an alert (print on a screen) about missing ingredient(s) or an forged armor.
    Patch_AE_PRINT_ProdItemsMissing__SUBSTR_1 = "Brakuje: ";
    Patch_AE_PRINT_ProdItemsMissing__SUBSTR_2 = " x";
    Patch_AE_PRINT_ForgeSuccess = " wykuto!";

    // ==============
    //    DIALOGS
    // ==============

    // ------
    // Andre
    // ------

    Patch_AE_DIA_ANDRE_MIL_SCOUTArmor_desc = "Czy jest dla mnie jakaś lżejsza zbroja? (Wymień obecną zbroję)";
    // AI_Output(other, self, "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_01_PL"); //Czy nie mógłbyś znaleźć dla mnie jakiejś lżejszej zbroi?
    // AI_Output(other, self, "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_02_PL"); //Wolę walczyć na dystans.
    // AI_Output(self, other, "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_13_03_PL"); //Mogę wymienić twoją zbroję na zbroję zwiadowcy. Jest lżejsza niż standardowe wyposażenie, więc będziesz bardziej zwinny, lecz także bardziej narażony na ciosy.
    // AI_Output(other, self, "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_04_PL"); //Wezmę to.
    // AI_Output(other, self, "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_9_PL"); //Niech ci dobrze służy.

    // AI_Output(self, other, "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_03_PL"); //Wykonałeś wszystkie moje zadania.
    // AI_Output(self, other, "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_04_PL"); //Udowodniłeśmi, że zasługujesz na wyższą pozycję w szeregach straży.
    // AI_Output(self, other, "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_05_PL"); //Proszę, oto średni pancerz straży.
    // AI_Output(self, other, "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_06_PL"); //Niech ci dobrze służy, żołnierzu.
    // AI_Output(other, self, "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_15_01_PL"); //Dziękuję.

    // Localized OU (do not change)
    PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_01 = "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_01_PL";
    PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_02 = "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_02_PL";
    PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_13_03 = "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_13_03_PL";
    PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_04 = "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_04_PL";
    PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_9 = "PATCH_AE_DIA_ANDRE_MIL_SCOUTARMOR_15_9_PL";
    PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_03 = "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_03_PL";
    PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_04 = "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_04_PL";
    PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_05 = "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_05_PL";
    PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_06 = "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_01_06_PL";
    PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_15_01 = "PATCH_AE_DIA_ANDRE_MILITIA_ARMORREWARD_15_01_PL";

    // ------
    // Bennet
    // ------

    Patch_AE_TOPIC_BENNET_ARMOR = "Ulepszanie zbroji najemnika";

    Patch_AE_DIA_BENNET_SLDARMORASK_desc = "Możesz mi sprzedać jakąś lepszą zbroję?";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLDARMORASK_15_01_PL"); //Możesz mi sprzedać jakąś lepszą zbroję?
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLDARMORASK_13_02_PL"); //Nie, tylko Lee może dać ci jakąś.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLDARMORASK_13_03_PL"); //Mogę ulepszyć ten, który już masz, ale będziesz musiał za to zapłacić.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLDARMORASK_15_04_PL"); //Czym konkretnie?
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLDARMORASK_13_05_PL"); //Materiały do jego ulepszenia przyniesiesz sam, nie zrobię tego z własnych zapasów.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLDARMORASK_13_07_PL"); //I nie pracuję za darmo, więc przygotuj też jakieś złoto.
    Patch_AE_DIA_BENNET_SLDARMORASK_entry = "Bennet może ulepszyć moją zbroję najemnika, jeśli przyniosę mu odpowiednie materiały i złoto.";

    Patch_AE_DIA_BENNET_SLD_LReforgedHUH_desc = "Chcę ulepszyć moją lekką zbroję.";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_01_PL"); //Chcę ulepszyć moją lekką zbroję.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_04_PL"); //Czego do tego potrzebujesz?
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_13_06_PL"); //Będą potrzebne dwie sztuki surowej stali i dwie skóry wilka.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_13_07_PL"); //Wezmę 200 sztuk złota za przekucie zbroi.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_09_PL"); //W porządku.
    Patch_AE_DIA_BENNET_SLD_LReforgedHUH_entry = "Aby ulepszyć lekką zbroję, Bennet będzie potrzebował dwie sztuki surowej stali, dwie skóry wilka i 200 sztuk złota.";

    Patch_AE_DIA_BENNET_SLD_LReforgedArmor_desc = "Mam wszystkie materiały potrzebne do ulepszenia mojej lekkiej zbroi.";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_01_PL"); //Mam wszystkie materiały potrzebne do ulepszenia mojej lekkiej zbroi.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_11_PL"); //Proszę.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_12_PL"); //Dobrze, niech no spójrzmy.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_13_PL"); //Zrobione.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_14_PL"); //Masz to tutaj. Niezły jestem.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_15_PL"); //Dzięki.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_16_PL"); //Wróć, gdy przyniesiesz wszystkie składniki.
    Patch_AE_DIA_BENNET_SLD_LReforgedArmor_entry = "Bennet ulepszył moją lekką zbroję.";

    Patch_AE_DIA_BENNET_MERC_MReforgedHUH_desc = "Chcę ulepszyć swoją średnią zbroję.";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_01_PL"); //Chcę ulepszyć swoją średnią zbroję.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_03_PL"); //Czego do tego potrzebujesz?
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_04_PL"); //Czegoś więcej, niż do jej lekkiej wersji.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_05_PL"); //Trzy sztuki surowej stali i skórę warga.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_06_PL"); //I będę chciał za to, powiedzmy 650 sztuk złota.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_08_PL"); //W porządku.
    Patch_AE_DIA_BENNET_MERC_MReforgedHUH_entry = "Aby ulepszyć średni pancerz, Bennet będzie potrzebował trzech sztuk surowej stali, skórę warga i 650 sztuk złota..";

    Patch_AE_DIA_BENNET_MERC_MReforgedArmor_desc = "Mam wszystkie materiały potrzebne do ulepszenia mojej średniej zbroi.";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_01_PL"); //Mam wszystkie materiały potrzebne do ulepszenia mojej średniej zbroi.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_10_PL"); //Proszę.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_11_PL"); //Dobrze, niech no spójrzmy.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_12_PL"); //Zrobione.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_13_PL"); //Masz to tutaj. Niezły jestem.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_14_PL"); //Dzięki.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_16_PL"); //Wróć, gdy przyniesiesz wszystkie składniki.
    Patch_AE_DIA_BENNET_MERC_MReforgedArmor_entry = "Bennet ulepszył moją średnią zbroję.";

    Patch_AE_DIA_BENNET_PAL_REFORGE_desc = "Naprawiłbyś mi ten zardzewiały pancerz paladyna?";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_PAL_REFORGE_4_1_PL"); //Naprawiłbyś mi ten zardzewiały pancerz paladyna?
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_01_PL"); //Przepraszam, ale nie mogę.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_03_PL"); //Nic osobistego, przecież wyciągnąłeś mnie z więzienia.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_04_PL"); //Ale co inni na farmie mogliby pomyśleć, jeśli zacząłbym naprawiać tu zbroję paladyna?
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_05_PL"); //Musisz znaleźć innego kowala.
    Patch_AE_DIA_BENNET_PAL_REFORGE_entry = "Bennet nie naprawi mojej zbroi.";

    Patch_AE_DIA_Bennet_CROSSBOW_desc = "Czy jest dla mnie jakiś lżejszy pancerz? (Wymień lekki pancerz łowcy smoków)";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_CROSSBOW_15_01_PL"); //Czy jest dla mnie jeszcze jakiś lżejszy pancerz?
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_CROSSBOW_15_02_PL"); //Nie zrozum mnie źle, jestem za niego wdzięczny, ale wolę coś jeszcze lżejszego.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_CROSSBOW_13_03_PL"); //Właściwie to tak, zrobiłem jeden z nich, jeśli chcesz, możemy się wymienić.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_CROSSBOW_15_04_PL"); //Dzięki, wezmę to.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_CROSSBOW_15_9_PL"); //Oto on, oby dobrze ci służył.

    Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CM_desc = "Średni pancerz tropiciela smoków. Ochrona: 110/110/110/65/25. 12000 sztuk złota.";  
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_15_00_PL"); //Kupię tę zbroję.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_01_PL"); //Oh, świetnie. Spodoba ci się.
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_15_02_PL"); //Za taką cenę musi się spodobać.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_03_PL"); //Jeszcze zobaczysz, że jest jej warta.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_04_PL"); //Nie masz dość złota.

    Patch_AE_DIA_Bennet_PATCH_DJG_ARMOR_CH_desc = "Ciężki pancerz tropiciela smoków. Ochrona: 140/140/140/90/40. 20000 sztuk złota.";
    // AI_Output(other, self, "PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_15_00_PL"); //Daj mi tę zbroję.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_06_01_PL"); //To najlepsza zbroja, jaką kiedykolwiek stworzyłem.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_06_02_PL"); //Prawdziwe arcydzieło.
    // AI_Output(self, other, "PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_06_03_PL"); //Nie masz dość złota.

    // Localized OU (do not change)
    PATCH_AE_DIA_BENNET_SLDARMORASK_15_01 = "PATCH_AE_DIA_BENNET_SLDARMORASK_15_01_PL";
    PATCH_AE_DIA_BENNET_SLDARMORASK_13_02 = "PATCH_AE_DIA_BENNET_SLDARMORASK_13_02_PL";
    PATCH_AE_DIA_BENNET_SLDARMORASK_13_03 = "PATCH_AE_DIA_BENNET_SLDARMORASK_13_03_PL";
    PATCH_AE_DIA_BENNET_SLDARMORASK_15_04 = "PATCH_AE_DIA_BENNET_SLDARMORASK_15_04_PL";
    PATCH_AE_DIA_BENNET_SLDARMORASK_13_05 = "PATCH_AE_DIA_BENNET_SLDARMORASK_13_05_PL";
    PATCH_AE_DIA_BENNET_SLDARMORASK_13_07 = "PATCH_AE_DIA_BENNET_SLDARMORASK_13_07_PL";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_01 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_01_PL";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_04 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_04_PL";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_13_06 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_13_06_PL";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_13_07 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_13_07_PL";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_09 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDHUH_15_09_PL";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_01 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_01_PL";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_11 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_11_PL";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_12 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_12_PL";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_13 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_13_PL";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_14 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_14_PL";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_15 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_15_15_PL";
    PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_16 = "PATCH_AE_DIA_BENNET_SLD_LREFORGEDARMOR_13_16_PL";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_01 ="PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_01_PL";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_03 ="PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_03_PL";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_04 ="PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_04_PL";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_05 ="PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_05_PL";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_06 ="PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_13_06_PL";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_08 ="PATCH_AE_DIA_BENNET_MERC_MREFORGEDHUH_15_08_PL";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_01 = "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_01_PL";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_10 = "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_10_PL";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_11 = "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_11_PL";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_12 = "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_12_PL";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_13 = "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_13_PL";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_14 = "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_15_14_PL";
    PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_16 = "PATCH_AE_DIA_BENNET_MERC_MREFORGEDARMOR_13_16_PL";
    PATCH_AE_DIA_BENNET_PAL_REFORGE_4_1 = "PATCH_AE_DIA_BENNET_PAL_REFORGE_4_1_PL";
    PATCH_AE_DIA_BENNET_PAL_REFORGE_3_01 = "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_01_PL";
    PATCH_AE_DIA_BENNET_PAL_REFORGE_3_03 = "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_03_PL";
    PATCH_AE_DIA_BENNET_PAL_REFORGE_3_04 = "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_04_PL";
    PATCH_AE_DIA_BENNET_PAL_REFORGE_3_05 = "PATCH_AE_DIA_BENNET_PAL_REFORGE_3_05_PL";
    PATCH_AE_DIA_BENNET_CROSSBOW_15_01 = "PATCH_AE_DIA_BENNET_CROSSBOW_15_01_PL";
    PATCH_AE_DIA_BENNET_CROSSBOW_15_02 = "PATCH_AE_DIA_BENNET_CROSSBOW_15_02_PL";
    PATCH_AE_DIA_BENNET_CROSSBOW_13_03 = "PATCH_AE_DIA_BENNET_CROSSBOW_13_03_PL";
    PATCH_AE_DIA_BENNET_CROSSBOW_15_04 = "PATCH_AE_DIA_BENNET_CROSSBOW_15_04_PL";
    PATCH_AE_DIA_BENNET_CROSSBOW_15_9 = "PATCH_AE_DIA_BENNET_CROSSBOW_15_9_PL";
    PATCH_AE_DIA_BENNET_DJG_ARMOR_M_15_00 = "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_15_00_PL";
    PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_01 = "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_01_PL";
    PATCH_AE_DIA_BENNET_DJG_ARMOR_M_15_02 = "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_15_02_PL";
    PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_03 = "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_03_PL";
    PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_04 = "PATCH_AE_DIA_BENNET_DJG_ARMOR_M_06_04_PL";
    PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_15_00 = "PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_15_00_PL";
    PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_06_01 = "PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_06_01_PL";
    PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_06_02 = "PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_06_02_PL";
    PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_06_03 = "PATCH_AE_DIA_BENNET_PATCH_DJG_ARMOR_CH_06_03_PL";

    // ------
    // Brian
    // ------

    Patch_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_desc = "Potrzebuję więcej surowej stali.";
    // AI_Output(other, self, "PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_15_01_PL"); //Potrzebuję więcej surowej stali.
    // AI_Output(self, other, "PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_02_PL"); //Mogę ci sprzedać jej trochę z osobistych zapasów, ale będzie cię to drogo kosztować.
    // AI_Output(self, other, "PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_03_PL"); //200 sztuk złota.

    Patch_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_desc = "Sprzedaj mi jedną sztukę surowej stali (200 sztuk złota).";
    // AI_Output(other, self, "PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_1_PL"); //Sprzedaj mi jedną sztukę surowej stali.
    // AI_Output(self, other, "PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_2_PL"); //Oto ona.
    // AI_Output(self, other, "PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_3_PL"); //Wróć, gdy będziesz miał dość złota.

    // Localized OU (do not change)
    PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_15_01 = "PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_15_01_PL";
    PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_02 = "PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_02_PL";
    PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_03 = "PATCH_AE_DIA_BRIAN_BUYRAWSTEEL_PATCHOC_13_03_PL";
    PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_1 = "PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_1_PL";
    PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_2 = "PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_2_PL";
    PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_3 = "PATCH_AE_DIA_PATCHOC_BRIAN_IWANNABUYSOMESTEEL_4_3_PL";

    // ------
    // Carl
    // ------

    Patch_AE_DIA_CARL_PAL_REFORGE_desc = "Mógłbyś naprawić dla mnie ten zardzewiały pancerz paladyna?";
    // AI_Output(other, self, "PATCH_AE_DIA_CARL_PAL_REFORGE_4_1_PL"); //Mógłbyś naprawić dla mnie ten zardzewiały pancerz paladyna?
    // AI_Output(self, other, "PATCH_AE_DIA_CARL_PAL_REFORGE_3_01_PL"); //Pancerz paladyna?
    // AI_Output(self, other, "PATCH_AE_DIA_CARL_PAL_REFORGE_3_02_PL"); //Wybacz chłopcze, to nie mój poziom.
    // AI_Output(self, other, "PATCH_AE_DIA_CARL_PAL_REFORGE_3_03_PL"); //Musisz poszukać sobie innego kowala.
    Patch_AE_DIA_CARL_PAL_REFORGE_entry = "Carl nie naprawi mojej zbroi.";

    // Localized OU (do not change)
    PATCH_AE_DIA_CARL_PAL_REFORGE_4_1 = "PATCH_AE_DIA_CARL_PAL_REFORGE_4_1_PL";
    PATCH_AE_DIA_CARL_PAL_REFORGE_3_01 = "PATCH_AE_DIA_CARL_PAL_REFORGE_3_01_PL";
    PATCH_AE_DIA_CARL_PAL_REFORGE_3_02 = "PATCH_AE_DIA_CARL_PAL_REFORGE_3_02_PL";
    PATCH_AE_DIA_CARL_PAL_REFORGE_3_03 = "PATCH_AE_DIA_CARL_PAL_REFORGE_3_03_PL";

    // ------
    // Engor
    // ------

    Patch_AE_DIA_Engor_ARCHER_KAUFEN_desc = "Zbroja kusznika straży. Ochrona: 65/65/65/10/10. 2300 sztuk złota.";  
    // AI_Output(other, self, "PATCH_AE_DIA_ENGOR_ARCHER_KAUFEN_15_00_PL"); //Daj mi tę zbroję.
    // AI_Output(self, other, "PATCH_AE_DIA_ENGOR_ARCHER_KAUFEN_13_01_PL"); //Oto ona. Da ci świetną ochronę. Naprawdę dobry materiał.
    // AI_Output(self, other, "PATCH_AE_DIA_ENGOR_ARCHER_KAUFEN_13_02_PL"); //Najpierw przynieś mi złoto.

    // Localized OU (do not change)
    PATCH_AE_DIA_ENGOR_ARCHER_KAUFEN_15_00 = "PATCH_AE_DIA_ENGOR_ARCHER_KAUFEN_15_00_PL";
    PATCH_AE_DIA_ENGOR_ARCHER_KAUFEN_13_01 = "PATCH_AE_DIA_ENGOR_ARCHER_KAUFEN_13_01_PL";
    PATCH_AE_DIA_ENGOR_ARCHER_KAUFEN_13_02 = "PATCH_AE_DIA_ENGOR_ARCHER_KAUFEN_13_02_PL";

    // ------
    // Garond
    // ------

    // AI_Output(self, other, "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_03_PL"); //Zatrzymaj się.
    // AI_Output(self, other, "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_04_PL"); //Jesteś jedynym z nas, któremu jak dotąd udało się zabić smoka.
    // AI_Output(self, other, "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_05_PL"); //Mam nadzieję, że dorwiesz je wszystkie.
    // AI_Output(self, other, "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_06_PL"); //Weź to, powinno ci pomóc w twojej misji. A teraz idź, nie ma zbyt wiele czasu do stracenia.
    // AI_Output(other, self, "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_15_01_PL"); //Dziękuję.

    // Localized OU (do not change)
    PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_03 = "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_03_PL";
    PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_04 = "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_04_PL";
    PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_05 = "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_05_PL";
    PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_06 = "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_01_06_PL";
    PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_15_01 = "PATCH_AE_DIA_GAROND_KNIGHT_ARMORREWARD_15_01_PL";

    // ------
    // Greg
    // ------

    Patch_AE_DIA_Addon_Greg_RavenDead_ARMOREXPANSION_desc = "A co z lepszą zbroją?";
    // AI_Output(other, self, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_15_00_PL"); //A co z lepszą zbroją?
    // AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_01_PL"); //Co ty sobie do cholery myślisz?
    // AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_02_PL"); //Dorwałeś Kruka i nagle staniesz się przez to nowym kapitanem?
    // AI_Output(other, self, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_15_03_PL"); //Nie o to mi chodzilo. Nadal jesteś kapitanem. Po prostu obawiam się o swój pancerz.
    // AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_04_PL"); //Dobra, mogę sprzedać ci jeden z mojej osobistej kolekcji.
    // AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_05_PL"); //Ale będzie cię to dużo kosztować. Chcę za to 2700 sztuk złota.
    Patch_AE_DIA_Addon_Greg_RavenDead_ARMOREXPANSION_entry = "Mogę kupić od Grega pancerz kapitana za 2700 sztuk złota.";

    Patch_AE_DIA_Addon_Greg_BUY_ARMOREXPANSION_desc = "Pancerz kapitana. Ochrona: 75/75/75/25/15. +5% br. jedn. +10 zrę. 2300 szt. złota.";
    // AI_Output(other, self, "PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_1_PL"); //Sprzedaj mi pancerz kapitana.
    // AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_2_PL"); //Oto on, ale pamiętaj - to ja jestem nadal kapitanem.
    // AI_Output(self, other, "PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_3_PL"); //Wróć, gdy będziesz miał dość złota.

    // Localized OU (do not change)
    PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_15_00 = "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_15_00_PL";
    PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_01 = "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_01_PL";
    PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_02 = "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_02_PL";
    PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_15_03 = "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_15_03_PL";
    PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_04 = "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_04_PL";
    PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_05 = "PATCH_AE_DIA_ADDON_GREG_RAVENDEAD_ARMOREXPANSION_01_05_PL";
    PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_1 = "PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_1_PL";
    PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_2 = "PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_2_PL";
    PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_3 = "PATCH_AE_DIA_ADDON_GREG_BUY_ARMOREXPANSION_4_3_PL";

    // ------
    // Hagen
    // ------

    Patch_AE_DIA_Lord_Hagen_CROSSBOW_desc = "Czy jest dla mnie jakaś lżejsza zbroja? (Wymień obecną zbroję)";
    // AI_Output(other, self, "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_01_PL"); //Czy jest dla mnie jakaś lżejsza zbroja?
    // AI_Output(other, self, "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_02_PL"); //Wolę walczyć na dystans.
    // AI_Output(self, other, "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_13_03_PL"); //Mogę wymienić twoją zbroję rycerską na lżejszą wersję przeznaczoną dla kuszników.
    // AI_Output(other, self, "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_04_PL"); //Wezmę ją.
    // AI_Output(self, other, "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_9_PL"); //Noś ją z honorem, rycerzu.

    // Localized OU (do not change)
    PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_01 = "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_01_PL";
    PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_02 = "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_02_PL";
    PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_13_03 = "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_13_03_PL";
    PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_04 = "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_04_PL";
    PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_9 = "PATCH_AE_DIA_LORD_HAGEN_CROSSBOW_15_9_PL";

    // ------
    // Harad
    // ------

    Patch_AE_DIA_HARAD_PAL_SHOW_desc = "Mógłbyś naprawić dla mnie ten zardzewiały pancerz paladyna?";
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_PAL_SHOW_4_1_PL"); //Mógłbyś naprawić dla mnie ten zardzewiały pancerz paladyna?
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_01_PL"); //Niech no spójrzmy.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_02_PL"); //Minęło już wiele czasu odkąd widziałem zbroję taką, jak ta.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_03_PL"); //Są one wykuwane z innego stopu metalu i magicznej rudy niż pozostałe, a następnie błogosławione przez magów z klasztoru w Nordmarze.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_04_PL"); //Rdza nie wniknęła zbyt głęboko, więc naprawa nie będzie zbyt trudna.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_05_PL"); //Jeśli będę miał odpowiednie materiały, oczywiście.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_06_PL"); //Gdzie go znalazłeś?
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_PAL_SHOW_3_07_PL"); //Martin mi go sprzedał, leżał wśród wyposażenia paladynów, więc chciałem go użyć.
    Patch_AE_DIA_HARAD_PAL_SHOW_entry = "Harad zgodził się naprawić mój pancerz.";

    Patch_AE_DIA_HARAD_PALADIN_REFORGE_desc = "Więc, czego potrzebujesz, by naprawić ten pancerz?";
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_01_PL"); //Więc, czego potrzebujesz, by naprawić ten pancerz?
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_02_PL"); //Hmm, daj mi pomyśleć.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_04_PL"); //Kilka sztuk surowej stali, sześć powinno wystarczyć.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_05_PL"); //3 bryłki magicznej rudy.
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_06_PL"); //Czego chcesz w zamian za twój wysiłek?
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_07_PL"); //Niczego. To sama przyjemność pracować nad taką zbroją, jak ta.
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_08_PL"); //W porządku, postaram się zdobyć materiały.
    Patch_AE_DIA_HARAD_PALADIN_REFORGE_entry1 = "Harad będzie potrzebował 6 sztuk surowej stali i 3 bryłki rudy, by naprawić zardzewiały pancerz paladyna.";
    
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_9_PL"); //Oto pancerz.
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_10_PL"); //A tu materiały.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_11_PL"); //W porządku, biorę się do pracy.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_12_PL"); //Gotowe.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_13_PL"); //Oto on, udało mi się go naprawić.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_14_PL"); //Ale nie mogłem przywrócić jego magicznej mocy.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_15_PL"); //W tym celu, będziesz potrzebował doświadczonego maga ognia, który zechciałby konsekrować tę zbroję dla ciebie.
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_14_PL"); //Dziękuję.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_16_PL"); //Wróć, gdzie zbierzesz wszystkie materiały.
    Patch_AE_DIA_HARAD_PALADIN_REFORGE_entry2 = "Harad naprawił mój pancerz paladyna, ale nie zdołał przywrócić jego magicznej mocy. Muszę znaleźć doświadczonego maga, który zechciałby to zrobić. Mam nawet kogoś na myśli.";

    Patch_AE_DIA_HARAD_END_MAKE_desc = "Mógłbyś przekuć dla mnie ten pancerz paladyna?";
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_END_MAKE_1_PL"); //Mógłbyś przekuć dla mnie ten pancerz paladyna?
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_END_MAKE_2_PL"); //Jasne, ale nie wiem, co chciałbyś, bym w nim zmienił.
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_END_MAKE_3_PL"); //Używam broni dystansowej, więc chciałbym, by była lżejsza.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_END_MAKE_4_PL"); //Nie powinno być to zbyt trudne. Jestem pewien, że uda mi się to zrobić.
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_END_MAKE_5_PL"); //Co za to chcesz?
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_END_MAKE_6_PL"); //Nic. Usługi dla paladynów są za darmo.
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_END_MAKE_7_PL"); //W takim razie, oto ona.
    // AI_Output(self, other, "PATCH_AE_DIA_HARAD_END_MAKE_8_PL"); //Zrobione. To nie było zbyt trudne. Weź ją.
    // AI_Output(other, self, "PATCH_AE_DIA_HARAD_END_MAKE_9_PL"); //Dziękuję.

    // Localized OU (do not change)
    PATCH_AE_DIA_HARAD_PAL_SHOW_4_1 = "PATCH_AE_DIA_HARAD_PAL_SHOW_4_1_PL";
    PATCH_AE_DIA_HARAD_PAL_SHOW_3_01 = "PATCH_AE_DIA_HARAD_PAL_SHOW_3_01_PL";
    PATCH_AE_DIA_HARAD_PAL_SHOW_3_02 = "PATCH_AE_DIA_HARAD_PAL_SHOW_3_02_PL";
    PATCH_AE_DIA_HARAD_PAL_SHOW_3_03 = "PATCH_AE_DIA_HARAD_PAL_SHOW_3_03_PL";
    PATCH_AE_DIA_HARAD_PAL_SHOW_3_04 = "PATCH_AE_DIA_HARAD_PAL_SHOW_3_04_PL";
    PATCH_AE_DIA_HARAD_PAL_SHOW_3_05 = "PATCH_AE_DIA_HARAD_PAL_SHOW_3_05_PL";
    PATCH_AE_DIA_HARAD_PAL_SHOW_3_06 = "PATCH_AE_DIA_HARAD_PAL_SHOW_3_06_PL";
    PATCH_AE_DIA_HARAD_PAL_SHOW_3_07 = "PATCH_AE_DIA_HARAD_PAL_SHOW_3_07_PL";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_01 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_01_PL";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_02 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_02_PL";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_04 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_04_PL";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_05 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_05_PL";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_06 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_06_PL";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_07 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_07_PL";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_08 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_08_PL";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_9 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_9_PL";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_10 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_10_PL";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_11 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_11_PL";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_12 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_12_PL";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_13 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_13_PL";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_14 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_14_PL";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_15 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_15_PL";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_14 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_15_14_PL";
    PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_16 = "PATCH_AE_DIA_HARAD_PALADIN_REFORGE_13_16_PL";
    PATCH_AE_DIA_HARAD_END_MAKE_1 = "PATCH_AE_DIA_HARAD_END_MAKE_1_PL";
    PATCH_AE_DIA_HARAD_END_MAKE_2 = "PATCH_AE_DIA_HARAD_END_MAKE_2_PL";
    PATCH_AE_DIA_HARAD_END_MAKE_3 = "PATCH_AE_DIA_HARAD_END_MAKE_3_PL";
    PATCH_AE_DIA_HARAD_END_MAKE_4 = "PATCH_AE_DIA_HARAD_END_MAKE_4_PL";
    PATCH_AE_DIA_HARAD_END_MAKE_5 = "PATCH_AE_DIA_HARAD_END_MAKE_5_PL";
    PATCH_AE_DIA_HARAD_END_MAKE_6 = "PATCH_AE_DIA_HARAD_END_MAKE_6_PL";
    PATCH_AE_DIA_HARAD_END_MAKE_7 = "PATCH_AE_DIA_HARAD_END_MAKE_7_PL";
    PATCH_AE_DIA_HARAD_END_MAKE_8 = "PATCH_AE_DIA_HARAD_END_MAKE_8_PL";
    PATCH_AE_DIA_HARAD_END_MAKE_9 = "PATCH_AE_DIA_HARAD_END_MAKE_9_PL";

    // ------
    // Huno
    // ------

    Patch_AE_DIA_HUNO_PAL_REFORGE_desc = "Mógłbyś naprawić dla mnie ten zardzewiały pancerz paladyna?";
    // AI_Output(other, self, "PATCH_AE_DIA_HUNO_PAL_REFORGE_4_1_PL"); //Mógłbyś naprawić dla mnie ten zardzewiały pancerz paladyna?
    // AI_Output(self, other, "PATCH_AE_DIA_HUNO_PAL_REFORGE_3_01_PL"); //Absolutnie nie mam żadnego doświadczenia z pancerzami paladynów. Nie było niczego takiego w Kolonii.
    // AI_Output(self, other, "PATCH_AE_DIA_HUNO_PAL_REFORGE_3_02_PL"); //Przepraszam, ale nie mogę ci z tym pomóc.
    // AI_Output(self, other, "PATCH_AE_DIA_HUNO_PAL_REFORGE_3_03_PL"); //Musisz znaleźć sobie innego kowala.
    Patch_AE_DIA_HUNO_PAL_REFORGE_entry = "Huno nie naprawi mojego pancerza.";

    // Localized OU (do not change)
    PATCH_AE_DIA_HUNO_PAL_REFORGE_4_1 = "PATCH_AE_DIA_HUNO_PAL_REFORGE_4_1_PL";
    PATCH_AE_DIA_HUNO_PAL_REFORGE_3_01 = "PATCH_AE_DIA_HUNO_PAL_REFORGE_3_01_PL";
    PATCH_AE_DIA_HUNO_PAL_REFORGE_3_02 = "PATCH_AE_DIA_HUNO_PAL_REFORGE_3_02_PL";
    PATCH_AE_DIA_HUNO_PAL_REFORGE_3_03 = "PATCH_AE_DIA_HUNO_PAL_REFORGE_3_03_PL";

    // ------
    // Jan
    // ------

    Patch_AE_DIA_JAN_PAL_REFORGE_desc = "Mógłbyś naprawić dla mnie ten zardzewiały pancerz paladyna?";
    // AI_Output(other, self, "PATCH_AE_DIA_JAN_PAL_REFORGE_4_1_PL"); //Mógłbyś naprawić dla mnie ten zardzewiały pancerz paladyna?
    // AI_Output(self, other, "PATCH_AE_DIA_JAN_PAL_REFORGE_3_01_PL"); //Stąpam po cienkim lodzie, pracująć tutaj.
    // AI_Output(self, other, "PATCH_AE_DIA_JAN_PAL_REFORGE_3_02_PL"); //Nie zamierzam ryzykować, by potem któryś z twoich kolegów wydał mnie za grzebanie w rzeczach paladynów.
    // AI_Output(self, other, "PATCH_AE_DIA_JAN_PAL_REFORGE_3_03_PL"); //Musisz znaleźć sobie innego kowala.
    Patch_AE_DIA_JAN_PAL_REFORGE_entry = "Łowca smoków Jan nie naprawi mojego pancerza.";

    // Localized OU (do not change)
    PATCH_AE_DIA_JAN_PAL_REFORGE_4_1 = "PATCH_AE_DIA_JAN_PAL_REFORGE_4_1_PL";
    PATCH_AE_DIA_JAN_PAL_REFORGE_3_01 = "PATCH_AE_DIA_JAN_PAL_REFORGE_3_01_PL";
    PATCH_AE_DIA_JAN_PAL_REFORGE_3_02 = "PATCH_AE_DIA_JAN_PAL_REFORGE_3_02_PL";
    PATCH_AE_DIA_JAN_PAL_REFORGE_3_03 = "PATCH_AE_DIA_JAN_PAL_REFORGE_3_03_PL";

    // ------
    // Lee
    // ------

    Patch_AE_DIA_LEE_SLD_SCOUTArmor_desc = "Czy jest dla mnie jakaś lżejsza zbroja?";
    // AI_Output(other, self, "PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_15_01_PL"); //Czy jest dla mnie jakaś lżejsza zbroja?
    // AI_Output(other, self, "PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_15_02_PL"); //Wolę korzystać z broni dystansowych?
    // AI_Output(self, other, "PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_13_03_PL"); //Nie mam niczego takiego dla ciebie, ale nie jesteś pierwszym, który o to pyta.
    // AI_Output(self, other, "PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_13_04_PL"); //Idź do Wilka. Sądzę, że powinien mieć coś dla ciebie.

    Patch_AE_DIA_LEE_SLD_BOWArmor_desc = "Zbroja łowcy nagród. Ochrona: 55/55, bonus do posługiwania się łukiem. 1500 szt. złota."
    
    // Localized OU (do not change)
    PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_15_01 = "PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_15_01_PL";
    PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_15_02 = "PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_15_02_PL";
    PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_13_03 = "PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_13_03_PL";
    PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_13_04 = "PATCH_AE_DIA_LEE_SLD_SCOUTARMOR_13_04_PL";

    // ------
    // Martin
    // ------

    Patch_AE_TOPIC_MARTIN_ARMOR = "Wyjątkowy pancerz paladyna";

    // AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_01_PL"); //Słyszałem, że zostałeś paladynem.
    // AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_02_PL"); //Być może mam dla ciebie coś specjalnego.
    // AI_Output(other, self, "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_03_PL"); //O czym ty mówisz?
    // AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_04_PL"); //Mam pewien wyjątki pancerz paladyna wśród zapasów.
    // AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_05_PL"); //Słyszałem, że ten typ zbroi wysoce chroni przed atakami magicznymi.
    // AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_06_PL"); //Leży już tu jednak od jakiegoś czasu, a nadmorska pogoda nie przyniosła mu nic dobrego.
    // AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_07_PL"); //Ale to nie coś, czego nie da się naprawić. Coś wymyślisz.
    // AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_08_PL"); //Za 2000 sztuk złota jest twoja.
    PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_entry = "Martin zaoferował mi wyjątkowy pancerz paladyna. Brzmi jak interesująca oferta.";

    Patch_AE_DIA_Martin_ARKPALA_BUY_desc = "Dobrze, wezmę ten pancerz. Ochrona: 80/80/80/20/20. 2000 szt. złota.";
    // AI_Output(other, self, "PATCH_AE_DIA_MARTIN_ARKPALA_BUY_4_1_PL"); //Dobrze, wezmę ten pancerz.
    // AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARKPALA_BUY_4_2_PL"); //W porządku, oto on.
    // AI_Output(self, other, "PATCH_AE_DIA_MARTIN_ARKPALA_BUY_4_3_PL"); //Wróć, gdy będziesz miał ze sobą dość złota.
    Patch_AE_DIA_Martin_ARKPALA_BUY_entry = "Kupiłem jakiś pancerz paladyna od Martina. Jest zardzewiały, ale doświadczony kowal mógłby go naprawić; muszę tylko znaleźć kogoś, kto chciałby się nim zająć.";

    // Localized OU (do not change)
    PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_01 = "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_01_PL";
    PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_02 = "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_02_PL";
    PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_03 = "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_03_PL";
    PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_04 = "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_04_PL";
    PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_05 = "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_05_PL";
    PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_06 = "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_06_PL";
    PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_07 = "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_07_PL";
    PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_08 = "PATCH_AE_DIA_MARTIN_ARCPALA_NOTIF_3_08_PL";
    PATCH_AE_DIA_MARTIN_ARKPALA_BUY_4_1 = "PATCH_AE_DIA_MARTIN_ARKPALA_BUY_4_1_PL";
    PATCH_AE_DIA_MARTIN_ARKPALA_BUY_4_2 = "PATCH_AE_DIA_MARTIN_ARKPALA_BUY_4_2_PL";
    PATCH_AE_DIA_MARTIN_ARKPALA_BUY_4_3 = "PATCH_AE_DIA_MARTIN_ARKPALA_BUY_4_3_PL";

    // ------
    // Matteo
    // ------
    Patch_AE_DIA_Matteo_GAMBESON_desc = "Przeszywanica myśliwego. 20/20/15/0/0/ +3% do łuku i kuszy. 350 szt. złota.";
    // AI_Output(other, self, "PATCH_AE_DIA_MATTEO_GAMBESON_15_00_PL"); //Dobrze, daj mi tę zbroję.
    // AI_Output(self, other, "PATCH_AE_DIA_MATTEO_GAMBESON_09_01_PL"); //Spodoba ci się.
    // AI_Output(self, other, "PATCH_AE_DIA_MATTEO_GAMBESON_09_02_PL"); //Pancerz ma wartość z złocie, więc wróć, gdy będziesz miał dość złota.

    // Localized OU (do not change)
    PATCH_AE_DIA_MATTEO_GAMBESON_15_00 = "PATCH_AE_DIA_MATTEO_GAMBESON_15_00_PL";
    PATCH_AE_DIA_MATTEO_GAMBESON_09_01 = "PATCH_AE_DIA_MATTEO_GAMBESON_09_01_PL";
    PATCH_AE_DIA_MATTEO_GAMBESON_09_02 = "PATCH_AE_DIA_MATTEO_GAMBESON_09_02_PL";

    // ------
    // Milten
    // ------

    Patch_AE_DIA_MILTEN_PALADINARMOR_desc = "Potrzebuję twojej pomocy.";
    // AI_Output(other, self, "PATCH_AE_DIA_MILTEN_PALADINARMOR_15_01_PL"); //Potrzebuję twojej pomocy.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_02_PL"); //Co się dzieje?
    // AI_Output(other, self, "PATCH_AE_DIA_MILTEN_PALADINARMOR_04_PL"); //Chcę przywrócić tej zbroi magiczną moc, mógłbyś to dla mnie zrobić?
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_05_PL"); //Pokaż mi to.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_06_PL"); //A niech mnie, nie spodziewałem się tego.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_07_PL"); //Taką zbroję paladyni z Myrtany zanoszą do klasztoru w Nordmarze, by ją pobłogosławić.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_08_PL"); //Słyszałem trochę o rytuale konsekracji, ale nie mam jeszcze wystarczającej wiedzy, aby go wykonać.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_09_PL"); //Jeśli się nie mylę, w klasztornej bibliotece znajduje się książka go opisująca.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_10_PL"); //Będę potrzebował trochę czasu na jej przestudiowanie. W międzyczasie powinieneś zająć się smokami w Górniczej Dolinie, czy coś. Wiesz jak to jest z oddziałem Garonda.
    // AI_Output(other, self, "PATCH_AE_DIA_MILTEN_PALADINARMOR_15_11_PL"); //Ta, zobaczymy się poźniej, Miltenie.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_12_PL"); //Powodzenia!
    Patch_AE_DIA_MILTEN_PALADINARMOR_entry = "Milten zgodził się mi pomóc w przywróceniu zbroi jej magicznej mocy, ale najpierw musi przestudiować, jak wykonać pewien rytuał. Zajmie mu to trochę czasu. Powiedział, bym w międzyczasie zajął się smokami w Górniczej Dolinie, czy coś.";

    Patch_AE_DIA_MILTEN_PLATEARMOR_desc = "Czy poczyniłeś postępy w nauce?";
    // AI_Output(other, self, "PATCH_AE_DIA_MILTEN_PLATEARMOR_15_01_PL"); //Czy poczyniłeś postępy w nauce?
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_02_PL"); //Tak, mogę przyznać, że rozumiem proces rytuału.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_03_PL"); //Ale będę potrzebował parę rzeczy.
    // AI_Output(other, self, "PATCH_AE_DIA_MILTEN_PLATEARMOR_15_04_PL"); //Jakich konkretnie?
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_05_PL"); //Zwój Zniszczenie zła, zwój Kuli ognia i dwie skały krystaliczne.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_06_PL"); //Tylko w ten sposób będę w stanie osiągnąć rezultaty podobne do rytuału w klasztorze w Nordmarze.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_07_PL"); //Dobrze, zdobędę te przedmioty.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_08_PL"); //Powodzenia, mam nadzieję, że ci się uda.
    Patch_AE_DIA_MILTEN_PLATEARMOR_entry = "Milten będzie potrzebował do rytuału zwój Zniszczenia zła, zwój Luli ognia i 2 skały krystaliczne.";

    Patch_AE_DIA_MILTEN_RITUALARMOR_desc = "Mam wszystko, czego będziesz potrzebował.";
    // AI_Output(other, self, "PATCH_AE_DIA_MILTEN_RITUALARMOR_15_01_PL"); //Mam wszystko, czego będziesz potrzebował.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_RITUALARMOR_13_02_PL"); //Ah, świetnie. Mogę zacząć rytuał.
    Patch_AE_DIA_MILTEN_RITUALARMOR_entry = "Przyniosłem Miltenowi wszystko, czego potrzebował do rytuału.";

    Patch_AE_DIA_MILTEN_LORDRMOR_desc = "Świetnie, i kiedy rytuał będzie gotowy?";
    // AI_Output(other, self, "PATCH_AE_DIA_MILTEN_LORDRMOR_15_00_PL"); //Świetnie, i kiedy rytuał będzie gotowy?
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_LORDRMOR_08_01_PL"); //Zajmie to trochę, wróć jutro.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_LORDRMOR_08_02_PL"); //Już go przeprowadziłem. Powiódł się.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_LORDRMOR_08_03_PL"); //Wszystko poszło zaskakująco gładko.
    // AI_Output(other, self, "PATCH_AE_DIA_MILTEN_LORDRMOR_15_04_PL"); //Cieszę się. Dziękuję.
    // AI_Output(self, other, "PATCH_AE_DIA_MILTEN_LORDRMOR_08_05_PL"); //Nie ma za co. Niech ci służy.
    // AI_Output(self, other, "PATCH_AE_DIA_WOLFEE_ARMORREADY_08_06_PL"); //NN
    Patch_AE_DIA_MILTEN_LORDRMOR_entry = "Milten udało się przywrócić pancerzowi jego magiczną moc.";

    // Localized OU (do not change)
    PATCH_AE_DIA_MILTEN_PALADINARMOR_15_01 = "PATCH_AE_DIA_MILTEN_PALADINARMOR_15_01_PL";
    PATCH_AE_DIA_MILTEN_PALADINARMOR_13_02 = "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_02_PL";
    PATCH_AE_DIA_MILTEN_PALADINARMOR_04 = "PATCH_AE_DIA_MILTEN_PALADINARMOR_04_PL";
    PATCH_AE_DIA_MILTEN_PALADINARMOR_13_05 = "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_05_PL";
    PATCH_AE_DIA_MILTEN_PALADINARMOR_13_06 = "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_06_PL";
    PATCH_AE_DIA_MILTEN_PALADINARMOR_13_07 = "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_07_PL";
    PATCH_AE_DIA_MILTEN_PALADINARMOR_13_08 = "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_08_PL";
    PATCH_AE_DIA_MILTEN_PALADINARMOR_13_09 = "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_09_PL";
    PATCH_AE_DIA_MILTEN_PALADINARMOR_13_10 = "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_10_PL";
    PATCH_AE_DIA_MILTEN_PALADINARMOR_15_11 = "PATCH_AE_DIA_MILTEN_PALADINARMOR_15_11_PL";
    PATCH_AE_DIA_MILTEN_PALADINARMOR_13_12 = "PATCH_AE_DIA_MILTEN_PALADINARMOR_13_12_PL";
    PATCH_AE_DIA_MILTEN_PLATEARMOR_15_01 = "PATCH_AE_DIA_MILTEN_PLATEARMOR_15_01_PL";
    PATCH_AE_DIA_MILTEN_PLATEARMOR_13_02 = "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_02_PL";
    PATCH_AE_DIA_MILTEN_PLATEARMOR_13_03 = "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_03_PL";
    PATCH_AE_DIA_MILTEN_PLATEARMOR_15_04 = "PATCH_AE_DIA_MILTEN_PLATEARMOR_15_04_PL";
    PATCH_AE_DIA_MILTEN_PLATEARMOR_13_05 = "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_05_PL";
    PATCH_AE_DIA_MILTEN_PLATEARMOR_13_06 = "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_06_PL";
    PATCH_AE_DIA_MILTEN_PLATEARMOR_13_07 = "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_07_PL";
    PATCH_AE_DIA_MILTEN_PLATEARMOR_13_08 = "PATCH_AE_DIA_MILTEN_PLATEARMOR_13_08_PL";
    PATCH_AE_DIA_MILTEN_RITUALARMOR_15_01 = "PATCH_AE_DIA_MILTEN_RITUALARMOR_15_01_PL";
    PATCH_AE_DIA_MILTEN_RITUALARMOR_13_02 = "PATCH_AE_DIA_MILTEN_RITUALARMOR_13_02_PL";
    PATCH_AE_DIA_MILTEN_LORDRMOR_15_00 = "PATCH_AE_DIA_MILTEN_LORDRMOR_15_00_PL";
    PATCH_AE_DIA_MILTEN_LORDRMOR_08_01 = "PATCH_AE_DIA_MILTEN_LORDRMOR_08_01_PL";
    PATCH_AE_DIA_MILTEN_LORDRMOR_08_02 = "PATCH_AE_DIA_MILTEN_LORDRMOR_08_02_PL";
    PATCH_AE_DIA_MILTEN_LORDRMOR_08_03 = "PATCH_AE_DIA_MILTEN_LORDRMOR_08_03_PL";
    PATCH_AE_DIA_MILTEN_LORDRMOR_15_04 = "PATCH_AE_DIA_MILTEN_LORDRMOR_15_04_PL";
    PATCH_AE_DIA_MILTEN_LORDRMOR_08_05 = "PATCH_AE_DIA_MILTEN_LORDRMOR_08_05_PL";
    PATCH_AE_DIA_WOLFEE_ARMORREADY_08_06 = "PATCH_AE_DIA_WOLFEE_ARMORREADY_08_06_PL";

    // ------
    // Mortis
    // ------

    Patch_AE_TOPIC_MORTIS_ARMOR = "Ulepszenia do pancerza straży.";

    PATCH_AE_DIA_MORTIS_ARMORQUESTION_desc = "Nie masz dla mnie jakiejś lepszej zbroi?";
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_ARMORQUESTION_15_01_PL"); //Nie masz dla mnie jakiejś lepszej zbroi?
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_02_PL"); //Tylko Lord Andre może dać ci lepszą zbroję.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_03_PL"); //Ale nie oznacza to, że nie mogę ulepszyć tej, którą już masz. Nie byłbyś pierwszą osobą, dla której bym to zrobił.
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_ARMORQUESTION_15_04_PL"); //Ile to będzie kosztować?
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_05_PL"); //Będziesz musiał przenieść mi materiały. Nic mi już nie zostało.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_06_PL"); //I jakieś złoto za moją pracę.
    PATCH_AE_DIA_MORTIS_ARMORQUESTION_entry = "Mortis może ulepszyć mój pancerz straży, jeśli przyniosę mu materiały i złoto.";

    PATCH_AE_DIA_MORTIS_MIL_LTHINGS_desc = "Chciałbym ulepszyć lekki pancerz.";
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_01_PL"); //Chciałbym ulepszyć lekki pancerz.
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_04_PL"); //Co do tego potrzebujesz?
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_06_PL"); //Do lekkiego pancerza wystarczająca będzie jedna sztuka surowej stali i skórę dzika.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_07_PL"); //I powiedzmy, że 200 sztuk złota zrobi robotę.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_08_PL"); //No i oczywiście, musisz przynieść mi zbroję.
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_09_PL"); //W porządku, postaram się to zdobyć.
    PATCH_AE_DIA_MORTIS_MIL_LTHINGS_entry = "Aby ulepszyć lekki pancerz, Mortis potrzebuje jednej sztuki surowej stali, skórę dzika i 200 sztuk złota.";

    PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_desc = "Mam wszystkie materiały potrzebne do ulepszenia lekkiego pancerza.";
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_15_01_PL"); //Mam wszystkie materiały potrzebne do ulepszenia lekkiego pancerza.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_12_PL"); //W porządku, zabiorę się do pracy.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_13_PL"); //Gotowe.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_14_PL"); //Oto on. Myślę, że wykonałem kawał dobrej roboty.
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_15_15_PL"); //Dziękuję.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_16_PL"); //Wróć, gdy zdobędziesz wszystko, co potrzeba.
    PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_entry = "Mortis ulepszył mój lekki pancerz.";

    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_desc = "Chciałbym ulepszyć mój średni pancerz.";
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_01_PL"); //Chciałbym ulepszyć mój średni pancerz.
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_03_PL"); //Co do tego potrzebujesz?
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_04_PL"); //Będziesz musiał mi przynieść więcej, niż do lekkiego pancerza.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_05_PL"); //Dwie sztuki surowej stali i skórę warga.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_06_PL"); //Wezmę 600 sztuk złota za tę pracę.
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_08_PL"); //W porządku, postaram się to zdobyć.
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_entry = "Aby ulepszyć średni pancerz, Mortis będzie potrzebował dwóch sztuk surowej stali, skórę warga i 600 sztuk złota.";

    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_desc = "Mam wszystkie materiały potrzebne do ulepszenia średniego pancerza.";
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_15_01_PL"); //Mam wszystkie materiały potrzebne do ulepszenia średniego pancerza.
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_15_10_PL"); //Oto one.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_11_PL"); //W porządku, zabiorę się do pracy.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_12_PL"); //Gotowe.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_13_PL"); //Oto on. Myślę, że wykonałem kawał dobrej roboty.
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_15_14_PL"); //Dziękuję.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_16_PL"); //Wróć, gdy zdobędziesz wszystko, co potrzeba
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_entry = "Mortis ulepszył mój średni pancerz.";

    PATCH_AE_DIA_MORTIS_PAL_REFORGE_desc = "Mógłbyś naprawić dla mnie ten zardzewiały pancerz paladyna?";
    // AI_Output(other, self, "PATCH_AE_DIA_MORTIS_PAL_REFORGE_4_1_PL"); //Mógłbyś naprawić dla mnie ten zardzewiały pancerz paladyna?
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_PAL_REFORGE_3_01_PL"); //Nie, nie mam na to czasu, ani doświadczenia.
    // AI_Output(self, other, "PATCH_AE_DIA_MORTIS_PAL_REFORGE_3_02_PL"); //Będziesz musiał sobie znaleźć innego kowala.
    PATCH_AE_DIA_MORTIS_PAL_REFORGE_entry = "Mortis nie naprawi mojego pancerza.";

    // Localized OU (do not change)
    PATCH_AE_DIA_MORTIS_ARMORQUESTION_15_01 = "PATCH_AE_DIA_MORTIS_ARMORQUESTION_15_01_PL";
    PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_02 = "PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_02_PL";
    PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_03 = "PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_03_PL";
    PATCH_AE_DIA_MORTIS_ARMORQUESTION_15_04 = "PATCH_AE_DIA_MORTIS_ARMORQUESTION_15_04_PL";
    PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_05 = "PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_05_PL";
    PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_06 = "PATCH_AE_DIA_MORTIS_ARMORQUESTION_13_06_PL";
    PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_01 = "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_01_PL";
    PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_04 = "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_04_PL";
    PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_06 = "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_06_PL";
    PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_07 = "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_07_PL";
    PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_08 = "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_13_08_PL";
    PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_09 = "PATCH_AE_DIA_MORTIS_MIL_LTHINGS_15_09_PL";
    PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_15_01 = "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_15_01_PL";
    PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_12 = "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_12_PL";
    PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_13 = "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_13_PL";
    PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_14 = "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_14_PL";
    PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_15_15 = "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_15_15_PL";
    PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_16 = "PATCH_AE_DIA_MORTIS_MIL_LREFORGEDARMOR_13_16_PL";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_01 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_01_PL";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_03 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_03_PL";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_04 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_04_PL";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_05 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_05_PL";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_06 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_13_06_PL";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_08 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMHUH_15_08_PL";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_15_01 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_15_01_PL";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_15_10 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_15_10_PL";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_11 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_11_PL";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_12 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_12_PL";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_13 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_13_PL";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_15_14 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_15_14_PL";
    PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_16 = "PATCH_AE_DIA_MORTIS_MILITIA_MEDIUMARMOR_13_16_PL";
    PATCH_AE_DIA_MORTIS_PAL_REFORGE_4_1 = "PATCH_AE_DIA_MORTIS_PAL_REFORGE_4_1_PL";
    PATCH_AE_DIA_MORTIS_PAL_REFORGE_3_01 = "PATCH_AE_DIA_MORTIS_PAL_REFORGE_3_01_PL";
    PATCH_AE_DIA_MORTIS_PAL_REFORGE_3_02 = "PATCH_AE_DIA_MORTIS_PAL_REFORGE_3_02_PL";

    // ----
    // Hero
    // ----

    Patch_AE_PC_FORGE_ARMOR_desc = "Wykuj zbroję";
    Patch_AE_PC_ITAR_PAL_ST_desc = "Wykuj stewarską zbroję płytową";
    Patch_AE_PC_ITAR_PAL_ANH_desc = "Usuń hełm ze wzmocnionego pancerza paladyna";
    Patch_AE_PC_ITAR_PAL_AFH_desc = "Opuść przyłbicę wzmocnionego pancerza paladyna";
    Patch_AE_PC_ITAR_PAL_AFH_NH_desc = "Opuść przyłbicę wzmocnionego pancerza paladyna";
    Patch_AE_PC_ITAR_PAL_ANH_FH_desc = "Usuń hełm ze wzmocnionego pancerza paladyna";
    Patch_AE_PC_ITAR_PAL_A_FH_desc = "Podnieś przybłicę wzmocnionego pancerza paladyna";
    Patch_AE_PC_ITAR_PAL_A_NH_desc = "Podnieś przybłicę wzmocnionego pancerza paladyna";
    Patch_AE_PC_ITAR_PAL_FNH_desc = "Usuń hełm z naprawionego pancerza paladyna";
    Patch_AE_PC_ITAR_PAL_FFH_desc = "Opuść przyłbicę naprawionego pancerza paladyna";
    Patch_AE_PC_ITAR_PAL_FFH_NH_desc = "Opuść przyłbicę naprawionego pancerza paladyna";
    Patch_AE_PC_ITAR_PAL_fNH_FH_desc = "Usuń hełm z naprawionego pancerza paladyna";
    Patch_AE_PC_ITAR_PAL_F_FH_desc = "Podnieś przyłbicę naprawionego pancerza paladyna";
    Patch_AE_PC_ITAR_PAL_F_NH_desc = "Podnieś przyłbicę wzmocnionego pancerza paladyna";
    Patch_AE_PC_ITAR_PAL_RNH_desc = "Usuń hełm z zardzewiałego pancerza paladyna";
    Patch_AE_PC_ITAR_PAL_RFH_desc = "Opuść przyłbicę zardzewiałego pancerza paladyna";
    Patch_AE_PC_ITAR_PAL_RFH_NH_desc = "Opuść przyłbicę zardzewiałego pancerza paladyna";
    Patch_AE_PC_ITAR_PAL_RNH_FH_desc = "Usuń hełm z zardzewiałego pancerza paladyna";
    Patch_AE_PC_ITAR_PAL_R_FH_desc = "Podnieś przyłbicę zardzewiałego pancerza paladyna";
    Patch_AE_PC_ITAR_PAL_R_NH_desc = "Podnieś przyłbicę zardzewiałego pancerza paladyna";
    Patch_AE_PC_ITAR_CRUSADER_NH_desc = "Usuń hełm ze zbroi krzyżowca";
    Patch_AE_PC_ITAR_nh_crusader_desc = "Przywróć hełm do zbroi krzyżowca";

    // ------
    // Ulthar
    // ------

    PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_desc = "Oczyściłem wszystkie kapliczki.";
    // AI_Output(self, other, "PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_01_PL"); //Czekaj, chcieliśmy wesprzeć cię nowym pancerzem w twojej walce ze złem.
    // AI_Output(self, other, "PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_02_PL"); //Weź tę zbroję krzyżowca. Będzie ci służyć.
    // AI_Output(other, self, "PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_03_PL"); //Dziękuję.

    // Localized OU (do not change)
    PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_01 = "PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_01_PL";
    PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_02 = "PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_02_PL";
    PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_03 = "PATCH_AE_DIA_ARMOREXPANSION_ULTHAR_05_03_PL";

    // ----
    // Wolf
    // ----

    PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_desc = "Słyszałem, że robisz pancerze dla zwiadowców.";
    // AI_Output(other, self, "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_01_PL"); //Słyszałem, że robisz pancerze dla zwiadowców.
    // AI_Output(other, self, "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_02_PL"); //Chciałbym wymienić ten, który już mam.
    // AI_Output(self, other, "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_13_03_PL"); //Jasne, właśnie jeden skończyłem. Weź go za darmo, ze względu na stare czasy.
    // AI_Output(other, self, "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_06_PL"); //Dzięki, koleś.
    // AI_Output(self, other, "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_13_07_PL"); //Nie ma za co.

    // Localized OU (do not change)
    PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_01 = "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_01_PL";
    PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_02 = "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_02_PL";
    PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_13_03 = "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_13_03_PL";
    PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_06 = "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_15_06_PL";
    PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_13_07 = "PATCH_AE_DIA_WOLF_SLD_SCOUTARMORBOUGHT_13_07_PL";
};

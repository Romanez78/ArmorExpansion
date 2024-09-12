
instance Patch_AE_DeadTreasureHunter (Npc_Default)
{
	// ------ NSC ------
	name 		= "Mrtvý lovec pokladů";
	guild 		= GIL_BAU;
	id 			= 44989;  // An ID that is unlikely already used in a mod
	voice 		= 14;
	flags       = 0;		//NPC_FLAG_IMMORTAL oder 0
	npctype		= NPCTYPE_AMBIENT;

	// ------ Attribute ------
	B_SetAttributesToChapter (self, 2);																	//setzt Attribute und LEVEL entsprechend dem angegebenen Kapitel (1-6)

	// ------ Kampf-Taktik ------
	fight_tactic		= FAI_HUMAN_STRONG;	// MASTER / STRONG / COWARD

	// ------ Equippte Waffen ------																	//Munition wird automatisch generiert, darf aber angegeben werden

	// ------ Inventory ------
	CreateInvItems (self, ITWR_BluePrint_StewarkArmor,1);
	CreateInvItems (self, ITMI_Gold,250);
	CreateInvItems (self, ITMI_Goldplate,1);
	CreateInvItems (self, ITMI_Silverring,2);
	CreateInvItems (self, ITMI_Silvercup,3);
	CreateInvItems (self, ITMI_SilverNecklace,1);
	CreateInvItems (self, ITMI_Goldcup,1);
	CreateInvItems (self, ITFO_Bacon,1);
	CreateInvItems (self, ITFO_Bread,2);
    CreateInvItems (self, ITFO_Cheese,1);
	CreateInvItems (self, ItPl_SwampHerb,3);
	CreateInvItems (self, ItMiSwordraw,4);
	CreateInvItems (self, ItMi_Zeitspalt_Addon,1);
	CreateInvItems (self, ItMi_Nugget,1);
	CreateInvItems (self, ItMw_Rubinklinge,1);
	// ------ visuals ------																			//Muss NACH Attributen kommen, weil in B_SetNpcVisual die Breite abh. v. STR skaliert wird
	B_SetNpcVisual 		(self, MALE, "Hum_Head_FatBald", Face_N_OldBald_Jeremiah, BodyTex_N, ITAR_djg_crawler);
	Mdl_SetModelFatness	(self, 2);
	Mdl_ApplyOverlayMds	(self, "Humans_Relaxed.mds"); // Tired / Militia / Mage / Arrogance / Relaxed

	// ------ NSC-relevante Talente vergeben ------
	B_GiveNpcTalents (self);

	// ------ Kampf-Talente ------																		//Der enthaltene B_AddFightSkill setzt Talent-Ani abhängig von TrefferChance% - alle Kampftalente werden gleichhoch gesetzt
	B_SetFightSkills (self, 60); //Grenzen für Talent-Level liegen bei 30 und 60i

	// ------ TA anmelden ------
	daily_routine 		= Rtn_Start_44989;
};

FUNC VOID Rtn_Start_44989 ()
{
    TA_Stand_WP	(08,00,23,00,"DT_E2_09");
    TA_Stand_WP	(23,00,08,00,"DT_E2_09");
};


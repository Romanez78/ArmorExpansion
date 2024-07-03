// ***************
// MY CHANGES
// ***************

/*
 *  [BONUSES]
 */
func void Ninja_ArmorExpansion_ItemsWithBonuses_HPMana_UnEquipping(var int attribute, var int bonus)
{
    // NOTE: There is a pitfall, that in vanilla scripts you can't use variables as parameters of arrays, only constants.
    // I reminded it already. So I have to do comparisions.
	if (ATR_MANA_MAX == attribute)
    {
        self.attribute[ATR_MANA_MAX] -= bonus;
        if (self.attribute[ATR_MANA] > bonus + 1)
        {
            self.attribute[ATR_MANA] -= bonus;
        }
        else
        {
            self.attribute[ATR_MANA] = 2;
        };
    };
};

const int NINJA_ArmorEXPANSION_ITAR_PAL_A_ARMOREXPANSION_BONUS_MANA = 40;
const int NINJA_ArmorEXPANSION_ITAR_PAL_F_ARMOREXPANSION_BONUS_MANA = 20;
var int Ninja_ArmorExpansion__ITAR_MIL_H_Equipped;
var int Ninja_ArmorExpansion__ITAR_SLD_BOW_Equipped;
INSTANCE ITAR_MIL_H_ARMOREXPANSION (C_Item)
{
	name 					=	"Tìžká Zbroj Domobrany";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	70;
	protection [PROT_BLUNT] = 	70;
	protection [PROT_POINT] = 	70;
	protection [PROT_FIRE] 	= 	15;
	protection [PROT_MAGIC] = 	15;
    
    on_equip				=   Ninja_ArmorExpansion__Equip_ITAR_MIL_H;
	on_unequip				=   Ninja_ArmorExpansion__UnEquip_ITAR_MIL_H;

	value 					=	2500;

	wear 					=	WEAR_TORSO;

	visual 					=	"HeavyMilitiaOC.3ds";
	visual_change 			=	"Armor_Thorus_ADDON2.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	description				=	name;

	TEXT[0]					= 	"";
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
func void Ninja_ArmorExpansion__Equip_ITAR_MIL_H()
{
    if (true == Npc_IsPlayer(self))
    {
        Ninja_ArmorExpansion__ITAR_MIL_H_Equipped = true;
    
        if (MIL01_Equipped == TRUE) // Gürtel
		{
			self.protection[PROT_EDGE] += BA_Bonus01;
			self.protection[PROT_BLUNT] += BA_Bonus01;
			self.protection[PROT_POINT] += BA_Bonus01;
			self.protection[PROT_MAGIC] += BA_Bonus01;
			self.protection[PROT_FIRE] += BA_Bonus01;
		};
    };
};
func void Ninja_ArmorExpansion__UnEquip_ITAR_MIL_H()
{
    if (true == Npc_IsPlayer(self))
    {
        Ninja_ArmorExpansion__ITAR_MIL_H_Equipped = false;
    
        if (MIL01_Equipped == TRUE) // Gürtel
		{
			self.protection[PROT_EDGE] -= BA_Bonus01;
			self.protection[PROT_BLUNT] -= BA_Bonus01;
			self.protection[PROT_POINT] -= BA_Bonus01;
			self.protection[PROT_MAGIC] -= BA_Bonus01;
			self.protection[PROT_FIRE] -= BA_Bonus01;
		};
    };
};
INSTANCE ITAR_GAMBESON_ARMOREXPANSION (C_Item)
{
	name 					=	"Lovecký Gambeson";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	20;
	protection [PROT_BLUNT] = 	20;
	protection [PROT_POINT] = 	15;
	protection [PROT_FIRE] 	= 	 0;
	protection [PROT_MAGIC] = 	 0;

	value 					=	350;

	wear 					=	WEAR_TORSO;

	visual 					=	"GAMBESON.3ds";
	visual_change 			=	"ARMOR_GAMBESON.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;
	
	on_equip    			=    Equip_ITAR_GAMBESON_ARMOREXPANSION;
    on_unequip    			=    UnEquip_ITAR_GAMBESON_ARMOREXPANSION;

	description				=	name;
	TEXT[0]                 =       "+3% støelecký talent.";
	
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
func void Equip_ITAR_GAMBESON_ARMOREXPANSION()
{
    // "self" it is C_NPC which is equipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, 3);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, 3);
};
func void UnEquip_ITAR_GAMBESON_ARMOREXPANSION()
{
    // "self" it is C_NPC which is unequipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, -3);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, -3);
	};
INSTANCE ITAR_PAL_A_ARMOREXPANSION (C_Item)
{
	name 					=	"Obohacená Paladinská Zbroj";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	140;
	protection [PROT_BLUNT] = 	140;
	protection [PROT_POINT] = 	140;
	protection [PROT_FIRE] 	= 	125;
	protection [PROT_MAGIC] = 	75;

	value 					=	VALUE_ITAR_PAL_H;

	wear 					=	WEAR_TORSO;

	visual 					=	"ARCPALA.3ds";
	visual_change 			=	"Armor_Pal_H112.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	on_equip    			=    Equip_ITAR_PAL_A_ARMOREXPANSION;
    on_unequip    			=    UnEquip_ITAR_PAL_A_ARMOREXPANSION;	
	
	description				=	name;
	TEXT[0]                 =       "+40 Bonus maximální many.";	

	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
FUNC VOID Equip_ItAr_PAL_A_ARMOREXPANSION()
	{
    // Mana
    self.attribute[ATR_MANA_MAX] += NINJA_ArmorEXPANSION_ITAR_PAL_A_ARMOREXPANSION_BONUS_MANA;
	self.attribute[ATR_MANA] += NINJA_ArmorEXPANSION_ITAR_PAL_A_ARMOREXPANSION_BONUS_MANA;
	};
FUNC VOID UnEquip_ItAr_PAL_A_ARMOREXPANSION()
	{
    // Mana
    Ninja_ArmorExpansion_ItemsWithBonuses_HPMana_UnEquipping(ATR_MANA_MAX, NINJA_ArmorEXPANSION_ITAR_PAL_A_ARMOREXPANSION_BONUS_MANA);
	};
INSTANCE ITAR_PAL_R_ARMOREXPANSION (C_Item)
{
	name 					=	"Rezavá Paladinská Zbroj";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	80;
	protection [PROT_BLUNT] = 	80;
	protection [PROT_POINT] = 	80;
	protection [PROT_FIRE] 	= 	20;
	protection [PROT_MAGIC] = 	20;

	value 					=	2000;

	wear 					=	WEAR_TORSO;

	visual 					=	"RUSTARC.3ds";
	visual_change 			=	"Armor_Pal_H600.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	description				=	name;
	TEXT[0]                 =       "Tahle zbroj zažila lepší èasy";	

	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
INSTANCE ITAR_PAL_F_ARMOREXPANSION (C_Item)
{
	name 					=	"Opravená Paladinská Zbroj";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	120;
	protection [PROT_BLUNT] = 	120;
	protection [PROT_POINT] = 	120;
	protection [PROT_FIRE] 	= 	70;
	protection [PROT_MAGIC] = 	40;

	value 					=	VALUE_ITAR_PAL_H;

	wear 					=	WEAR_TORSO;

	visual 					=	"ARCPALA.3ds";
	visual_change 			=	"Armor_Pal_H112.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	on_equip    			=    Equip_ITAR_PAL_F_ARMOREXPANSION;
    on_unequip    			=    UnEquip_ITAR_PAL_F_ARMOREXPANSION;	
	
	description				=	name;
	TEXT[0]                 =       "+20 bonus maximální many";	

	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
FUNC VOID Equip_ItAr_PAL_F_ARMOREXPANSION()
	{
    // Mana
    self.attribute[ATR_MANA_MAX] += NINJA_ArmorEXPANSION_ITAR_PAL_F_ARMOREXPANSION_BONUS_MANA;
	self.attribute[ATR_MANA] += NINJA_ArmorEXPANSION_ITAR_PAL_F_ARMOREXPANSION_BONUS_MANA;
	};
FUNC VOID UnEquip_ItAr_PAL_F_ARMOREXPANSION()
	{
    // Mana
    Ninja_ArmorExpansion_ItemsWithBonuses_HPMana_UnEquipping(ATR_MANA_MAX, NINJA_ArmorEXPANSION_ITAR_PAL_F_ARMOREXPANSION_BONUS_MANA);
	};
INSTANCE ITAR_PAL_C_ARMOREXPANSION (C_Item)
{
    name    =    "Zbroj Rytíøe Kušišníka";

    mainflag    =    ITEM_KAT_ARMOR;
    flags    =    0;

    protection [PROT_EDGE]  =    90;
    protection [PROT_BLUNT] =    90;
    protection [PROT_POINT] =    90;
    protection [PROT_FIRE]  =    40;
    protection [PROT_MAGIC] =    20;

    value    =    5000;

    wear    =    WEAR_TORSO;

    visual    =    "PALCROSBOW.3ds";
    visual_change    =    "Armor_Pal_M8.asc";
    visual_skin    =    0;
    material    =    MAT_METAL;

    on_equip    =    Equip_ITAR_PAL_C_ARMOREXPANSION;
    on_unequip    =    UnEquip_ITAR_PAL_C_ARMOREXPANSION;

    description    =    name;
	TEXT[0]                 =       "+5% støelecký talent";

    TEXT[1]    =    NAME_Prot_Edge;
    COUNT[1]    =    protection[PROT_EDGE];

    TEXT[2]    =    NAME_Prot_Point;
    COUNT[2]    =    protection[PROT_POINT];

    TEXT[3]    =    NAME_Prot_Fire;
    COUNT[3]    =    protection[PROT_FIRE];

    TEXT[4]    =    NAME_Prot_Magic;
    COUNT[4]    =    protection[PROT_MAGIC];

    TEXT[5]    =    NAME_Value;
    COUNT[5]    =    value;
};
func void Equip_ITAR_PAL_C_ARMOREXPANSION()
{
    // "self" it is C_NPC which is equipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, 5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, 5);
};
func void UnEquip_ITAR_PAL_C_ARMOREXPANSION()
{
    // "self" it is C_NPC which is unequipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, -5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, -5);
};
INSTANCE ITAR_MIL_Med2_ARMOREXPANSION (C_Item)
{
	name 					=	"Vylepšená Støednì Tìžká Zbroj Domobrany";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	60;
	protection [PROT_BLUNT] = 	60;
	protection [PROT_POINT] = 	60;
	protection [PROT_FIRE] 	= 	15;
	protection [PROT_MAGIC] = 	15;

	value 					=	2000;

	wear 					=	WEAR_TORSO;

	visual 					=	"MEDIUMMILR.3DS";
	visual_change 			=	"ARMOR_MIL_MEDIUM.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;
	
	    on_equip    		=    Ninja_ArmorExpansion__Equip_ITAR_MIL_Med2_ARMOREXPANSION;
    on_unequip    			=    Ninja_ArmorExpansion__UnEquip_ITAR_MIL_Med2_ARMOREXPANSION;
	
	description				=	name;
    TEXT[0]                 =       "";
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
func void Ninja_ArmorExpansion__Equip_ITAR_MIL_Med2_ARMOREXPANSION()
{
    if (true == Npc_IsPlayer(self))
    {
        Ninja_ArmorExpansion__ITAR_MIL_H_Equipped = true;
    
        if (MIL01_Equipped == TRUE) // Gürtel
		{
			self.protection[PROT_EDGE] += BA_Bonus01;
			self.protection[PROT_BLUNT] += BA_Bonus01;
			self.protection[PROT_POINT] += BA_Bonus01;
			self.protection[PROT_MAGIC] += BA_Bonus01;
			self.protection[PROT_FIRE] += BA_Bonus01;
		};
    };
};
func void Ninja_ArmorExpansion__UnEquip_ITAR_MIL_Med2_ARMOREXPANSION()
{
    if (true == Npc_IsPlayer(self))
    {
        Ninja_ArmorExpansion__ITAR_MIL_H_Equipped = false;
    
        if (MIL01_Equipped == TRUE) // Gürtel
		{
			self.protection[PROT_EDGE] -= BA_Bonus01;
			self.protection[PROT_BLUNT] -= BA_Bonus01;
			self.protection[PROT_POINT] -= BA_Bonus01;
			self.protection[PROT_MAGIC] -= BA_Bonus01;
			self.protection[PROT_FIRE] -= BA_Bonus01;
		};
    };
};
INSTANCE ITAR_MIL_P_ARMOREXPANSION (C_Item)
{
	name 					=	"Zbroj Milicionáøe Kušišníka";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	60;
	protection [PROT_BLUNT] = 	60;
	protection [PROT_POINT] = 	60;
	protection [PROT_FIRE] 	= 	10;
	protection [PROT_MAGIC] = 	10;

	value 					=	2000;

	wear 					=	WEAR_TORSO;

	visual 					=	"MilitiaRed.3DS";
	visual_change 			=	"ARMOR_MIL_P.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;
	
	on_equip    			=    Equip_ITAR_MIL_P_ARMOREXPANSION;
    on_unequip    			=    UnEquip_ITAR_MIL_P_ARMOREXPANSION;
	
	description				=	name;
    TEXT[0]                 =       "+5% støelecký talent";
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
func void Equip_ITAR_MIL_P_ARMOREXPANSION()
{
	B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, 5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, 5);
    if (true == Npc_IsPlayer(self))
    {
        Ninja_ArmorExpansion__ITAR_MIL_H_Equipped = true;
    
        if (MIL01_Equipped == TRUE) // Gürtel
		{
			self.protection[PROT_EDGE] += BA_Bonus01;
			self.protection[PROT_BLUNT] += BA_Bonus01;
			self.protection[PROT_POINT] += BA_Bonus01;
			self.protection[PROT_MAGIC] += BA_Bonus01;
			self.protection[PROT_FIRE] += BA_Bonus01;
		};
    };
};
func void UnEquip_ITAR_MIL_P_ARMOREXPANSION()
{
	B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, -5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, -5);
    if (true == Npc_IsPlayer(self))
    {
        Ninja_ArmorExpansion__ITAR_MIL_H_Equipped = false;
    
        if (MIL01_Equipped == TRUE) // Gürtel
		{
			self.protection[PROT_EDGE] -= BA_Bonus01;
			self.protection[PROT_BLUNT] -= BA_Bonus01;
			self.protection[PROT_POINT] -= BA_Bonus01;
			self.protection[PROT_MAGIC] -= BA_Bonus01;
			self.protection[PROT_FIRE] -= BA_Bonus01;
		};
    };
};
INSTANCE ITAR_MIL_M (C_Item)
{
	name 					=	"Støední Zbroj Domobrany";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	50;
	protection [PROT_BLUNT] = 	50;
	protection [PROT_POINT] = 	50;
	protection [PROT_FIRE] 	= 	10;
	protection [PROT_MAGIC] = 	10;

	value 					=	1500;

	wear 					=	WEAR_TORSO;

	visual 					=	"ItAr_MIL_M.3DS";
	visual_change 			=	"Armor_MIL_M.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;
	
	on_equip				=	Equip_ITAR_MIL_M;
	on_unequip				=	UnEquip_ITAR_MIL_M;
	
	description				=	name;

	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
INSTANCE ITAR_DJG_CL_ARMOREXPANSION (C_Item)
{
	name 					=	"Lehká Zbroj Lovce Drakù";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	90;
	protection [PROT_BLUNT] = 	90;
	protection [PROT_POINT] = 	90;
	protection [PROT_FIRE] 	= 	40;
	protection [PROT_MAGIC] = 	20;

	value 					=	4000;

	wear 					=	WEAR_TORSO;

	visual 					=	"DrachenLow.3ds";
	visual_change 			=	"DJGL.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;
	
	on_equip    			=    Equip_ITAR_DHT2S_ARMOREXPANSION;
    on_unequip    			=    UnEquip_ITAR_DHT2S_ARMOREXPANSION; 

	description				=	name; 
		
	TEXT[0]                 =       "+5% støelecký talent";
	TEXT[1]					=	NAME_Prot_Edge;		
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
func void Equip_ITAR_DHT2S_ARMOREXPANSION()
{
    // "self" it is C_NPC which is equipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, 5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, 5);
};
func void UnEquip_ITAR_DHT2S_ARMOREXPANSION()
{
    // "self" it is C_NPC which is unequipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, -5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, -5);
};
INSTANCE ITAR_SLD_BOW_ARMOREXPANSION (C_Item)
{
	name 					=	"Zbroj Nájemného Lovce";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	60;
	protection [PROT_BLUNT] = 	60;
	protection [PROT_POINT] = 	60;
	protection [PROT_FIRE] 	= 	10;
	protection [PROT_MAGIC] = 	10;

	value 					=	2500;

	wear 					=	WEAR_TORSO;

	visual 					=	"SLDHC.3ds";
	visual_change 			=	"Armor_SLD_BOW.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;
	
	on_equip				=	Equip_ITAR_SLD_BOW_ARMOREXPANSION;
	on_unequip				=	UnEquip_ITAR_SLD_BOW_ARMOREXPANSION;
	
	description				=	name;

	TEXT[0]					=	"+5% støelecký talent";
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
func void Equip_ITAR_SLD_BOW_ARMOREXPANSION()
{
    // "self" it is C_NPC which is equipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, 5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, 5);
    if (true == Npc_IsPlayer(self))
    {
        Ninja_ArmorExpansion__ITAR_SLD_BOW_Equipped = true;
    
        if (SLD01_Equipped == TRUE) // Gürtel
		{
			self.protection[PROT_EDGE] += BA_Bonus01;
			self.protection[PROT_BLUNT] += BA_Bonus01;
			self.protection[PROT_POINT] += BA_Bonus01;
			self.protection[PROT_MAGIC] += BA_Bonus01;
			self.protection[PROT_FIRE] += BA_Bonus01;
		};
    };
};
func void UnEquip_ITAR_SLD_BOW_ARMOREXPANSION()
{
    // "self" it is C_NPC which is unequipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, -5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, -5);
    if (true == Npc_IsPlayer(self))
    {
        Ninja_ArmorExpansion__ITAR_SLD_BOW_Equipped = false;
    
        if (SLD01_Equipped == TRUE) // Gürtel
		{
			self.protection[PROT_EDGE] -= BA_Bonus01;
			self.protection[PROT_BLUNT] -= BA_Bonus01;
			self.protection[PROT_POINT] -= BA_Bonus01;
			self.protection[PROT_MAGIC] -= BA_Bonus01;
			self.protection[PROT_FIRE] -= BA_Bonus01;
		};
    };
};
INSTANCE ITAR_MIL_R_ArmorExpansion (C_Item)
{
	name 					=	"Vylepšená Lehká Zbroj Domobrany";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	45;
	protection [PROT_BLUNT] = 	45;
	protection [PROT_POINT] = 	45;
	protection [PROT_FIRE] 	= 	10;
	protection [PROT_MAGIC] = 	10;

	value 					=	800;

	wear 					=	WEAR_TORSO;

	visual 					=	"LIGHTMILR.3DS";
	visual_change 			=	"Armor_MIL_R.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;
	
		on_equip			=	Equip_ITAR_MIL_R_ArmorExpansion;
	on_unequip				=	UnEquip_ITAR_MIL_R_ArmorExpansion;
	
	description				=	name;
	
	TEXT[0]                 =       "";
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
func void Equip_ITAR_MIL_R_ArmorExpansion()
{
    if (true == Npc_IsPlayer(self))
    {
        Ninja_ArmorExpansion__ITAR_MIL_H_Equipped = true;
    
        if (MIL01_Equipped == TRUE) // Gürtel
		{
			self.protection[PROT_EDGE] += BA_Bonus01;
			self.protection[PROT_BLUNT] += BA_Bonus01;
			self.protection[PROT_POINT] += BA_Bonus01;
			self.protection[PROT_MAGIC] += BA_Bonus01;
			self.protection[PROT_FIRE] += BA_Bonus01;
		};
    };
};
func void UnEquip_ITAR_MIL_R_ArmorExpansion()
{
    if (true == Npc_IsPlayer(self))
    {
        Ninja_ArmorExpansion__ITAR_MIL_H_Equipped = false;
    
        if (MIL01_Equipped == TRUE) // Gürtel
		{
			self.protection[PROT_EDGE] -= BA_Bonus01;
			self.protection[PROT_BLUNT] -= BA_Bonus01;
			self.protection[PROT_POINT] -= BA_Bonus01;
			self.protection[PROT_MAGIC] -= BA_Bonus01;
			self.protection[PROT_FIRE] -= BA_Bonus01;
		};
    };
};
INSTANCE ITAR_CRUSADER_ARMOREXPANSION (C_Item)
{
	name 					=	"Zbroj Køižáka";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	115;
	protection [PROT_BLUNT] = 	115;
	protection [PROT_POINT] = 	115;
	protection [PROT_FIRE] 	= 	65;
	protection [PROT_MAGIC] = 	40;
	
	value 					=	10000;

	wear 					=	WEAR_TORSO;

	visual 					=	"CRUSADERHELMETGROUND.3DS";
	visual_change 			=	"Armor_CRUSADER.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;
	
	on_equip				=	Equip_ITAR_CRUSADER_ARMOREXPANSION;
	on_unequip				=	UnEquip_ITAR_CRUSADER_ARMOREXPANSION;
	
	description				=	name;
	TEXT[0]                 =       "+5% obouruèní talent";
	
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
func void Equip_ITAR_CRUSADER_ARMOREXPANSION()
{
    B_RaiseFightTalent(self, NPC_TALENT_2H, 5);
};
func void UnEquip_ITAR_CRUSADER_ARMOREXPANSION()
{
    B_RaiseFightTalent(self, NPC_TALENT_2H, -5);
};
INSTANCE ITAR_SLD_SCOUT_ARMOREXPANSION (C_Item)
{
	name 					=	"Odìv Žoldáka Zvìda";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	35;
	protection [PROT_BLUNT] = 	35;
	protection [PROT_POINT] = 	35;
	protection [PROT_FIRE] 	= 	5;
	protection [PROT_MAGIC] = 	0;

	value 					=	500;

	wear 					=	WEAR_TORSO;

	visual 					=	"SLDSCOUT.3ds";
	visual_change 			=	"ARMOR_SLD_SCOUT.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;
	
	on_equip				=	Equip_ITAR_SLD_SCOUT_ARMOREXPANSION;
	on_unequip				=	UnEquip_ITAR_SLD_SCOUT_ARMOREXPANSION;

	description				=	name;

	TEXT[0]					= 	"+5% støelecký talent";
	
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
func void Equip_ITAR_SLD_SCOUT_ARMOREXPANSION()
{
    // "self" it is C_NPC which is equipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, 5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, 5);
    if (true == Npc_IsPlayer(self))
    {
        Ninja_ArmorExpansion__ITAR_SLD_BOW_Equipped = true;
    
        if (SLD01_Equipped == TRUE) // Gürtel
		{
			self.protection[PROT_EDGE] += BA_Bonus01;
			self.protection[PROT_BLUNT] += BA_Bonus01;
			self.protection[PROT_POINT] += BA_Bonus01;
			self.protection[PROT_MAGIC] += BA_Bonus01;
			self.protection[PROT_FIRE] += BA_Bonus01;
		};
    };
};
func void UnEquip_ITAR_SLD_SCOUT_ARMOREXPANSION()
{
    // "self" it is C_NPC which is unequipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, -5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, -5);
    if (true == Npc_IsPlayer(self))
    {
        Ninja_ArmorExpansion__ITAR_SLD_BOW_Equipped = false;
    
        if (SLD01_Equipped == TRUE) // Gürtel
		{
			self.protection[PROT_EDGE] -= BA_Bonus01;
			self.protection[PROT_BLUNT] -= BA_Bonus01;
			self.protection[PROT_POINT] -= BA_Bonus01;
			self.protection[PROT_MAGIC] -= BA_Bonus01;
			self.protection[PROT_FIRE] -= BA_Bonus01;
		};
    };
};
INSTANCE ITAR_MIL_SCOUT_ARMOREXPANSION (C_Item)
{
	name 					=	"Odìv Královského Zvìda";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	35;
	protection [PROT_BLUNT] = 	35;
	protection [PROT_POINT] = 	35;
	protection [PROT_FIRE] 	= 	5;
	protection [PROT_MAGIC] = 	0;

	value 					=	5000;

	wear 					=	WEAR_TORSO;

	visual 					=	"MilitiaScout.3ds";
	visual_change 			=	"ARMOR_MIL_SCOUT.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;
	
	on_equip				=	Equip_ITAR_MIL_SCOUT_ARMOREXPANSION;
	on_unequip				=	UnEquip_ITAR_MIL_SCOUT_ARMOREXPANSION;

	description				=	name;

	TEXT[0]					= 	"+5% støelecký talent";
	
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
func void Equip_ITAR_MIL_SCOUT_ARMOREXPANSION()
{
    // "self" it is C_NPC which is equipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, 5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, 5);
    if (true == Npc_IsPlayer(self))
    {
        Ninja_ArmorExpansion__ITAR_MIL_H_Equipped = true;
    
        if (MIL01_Equipped == TRUE) // Gürtel
		{
			self.protection[PROT_EDGE] += BA_Bonus01;
			self.protection[PROT_BLUNT] += BA_Bonus01;
			self.protection[PROT_POINT] += BA_Bonus01;
			self.protection[PROT_MAGIC] += BA_Bonus01;
			self.protection[PROT_FIRE] += BA_Bonus01;
		};
    };
};
func void UnEquip_ITAR_MIL_SCOUT_ARMOREXPANSION()
{
    // "self" it is C_NPC which is unequipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, -5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, -5);
    if (true == Npc_IsPlayer(self))
    {
        Ninja_ArmorExpansion__ITAR_MIL_H_Equipped = false;
    
        if (MIL01_Equipped == TRUE) // Gürtel
		{
			self.protection[PROT_EDGE] -= BA_Bonus01;
			self.protection[PROT_BLUNT] -= BA_Bonus01;
			self.protection[PROT_POINT] -= BA_Bonus01;
			self.protection[PROT_MAGIC] -= BA_Bonus01;
			self.protection[PROT_FIRE] -= BA_Bonus01;
		};
    };
};
INSTANCE ITAR_SLD_R_ARMOREXPANSION (C_Item)
{
	name 					=	"Vylepšená Støední Zbroj Žoldáka";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	60;
	protection [PROT_BLUNT] = 	60;
	protection [PROT_POINT] = 	60;
	protection [PROT_FIRE] 	= 	10;
	protection [PROT_MAGIC] = 	10;

	value 					=	1500;

	wear 					=	WEAR_TORSO;

	visual 					=	"SLDMR.3ds";
	visual_change 			=	"Armor_Sld_R.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;
	
	on_equip				= Equip_ITAR_SLD_R_ARMOREXPANSION;
	on_unequip				= UnEquip_ITAR_SLD_R_ARMOREXPANSION;
	
	description				=	name;

	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];

	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
func void Equip_ITAR_SLD_R_ARMOREXPANSION()
{
    if (true == Npc_IsPlayer(self))
    {
        Ninja_ArmorExpansion__ITAR_SLD_BOW_Equipped = true;
    
        if (SLD01_Equipped == TRUE) // Gürtel
		{
			self.protection[PROT_EDGE] += BA_Bonus01;
			self.protection[PROT_BLUNT] += BA_Bonus01;
			self.protection[PROT_POINT] += BA_Bonus01;
			self.protection[PROT_MAGIC] += BA_Bonus01;
			self.protection[PROT_FIRE] += BA_Bonus01;
		};
    };
};
func void UnEquip_ITAR_SLD_R_ARMOREXPANSION()
{
    if (true == Npc_IsPlayer(self))
    {
        Ninja_ArmorExpansion__ITAR_SLD_BOW_Equipped = false;
    
        if (SLD01_Equipped == TRUE) // Gürtel
		{
			self.protection[PROT_EDGE] -= BA_Bonus01;
			self.protection[PROT_BLUNT] -= BA_Bonus01;
			self.protection[PROT_POINT] -= BA_Bonus01;
			self.protection[PROT_MAGIC] -= BA_Bonus01;
			self.protection[PROT_FIRE] -= BA_Bonus01;
		};
    };
};
INSTANCE ITAR_SLD_LR_ARMOREXPANSION (C_Item)
{
	name 					=	"Vylepšená Lehká Zbroj Žoldáka";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	45;
	protection [PROT_BLUNT] = 	45;
	protection [PROT_POINT] = 	45;
	protection [PROT_FIRE] 	= 	5;
	protection [PROT_MAGIC] = 	0;

	value 					=	600;

	wear 					=	WEAR_TORSO;

	visual 					=	"SLDLR.3ds";
	visual_change 			=	"Armor_Sld_LR.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;
	
		on_equip			= Equip_ITAR_SLD_LR_ARMOREXPANSION;
	on_unequip				= UnEquip_ITAR_SLD_LR_ARMOREXPANSION;
	
	description				=	name;
	
	TEXT[1]					=	NAME_Prot_Edge;		
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;	
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
func void Equip_ITAR_SLD_LR_ARMOREXPANSION()
{
    if (true == Npc_IsPlayer(self))
    {
        Ninja_ArmorExpansion__ITAR_SLD_BOW_Equipped = true;
    
        if (SLD01_Equipped == TRUE) // Gürtel
		{
			self.protection[PROT_EDGE] += BA_Bonus01;
			self.protection[PROT_BLUNT] += BA_Bonus01;
			self.protection[PROT_POINT] += BA_Bonus01;
			self.protection[PROT_MAGIC] += BA_Bonus01;
			self.protection[PROT_FIRE] += BA_Bonus01;
		};
    };
};
func void UnEquip_ITAR_SLD_LR_ARMOREXPANSION()
{
    if (true == Npc_IsPlayer(self))
    {
        Ninja_ArmorExpansion__ITAR_SLD_BOW_Equipped = false;
    
        if (SLD01_Equipped == TRUE) // Gürtel
		{
			self.protection[PROT_EDGE] -= BA_Bonus01;
			self.protection[PROT_BLUNT] -= BA_Bonus01;
			self.protection[PROT_POINT] -= BA_Bonus01;
			self.protection[PROT_MAGIC] -= BA_Bonus01;
			self.protection[PROT_FIRE] -= BA_Bonus01;
		};
    };
};
INSTANCE ITAR_PAL_CH_ARMOREXPANSION (C_Item)
{
    name    =    "Zbroj Paladina Kušišníka";

    mainflag    =    ITEM_KAT_ARMOR;
    flags    =    0;

    protection [PROT_EDGE]  =    140;
    protection [PROT_BLUNT] =    140;
    protection [PROT_POINT] =    140;
    protection [PROT_FIRE]  =    80;
    protection [PROT_MAGIC] =    40;

    value    =    VALUE_ITAR_PAL_H;

    wear    =    WEAR_TORSO;

    visual    =    "ItAr_Pal_H.3ds";
    visual_change    =    "Armor_Pal_H4000.asc";
    visual_skin    =    0;
    material    =    MAT_METAL;

    on_equip    =    Equip_ITAR_PAL_CH_ARMOREXPANSION;
    on_unequip    =    UnEquip_ITAR_PAL_CH_ARMOREXPANSION;

    description    =    name;
	TEXT[0]                 =       "+5% støelecký talent";

    TEXT[1]    =    NAME_Prot_Edge;
    COUNT[1]    =    protection[PROT_EDGE];

    TEXT[2]    =    NAME_Prot_Point;
    COUNT[2]    =    protection[PROT_POINT];

    TEXT[3]    =    NAME_Prot_Fire;
    COUNT[3]    =    protection[PROT_FIRE];

    TEXT[4]    =    NAME_Prot_Magic;
    COUNT[4]    =    protection[PROT_MAGIC];

    TEXT[5]    =    NAME_Value;
    COUNT[5]    =    value;
};
func void Equip_ITAR_PAL_CH_ARMOREXPANSION()
{
    // "self" it is C_NPC which is equipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, 5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, 5);
};
func void UnEquip_ITAR_PAL_CH_ARMOREXPANSION()
{
    // "self" it is C_NPC which is unequipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, -5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, -5);
};
INSTANCE ITAR_DJG_CH_ARMOREXPANSION (C_Item)
{
    name    =    "Tìžká Zbroj Lovce Drakù";

    mainflag    =    ITEM_KAT_ARMOR;
    flags    =    0;

    protection [PROT_EDGE]  =    140;
    protection [PROT_BLUNT] =    140;
    protection [PROT_POINT] =    140;
    protection [PROT_FIRE]  =    90;
    protection [PROT_MAGIC] =    40;

    value    =    VALUE_ITAR_PAL_H;

    wear    =    WEAR_TORSO;

    visual    =    "DrachenHeavy.3ds";
    visual_change    =    "DJGF_NoHelmet.asc";
    visual_skin    =    0;
    material    =    MAT_METAL;

    on_equip    =    Equip_ITAR_DJG_CH_ARMOREXPANSION;
    on_unequip    =    UnEquip_ITAR_DJG_CH_ARMOREXPANSION;

    description    =    name;
	TEXT[0]                 =       "+5% støelecký talent";

    TEXT[1]    =    NAME_Prot_Edge;
    COUNT[1]    =    protection[PROT_EDGE];

    TEXT[2]    =    NAME_Prot_Point;
    COUNT[2]    =    protection[PROT_POINT];

    TEXT[3]    =    NAME_Prot_Fire;
    COUNT[3]    =    protection[PROT_FIRE];

    TEXT[4]    =    NAME_Prot_Magic;
    COUNT[4]    =    protection[PROT_MAGIC];

    TEXT[5]    =    NAME_Value;
    COUNT[5]    =    value;
};
func void Equip_ITAR_DJG_CH_ARMOREXPANSION()
{
    // "self" it is C_NPC which is equipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, 5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, 5);
};
func void UnEquip_ITAR_DJG_CH_ARMOREXPANSION()
{
    // "self" it is C_NPC which is unequipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, -5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, -5);
};
INSTANCE ITAR_DJG_CM_ARMOREXPANSION (C_Item)
{
    name    =    "Støední Zbroj Lovce Drakù";

    mainflag    =    ITEM_KAT_ARMOR;
    flags    =    0;

    protection [PROT_EDGE]  =    110;
    protection [PROT_BLUNT] =    110;
    protection [PROT_POINT] =    110;
    protection [PROT_FIRE]  =    65;
    protection [PROT_MAGIC] =    25;

    value    =    VALUE_ITAR_PAL_H;

    wear    =    WEAR_TORSO;

    visual    =    "DrachenMedium.3ds";
    visual_change    =    "DJGH_NoHelmet.asc";
    visual_skin    =    0;
    material    =    MAT_METAL;

    on_equip    =    Equip_ITAR_DJG_CM_ARMOREXPANSION;
    on_unequip    =    UnEquip_ITAR_DJG_CM_ARMOREXPANSION;

    description    =    name;
	TEXT[0]                 =       "+5% støelecký talent";

    TEXT[1]    =    NAME_Prot_Edge;
    COUNT[1]    =    protection[PROT_EDGE];

    TEXT[2]    =    NAME_Prot_Point;
    COUNT[2]    =    protection[PROT_POINT];

    TEXT[3]    =    NAME_Prot_Fire;
    COUNT[3]    =    protection[PROT_FIRE];

    TEXT[4]    =    NAME_Prot_Magic;
    COUNT[4]    =    protection[PROT_MAGIC];

    TEXT[5]    =    NAME_Value;
    COUNT[5]    =    value;
};
func void Equip_ITAR_DJG_CM_ARMOREXPANSION()
{
    // "self" it is C_NPC which is equipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, 5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, 5);
};
func void UnEquip_ITAR_DJG_CM_ARMOREXPANSION()
{
    // "self" it is C_NPC which is unequipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, -5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, -5);
};
INSTANCE ITAR_PAL_ST_ARMOREXPANSION (C_Item)
{
	name 					=	"Stewarkská Plátová Zbroj";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	90;
	protection [PROT_BLUNT] = 	90;
	protection [PROT_POINT] = 	90;
	protection [PROT_FIRE] 	= 	35;
	protection [PROT_MAGIC] = 	20;

	value 					=	4500;

	wear 					=	WEAR_TORSO;

	visual 					=	"STEWARK.3ds";
	visual_change 			=	"Armor_Pal_STEWARK.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	description				=	name;
	TEXT[0]                 =   "";	

	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
INSTANCE ITAR_PAL_MH_ARMOREXPANSION (C_Item)
{
	name 					=	"Tìžká Zbroj Rytíøe";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	125;
	protection [PROT_BLUNT] = 	125;
	protection [PROT_POINT] = 	125;
	protection [PROT_FIRE] 	= 	60;
	protection [PROT_MAGIC] = 	30;

	value 					=	2500;

	wear 					=	WEAR_TORSO;

	visual 					=	"ItAr_Pal_H.3ds";
	visual_change 			=	"Armor_Pal_M10_02.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	description				=	name;

	TEXT[0]					= 	"";
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
INSTANCE ITAR_PIR_H_ARMOREXPANSION (C_Item)
{
	name 					=	"Zbroj Kapitána";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	75;
	protection [PROT_BLUNT] = 	75;
	protection [PROT_POINT] = 	75;
	protection [PROT_FIRE] 	= 	25;
	protection [PROT_MAGIC] = 	15;

	value 					=	VALUE_ITAR_PIR_H_Addon;

	wear 					=	WEAR_TORSO;

	visual 					=	"ItAr_PIR_H_ADDON.3ds";
	visual_change 			=	"Armor_PIR_H_ADDON.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

    on_equip    =    Equip_ITAR_PIR_H_ARMOREXPANSION;
    on_unequip    =    UnEquip_ITAR_PIR_H_ARMOREXPANSION;	
	
	description				=	name;

	TEXT[0]					= 	"+10 bonus k obratnosti, +10% Jednoruèní talent";	
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
func void Equip_ITAR_PIR_H_ARMOREXPANSION()
{
    // "self" it is C_NPC which is equipping armor
    B_RaiseFightTalent(self, NPC_TALENT_1H, 5);
	Npc_ChangeAttribute(self,ATR_DEXTERITY,+ 10);
};
func void UnEquip_ITAR_PIR_H_ARMOREXPANSION()
{
    // "self" it is C_NPC which is unequipping armor
    B_RaiseFightTalent(self, NPC_TALENT_1H, -5);
	Npc_ChangeAttribute(self,ATR_DEXTERITY, -10);
};
INSTANCE ITAR_PAL_ANH_ARMOREXPANSION (C_Item)
{
	name 					=	"Obohacená Paladinská Zbroj";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	140;
	protection [PROT_BLUNT] = 	140;
	protection [PROT_POINT] = 	140;
	protection [PROT_FIRE] 	= 	125;
	protection [PROT_MAGIC] = 	75;

	value 					=	VALUE_ITAR_PAL_H;

	wear 					=	WEAR_TORSO;

	visual 					=	"ARCPALANH.3ds";
	visual_change 			=	"Armor_Pal_H_Blessed.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	on_equip    			=    Equip_ITAR_PAL_A_ARMOREXPANSION;
    on_unequip    			=    UnEquip_ITAR_PAL_A_ARMOREXPANSION;	
	
	description				=	name;
	TEXT[0]                 =       "+40 Bonus maximální many.";	

	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
INSTANCE ITAR_PAL_RNH_ARMOREXPANSION (C_Item)
{
	name 					=	"Rezavá Paladinská Zbroj";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	80;
	protection [PROT_BLUNT] = 	80;
	protection [PROT_POINT] = 	80;
	protection [PROT_FIRE] 	= 	20;
	protection [PROT_MAGIC] = 	20;

	value 					=	2000;

	wear 					=	WEAR_TORSO;

	visual 					=	"RUSTARCNH.3ds";
	visual_change 			=	"Armor_Pal_H_Rusty.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	description				=	name;
	TEXT[0]                 =       "Tahle zbroj zažila lepší èasy";	

	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
INSTANCE ITAR_PAL_FNH_ARMOREXPANSION (C_Item)
{
	name 					=	"Opravená Paladinská Zbroj";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	120;
	protection [PROT_BLUNT] = 	120;
	protection [PROT_POINT] = 	120;
	protection [PROT_FIRE] 	= 	70;
	protection [PROT_MAGIC] = 	40;

	value 					=	VALUE_ITAR_PAL_H;

	wear 					=	WEAR_TORSO;

	visual 					=	"ARCPALANH.3ds";
	visual_change 			=	"Armor_Pal_H_Blessed.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	on_equip    			=    Equip_ITAR_PAL_F_ARMOREXPANSION;
    on_unequip    			=    UnEquip_ITAR_PAL_F_ARMOREXPANSION;	
	
	description				=	name;
	TEXT[0]                 =       "+20 bonus maximální many";	

	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
INSTANCE ITAR_PAL_AFH_ARMOREXPANSION (C_Item)
{
	name 					=	"Obohacená Paladinská Zbroj";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	140;
	protection [PROT_BLUNT] = 	140;
	protection [PROT_POINT] = 	140;
	protection [PROT_FIRE] 	= 	125;
	protection [PROT_MAGIC] = 	75;

	value 					=	VALUE_ITAR_PAL_H;

	wear 					=	WEAR_TORSO;

	visual 					=	"ARCPALA.3ds";
	visual_change 			=	"Armor_PAL_H_ARCFULLHELM.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	on_equip    			=    Equip_ITAR_PAL_A_ARMOREXPANSION;
    on_unequip    			=    UnEquip_ITAR_PAL_A_ARMOREXPANSION;	
	
	description				=	name;
	TEXT[0]                 =       "+40 Bonus maximální many.";	

	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
INSTANCE ITAR_PAL_RFH_ARMOREXPANSION (C_Item)
{
	name 					=	"Rezavá Paladinská Zbroj";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	80;
	protection [PROT_BLUNT] = 	80;
	protection [PROT_POINT] = 	80;
	protection [PROT_FIRE] 	= 	20;
	protection [PROT_MAGIC] = 	20;

	value 					=	2000;

	wear 					=	WEAR_TORSO;

	visual 					=	"RUSTARC.3ds";
	visual_change 			=	"Armor_PAL_H_RUSTFULLHELM.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	description				=	name;
	TEXT[0]                 =       "Tahle zbroj zažila lepší èasy";	

	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
INSTANCE ITAR_PAL_FFH_ARMOREXPANSION (C_Item)
{
	name 					=	"Opravená Paladinská Zbroj";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	120;
	protection [PROT_BLUNT] = 	120;
	protection [PROT_POINT] = 	120;
	protection [PROT_FIRE] 	= 	70;
	protection [PROT_MAGIC] = 	40;

	value 					=	VALUE_ITAR_PAL_H;

	wear 					=	WEAR_TORSO;

	visual 					=	"ARCPALA.3ds";
	visual_change 			=	"Armor_PAL_H_ARCFULLHELM.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	on_equip    			=    Equip_ITAR_PAL_F_ARMOREXPANSION;
    on_unequip    			=    UnEquip_ITAR_PAL_F_ARMOREXPANSION;	
	
	description				=	name;
	TEXT[0]                 =       "+20 bonus maximální many";	

	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
INSTANCE ITAR_NH_CRUSADER_ARMOREXPANSION (C_Item)
{
	name 					=	"Zbroj Køižáka";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	115;
	protection [PROT_BLUNT] = 	115;
	protection [PROT_POINT] = 	115;
	protection [PROT_FIRE] 	= 	65;
	protection [PROT_MAGIC] = 	40;
	
	value 					=	10000;

	wear 					=	WEAR_TORSO;

	visual 					=	"CRUSADER.3DS";
	visual_change 			=	"Armor_CRUSADER_NH.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;
	
	on_equip				=	Equip_ITAR_CRUSADER_ARMOREXPANSION;
	on_unequip				=	UnEquip_ITAR_CRUSADER_ARMOREXPANSION;
	
	description				=	name;
	TEXT[0]                 =       "+5% Talent s obouruèními zbranìmi";
	
	TEXT[1]					=	NAME_Prot_Edge;			
	COUNT[1]				= 	protection	[PROT_EDGE];
	
	TEXT[2]					=	NAME_Prot_Point;		
	COUNT[2]				= 	protection	[PROT_POINT];
	
	TEXT[3] 				=	NAME_Prot_Fire;			
	COUNT[3]				= 	protection	[PROT_FIRE];
	
	TEXT[4]					=	NAME_Prot_Magic;		
	COUNT[4]				= 	protection	[PROT_MAGIC];
	
	TEXT[5]					=	NAME_Value;			
	COUNT[5]				= 	value;
};
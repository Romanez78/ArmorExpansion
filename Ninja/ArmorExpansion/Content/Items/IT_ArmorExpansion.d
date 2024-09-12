// ***************
// MY CHANGES
// ***************

/*
 *  [ARMOR CHANGING]
 *
 *  `1948` is the address of oCNpc::head_visualName property written in the decimal system.
 */
var string Patch_AE_ArmorChanging_Head_Current_name;
func void Patch_AE_ArmorChanging_Head_HumHeadBald(var C_NPC slf)
{
    if (true == Npc_IsPlayer(slf))
    {
        Patch_AE_ArmorChanging_Head_Current_name = "Hum_Head_Bald";

        MEM_WriteString(MEM_InstToPtr(slf)+1948, Patch_AE_ArmorChanging_Head_Current_name);
    };
};

func void Patch_AE_ArmorChanging_Head_Original(var C_NPC slf)
{
    if (true == Npc_IsPlayer(slf))
    {
        Patch_AE_ArmorChanging_Head_Current_name = "Hum_Head_Pony";

        MEM_WriteString(MEM_InstToPtr(slf)+1948, Patch_AE_ArmorChanging_Head_Current_name);
    };
};


/*
 *  [BONUSES]
 */
func void Patch_AE_ItemsWithBonuses_HPMana_UnEquipping(var int attribute, var int bonus)
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

const int Patch_AE_ITAR_PAL_A_BONUS_MANA = 40;
const int Patch_AE_ITAR_PAL_F_BONUS_MANA = 20;
var int Patch_AE__ITAR_MIL_H_Equipped;
var int Patch_AE__ITAR_SLD_BOW_Equipped;
INSTANCE Patch_AE_ITAR_MIL_H (C_Item)
{
	name 					=	"Tižká Zbroj Domobrany";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	70;
	protection [PROT_BLUNT] = 	70;
	protection [PROT_POINT] = 	70;
	protection [PROT_FIRE] 	= 	15;
	protection [PROT_MAGIC] = 	15;

    on_equip				=   Patch_AE__Equip_ITAR_MIL_H;
	on_unequip				=   Patch_AE__UnEquip_ITAR_MIL_H;

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
func void Patch_AE__Equip_ITAR_MIL_H()
{
    if (true == Npc_IsPlayer(self))
    {
        Patch_AE__ITAR_MIL_H_Equipped = true;

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
func void Patch_AE__UnEquip_ITAR_MIL_H()
{
    if (true == Npc_IsPlayer(self))
    {
        Patch_AE__ITAR_MIL_H_Equipped = false;

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
INSTANCE Patch_AE_ITAR_GAMBESON (C_Item)
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

	on_equip    			=    Patch_AE_Equip_ITAR_GAMBESON;
    on_unequip    			=    Patch_AE_UnEquip_ITAR_GAMBESON;

	description				=	name;
	TEXT[0]                 =       "+3% stoelecký talent.";

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
func void Patch_AE_Equip_ITAR_GAMBESON()
{
    // "self" it is C_NPC which is equipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, 3);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, 3);
};
func void Patch_AE_UnEquip_ITAR_GAMBESON()
{
    // "self" it is C_NPC which is unequipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, -3);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, -3);
	};
INSTANCE Patch_AE_ITAR_PAL_A (C_Item)
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

	on_equip    			=    Patch_AE_Equip_ITAR_PAL_A;
    on_unequip    			=    Patch_AE_UnEquip_ITAR_PAL_A;

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
FUNC VOID Patch_AE_Equip_ITAR_PAL_A()
	{
    // Mana
    self.attribute[ATR_MANA_MAX] += Patch_AE_ITAR_PAL_A_BONUS_MANA;
	self.attribute[ATR_MANA] += Patch_AE_ITAR_PAL_A_BONUS_MANA;
	};
FUNC VOID Patch_AE_UnEquip_ITAR_PAL_A()
	{
    // Mana
    Patch_AE_ItemsWithBonuses_HPMana_UnEquipping(ATR_MANA_MAX, Patch_AE_ITAR_PAL_A_BONUS_MANA);
	};
INSTANCE Patch_AE_ITAR_PAL_R (C_Item)
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
	TEXT[0]                 =       "Tahle zbroj zažila lepší easy";

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
INSTANCE Patch_AE_ITAR_PAL_F (C_Item)
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

	on_equip    			=    Patch_AE_Equip_ITAR_PAL_F;
    on_unequip    			=    Patch_AE_UnEquip_ITAR_PAL_F;

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
FUNC VOID Patch_AE_Equip_ITAR_PAL_F()
	{
    // Mana
    self.attribute[ATR_MANA_MAX] += Patch_AE_ITAR_PAL_F_BONUS_MANA;
	self.attribute[ATR_MANA] += Patch_AE_ITAR_PAL_F_BONUS_MANA;
	};
FUNC VOID Patch_AE_UnEquip_ITAR_PAL_F()
	{
    // Mana
    Patch_AE_ItemsWithBonuses_HPMana_UnEquipping(ATR_MANA_MAX, Patch_AE_ITAR_PAL_F_BONUS_MANA);
	};
INSTANCE Patch_AE_ITAR_PAL_C (C_Item)
{
    name    =    "Zbroj Rytíře Kušišníka";

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

    on_equip    =    Patch_AE_Equip_ITAR_PAL_C;
    on_unequip    =    Patch_AE_UnEquip_ITAR_PAL_C;

    description    =    name;
	TEXT[0]                 =       "+5% stoelecký talent";

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
func void Patch_AE_Equip_ITAR_PAL_C()
{
    // "self" it is C_NPC which is equipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, 5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, 5);
};
func void Patch_AE_UnEquip_ITAR_PAL_C()
{
    // "self" it is C_NPC which is unequipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, -5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, -5);
};
INSTANCE Patch_AE_ITAR_MIL_Med2 (C_Item)
{
	name 					=	"Vylepšená Stoedni Tižká Zbroj Domobrany";

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

	    on_equip    		=    Patch_AE__Patch_AE_Equip_ITAR_MIL_Med2;
    on_unequip    			=    Patch_AE__Patch_AE_UnEquip_ITAR_MIL_Med2;

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
func void Patch_AE__Patch_AE_Equip_ITAR_MIL_Med2()
{
    if (true == Npc_IsPlayer(self))
    {
        Patch_AE__ITAR_MIL_H_Equipped = true;

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
func void Patch_AE__Patch_AE_UnEquip_ITAR_MIL_Med2()
{
    if (true == Npc_IsPlayer(self))
    {
        Patch_AE__ITAR_MIL_H_Equipped = false;

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
INSTANCE Patch_AE_ITAR_MIL_P (C_Item)
{
	name 					=	"Zbroj Milicionáoe Kušišníka";

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

	on_equip    			=    Patch_AE_Equip_ITAR_MIL_P;
    on_unequip    			=    Patch_AE_UnEquip_ITAR_MIL_P;

	description				=	name;
    TEXT[0]                 =       "+5% stoelecký talent";
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
func void Patch_AE_Equip_ITAR_MIL_P()
{
	B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, 5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, 5);
    if (true == Npc_IsPlayer(self))
    {
        Patch_AE__ITAR_MIL_H_Equipped = true;

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
func void Patch_AE_UnEquip_ITAR_MIL_P()
{
	B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, -5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, -5);
    if (true == Npc_IsPlayer(self))
    {
        Patch_AE__ITAR_MIL_H_Equipped = false;

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
	name 					=	"Stoední Zbroj Domobrany";

	protection [PROT_EDGE]	=	50;
	protection [PROT_BLUNT] = 	50;
	protection [PROT_POINT] = 	50;

	value 					=	1500;
};
INSTANCE Patch_AE_ITAR_DJG_CL (C_Item)
{
	name 					=	"Lehká Zbroj Lovce Draku";

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

	TEXT[0]                 =       "+5% stoelecký talent";
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
INSTANCE Patch_AE_ITAR_SLD_BOW (C_Item)
{
	name 					=	"Zbroj Nájemného Lovce";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	65;
	protection [PROT_BLUNT] = 	65;
	protection [PROT_POINT] = 	65;
	protection [PROT_FIRE] 	= 	15;
	protection [PROT_MAGIC] = 	10;

	value 					=	2500;

	wear 					=	WEAR_TORSO;

	visual 					=	"SLDHC.3ds";
	visual_change 			=	"Armor_SLD_BOW.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	on_equip				=	Patch_AE_Equip_ITAR_SLD_BOW;
	on_unequip				=	Patch_AE_UnEquip_ITAR_SLD_BOW;

	description				=	name;

	TEXT[0]					=	"+5% stoelecký talent";
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
func void Patch_AE_Equip_ITAR_SLD_BOW()
{
    // "self" it is C_NPC which is equipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, 5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, 5);
    if (true == Npc_IsPlayer(self))
    {
        Patch_AE__ITAR_SLD_BOW_Equipped = true;

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
func void Patch_AE_UnEquip_ITAR_SLD_BOW()
{
    // "self" it is C_NPC which is unequipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, -5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, -5);
    if (true == Npc_IsPlayer(self))
    {
        Patch_AE__ITAR_SLD_BOW_Equipped = false;

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
INSTANCE Patch_AE_ITAR_MIL_R (C_Item)
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

		on_equip			=	Patch_AE_Equip_ITAR_MIL_R;
	on_unequip				=	Patch_AE_UnEquip_ITAR_MIL_R;

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
func void Patch_AE_Equip_ITAR_MIL_R()
{
    if (true == Npc_IsPlayer(self))
    {
        Patch_AE__ITAR_MIL_H_Equipped = true;

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
func void Patch_AE_UnEquip_ITAR_MIL_R()
{
    if (true == Npc_IsPlayer(self))
    {
        Patch_AE__ITAR_MIL_H_Equipped = false;

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
INSTANCE Patch_AE_ITAR_CRUSADER (C_Item)
{
	name 					=	"Zbroj Koižáka";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	110;
	protection [PROT_BLUNT] = 	110;
	protection [PROT_POINT] = 	110;
	protection [PROT_FIRE] 	= 	60;
	protection [PROT_MAGIC] = 	35;

	value 					=	10000;

	wear 					=	WEAR_TORSO;

	visual 					=	"CRUSADERHELMETGROUND.3DS";
	visual_change 			=	"Armor_CRUSADER.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	on_equip				=	Patch_AE_Equip_ITAR_CRUSADER;
	on_unequip				=	Patch_AE_UnEquip_ITAR_CRUSADER;

	description				=	name;
	TEXT[0]                 =       "+5% obouruení talent";

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
func void Patch_AE_Equip_ITAR_CRUSADER()
{
    B_RaiseFightTalent(self, NPC_TALENT_2H, 5);

    // A head adjusting
    Patch_AE_ArmorChanging_Head_HumHeadBald(self);
};
func void Patch_AE_UnEquip_ITAR_CRUSADER()
{
    B_RaiseFightTalent(self, NPC_TALENT_2H, -5);

    // A head adjusting
    Patch_AE_ArmorChanging_Head_Original(self);
};
INSTANCE Patch_AE_ITAR_SLD_SCOUT (C_Item)
{
	name 					=	"Odiv Žoldáka Zvida";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	30;
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

	on_equip				=	Patch_AE_Equip_ITAR_SLD_SCOUT;
	on_unequip				=	Patch_AE_UnEquip_ITAR_SLD_SCOUT;

	description				=	name;

	TEXT[0]					= 	"+5% stoelecký talent";

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
func void Patch_AE_Equip_ITAR_SLD_SCOUT()
{
    // "self" it is C_NPC which is equipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, 5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, 5);
    if (true == Npc_IsPlayer(self))
    {
        Patch_AE__ITAR_SLD_BOW_Equipped = true;

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
func void Patch_AE_UnEquip_ITAR_SLD_SCOUT()
{
    // "self" it is C_NPC which is unequipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, -5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, -5);
    if (true == Npc_IsPlayer(self))
    {
        Patch_AE__ITAR_SLD_BOW_Equipped = false;

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
INSTANCE Patch_AE_ITAR_MIL_SCOUT (C_Item)
{
	name 					=	"Odiv Královského Zvida";

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

	on_equip				=	Patch_AE_Equip_ITAR_MIL_SCOUT;
	on_unequip				=	Patch_AE_UnEquip_ITAR_MIL_SCOUT;

	description				=	name;

	TEXT[0]					= 	"+5% stoelecký talent";

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
func void Patch_AE_Equip_ITAR_MIL_SCOUT()
{
    // "self" it is C_NPC which is equipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, 5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, 5);
    if (true == Npc_IsPlayer(self))
    {
        Patch_AE__ITAR_MIL_H_Equipped = true;

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
func void Patch_AE_UnEquip_ITAR_MIL_SCOUT()
{
    // "self" it is C_NPC which is unequipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, -5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, -5);
    if (true == Npc_IsPlayer(self))
    {
        Patch_AE__ITAR_MIL_H_Equipped = false;

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
INSTANCE Patch_AE_ITAR_SLD_R (C_Item)
{
	name 					=	"Vylepšená Stoední Zbroj Žoldáka";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	65;
	protection [PROT_BLUNT] = 	65;
	protection [PROT_POINT] = 	65;
	protection [PROT_FIRE] 	= 	10;
	protection [PROT_MAGIC] = 	10;

	value 					=	1500;

	wear 					=	WEAR_TORSO;

	visual 					=	"SLDMR.3ds";
	visual_change 			=	"Armor_Sld_R.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	on_equip				= Patch_AE_Equip_ITAR_SLD_R;
	on_unequip				= Patch_AE_UnEquip_ITAR_SLD_R;

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
func void Patch_AE_Equip_ITAR_SLD_R()
{
    if (true == Npc_IsPlayer(self))
    {
        Patch_AE__ITAR_SLD_BOW_Equipped = true;

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
func void Patch_AE_UnEquip_ITAR_SLD_R()
{
    if (true == Npc_IsPlayer(self))
    {
        Patch_AE__ITAR_SLD_BOW_Equipped = false;

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
INSTANCE Patch_AE_ITAR_SLD_LR (C_Item)
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

		on_equip			= Patch_AE_Equip_ITAR_SLD_LR;
	on_unequip				= Patch_AE_UnEquip_ITAR_SLD_LR;

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
func void Patch_AE_Equip_ITAR_SLD_LR()
{
    if (true == Npc_IsPlayer(self))
    {
        Patch_AE__ITAR_SLD_BOW_Equipped = true;

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
func void Patch_AE_UnEquip_ITAR_SLD_LR()
{
    if (true == Npc_IsPlayer(self))
    {
        Patch_AE__ITAR_SLD_BOW_Equipped = false;

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
INSTANCE Patch_AE_ITAR_PAL_CH (C_Item)
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

    on_equip    =    Patch_AE_Equip_ITAR_PAL_CH;
    on_unequip    =    Patch_AE_UnEquip_ITAR_PAL_CH;

    description    =    name;
	TEXT[0]                 =       "+5% stoelecký talent";

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
func void Patch_AE_Equip_ITAR_PAL_CH()
{
    // "self" it is C_NPC which is equipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, 5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, 5);
};
func void Patch_AE_UnEquip_ITAR_PAL_CH()
{
    // "self" it is C_NPC which is unequipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, -5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, -5);
};
INSTANCE Patch_AE_ITAR_DJG_CH (C_Item)
{
    name    =    "Tižká Zbroj Lovce Draku";

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

    on_equip    =    Patch_AE_Equip_ITAR_DJG_CH;
    on_unequip    =    Patch_AE_UnEquip_ITAR_DJG_CH;

    description    =    name;
	TEXT[0]                 =       "+5% stoelecký talent";

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
func void Patch_AE_Equip_ITAR_DJG_CH()
{
    // "self" it is C_NPC which is equipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, 5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, 5);
};
func void Patch_AE_UnEquip_ITAR_DJG_CH()
{
    // "self" it is C_NPC which is unequipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, -5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, -5);
};
INSTANCE Patch_AE_ITAR_DJG_CM (C_Item)
{
    name    =    "Stoední Zbroj Lovce Draku";

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

    on_equip    =    Patch_AE_Equip_ITAR_DJG_CM;
    on_unequip    =    Patch_AE_UnEquip_ITAR_DJG_CM;

    description    =    name;
	TEXT[0]                 =       "+5% stoelecký talent";

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
func void Patch_AE_Equip_ITAR_DJG_CM()
{
    // "self" it is C_NPC which is equipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, 5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, 5);
};
func void Patch_AE_UnEquip_ITAR_DJG_CM()
{
    // "self" it is C_NPC which is unequipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, -5);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, -5);
};
INSTANCE Patch_AE_ITAR_PAL_ST (C_Item)
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
INSTANCE Patch_AE_ITAR_PAL_MH (C_Item)
{
	name 					=	"Tižká Zbroj Rytíoe";

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

	TEXT[0]					= 	"+10 bonus k obratnosti, +10% Jednoruení talent";
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
INSTANCE Patch_AE_ITAR_PAL_ANH (C_Item)
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

	on_equip    			=    Patch_AE_Equip_ITAR_PAL_A;
    on_unequip    			=    Patch_AE_UnEquip_ITAR_PAL_A;

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
INSTANCE Patch_AE_ITAR_PAL_RNH (C_Item)
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
	TEXT[0]                 =       "Tahle zbroj zažila lepší easy";

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
INSTANCE Patch_AE_ITAR_PAL_FNH (C_Item)
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

	on_equip    			=    Patch_AE_Equip_ITAR_PAL_F;
    on_unequip    			=    Patch_AE_UnEquip_ITAR_PAL_F;

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
INSTANCE Patch_AE_ITAR_PAL_AFH (C_Item)
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

	on_equip    			=    Patch_AE_Equip_ITAR_PAL_A;
    on_unequip    			=    Patch_AE_UnEquip_ITAR_PAL_A;

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
INSTANCE Patch_AE_ITAR_PAL_RFH (C_Item)
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
	TEXT[0]                 =       "Tahle zbroj zažila lepší easy";

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
INSTANCE Patch_AE_ITAR_PAL_FFH (C_Item)
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

	on_equip    			=    Patch_AE_Equip_ITAR_PAL_F;
    on_unequip    			=    Patch_AE_UnEquip_ITAR_PAL_F;

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
INSTANCE Patch_AE_ITAR_NH_CRUSADER (C_Item)
{
	name 					=	"Zbroj Koižáka";

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

	on_equip				=	Patch_AE_Equip_ITAR_CRUSADER;
	on_unequip				=	Patch_AE_UnEquip_ITAR_CRUSADER;

	description				=	name;
	TEXT[0]                 =       "+5% Talent s obourueními zbranimi";

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
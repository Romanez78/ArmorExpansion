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

        var oCNpc npc; npc = Hlp_GetNpc(slf);
        npc.head_visualName = Patch_AE_ArmorChanging_Head_Current_name;
    };
};

func void Patch_AE_ArmorChanging_Head_Original(var C_NPC slf)
{
    if (true == Npc_IsPlayer(slf))
    {
        Patch_AE_ArmorChanging_Head_Current_name = "Hum_Head_Pony";

        var oCNpc npc; npc = Hlp_GetNpc(slf);
        npc.head_visualName = Patch_AE_ArmorChanging_Head_Current_name;
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
var int Patch_AE__ITAR_GAMBESON_Equipped;
var int Patch_AE__ITAR_DJG_CRAWLERP_Equipped;
INSTANCE ITAR_MIL_H_ArmorExpansion (C_Item)
{
	name 					=	ITAR_MIL_H_ArmorExpansion__name;

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	70;
	protection [PROT_BLUNT] = 	70;
	protection [PROT_POINT] = 	70;
	protection [PROT_FIRE] 	= 	10;
	protection [PROT_MAGIC] = 	10;

    on_equip				=   Patch_AE__Equip_ITAR_MIL_H;
	on_unequip				=   Patch_AE__UnEquip_ITAR_MIL_H;

	value 					=	2500;

	wear 					=	WEAR_TORSO;

	visual 					=	"AEXPANSION_HEAVYMILITIA.3ds";
	visual_change 			=	"ARMOR_MILH_AMEXPANSION.asc";
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

INSTANCE ITAR_MILP_H_ArmorExpansion (C_Item)
{
	name 					=	ITAR_MILP_H_ArmorExpansion__name;

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	65;
	protection [PROT_BLUNT] = 	65;
	protection [PROT_POINT] = 	65;
	protection [PROT_FIRE] 	= 	10;
	protection [PROT_MAGIC] = 	5;

    on_equip				=   Patch_AE__Equip_ITAR_MILP_H;
	on_unequip				=   Patch_AE__UnEquip_ITAR_MILP_H;

	value 					=	2500;

	wear 					=	WEAR_TORSO;

	visual 					=	"HeavyMilitiaOC.3ds";
	visual_change 			=	"Armor_Thorus_ADDON2.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	description				=	name;

	TEXT[0]					= 	Patch_AE_TEXT_ArcheryBonus5;
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
func void Patch_AE__Equip_ITAR_MILP_H()
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
func void Patch_AE__UnEquip_ITAR_MILP_H()
{
	// "self" it is C_NPC which is equipping armor
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
INSTANCE ITAR_GAMBESON_ArmorExpansion (C_Item)
{
	name 					=	ITAR_GAMBESON_ArmorExpansion__name;

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
	TEXT[0]                 =       Patch_AE_TEXT_ArcheryBonus3;

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
if (true == Npc_IsPlayer(self))
    {
        Patch_AE__ITAR_GAMBESON_Equipped = true;

        if (Leather01_Equipped == TRUE) //Ledergürtel
		{
			self.protection[PROT_EDGE] += BA_Bonus01;
			self.protection[PROT_BLUNT] += BA_Bonus01;
			self.protection[PROT_POINT] += BA_Bonus01;
			self.protection[PROT_MAGIC] += BA_Bonus01;
			self.protection[PROT_FIRE] += BA_Bonus01;
		};
    };
};
func void Patch_AE_UnEquip_ITAR_GAMBESON()
{
    // "self" it is C_NPC which is unequipping armor
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, -3);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, -3);
if (true == Npc_IsPlayer(self))
    {
        Patch_AE__ITAR_GAMBESON_Equipped = false;

        if (Leather01_Equipped == TRUE) //Ledergürtel
		{
			self.protection[PROT_EDGE] -= BA_Bonus01;
			self.protection[PROT_BLUNT] -= BA_Bonus01;
			self.protection[PROT_POINT] -= BA_Bonus01;
			self.protection[PROT_MAGIC] -= BA_Bonus01;
			self.protection[PROT_FIRE] -= BA_Bonus01;
		};
    };
};

INSTANCE ITAR_PAL_A_ArmorExpansion (C_Item)
{
	name 					=	ITAR_PAL_A_ArmorExpansion__name;

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	145;
	protection [PROT_BLUNT] = 	145;
	protection [PROT_POINT] = 	145;
	protection [PROT_FIRE] 	= 	120;
	protection [PROT_MAGIC] = 	70;

	value 					=	VALUE_ITAR_PAL_H;

	wear 					=	WEAR_TORSO;

	visual 					=	"ARCPALA.3ds";
	visual_change 			=	"Armor_Pal_H112.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	on_equip    			=    Patch_AE_Equip_ITAR_PAL_A;
    on_unequip    			=    Patch_AE_UnEquip_ITAR_PAL_A;

	description				=	name;
	TEXT[0]                 =       Patch_AE_TEXT_MaxManaBonus40;

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
INSTANCE ITAR_PAL_R_ArmorExpansion (C_Item)
{
	name 					=	ITAR_PAL_R_ArmorExpansion__name;

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	85;
	protection [PROT_BLUNT] = 	85;
	protection [PROT_POINT] = 	85;
	protection [PROT_FIRE] 	= 	15;
	protection [PROT_MAGIC] = 	15;

	value 					=	2000;

	wear 					=	WEAR_TORSO;

	visual 					=	"RUSTARC.3ds";
	visual_change 			=	"Armor_Pal_H600.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	description				=	name;
	TEXT[0]                 =       Patch_AE_TEXT_OldArmor;

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
INSTANCE ITAR_PAL_F_ArmorExpansion (C_Item)
{
	name 					=	ITAR_PAL_F_ArmorExpansion__name;

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	120;
	protection [PROT_BLUNT] = 	120;
	protection [PROT_POINT] = 	120;
	protection [PROT_FIRE] 	= 	85;
	protection [PROT_MAGIC] = 	45;

	value 					=	VALUE_ITAR_PAL_H;

	wear 					=	WEAR_TORSO;

	visual 					=	"ARCPALA.3ds";
	visual_change 			=	"Armor_Pal_H112.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	on_equip    			=    Patch_AE_Equip_ITAR_PAL_F;
    on_unequip    			=    Patch_AE_UnEquip_ITAR_PAL_F;

	description				=	name;
	TEXT[0]                 =       Patch_AE_TEXT_MaxManaBonus20;

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
INSTANCE ITAR_PAL_C_ArmorExpansion (C_Item)
{
    name    =    ITAR_PAL_C_ArmorExpansion__name;

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
	TEXT[0]                 =       Patch_AE_TEXT_ArcheryBonus5;

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
INSTANCE ITAR_PAL_CM_ArmorExpansion (C_Item)
{
    name    =    ITAR_PAL_CM_ArmorExpansion__name;

    mainflag    =    ITEM_KAT_ARMOR;
    flags    =    0;

    protection [PROT_EDGE]  =    110;
    protection [PROT_BLUNT] =    110;
    protection [PROT_POINT] =    110;
    protection [PROT_FIRE]  =    65;
    protection [PROT_MAGIC] =    30;

    value    =    5000;

    wear    =    WEAR_TORSO;

    visual    =    "ARMOR_PAL_GAMBESONH.3ds";
    visual_change    =    "ARMOR_PAL_GAMBESONH.asc";
    visual_skin    =    0;
    material    =    MAT_METAL;

    on_equip    =    Patch_AE_Equip_ITAR_PAL_C;
    on_unequip    =    Patch_AE_UnEquip_ITAR_PAL_C;

    description    =    name;
	TEXT[0]                 =       Patch_AE_TEXT_ArcheryBonus5;

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
INSTANCE ITAR_MIL_Med2_ArmorExpansion (C_Item)
{
	name 					=	ITAR_MIL_Med2_ArmorExpansion__name;

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	60;
	protection [PROT_BLUNT] = 	60;
	protection [PROT_POINT] = 	60;
	protection [PROT_FIRE] 	= 	5;
	protection [PROT_MAGIC] = 	5;

	value 					=	2000;

	wear 					=	WEAR_TORSO;

	visual 					=	"MIL_MR_AMEXPANSION.3DS";
	visual_change 			=	"ARMOR_MIL_MR_AMEXPANSION.asc";
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
INSTANCE ITAR_MIL_P_ArmorExpansion (C_Item)
{
	name 					=	ITAR_MIL_P_ArmorExpansion__name;

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	45;
	protection [PROT_BLUNT] = 	45;
	protection [PROT_POINT] = 	45;
	protection [PROT_FIRE] 	= 	5;
	protection [PROT_MAGIC] = 	0;

	value 					=	1000;

	wear 					=	WEAR_TORSO;

	visual 					=	"MilitiaRed.3DS";
	visual_change 			=	"ARMOR_MIL_P.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	on_equip    			=    Patch_AE_Equip_ITAR_MIL_P;
    on_unequip    			=    Patch_AE_UnEquip_ITAR_MIL_P;

	description				=	name;
    TEXT[0]                 =       Patch_AE_TEXT_ArcheryBonus5;
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
	name 					=	ITAR_MIL_M__name;

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]			=	50;
	protection [PROT_BLUNT] 		= 	50;
	protection [PROT_POINT] 		= 	50;
	protection [PROT_FIRE] 			= 	5;
	protection [PROT_MAGIC] 		= 	0;

	value 					=	1000;

	wear 					=	WEAR_TORSO;

	visual 					=	"ItAr_MIL_M.3DS";
	visual_change 				=	"Armor_MIL_M.asc";
	visual_skin 				=	0;
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
INSTANCE ITAR_DJG_CL_ArmorExpansion (C_Item)
{
	name 					=	ITAR_DJG_CL_ArmorExpansion__name;

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

	TEXT[0]                 =       Patch_AE_TEXT_ArcheryBonus5;
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
INSTANCE ITAR_SLD_BOW_ArmorExpansion (C_Item)
{
	name 					=	ITAR_SLD_BOW_ArmorExpansion__name;

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	70;
	protection [PROT_BLUNT] = 	70;
	protection [PROT_POINT] = 	70;
	protection [PROT_FIRE] 	= 	5;
	protection [PROT_MAGIC] = 	5;

	value 					=	2500;

	wear 					=	WEAR_TORSO;

	visual 					=	"SLDHC.3ds";
	visual_change 			=	"Armor_SLD_BOW.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	on_equip				=	Patch_AE_Equip_ITAR_SLD_BOW;
	on_unequip				=	Patch_AE_UnEquip_ITAR_SLD_BOW;

	description				=	name;

	TEXT[0]					=	Patch_AE_TEXT_ArcheryBonus6;
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
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, 6);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, 6);
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
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, -6);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, -6);
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
INSTANCE ITAR_MIL_R_ArmorExpansion (C_Item)
{
	name 					=	ITAR_MIL_R_ArmorExpansion__name;

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	45;
	protection [PROT_BLUNT] = 	45;
	protection [PROT_POINT] = 	45;
	protection [PROT_FIRE] 	= 	5;
	protection [PROT_MAGIC] = 	0;

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
INSTANCE ITAR_CRUSADER_ArmorExpansion (C_Item)
{
	name 					=	ITAR_CRUSADER_ArmorExpansion__name;

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	110;
	protection [PROT_BLUNT] = 	110;
	protection [PROT_POINT] = 	110;
	protection [PROT_FIRE] 	= 	70;
	protection [PROT_MAGIC] = 	40;

	value 					=	10000;

	wear 					=	WEAR_TORSO;

	visual 					=	"CRUSADERHELMETGROUND.3DS";
	visual_change 			=	"Armor_CRUSADER.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	on_equip				=	Patch_AE_Equip_ITAR_CRUSADER;
	on_unequip				=	Patch_AE_UnEquip_ITAR_CRUSADER;

	description				=	name;
	TEXT[0]                 =       Patch_AE_TEXT_TwoHandedBonus5;

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
INSTANCE ITAR_SLD_SCOUT_ArmorExpansion (C_Item)
{
	name 					=	ITAR_SLD_SCOUT_ArmorExpansion__name;

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	25;
	protection [PROT_BLUNT] = 	35;
	protection [PROT_POINT] = 	25;
	protection [PROT_FIRE] 	= 	5;
	protection [PROT_MAGIC] = 	0;

	value 					=	500;

	wear 					=	WEAR_TORSO;

	visual 					=	"LIGHTSLDLP.3ds";
	visual_change 			=	"ARMOR_SLD_SCOUT.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	on_equip				=	Patch_AE_Equip_ITAR_SLD_SCOUT;
	on_unequip				=	Patch_AE_UnEquip_ITAR_SLD_SCOUT;

	description				=	name;

	TEXT[0]					= 	Patch_AE_TEXT_ArcheryBonus6;

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
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, 6);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, 6);
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
    B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, -6);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, -6);
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
INSTANCE ITAR_SLD_MP_ArmorExpansion (C_Item)
{
	name 					=	ITAR_SLD_MP_ArmorExpansion__name;

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	45;
	protection [PROT_BLUNT] = 	45;
	protection [PROT_POINT] = 	45;
	protection [PROT_FIRE] 	= 	5;
	protection [PROT_MAGIC] = 	0;

	value 					=	500;

	wear 					=	WEAR_TORSO;

	visual 					=	"MEDIUMSLDMP.3ds";
	visual_change 			=	"ARMOR_SLD_MP.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	on_equip				=	Patch_AE_Equip_ITAR_SLD_SCOUT;
	on_unequip				=	Patch_AE_UnEquip_ITAR_SLD_SCOUT;

	description				=	name;

	TEXT[0]					= 	Patch_AE_TEXT_ArcheryBonus6;

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
INSTANCE ITAR_MIL_SCOUT_ArmorExpansion (C_Item)
{
	name 					=	ITAR_MIL_SCOUT_ArmorExpansion__name;

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	35;
	protection [PROT_BLUNT] = 	35;
	protection [PROT_POINT] = 	35;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;

	value 					=	5000;

	wear 					=	WEAR_TORSO;

	visual 					=	"MilitiaScout.3ds";
	visual_change 			=	"AMEXPANSION_MIL_LP.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

	on_equip				=	Patch_AE_Equip_ITAR_MIL_SCOUT;
	on_unequip				=	Patch_AE_UnEquip_ITAR_MIL_SCOUT;

	description				=	name;

	TEXT[0]					= 	Patch_AE_TEXT_ArcheryBonus5;

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
INSTANCE ITAR_SLD_R_ArmorExpansion (C_Item)
{
	name 					=	ITAR_SLD_R_ArmorExpansion__name;

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	65;
	protection [PROT_BLUNT] = 	65;
	protection [PROT_POINT] = 	65;
	protection [PROT_FIRE] 	= 	5;
	protection [PROT_MAGIC] = 	5;

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
INSTANCE ITAR_SLD_LR_ArmorExpansion (C_Item)
{
	name 					=	ITAR_SLD_LR_ArmorExpansion__name;

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	45;
	protection [PROT_BLUNT] = 	45;
	protection [PROT_POINT] = 	40;
	protection [PROT_FIRE] 	= 	0;
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
INSTANCE ITAR_PAL_CH_ArmorExpansion (C_Item)
{
    name    =    ITAR_PAL_CH_ArmorExpansion__name;

    mainflag    =    ITEM_KAT_ARMOR;
    flags    =    0;

    protection [PROT_EDGE]  =    140;
    protection [PROT_BLUNT] =    140;
    protection [PROT_POINT] =    140;
    protection [PROT_FIRE]  =    90;
    protection [PROT_MAGIC] =    45;

    value    =    VALUE_ITAR_PAL_H;

    wear    =    WEAR_TORSO;

    visual    =    "ARMOR_PAL_CH_AMEXPANSION.3ds";
    visual_change    =    "Armor_Pal_H4000.asc";
    visual_skin    =    0;
    material    =    MAT_METAL;

    on_equip    =    Patch_AE_Equip_ITAR_PAL_CH;
    on_unequip    =    Patch_AE_UnEquip_ITAR_PAL_CH;

    description    =    name;
	TEXT[0]                 =       Patch_AE_TEXT_ArcheryBonus5;

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
INSTANCE ITAR_DJG_CH_ArmorExpansion (C_Item)
{
    name    =    ITAR_DJG_CH_ArmorExpansion__name;

    mainflag    =    ITEM_KAT_ARMOR;
    flags    =    0;

    protection [PROT_EDGE]  =    140;
    protection [PROT_BLUNT] =    140;
    protection [PROT_POINT] =    140;
    protection [PROT_FIRE]  =    95;
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
	TEXT[0]                 =       Patch_AE_TEXT_ArcheryBonus5;

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
INSTANCE ITAR_DJG_CM_ArmorExpansion (C_Item)
{
    name    =    ITAR_DJG_CM_ArmorExpansion__name;

    mainflag    =    ITEM_KAT_ARMOR;
    flags    =    0;

    protection [PROT_EDGE]  =    110;
    protection [PROT_BLUNT] =    110;
    protection [PROT_POINT] =    110;
    protection [PROT_FIRE]  =    65;
    protection [PROT_MAGIC] =    30;

    value    =    VALUE_ITAR_PAL_H;

    wear    =    WEAR_TORSO;

    visual    =    "DrachenMedium.3ds";
    visual_change    =    "DJGH_NoHelmet.asc";
    visual_skin    =    0;
    material    =    MAT_METAL;

    on_equip    =    Patch_AE_Equip_ITAR_DJG_CM;
    on_unequip    =    Patch_AE_UnEquip_ITAR_DJG_CM;

    description    =    name;
	TEXT[0]                 =       Patch_AE_TEXT_ArcheryBonus5;

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
INSTANCE ITAR_PAL_ST_ArmorExpansion (C_Item)
{
	name 					=	ITAR_PAL_ST_ArmorExpansion__name;

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	90;
	protection [PROT_BLUNT] = 	90;
	protection [PROT_POINT] = 	90;
	protection [PROT_FIRE] 	= 	35;
	protection [PROT_MAGIC] = 	15;

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
INSTANCE ITAR_PAL_MH_ArmorExpansion (C_Item)
{
	name 					=	ITAR_PAL_MH_ArmorExpansion__name;

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	125;
	protection [PROT_BLUNT] = 	125;
	protection [PROT_POINT] = 	125;
	protection [PROT_FIRE] 	= 	75;
	protection [PROT_MAGIC] = 	35;

	value 					=	12000;

	wear 					=	WEAR_TORSO;

	visual 					=	"HeavyKnightNH.3ds";
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
INSTANCE ITAR_PIR_H_ArmorExpansion (C_Item)
{
	name 					=	ITAR_PIR_H_ArmorExpansion__name;

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
	visual_change 			=	"ARMOR_PIR_H_NH_AEXPANSION.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;

    on_equip    =    Equip_ITAR_PIR_H_ArmorExpansion;
    on_unequip    =    UnEquip_ITAR_PIR_H_ArmorExpansion;

	description				=	name;

	TEXT[0]					= 	Patch_AE_TEXT_DexBonus10_OneHandedBonus10;
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
func void Equip_ITAR_PIR_H_ArmorExpansion()
{
    // "self" it is C_NPC which is equipping armor
    B_RaiseFightTalent(self, NPC_TALENT_1H, 5);
	Npc_ChangeAttribute(self,ATR_DEXTERITY,+ 10);
};
func void UnEquip_ITAR_PIR_H_ArmorExpansion()
{
    // "self" it is C_NPC which is unequipping armor
    B_RaiseFightTalent(self, NPC_TALENT_1H, -5);
	Npc_ChangeAttribute(self,ATR_DEXTERITY, -10);
};
INSTANCE ITAR_PAL_ANH_ArmorExpansion (C_Item)
{
	name 					=	ITAR_PAL_ANH_ArmorExpansion__name;

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	145;
	protection [PROT_BLUNT] = 	145;
	protection [PROT_POINT] = 	145;
	protection [PROT_FIRE] 	= 	120;
	protection [PROT_MAGIC] = 	70;

	value 					=	VALUE_ITAR_PAL_H;

	wear 					=	WEAR_TORSO;

	visual 					=	"ARCPALANH.3ds";
	visual_change 			=	"Armor_Pal_H_Blessed.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	on_equip    			=    Patch_AE_Equip_ITAR_PAL_A;
    on_unequip    			=    Patch_AE_UnEquip_ITAR_PAL_A;

	description				=	name;
	TEXT[0]                 =       Patch_AE_TEXT_MaxManaBonus40;

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
INSTANCE ITAR_PAL_RNH_ArmorExpansion (C_Item)
{
	name 					=	ITAR_PAL_RNH_ArmorExpansion__name;

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	85;
	protection [PROT_BLUNT] = 	85;
	protection [PROT_POINT] = 	85;
	protection [PROT_FIRE] 	= 	15;
	protection [PROT_MAGIC] = 	15;

	value 					=	2000;

	wear 					=	WEAR_TORSO;

	visual 					=	"RUSTARCNH.3ds";
	visual_change 			=	"Armor_Pal_H_Rusty.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	description				=	name;
	TEXT[0]                 =       Patch_AE_TEXT_OldArmor;

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
INSTANCE ITAR_PAL_FNH_ArmorExpansion (C_Item)
{
	name 					=	ITAR_PAL_FNH_ArmorExpansion__name;

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	120;
	protection [PROT_BLUNT] = 	120;
	protection [PROT_POINT] = 	120;
	protection [PROT_FIRE] 	= 	85;
	protection [PROT_MAGIC] = 	45;

	value 					=	VALUE_ITAR_PAL_H;

	wear 					=	WEAR_TORSO;

	visual 					=	"ARCPALANH.3ds";
	visual_change 			=	"Armor_Pal_H_Blessed.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	on_equip    			=    Patch_AE_Equip_ITAR_PAL_F;
    on_unequip    			=    Patch_AE_UnEquip_ITAR_PAL_F;

	description				=	name;
	TEXT[0]                 =       Patch_AE_TEXT_MaxManaBonus20;

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
INSTANCE ITAR_PAL_AFH_ArmorExpansion (C_Item)
{
	name 					=	ITAR_PAL_AFH_ArmorExpansion__name;

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	145;
	protection [PROT_BLUNT] = 	145;
	protection [PROT_POINT] = 	145;
	protection [PROT_FIRE] 	= 	120;
	protection [PROT_MAGIC] = 	70;

	value 					=	VALUE_ITAR_PAL_H;

	wear 					=	WEAR_TORSO;

	visual 					=	"ARCPALA.3ds";
	visual_change 			=	"Armor_PAL_H_ARCFULLHELM.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	on_equip    			=    Patch_AE_Equip_ITAR_PAL_A;
    on_unequip    			=    Patch_AE_UnEquip_ITAR_PAL_A;

	description				=	name;
	TEXT[0]                 =       Patch_AE_TEXT_MaxManaBonus40;

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
INSTANCE ITAR_PAL_RFH_ArmorExpansion (C_Item)
{
	name 					=	ITAR_PAL_RFH_ArmorExpansion__name;

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	85;
	protection [PROT_BLUNT] = 	85;
	protection [PROT_POINT] = 	85;
	protection [PROT_FIRE] 	= 	15;
	protection [PROT_MAGIC] = 	15;

	value 					=	2000;

	wear 					=	WEAR_TORSO;

	visual 					=	"RUSTARC.3ds";
	visual_change 			=	"Armor_PAL_H_RUSTFULLHELM.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	description				=	name;
	TEXT[0]                 =       Patch_AE_TEXT_OldArmor;

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
INSTANCE ITAR_PAL_FFH_ArmorExpansion (C_Item)
{
	name 					=	ITAR_PAL_FFH_ArmorExpansion__name;

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	120;
	protection [PROT_BLUNT] = 	120;
	protection [PROT_POINT] = 	120;
	protection [PROT_FIRE] 	= 	85;
	protection [PROT_MAGIC] = 	45;

	value 					=	VALUE_ITAR_PAL_H;

	wear 					=	WEAR_TORSO;

	visual 					=	"ARCPALA.3ds";
	visual_change 			=	"Armor_PAL_H_ARCFULLHELM.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	on_equip    			=    Patch_AE_Equip_ITAR_PAL_F;
    on_unequip    			=    Patch_AE_UnEquip_ITAR_PAL_F;

	description				=	name;
	TEXT[0]                 =       Patch_AE_TEXT_MaxManaBonus20;

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
INSTANCE ITAR_NH_CRUSADER_ArmorExpansion (C_Item)
{
	name 					=	ITAR_NH_CRUSADER_ArmorExpansion_name;

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	110;
	protection [PROT_BLUNT] = 	110;
	protection [PROT_POINT] = 	110;
	protection [PROT_FIRE] 	= 	70;
	protection [PROT_MAGIC] = 	40;

	value 					=	10000;

	wear 					=	WEAR_TORSO;

	visual 					=	"CRUSADER.3DS";
	visual_change 			=	"Armor_CRUSADER_NH.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

	on_equip				=	Patch_AE_Equip_ITAR_CRUSADER_NH;
	on_unequip				=	Patch_AE_UnEquip_ITAR_CRUSADER_NH;

	description				=	name;
	TEXT[0]                 =       Patch_AE_TEXT_TwoHandedBonus5;

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
func void Patch_AE_Equip_ITAR_CRUSADER_NH()
{
    B_RaiseFightTalent(self, NPC_TALENT_2H, 5);
};
func void Patch_AE_UnEquip_ITAR_CRUSADER_NH()
{
    B_RaiseFightTalent(self, NPC_TALENT_2H, -5);
};

INSTANCE ITAR_PAL_MH_FH_ArmorExpansion (C_Item)
{
	name 					=	ITAR_PAL_MH_ArmorExpansion__name;

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	125;
	protection [PROT_BLUNT] = 	125;
	protection [PROT_POINT] = 	125;
	protection [PROT_FIRE] 	= 	75;
	protection [PROT_MAGIC] = 	35;

	value 					=	12000;

	wear 					=	WEAR_TORSO;

	visual 					=	"HeavyKnight.3ds";
	visual_change 			=	"Armor_Pal_M10_02_FH.asc";
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

INSTANCE ITAR_ARX_HUNTERM_ArmorExpansion (C_Item)
{
	name 					=	ITAR_ARX_HUNTERM_ArmorExpansion__name;

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	40;
	protection [PROT_BLUNT] = 	40;
	protection [PROT_POINT] = 	40;
	protection [PROT_FIRE] 	= 	0;
	protection [PROT_MAGIC] = 	0;
	
	value 					=	1000;

	wear 					=	WEAR_TORSO;

	visual 					=	"ARMOR_HUNL_AMEXPANSION.3ds";
	visual_change 			=	"ARMOR_HUNL_AMEXPANSION.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;	
		
	on_equip    			=    Patch_AE_Equip_ITAR_GAMBESON;
    on_unequip    			=    Patch_AE_UnEquip_ITAR_GAMBESON;	
	
	description				=	name;

	TEXT[0]					= 	Patch_AE_TEXT_ArcheryBonus3;
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

INSTANCE ITAR_ARX_HUNTERH_ArmorExpansion (C_Item)
{
	name 					=	ITAR_ARX_HUNTERH_ArmorExpansion__name;

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	55;
	protection [PROT_BLUNT] = 	55;
	protection [PROT_POINT] = 	55;
	protection [PROT_FIRE] 	= 	5;
	protection [PROT_MAGIC] = 	0;
	
	value 					=	2500;

	wear 					=	WEAR_TORSO;

	visual 					=	"ARMOR_HUNM_AMEXPANSION.3ds";
	visual_change 			=	"ARMOR_HUNM_AMEXPANSION.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;	
	
	on_equip    			=    Patch_AE_Equip_ITAR_GAMBESON;
    on_unequip    			=    Patch_AE_UnEquip_ITAR_GAMBESON;
	
	description				=	name;

	TEXT[0]					= 	Patch_AE_TEXT_ArcheryBonus3;
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

instance ItAr_KDF_M_AMEXPANSION(C_Item)
{
	name = ITAR_KDF_M_ArmorExpansion__name;
	mainflag = ITEM_KAT_ARMOR;
	flags = 0;
	protection[PROT_EDGE] = 55;
	protection[PROT_BLUNT] = 55;
	protection[PROT_POINT] = 55;
	protection[PROT_FIRE] = 30;
	protection[PROT_MAGIC] = 30;
	value = 2750;
	wear = WEAR_TORSO;
	visual = "Armor_KdF_M_AMEXPANSION.3ds";
	visual_change = "Armor_Kdf_M_AMEXPANSION.asc";
	visual_skin = 0;
	material = MAT_LEATHER;
	on_equip = Equip_ITAR_KDF_L;
	on_unequip = UnEquip_ITAR_KDF_L;
	description = name;
	text[1] = NAME_Prot_Edge;
	count[1] = protection[PROT_EDGE];
	text[2] = NAME_Prot_Point;
	count[2] = protection[PROT_POINT];
	text[3] = NAME_Prot_Fire;
	count[3] = protection[PROT_FIRE];
	text[4] = NAME_Prot_Magic;
	count[4] = protection[PROT_MAGIC];
	text[5] = NAME_Value;
	count[5] = value;
};

INSTANCE ITAR_DJG_CrawlerP_AEXPANSION (C_Item)
{
	name 					=	ITAR_DJG_CrawlerP_ArmorExpansion__name;

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	60;
	protection [PROT_BLUNT] = 	60;
	protection [PROT_POINT] = 	60;
	protection [PROT_FIRE] 	= 	10;
	protection [PROT_MAGIC] = 	0;

	value 					=	VALUE_ITAR_DJG_Crawler;

	wear 					=	WEAR_TORSO;

	visual 					=	"ItAr_Djg_Crawler.3ds";
	visual_change 			=	"Armor_Djg_CrawlerP_AEXPANSION.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;
	
	on_equip				=	Equip_ITAR_DJG_CrawlerP;
	on_unequip				=	UnEquip_ITAR_DJG_CrawlerP;
	
	description				=	name;
	
	TEXT[0]					= 	Patch_AE_TEXT_ArcheryBonus6;
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
FUNC VOID Equip_ITAR_DJG_CrawlerP()
{
	B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, 6);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, 6);
	if Npc_IsPlayer (self)
	{
		Patch_AE__ITAR_DJG_CRAWLERP_Equipped = TRUE;
	
		if (MC_Equipped == TRUE)	
		{
			self.protection[PROT_EDGE] 	+= BA_Bonus01;
			self.protection[PROT_BLUNT] += BA_Bonus01;
			self.protection[PROT_POINT] += BA_Bonus01;
			self.protection[PROT_MAGIC] += BA_Bonus01;
			self.protection[PROT_FIRE] 	+= BA_Bonus01;
		};
	};			
};
FUNC VOID UnEquip_ITAR_DJG_CrawlerP()
{
	 B_RaiseFightTalent(self, NPC_TALENT_CROSSBOW, -6);
	B_RaiseFightTalent(self, NPC_TALENT_BOW, -6);
	if Npc_IsPlayer (self)
	{
		Patch_AE__ITAR_DJG_CRAWLERP_Equipped = FALSE;
		
		if (MC_Equipped == TRUE)	
		{
			self.protection[PROT_EDGE] 	-= BA_Bonus01;
			self.protection[PROT_BLUNT] -= BA_Bonus01;
			self.protection[PROT_POINT] -= BA_Bonus01;
			self.protection[PROT_MAGIC] -= BA_Bonus01;
			self.protection[PROT_FIRE] 	-= BA_Bonus01;
		};
	};			
};

INSTANCE ITAR_PAL_HNH_ArmorExpansion (C_Item)
{
	name 					=	ITAR_PAL_H_ArmorExpansion__name;

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	150;
	protection [PROT_BLUNT] = 	150;
	protection [PROT_POINT] = 	150;
	protection [PROT_FIRE] 	= 	100;
	protection [PROT_MAGIC] = 	50;

	value 					=	VALUE_ITAR_PAL_H;

	wear 					=	WEAR_TORSO;

	visual 					=	"Armor_pal_H_NH_Static.3ds";
	visual_change 			=	"ARMOR_PAL_H_NH_ARMOREXPANSION.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

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
INSTANCE ITAR_PAL_HFH_ArmorExpansion (C_Item)
{
	name 					=	ITAR_PAL_H_ArmorExpansion__name;

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	150;
	protection [PROT_BLUNT] = 	150;
	protection [PROT_POINT] = 	150;
	protection [PROT_FIRE] 	= 	100;
	protection [PROT_MAGIC] = 	50;

	value 					=	VALUE_ITAR_PAL_H;

	wear 					=	WEAR_TORSO;

	visual 					=	"ItAr_Pal_H.3ds";
	visual_change 			=	"ARMOR_PAL_H_FH_ARMOREXPANSION.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

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

instance ITAR_Thorus_Addon(C_Item)
{
	visual = "Thorus_New_AEXPANSION.3ds";
};
instance ItAr_Sld_L(C_Item)
{
	visual = "SLDL_New_AEXPANSION.3ds";
};
instance ItAr_Sld_M(C_Item)
{
	visual = "SLDM_New_AEXPANSION.3ds";
};
instance ItAr_Sld_H(C_Item)
{
	visual = "SLDH_New_AEXPANSION.3ds";
};

INSTANCE ITAR_PAL_ANDRE_ArmorExpansion (C_Item)
{
	name 					=	"Andres Knight Armor";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	100;
	protection [PROT_BLUNT] = 	100;
	protection [PROT_POINT] = 	100;
	protection [PROT_FIRE] 	= 	50;
	protection [PROT_MAGIC] = 	25;

	value 					=	VALUE_ITAR_PAL_M;

	wear 					=	WEAR_TORSO;

	visual 					=	"ItAr_Pal_M.3ds";
	visual_change 			=	"ARMOR_LORDANDREKNIGHT.asc";
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
INSTANCE ITAR_PAL_HAGEN_ArmorExpansion (C_Item)
{
	name 					=	"Lord Hagens Armor";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	150;
	protection [PROT_BLUNT] = 	150;
	protection [PROT_POINT] = 	150;
	protection [PROT_FIRE] 	= 	100;
	protection [PROT_MAGIC] = 	50;

	value 					=	VALUE_ITAR_PAL_H;

	wear 					=	WEAR_TORSO;

	visual 					=	"ItAr_Pal_H.3ds";
	visual_change 			=	"ARMOR_LORDHAGENPALADIN.asc";
	visual_skin 			=	0;
	material 				=	MAT_METAL;

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
INSTANCE ITAR_SLD_LEE_ARMOREXPANSION (C_Item)
{
	name 					=	"Lees Armor";

	mainflag 				=	ITEM_KAT_ARMOR;
	flags 					=	0;

	protection [PROT_EDGE]	=	90;
	protection [PROT_BLUNT] = 	90;
	protection [PROT_POINT] = 	90;
	protection [PROT_FIRE] 	= 	5;
	protection [PROT_MAGIC] = 	10;

	value 					=	VALUE_ITAR_SLD_H;

	wear 					=	WEAR_TORSO;

	visual 					=	"ItAr_Sld_H.3ds";
	visual_change 			=	"ARMOR_LEEHEAVYMERCENARY.asc";
	visual_skin 			=	0;
	material 				=	MAT_LEATHER;
	
	on_equip				=	Equip_ITAR_SLD_H;
	on_unequip				=	UnEquip_ITAR_SLD_H;
	
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

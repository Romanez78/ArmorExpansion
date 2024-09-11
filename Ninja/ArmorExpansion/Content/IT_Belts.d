func void Ninja_ArmorExpansion_Equip_ItBE_Addon_MIL_01()
{
    if (true == Npc_IsPlayer(self))
    {
        if (true == Ninja_ArmorExpansion__ITAR_MIL_H_Equipped)
        {
            self.protection[PROT_EDGE] += BA_Bonus01;
            self.protection[PROT_BLUNT] += BA_Bonus01;
            self.protection[PROT_POINT] += BA_Bonus01;
            self.protection[PROT_MAGIC] += BA_Bonus01;
            self.protection[PROT_FIRE] += BA_Bonus01;
        };
    };
    
    ContinueCall();
};
func void Ninja_ArmorExpansion_UnEquip_ItBE_Addon_MIL_01()
{
    if (true == Npc_IsPlayer(self))
    {
        if (true == Ninja_ArmorExpansion__ITAR_MIL_H_Equipped)
        {
            self.protection[PROT_EDGE] -= BA_Bonus01;
            self.protection[PROT_BLUNT] -= BA_Bonus01;
            self.protection[PROT_POINT] -= BA_Bonus01;
            self.protection[PROT_MAGIC] -= BA_Bonus01;
            self.protection[PROT_FIRE] -= BA_Bonus01;
        };
    };
    
    ContinueCall();
};

func void Ninja_ArmorExpansion_Equip_ItBE_Addon_SLD_01()
{
    if (true == Npc_IsPlayer(self))
    {
        if (true == Ninja_ArmorExpansion__ITAR_SLD_BOW_Equipped)
        {
            self.protection[PROT_EDGE] += BA_Bonus01;
            self.protection[PROT_BLUNT] += BA_Bonus01;
            self.protection[PROT_POINT] += BA_Bonus01;
            self.protection[PROT_MAGIC] += BA_Bonus01;
            self.protection[PROT_FIRE] += BA_Bonus01;
        };
    };
    
    ContinueCall();
};
func void Ninja_ArmorExpansion_UnEquip_ItBE_Addon_SLD_01()
{
    if (true == Npc_IsPlayer(self))
    {
        if (true == Ninja_ArmorExpansion__ITAR_SLD_BOW_Equipped)
        {
            self.protection[PROT_EDGE] -= BA_Bonus01;
            self.protection[PROT_BLUNT] -= BA_Bonus01;
            self.protection[PROT_POINT] -= BA_Bonus01;
            self.protection[PROT_MAGIC] -= BA_Bonus01;
            self.protection[PROT_FIRE] -= BA_Bonus01;
        };
    };
    
    ContinueCall();
};
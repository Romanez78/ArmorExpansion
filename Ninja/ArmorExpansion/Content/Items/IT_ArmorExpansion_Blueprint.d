// ********************************
// Stewark Armor Blueprint
// ********************************
instance ItWr_BluePrint_StewarkArmor_ArmorExpansion(C_Item)
{
	name = ItWr_BluePrint_StewarkArmor_ArmorExpansion__name;

	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;

	value = 100;

	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;

	on_state[0] = Patch_AE_Use_Plan_StewarkArmor;

	scemeName = "MAP";

	description = name;
};
func void Patch_AE_Use_Plan_StewarkArmor()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,0,FONT_BookHeadline);
	Doc_SetMargins(nDocID,-1,50,50,50,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_PrintLine(nDocID,0,Patch_AE_Use_Plan_StewarkArmor__line1);
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,Patch_AE_Use_Plan_StewarkArmor__line2);
	Doc_PrintLines(nDocID,0,Patch_AE_Use_Plan_StewarkArmor__line3);
	Doc_PrintLines(nDocID,0,Patch_AE_Use_Plan_StewarkArmor__line4);
	Doc_PrintLines(nDocID,0,Patch_AE_Use_Plan_StewarkArmor__line5);
	Doc_PrintLines(nDocID,0,Patch_AE_Use_Plan_StewarkArmor__line6);
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,Patch_AE_Use_Plan_StewarkArmor__line7);
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,Patch_AE_Use_Plan_StewarkArmor__line8);
	Doc_Show(nDocID);
};

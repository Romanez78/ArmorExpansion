// ********************************
// Stewark Armor Blueprint
// ********************************
instance ItWr_BluePrint_StewarkArmor(C_Item)
{
	name = "Nákres na výrobu plátové zbroje ze Stewarku";

	mainflag = ITEM_KAT_DOCS;
	flags = ITEM_MISSION;

	value = 100;

	visual = "ItWr_Scroll_01.3DS";
	material = MAT_LEATHER;

	on_state[0] = Use_Plan_StewarkArmor;

	scemeName = "MAP";

	description = name;
};
func void Use_Plan_StewarkArmor()
{
	var int nDocID;
	nDocID = Doc_Create();
	Doc_SetPages(nDocID,1);
	Doc_SetPage(nDocID,0,"letters.TGA",0);
	Doc_SetFont(nDocID,0,FONT_BookHeadline);
	Doc_SetMargins(nDocID,-1,50,50,50,50,1);
	Doc_PrintLine(nDocID,0,"");
	Doc_SetFont(nDocID,0,FONT_Book);
	Doc_PrintLine(nDocID,0,"     Nákres na výrobu plátové zbroje ze Stewarku");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Tohle je nákres pro všechny schopné kováøe mìsta Stewark,");
    Doc_PrintLines(nDocID,0,"máte za úkol vyrobit nové kusy zbroje kterou bude");
    Doc_PrintLines(nDocID,0,"vybavena stráž mìsta.");
    Doc_PrintLines(nDocID,0,"Suroviny dostanete brzy, na výrobu jedné zbroje budete potøebovat:");
    Doc_PrintLines(nDocID,0,"-6 Kusù surového železa");
    Doc_PrintLines(nDocID,0,"-3 Kùže Warga");
    Doc_PrintLines(nDocID,0,"Návod k výrobì je na druhé stranì tohoto nákresu.");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Pokud budete pøistiženi jak prodáváte suroviny");
	Doc_PrintLines(nDocID,0,"nebo nákres, budete tvrdì potrestáni.");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Rozkaz vydal velitel mìstské stráže Cenric");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_Show(nDocID);
};  

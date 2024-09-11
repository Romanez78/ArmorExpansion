// ********************************
// Stewark Armor Blueprint
// ********************************
instance ItWr_BluePrint_StewarkArmor(C_Item)
{
	name = "N�kres na v�robu pl�tov� zbroje ze Stewarku";

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
	Doc_PrintLine(nDocID,0,"     N�kres na v�robu pl�tov� zbroje ze Stewarku");
	Doc_PrintLine(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Tohle je n�kres pro v�echny schopn� kov��e m�sta Stewark,");
    Doc_PrintLines(nDocID,0,"m�te za �kol vyrobit nov� kusy zbroje kterou bude");
    Doc_PrintLines(nDocID,0,"vybavena str� m�sta.");
    Doc_PrintLines(nDocID,0,"Suroviny dostanete brzy, na v�robu jedn� zbroje budete pot�ebovat:");
    Doc_PrintLines(nDocID,0,"-6 Kus� surov�ho �eleza");
    Doc_PrintLines(nDocID,0,"-3 K��e Warga");
    Doc_PrintLines(nDocID,0,"N�vod k v�rob� je na druh� stran� tohoto n�kresu.");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Pokud budete p�isti�eni jak prod�v�te suroviny");
	Doc_PrintLines(nDocID,0,"nebo n�kres, budete tvrd� potrest�ni.");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLines(nDocID,0,"Rozkaz vydal velitel m�stsk� str�e Cenric");
	Doc_PrintLines(nDocID,0,"");
	Doc_PrintLine(nDocID,0,"");
	Doc_Show(nDocID);
};  

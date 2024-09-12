/*
 * Wrapper for B_SetNpcVisual
 */
func void Patch_AE_B_SetNpcVisual(var C_Npc slf, var int gender, var string headMesh, var int faceTex, var int bodyTex,
                                  var int armorInstance) {
    // B_SetNpcVisual exists as ensured by Patch_AE_SymbolChecks
    MEM_PushInstParam(slf);
    MEM_PushIntParam(gender);
    MEM_PushStringParam(headMesh);
    MEM_PushIntParam(faceTex);
    MEM_PushIntParam(bodyTex);
    MEM_PushIntParam(armorInstance);
    MEM_CallByString("B_SETNPCVISUAL");
};

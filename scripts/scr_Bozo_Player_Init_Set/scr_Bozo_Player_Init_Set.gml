///@description Bozo - Player - Init - Set

function scr_Bozo_Player_Init_Set()
{
	#region Setup
	global.Bozo_PlayerList = [];
	global.Bozo_PlayerIDs = ds_map_create();
	#endregion
	
	#region Players
	scr_Bozo_Player_Init_Add("gim","Gim","He likes pancakes",spr_Bozo_Player_Gim,scr_Bozo_Player_Gim_Setup);
	scr_Bozo_Player_Init_Add("bor","Bor","He likes waffles",spr_Bozo_Player_Bor,scr_Bozo_Player_Bor_Setup);
	scr_Bozo_Player_Init_Add("ty","Ty","men",spr_Bozo_Player_Ty,scr_Bozo_Player_Ty_Setup);
	#endregion
}
///@description Bozo - Stage - Init - Set

function scr_Bozo_Stage_Init_Set()
{
	#region Setup
	global.Bozo_StageList = [];
	global.Bozo_StageIDs = ds_map_create();
	#endregion
	
	#region Stages
	scr_Bozo_Stage_Init_Add("quick","Quick");
	scr_Bozo_Stage_Init_Add("city","City");
	scr_Bozo_Stage_Init_Add("grass","Grass");
	scr_Bozo_Stage_Init_Add("space","Space",global.Bozo_CompletionMarkIDs[? "space"]);
	scr_Bozo_Stage_Init_Add("clouds","Clouds",global.Bozo_CompletionMarkIDs[? "clouds"]);
	scr_Bozo_Stage_Init_Add("caves","Caves",global.Bozo_CompletionMarkIDs[? "caves"]);
	scr_Bozo_Stage_Init_Add("hell","Hell",global.Bozo_CompletionMarkIDs[? "hell"]);
	scr_Bozo_Stage_Init_Add("bozo","Bozo",global.Bozo_CompletionMarkIDs[? "bozo"]);
	#endregion
}
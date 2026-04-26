///@description Bozo - Completion Mark - Init - Set

function scr_Bozo_CompletionMark_Init_Set()
{
	#region Setup
	global.Bozo_CompletionMarkList = [];
	global.Bozo_CompletionMarkIDs = ds_map_create();
	#endregion
	
	#region Completion Marks
	scr_Bozo_CompletionMark_Init_Add("clouds",spr_Bozo_CompletionMark_Icon_Clouds,8,9);
	scr_Bozo_CompletionMark_Init_Add("space",spr_Bozo_CompletionMark_Icon_Space,31,11);
	scr_Bozo_CompletionMark_Init_Add("caves",spr_Bozo_CompletionMark_Icon_Caves,4,30);
	scr_Bozo_CompletionMark_Init_Add("hell",spr_Bozo_CompletionMark_Icon_Hell,31,30);
	#endregion
}
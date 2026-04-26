///@description Bozo - Load Data

function scr_Bozo_LoadData(file)
{
	var fileFinal = file;
	if (!global.isMobile) fileFinal = environment_get_variable("LOCALAPPDATA") + chr(92) + global.gameTitle + chr(92) + file;
	
	ini_open(fileFinal);
	
	#region Character Status
	for (var i = 0; i < ds_map_size(global.Bozo_PlayerIDs); i++)
	{
		for (var j = 0; j < ds_map_size(global.Bozo_CompletionMarkIDs); j++)
		{
			global.Bozo_PlayerList[i].completion[j] = ini_read_real("characterStatus",global.Bozo_PlayerList[i].ID + "_" + global.Bozo_CompletionMarkList[j].ID,false);
		}
	}
	#endregion
	
	ini_close();
}
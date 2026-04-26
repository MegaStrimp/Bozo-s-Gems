///@description Bozo - Save Data

function scr_Bozo_SaveData(file)
{
	var fileFinal = file;
	if (!global.isMobile) fileFinal = environment_get_variable("LOCALAPPDATA") + chr(92) + global.gameTitle + chr(92) + file;
	
	if (file_exists(fileFinal)) file_delete(fileFinal);
	
	ini_open(fileFinal);
	
	#region Character Status
	for (var i = 0; i < ds_map_size(global.Bozo_PlayerIDs); i++)
	{
		for (var j = 0; j < ds_map_size(global.Bozo_CompletionMarkIDs); j++)
		{
			ini_write_real("characterStatus",global.Bozo_PlayerList[i].ID + "_" + global.Bozo_CompletionMarkList[j].ID,global.Bozo_PlayerList[i].completion[j]);
		}
	}
	#endregion
	
	ini_close();
}
///@description Bozo - Player - Init - Add

function scr_Bozo_Player_Init_Add(targetID,targetName = "",targetDescription = "",targetSprite = -1,targetSetupScript = undefined)
{
	var targetMappedID = ds_map_size(global.Bozo_PlayerIDs);
	ds_map_add(global.Bozo_PlayerIDs,targetID,targetMappedID);
	
	global.Bozo_PlayerList[global.Bozo_PlayerIDs[? targetID]] = 
	{
        ID: targetID,
		name: targetName,
		sprite: targetSprite,
		description: targetDescription,
		setupScript: targetSetupScript,
		completion: []
    };
	
	for (var i = 0; i < ds_map_size(global.Bozo_CompletionMarkIDs); i++)
	{
		global.Bozo_PlayerList[global.Bozo_PlayerIDs[? targetID]].completion[i] = false;
	}
	
	return targetMappedID;
}
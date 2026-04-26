///@description Bozo - Stage - Init - Add

function scr_Bozo_Stage_Init_Add(targetID,targetTitle = "",targetCompletionMarkID = -1)
{
	var targetMappedID = ds_map_size(global.Bozo_StageIDs);
	ds_map_add(global.Bozo_StageIDs,targetID,targetMappedID);
	
	global.Bozo_StageList[global.Bozo_StageIDs[? targetID]] = 
	{
        ID: targetID,
        title: targetTitle,
        completionMarkID: targetCompletionMarkID
    };
	
	return targetMappedID;
}
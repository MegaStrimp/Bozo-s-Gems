///@description Bozo - CompletionMark - Init - Add

function scr_Bozo_CompletionMark_Init_Add(targetID,targetIcon = -1,targetSheetX = 0,targetSheetY = 0)
{
	var targetMappedID = ds_map_size(global.Bozo_CompletionMarkIDs);
	ds_map_add(global.Bozo_CompletionMarkIDs,targetID,targetMappedID);
	
	global.Bozo_CompletionMarkList[global.Bozo_CompletionMarkIDs[? targetID]] = 
	{
        ID: targetID,
        icon: targetIcon,
        sheetX: targetSheetX,
        sheetY: targetSheetY
    };
	
	return targetMappedID;
}
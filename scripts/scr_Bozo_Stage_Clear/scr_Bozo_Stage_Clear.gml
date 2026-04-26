///@description Bozo - Stage - Clear

function scr_Bozo_Stage_Clear()
{
	if (global.Bozo_StageList[global.currentStageID].completionMarkID != -1)
	{
		global.Bozo_PlayerList[global.playerCharacter[0]].completion[global.Bozo_StageList[global.currentStageID].completionMarkID] = true;
	}
	
	scr_Bozo_SaveData("data1.ini");
}
///@description Bozo - Stage - Begin

function scr_Bozo_Stage_Begin(targetStageID = -1)
{
	#region Event Inherited
	scr_Stage_Begin(targetStageID);
	#endregion
	
	#region Stage Intro
	instance_create_depth(0,0,0,obj_Bozo_UI_StageIntro);
	#endregion
	
	#region Bozo Timer
	global.Bozo_BozoTimer = global.Bozo_BozoTimerMax;
	#endregion
	
	#region Variables
	global.Bozo_PortalOffset = 96;
	#endregion
}
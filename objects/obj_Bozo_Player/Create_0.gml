///@description Create

#region Event Inherited
event_inherited();
#endregion

#region Character Setup
if (characterSetup)
{
	script_execute(global.Bozo_PlayerList[global.playerCharacter[playerNum]].setupScript);
	
	if (playerNum == 0)
	{
		scr_Camera_FollowObject(id,cameraXOffset + global.hudCameraXOffset,cameraYOffset + global.hudCameraYOffset);
	}
	
	characterSetup = false;
}
#endregion

#region State Scripts
playerDeath = scr_Bozo_Player_Death;

playerBeginStep = scr_Bozo_Player_BeginStep_Main;
#endregion
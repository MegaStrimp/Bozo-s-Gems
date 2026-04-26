///@description Bozo - Player - Begin Step - Main

function scr_Bozo_Player_BeginStep_Main()
{
	#region Variables
	speedMultFinal = global.speedMultGlobal * global.speedMultPlayer * speedMult * global.deltaTime;
	localPause = (global.pauseFinal) or (localFreezeFrameTimer != -1);
	#endregion
}
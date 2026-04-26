///@description Bozo - Player - Death

function scr_Bozo_Player_Death(targetPlayer)
{
	with (targetPlayer)
	{
		scr_Debug_WriteLog("Player " + string(playerNum) + " Died");
		
		global.playerRespawn[playerNum] = true;
		
		scr_Bozo_Stage_End();
		
		room_goto(rm_Bozo_Menu_Death);
	}
}
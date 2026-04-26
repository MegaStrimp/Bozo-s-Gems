///@description Bozo - Player - Component - Setup

function scr_Bozo_Player_Component_Setup()
{
	#region Character Variables
	global.playerMaxHp[playerNum] = 1;
	
	if (global.playerFirstTimeSetup[playerNum])
	{
		global.playerHp[playerNum] = global.playerMaxHp[playerNum];
		
		global.playerFirstTimeSetup[playerNum] = false;
	}
	#endregion
	
	#region Scripts
	playerStateStep = scr_Bozo_Player_Component_State_Normal_Step;
	#endregion
	
	#region Sprites
	sprite_index = global.Bozo_PlayerList[global.playerCharacter[playerNum]].sprite;
	#endregion
	
	#region Player Respawn
	if (global.playerRespawn[playerNum])
	{
		global.playerHp[playerNum] = global.playerMaxHp[playerNum];
		
		global.playerRespawn[playerNum] = false;
	}
	#endregion
}
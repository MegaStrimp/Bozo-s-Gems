///@description Bozo - Player - Bor - Setup

function scr_Bozo_Player_Bor_Setup()
{
	#region Components
	scr_Bozo_Player_Component_Setup();
	#endregion
	
	#region Gameplay Variables
	attackTimer = -1;
	attackTimerMax = 2;
	
	attackScript = scr_Bozo_Attack_Execute_Player_Bor;
	#endregion
}
///@description Bozo - Player - Gim - Setup

function scr_Bozo_Player_Gim_Setup()
{
	#region Components
	scr_Bozo_Player_Component_Setup();
	#endregion
	
	#region Gameplay Variables
	attackTimer = -1;
	attackTimerMax = 5;
	
	attackScript = scr_Bozo_Attack_Execute_Player_Gim;
	#endregion
}
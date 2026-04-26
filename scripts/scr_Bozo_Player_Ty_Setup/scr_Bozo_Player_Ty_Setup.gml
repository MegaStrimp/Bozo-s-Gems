///@description Bozo - Player - Ty - Setup

function scr_Bozo_Player_Ty_Setup()
{
	#region Components
	scr_Bozo_Player_Component_Setup();
	#endregion
	
	#region Gameplay Variables
	attackTimer = -1;
	attackTimerMax = 15;
	
	attackScript = scr_Bozo_Attack_Execute_Player_Ty;
	#endregion
}
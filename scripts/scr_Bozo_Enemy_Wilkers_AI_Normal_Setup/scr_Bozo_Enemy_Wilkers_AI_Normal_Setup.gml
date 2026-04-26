///@description Bozo - Enemy - Wilkers - AI - Normal - Setup

function scr_Bozo_Enemy_Wilkers_AI_Normal_Setup()
{
	#region Physics Variables
	dashSpd = 2;
	#endregion
	
	#region AI Scripts
	enemyAIStep = scr_Bozo_Enemy_Wilkers_AI_Normal_Step;
	#endregion
	
	#region Visual Variables
	dirXEffectDraw = false;
	drawDirX = dirX;
	#endregion
	
	#region Gameplay Variables
	attackTimerMax = 60;
	attackTimer = attackTimerMax;
	#endregion
}
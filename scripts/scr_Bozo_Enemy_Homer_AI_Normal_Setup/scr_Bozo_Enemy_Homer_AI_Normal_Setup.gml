///@description Bozo - Enemy - Homer - AI - Normal - Setup

function scr_Bozo_Enemy_Homer_AI_Normal_Setup()
{
	#region Physics Variables
	dashSpd = 2;
	#endregion
	
	#region AI Scripts
	enemyAIStep = scr_Bozo_Enemy_Homer_AI_Normal_Step;
	#endregion
	
	#region Visual Variables
	dirXEffectDraw = false;
	drawDirX = dirX;
	#endregion
	
	#region Gameplay Variables
	moveTick = 0;
	
	attackTimerMax = 40;
	attackTimer = attackTimerMax;
	
	ufoTimerMax = 240;
	ufoTimer = ufoTimerMax;
	#endregion
}
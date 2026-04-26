///@description Bozo - Enemy - Bisbee - AI - Normal - Setup

function scr_Bozo_Enemy_Bisbee_AI_Normal_Setup()
{
	#region Physics Variables
	dashSpd = 2;
	#endregion
	
	#region AI Scripts
	enemyAIStep = scr_Bozo_Enemy_Bisbee_AI_Normal_Step;
	#endregion
	
	#region Visual Variables
	dirXEffectDraw = false;
	drawDirX = dirX;
	#endregion
	
	#region Gameplay Variables
	moveTick = 0;
	
	attackCount = 0;
	attackCountMax = 3;
	attackTimerMax = 60;
	attackTimerMin = 15;
	attackTimer = attackTimerMax;
	
	appleTimerMax = 120;
	appleTimer = appleTimerMax;
	#endregion
}
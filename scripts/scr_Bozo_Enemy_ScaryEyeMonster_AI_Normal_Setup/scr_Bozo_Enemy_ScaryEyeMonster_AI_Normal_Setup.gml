///@description Bozo - Enemy - Scary Eye Monster - AI - Normal - Setup

function scr_Bozo_Enemy_ScaryEyeMonster_AI_Normal_Setup()
{
	#region Physics Variables
	dashSpd = 2;
	#endregion
	
	#region AI Scripts
	enemyAIStep = scr_Bozo_Enemy_ScaryEyeMonster_AI_Normal_Step;
	#endregion
	
	#region Visual Variables
	dirXEffectDraw = false;
	drawDirX = dirX;
	#endregion
	
	#region Gameplay Variables
	moveTick = 0;
	
	attackCount = 0;
	attackCountMax = 6;
	attackTimerMax = 60;
	attackTimerMin = 5;
	attackTimer = attackTimerMax;
	#endregion
}
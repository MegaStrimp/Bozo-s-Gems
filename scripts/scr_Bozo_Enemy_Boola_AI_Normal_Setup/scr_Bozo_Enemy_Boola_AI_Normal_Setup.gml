///@description Bozo - Enemy - Boola - AI - Normal - Setup

function scr_Bozo_Enemy_Boola_AI_Normal_Setup()
{
	#region Physics Variables
	dashSpd = 2;
	#endregion
	
	#region AI Scripts
	enemyAIStep = scr_Bozo_Enemy_Boola_AI_Normal_Step;
	#endregion
	
	#region Visual Variables
	dirXEffectDraw = false;
	drawDirX = dirX;
	#endregion
	
	#region Gameplay Variables
	moveTick = 0;
	
	attackCount = 0;
	attackCountMax = 3;
	attackTimer = -1;
	attackTimerMax = 60;
	attackTimerMin = 15;
	
	dashTimer = -1;
	dashTimerMax = 330;
	
	reverseTimer = -1;
	reverseTimerMax = 60;
	
	revertTimer = -1;
	revertTimerMax = 60;
	#endregion
}
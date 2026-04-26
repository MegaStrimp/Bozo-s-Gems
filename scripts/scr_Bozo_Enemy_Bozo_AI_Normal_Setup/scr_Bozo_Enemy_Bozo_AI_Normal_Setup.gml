///@description Bozo - Enemy - Bozo - AI - Normal - Setup

function scr_Bozo_Enemy_Bozo_AI_Normal_Setup()
{
	#region Physics Variables
	spd = 1;
	#endregion
	
	#region AI Scripts
	enemyAIStep = scr_Bozo_Enemy_Bozo_AI_Normal_Step;
	#endregion
	
	#region Visual Variables
	dirXEffectDraw = false;
	drawDirX = dirX;
	#endregion
}
///@description Bozo - Enemy - Homer - AI - Normal - Step

function scr_Bozo_Enemy_Homer_AI_Normal_Step()
{
	if (!localPause)
	{
		#region Movement
		moveTick += 1;
		
		vsp = sine_between((moveTick / 10),12,-2,2);
		#endregion
		
		#region Attack Timer
		if (attackTimer != -1)
		{
			attackTimer = max(attackTimer - speedMultFinal,0);
			if (attackTimer == 0)
			{
				scr_Bozo_Attack_Execute_Homer_Cannon();
				
				attackTimer = attackTimerMax;
			}
		}
		#endregion
		
		#region Ufo Timer
		if (ufoTimer != -1)
		{
			ufoTimer = max(ufoTimer - speedMultFinal,0);
			if (ufoTimer == 0)
			{
				scr_Bozo_Attack_Execute_Homer_Ufo();
				
				ufoTimer = ufoTimerMax;
			}
		}
		#endregion
		
		#region Position
		scr_Component_SetPosition(hsp,vsp);
		#endregion
		
		#region Animation
		sprite_index = spr_Bozo_Enemy_Homer_Idle;
		#endregion
	}
}
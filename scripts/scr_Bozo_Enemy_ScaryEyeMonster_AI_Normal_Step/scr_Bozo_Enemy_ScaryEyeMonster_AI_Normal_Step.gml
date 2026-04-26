///@description Bozo - Enemy - Scary Eye Monster - AI - Normal - Step

function scr_Bozo_Enemy_ScaryEyeMonster_AI_Normal_Step()
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
				attackCount += 1;
				
				scr_Bozo_Attack_Execute_ScaryEyeMonster_Cannon();
				
				if (attackCount >= attackCountMax)
				{
					attackCount = 0;
					attackTimer = attackTimerMax;
				}
				else
				{
					attackTimer = attackTimerMin;
				}
			}
		}
		#endregion
		
		#region Position
		scr_Component_SetPosition(hsp,vsp);
		#endregion
		
		#region Animation
		sprite_index = spr_Bozo_Enemy_ScaryEyeMonster_Idle;
		#endregion
	}
}
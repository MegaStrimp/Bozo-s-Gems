///@description Bozo - Enemy - Bisbee - AI - Normal - Step

function scr_Bozo_Enemy_Bisbee_AI_Normal_Step()
{
	if (!localPause)
	{
		#region Movement
		moveTick += 1;
		
		vsp = sine_between((moveTick / 10),9,-2,2);
		#endregion
		
		#region Attack Timer
		if (attackTimer != -1)
		{
			attackTimer = max(attackTimer - speedMultFinal,0);
			if (attackTimer == 0)
			{
				attackCount += 1;
				
				var attackAngle = 180;
				switch (attackCount)
				{
					case 1:
					attackAngle = 165;
					break
					
					case 2:
					attackAngle = 205;
					break
				}
				
				scr_Bozo_Attack_Execute_Bisbee_Cannon(attackAngle);
				
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
		
		#region Apple Timer
		if (appleTimer != -1)
		{
			appleTimer = max(appleTimer - speedMultFinal,0);
			if (appleTimer == 0)
			{
				scr_Bozo_Attack_Execute_Bisbee_Apple();
				
				appleTimer = appleTimerMax;
			}
		}
		#endregion
		
		#region Position
		scr_Component_SetPosition(hsp,vsp);
		#endregion
		
		#region Animation
		sprite_index = spr_Bozo_Enemy_Bisbee_Idle;
		#endregion
	}
}
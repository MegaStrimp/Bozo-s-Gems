///@description Bozo - Enemy - Boola - AI - Normal - Step

function scr_Bozo_Enemy_Boola_AI_Normal_Step()
{
	#region Setup
	if (enemyState_Setup)
	{
		image_blend = c_white;
		
		attackTimer = attackTimerMax;
		dashTimer = dashTimerMax;
		
		enemyState_Setup = false;
	}
	#endregion
	
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
				
				scr_Bozo_Attack_Execute_Boola_Cannon();
				
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
		
		#region Dash Timer
		if (dashTimer != -1)
		{
			dashTimer = max(dashTimer - speedMultFinal,0);
			if (dashTimer == 0)
			{
				vsp = 0;
				scr_Bozo_Attack_Execute_Boola_Dash();
				
				dashTimer = -1;
			}
			else if (dashTimer <= 30)
			{
				image_blend = c_white;
				if (global.currentTimePausable % 2 == 0) image_blend = c_red;
			}
		}
		#endregion
		
		#region Position
		scr_Component_SetPosition(hsp,vsp);
		#endregion
		
		#region Animation
		sprite_index = spr_Bozo_Enemy_Boola_Idle;
		#endregion
	}
}
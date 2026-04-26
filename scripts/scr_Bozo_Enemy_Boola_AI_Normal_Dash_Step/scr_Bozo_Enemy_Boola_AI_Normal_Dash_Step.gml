///@description Bozo - Enemy - Boola - AI - Normal - Dash - Step

function scr_Bozo_Enemy_Boola_AI_Normal_Dash_Step()
{
	#region Setup
	if (enemyState_Setup)
	{
		image_blend = c_red;
		
		reverseTimer = reverseTimerMax;
		
		enemyState_Setup = false;
	}
	#endregion
	
	if (!localPause)
	{
		#region Movement
		hsp = dashSpd * dirX;
		#endregion
		
		#region Reverse Timer
		if (reverseTimer != -1)
		{
			reverseTimer = max(reverseTimer - speedMultFinal,0);
			if (reverseTimer == 0)
			{
				dirX *= -1;
				
				revertTimer = revertTimerMax;
				reverseTimer = -1;
			}
		}
		#endregion
		
		#region Revert Timer
		if (revertTimer != -1)
		{
			revertTimer = max(revertTimer - speedMultFinal,0);
			if (revertTimer == 0)
			{
				hsp = 0;
				
				dirX *= -1;
				scr_Enemy_ChangeState_Step(id,scr_Bozo_Enemy_Boola_AI_Normal_Step);
				
				revertTimer = -1;
			}
		}
		#endregion
		
		#region Position
		scr_Component_SetPosition(hsp,vsp);
		#endregion
		
		#region Animation
		sprite_index = spr_Bozo_Enemy_Boola_Dash;
		#endregion
	}
}
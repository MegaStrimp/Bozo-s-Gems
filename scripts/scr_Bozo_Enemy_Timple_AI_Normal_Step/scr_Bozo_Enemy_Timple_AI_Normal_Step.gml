///@description Bozo - Enemy - Timple - AI - Normal - Step

function scr_Bozo_Enemy_Timple_AI_Normal_Step()
{
	if (!localPause)
	{
		#region Movement
		moveTick += 1;
		
		vsp = sine_between((moveTick / 10),12,-2,2);
		
		image_angle += 2;
		imageAngle = image_angle;
		#endregion
		
		#region Attack Timer
		if (attackTimer != -1)
		{
			attackTimer = max(attackTimer - speedMultFinal,0);
			if (attackTimer == 0)
			{
				scr_Bozo_Attack_Execute_Timple_Cannon();
				
				attackTimer = attackTimerMax;
			}
		}
		#endregion
		
		#region Position
		scr_Component_SetPosition(hsp,vsp);
		#endregion
		
		#region Animation
		sprite_index = spr_Bozo_Enemy_Timple_Idle;
		#endregion
	}
}
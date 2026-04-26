///@description Bozo - Enemy - Wilkers - AI - Normal - Step

function scr_Bozo_Enemy_Wilkers_AI_Normal_Step()
{
	if (!localPause)
	{
		#region Attack Timer
		if (attackTimer != -1)
		{
			attackTimer = max(attackTimer - speedMultFinal,0);
			if (attackTimer == 0)
			{
				scr_Bozo_Attack_Execute_Wilkers_Web();
				
				attackTimer = attackTimerMax;
			}
		}
		#endregion
		
		#region Position
		scr_Component_SetPosition(hsp,vsp);
		#endregion
		
		#region Animation
		sprite_index = spr_Bozo_Enemy_Wilkers_Idle;
		#endregion
	}
}
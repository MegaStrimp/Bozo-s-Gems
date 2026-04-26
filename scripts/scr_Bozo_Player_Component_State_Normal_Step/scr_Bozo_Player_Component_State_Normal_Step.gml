///@description Bozo - Player - Component - State - Normal - Step

function scr_Bozo_Player_Component_State_Normal_Step()
{
	if (!localPause)
	{
		#region Movement
		x = mouse_x;
		y = mouse_y;
		#endregion
		
		#region Attack
		if ((mouse_check_button(mb_left)) and (attackTimer == -1))
		{
			if (attackScript != -1) script_execute(attackScript);
			
			attackTimer = attackTimerMax;
		}
		#endregion
		
		#region Attack Timer
		if (attackTimer != -1)
		{
			attackTimer = max(attackTimer - speedMultFinal,0);
			if (attackTimer == 0)
			{
				attackTimer = -1;
			}
		}
		#endregion
	}
}
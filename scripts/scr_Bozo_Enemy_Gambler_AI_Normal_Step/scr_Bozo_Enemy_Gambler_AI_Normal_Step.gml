///@description Bozo - Enemy - Gambler - AI - Normal - Step

function scr_Bozo_Enemy_Gambler_AI_Normal_Step()
{
	if (!localPause)
	{
		#region Movement
		moveTick += 1;
		
		vsp = sine_between((moveTick / 10),12,-2,2);
		#endregion
		
		#region Position
		scr_Component_SetPosition(hsp,vsp);
		#endregion
		
		#region Animation
		sprite_index = spr_Bozo_Enemy_Gambler_Idle;
		#endregion
	}
}
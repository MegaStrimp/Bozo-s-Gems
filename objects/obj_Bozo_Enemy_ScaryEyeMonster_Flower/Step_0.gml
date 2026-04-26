///@description Main

if (!localPause)
{
	#region Shoot Timer
	if (shootTimer != -1)
	{
		shootTimer = max(shootTimer - speedMultFinal,0);
		if (shootTimer == 0)
		{
			with (instance_create_depth(x,y,depth - 1,obj_Bozo_Attack))
			{
				owner = id;
				isEnemy = true;
				dmg = 1;
				hsp = -4;
				vsp = random_range(-1,1);
				destroyIfOwnerNotAttack = false;
				destroyAfterHit = true;
				destroyOutsideRoom = true;
				sprite_index = spr_Bozo_Attack_3;
				image_blend = c_red;
			}
			
			shootTimer = shootTimerMax;
		}
	}
	#endregion
}
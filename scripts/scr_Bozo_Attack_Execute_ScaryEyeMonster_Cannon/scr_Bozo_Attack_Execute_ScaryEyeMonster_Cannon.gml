///@description Bozo - Attack - Execute - Scary Eye Monster - Cannon

function scr_Bozo_Attack_Execute_ScaryEyeMonster_Cannon()
{
	#region Audio
	var sfx = scr_PlaySfx(snd_Bozo_Attack);
	audio_sound_pitch(sfx,random_range(.85,1.15));
	#endregion
	
	#region Attack
	with (instance_create_depth(x + (20 * dirX),y + 5,depth - 1,obj_Bozo_Attack))
	{
		owner = id;
		isEnemy = true;
		dmg = 1;
		hsp = -5 * dirX;
		vsp = random_range(-.2,.2);
		destroyIfOwnerNotAttack = false;
		destroyAfterHit = true;
		destroyOutsideRoom = true;
		sprite_index = spr_Bozo_Attack_1;
		image_blend = c_red;
	}
	#endregion
}
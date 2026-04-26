///@description Bozo - Attack - Execute - Boola - Cannon

function scr_Bozo_Attack_Execute_Boola_Cannon()
{
	#region Audio
	var sfx = scr_PlaySfx(snd_Bozo_Attack);
	audio_sound_pitch(sfx,random_range(.85,1.15));
	#endregion
	
	#region Attack
	with (instance_create_depth(x + (11 * dirX),y + 12,depth - 1,obj_Bozo_Attack))
	{
		owner = id;
		isEnemy = true;
		dmg = 1;
		hsp = -3 * dirX;
		destroyIfOwnerNotAttack = false;
		destroyAfterHit = true;
		destroyOutsideRoom = true;
		sprite_index = spr_Bozo_Attack_3;
		image_blend = c_red;
	}
	#endregion
}
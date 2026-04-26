///@description Bozo - Attack - Execute - Timple - Cannon

function scr_Bozo_Attack_Execute_Timple_Cannon()
{
	#region Audio
	var sfx = scr_PlaySfx(snd_Bozo_Attack);
	audio_sound_pitch(sfx,random_range(.85,1.15));
	#endregion
	
	#region Attack
	for (var i = 0; i < 4; i++)
	{
		with (instance_create_depth(x + lengthdir_x(30,(image_angle + (i * 90)) % 360),y + lengthdir_y(30,(image_angle + (i * 90)) % 360),depth - 1,obj_Bozo_Attack))
		{
			owner = id;
			isEnemy = true;
			dmg = 1;
			hsp = lengthdir_x(3,(other.image_angle + (i * 90)) % 360);
			vsp = lengthdir_y(3,(other.image_angle + (i * 90)) % 360);
			destroyIfOwnerNotAttack = false;
			destroyAfterHit = true;
			destroyOutsideRoom = true;
			sprite_index = spr_Bozo_Attack_3;
			image_blend = c_red;
		}
}
	#endregion
}
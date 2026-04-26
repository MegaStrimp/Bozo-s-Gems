///@description Bozo - Attack - Execute - Player - Bor

function scr_Bozo_Attack_Execute_Player_Bor()
{
	#region Audio
	var sfx = scr_PlaySfx(snd_Bozo_Attack);
	audio_sound_pitch(sfx,random_range(.85,1.15));
	#endregion
	
	#region Attack
	with (instance_create_depth(x + 8,y + 6,depth - 1,obj_Bozo_Attack))
	{
		owner = id;
		isEnemy = false;
		dmg = 2;
		hsp = 5;
		destroyIfOwnerNotAttack = false;
		destroyAfterHit = true;
		destroyOutsideRoom = true;
		sprite_index = spr_Bozo_Attack_2;
		image_blend = c_yellow;
	}
	with (instance_create_depth(x + 8,y - 6,depth - 1,obj_Bozo_Attack))
	{
		owner = id;
		isEnemy = false;
		dmg = 2;
		hsp = 5;
		destroyIfOwnerNotAttack = false;
		destroyAfterHit = true;
		destroyOutsideRoom = true;
		sprite_index = spr_Bozo_Attack_2;
		image_blend = c_yellow;
	}
	#endregion
}
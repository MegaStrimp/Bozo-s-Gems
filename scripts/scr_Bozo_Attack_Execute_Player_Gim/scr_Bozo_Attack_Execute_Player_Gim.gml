///@description Bozo - Attack - Execute - Player - Gim

function scr_Bozo_Attack_Execute_Player_Gim()
{
	#region Audio
	var sfx = scr_PlaySfx(snd_Bozo_Attack);
	audio_sound_pitch(sfx,random_range(.85,1.15));
	#endregion
	
	#region Attack
	with (instance_create_depth(x + 6,y,depth - 1,obj_Bozo_Attack))
	{
		owner = id;
		isEnemy = false;
		dmg = 10;
		hsp = 5;
		destroyIfOwnerNotAttack = false;
		destroyAfterHit = true;
		destroyOutsideRoom = true;
		sprite_index = spr_Bozo_Attack_1;
		image_blend = c_yellow;
	}
	#endregion
}
///@description Bozo - Attack - Execute - Boola - Dash

function scr_Bozo_Attack_Execute_Boola_Dash()
{
	#region Audio
	var sfx = scr_PlaySfx(snd_Bozo_Attack);
	audio_sound_pitch(sfx,random_range(.85,1.15));
	#endregion
	
	#region Attack
	scr_Enemy_ChangeState_Step(id,scr_Bozo_Enemy_Boola_AI_Normal_Dash_Step);
	#endregion
}
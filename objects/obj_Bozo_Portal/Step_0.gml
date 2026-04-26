///@description Main

#region Go To Room
if (position_meeting(mouse_x,mouse_y,id))
{
	scr_Bozo_Stage_Clear();
	scr_Bozo_Stage_End();
	
	room_goto(targetRoom);
}
#endregion

#region Position
x = global.gameWidth - 48 + global.Bozo_PortalOffset;
#endregion
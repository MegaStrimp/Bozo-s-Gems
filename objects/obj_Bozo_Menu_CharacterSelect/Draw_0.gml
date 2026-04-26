///@description Draw

#region Text
scribble("Choose A Character").align(fa_center).draw(global.gameWidth / 2,2);
#endregion

#region Characters
var offset = 50;

for (var i = 0; i < ds_map_size(global.Bozo_PlayerIDs); i++)
{
	draw_sprite(global.Bozo_PlayerList[i].sprite,0,36,10 + (i * offset) + 28);
	scribble(global.Bozo_PlayerList[i].name).draw(24,10 + (i * offset) + 4);
	scribble("[fnt_Advance_Small]" + global.Bozo_PlayerList[i].description + "[/font]").draw(24,10 + (i * offset) + 12);
	
	draw_sprite(spr_Bozo_CompletionMark_Sheet,0,164,10 + (i * offset));
	
	for (var j = 0; j < ds_map_size(global.Bozo_CompletionMarkIDs); j++)
	{
		if (global.Bozo_PlayerList[i].completion[j]) draw_sprite(global.Bozo_CompletionMarkList[j].icon,0,164 + global.Bozo_CompletionMarkList[j].sheetX,10 + (i * offset) + global.Bozo_CompletionMarkList[j].sheetY);
	}
}
#endregion
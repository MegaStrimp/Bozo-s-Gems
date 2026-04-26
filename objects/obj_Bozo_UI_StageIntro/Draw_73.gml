///@description Draw End

#region Overlay
//draw_set_color(c_black);
draw_set_alpha(.5);
draw_rectangle(0,0,global.gameWidth,global.gameHeight,false);
draw_set_color(c_white);
draw_set_alpha(1);
#endregion

#region Text
scribble("READY?").align(fa_center,fa_middle).draw(global.gameWidth / 2,global.gameHeight / 2);
#endregion
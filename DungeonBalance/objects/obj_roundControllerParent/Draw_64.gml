draw_sprite_ext(spr_TimeBar,0,192 * view_scale,48,(roundTime/roundTimeLimit) * view_scale,view_scale,0,c_white,.75);
draw_set_font(fnt_Big);
draw_set_halign(fa_center);
draw_text_ext_color(view_get_wport(0)/2,view_get_hport(0)/10,roundName,5,300,c_white,c_white,c_white,c_white,0.5);

if(roundWon){
	draw_set_font(fnt_Big);	
	draw_set_halign(fa_center);
	draw_text(view_get_wport(0)/2,view_get_hport(0)/6,"Level Complete!");
	if(!obj_cage.cageMoving)
		draw_text(view_get_wport(0)/2,view_get_hport(0)/4,"Click anywhere to continue");
}

if(roundLost){
	draw_set_font(fnt_Big);
	draw_set_halign(fa_center);
	draw_text(view_get_wport(0)/2,view_get_hport(0)/6,"Game Over!");
	draw_set_halign(fa_left);
	draw_text(192 * view_scale,view_get_hport(0)/4,"Press the right mouse button to restart the level");
}
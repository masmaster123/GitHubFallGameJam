/// @description Insert description here
// You can write your code in this editor


if(scale_left.weight < scale_right.weight){
	scale_left.current_speed = scale_left.weight - scale_right.weight;
	scale_right.current_speed = scale_right.weight - scale_left.weight;
}else if (scale_left.weight > scale_right.weight){
	scale_left.current_speed = scale_left.weight - scale_right.weight;
	scale_right.current_speed = scale_right.weight - scale_left.weight;
}else if(scale_left.weight == scale_right.weight){
	scale_left.current_speed = 0;
	scale_right.current_speed = 0;
}


if(mouse_check_button(mb_left)){
	mouseResetTime = scrApproach(mouseResetTime,0,delta_time / 1000000);
	if(mouseResetTime == 0){
		var _pawn = instance_nearest(x,y,obj_enemy);
		if(_pawn != noone){
			_pawn.past_mouse_x = mouse_x;
			_pawn.past_mouse_y = mouse_y;
		}
		mouseResetTime = 1;
	}
}

show_debug_message(mouseResetTime);

//Debug 
if(keyboard_check_pressed(vk_space)){
	show_debug_message(scale_left.current_speed);
	show_debug_message(scale_right.current_speed);
}

if(keyboard_check_pressed(vk_escape))
	game_end();

window_mouse_set(clamp(window_mouse_get_x(), 0, window_get_width()), clamp(window_mouse_get_y(), 0, window_get_height()));
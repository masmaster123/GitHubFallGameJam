/// @description Insert description here
// You can write your code in this editor

if(room != Room_Cutscene){
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
	
	if(scale_left.y >= 500 || scale_right.y >= 500 ){
		if(!roundLost){
			audio_play_sound(snd_levelLost,3,false);
			scale_left.roundLost = true;
			scale_right.roundLost = true;
			obj_roundControllerParent.roundLost = true;
			roundLost = true;
		}
	}
}

//If the cursor does not move for one min, reset mouse x/y
if(mouse_check_button(mb_left)){
	mouseResetTime = scrApproach(mouseResetTime,0,delta_time / 1000000);
	if(mouseResetTime == 0){
		var _pawn = instance_nearest(x,y,obj_enemy);
		if(_pawn != noone){
			_pawn.past_mouse_x = mouse_x;
			_pawn.past_mouse_y = mouse_y;
		}
		mouseResetTime = 0.25;
	}
}

//Cursor reset
if(mouse_check_button_pressed(mb_right)){
	var _pawn = instance_nearest(x,y,obj_enemy);
		if(_pawn != noone){
			_pawn.past_mouse_x = mouse_x;
			_pawn.past_mouse_y = mouse_y;
		}
}


if(roundLost && mouse_check_button_pressed(mb_right))
	room_restart();


//keep mouse in frame
window_mouse_set(clamp(window_mouse_get_x(), 0, window_get_width()), clamp(window_mouse_get_y(), 0, window_get_height()));
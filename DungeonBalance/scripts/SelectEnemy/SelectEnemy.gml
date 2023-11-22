// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SelectEnemy(selected){
	if(mouse_check_button_pressed(mb_left) && selected != noone && selected.selectable){
		//if selected was touching a scale, remove the weight
		if(selected.scale_meeting != noone){
			selected.scale_meeting.weight -= selected.weight;
			selected.scale_meeting = noone;
		}
		selected.selected_x = selected.x - mouse_x;
		selected.selected_y = selected.y - mouse_y;
		selected.past_mouse_x = mouse_x;
		selected.past_mouse_y = mouse_y;
		ds_list_add(obj_scaleControler.selected_list,selected);
		selected.selected = true;
	}
}
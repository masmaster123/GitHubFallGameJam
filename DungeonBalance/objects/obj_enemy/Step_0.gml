
if(!selected && !abducted){
		vsp += gravity_speed;
		vsp = clamp(vsp,-minVsp,maxVsp);
		
		if(place_meeting(x,y + 1 + vsp, obj_scale)){
			if(scale_meeting == noone){
				scale_meeting = instance_place(x,y + 1 + vsp,obj_scale);
				scale_meeting.weight += weight;
				y = scale_meeting.bbox_top;
				vsp = 0;
			}else if(scale_meeting != noone){
				y = scale_meeting.bbox_top;
				if(scale_meeting.weight < 0)
					vsp = 0;
				else
					vsp = scale_meeting.current_speed;
				//apply friction
				if(sprite_index != walkingSprite){
					hsp = scrApproach(hsp,0,scaleFriction);
				}
				//show_debug_message(hsp);
				//show_debug_message("Scale Friction");
			}
		}
		if(place_meeting(x,y + 1 + vsp, obj_floor)){
			vsp = 0;
			hsp = scrApproach(hsp,0,scaleFriction);
			if(instance_place(x,y + 1 + vsp,obj_floor) != noone)
				y = instance_place(x,y + 1 + vsp,obj_floor).bbox_top;
		}
		if(!yLocked){
			y += vsp;
		}
	}
	

	//Remove weight if pawn is not touching the scale
	if(scale_meeting != noone && !place_meeting(x,y + 2 + vsp,obj_scale)){
		scale_meeting.weight -= weight;
		scale_meeting = noone;
	}


	//Bounce off walls
	if(place_meeting(x + hsp, y, obj_wall)){
		hsp = hsp / 2;
		hsp = -hsp;
	}
	//Limit speed
	hsp = clamp(hsp,-minHsp,maxHsp);
	x += hsp;

	if(hsp != 0){
		hsp = scrApproach(hsp,0,0.01);
	}

	if(position_meeting(mouse_x,mouse_y,obj_enemy))
		SelectEnemy(instance_nearest(mouse_x,mouse_y,obj_enemy));

	if((mouse_check_button_released(mb_left) || place_meeting(mouse_x,mouse_y,obj_wall))  && ds_list_size(obj_scaleControler.selected_list) > 0){
	
		for( var i = 0; i < ds_list_size(obj_scaleControler.selected_list); i++){
			var _selected_enemy = obj_scaleControler.selected_list[|0];
			_selected_enemy.selected = false;
			_selected_enemy.vsp = clamp(((_selected_enemy.y - _selected_enemy.past_mouse_y) / 150) * _selected_enemy.toss_vsp,-_selected_enemy.toss_vsp,_selected_enemy.toss_vsp);
			_selected_enemy.hsp = clamp(((_selected_enemy.x - _selected_enemy.past_mouse_x) / 150) * _selected_enemy.toss_hsp,-_selected_enemy.toss_hsp,_selected_enemy.toss_hsp);
	
			if(place_meeting(_selected_enemy.x, _selected_enemy.y,obj_scale)){
				var _scale = instance_place(_selected_enemy.x, _selected_enemy.y,obj_scale);
				if(abs(_selected_enemy.y - _scale.bbox_top) > abs(_selected_enemy.y - _scale.bbox_bottom)){
					_selected_enemy.y = _scale.bbox_bottom - 16;
				}else
					_selected_enemy.y = _scale.bbox_top + 1;
			}
			ds_list_delete(obj_scaleControler.selected_list,ds_list_find_index(obj_scaleControler.selected_list,_selected_enemy));
		}
	}
	//Out of bounds teleport
	if(x > room_width || x < 0){
		if(!pendingDestroy){
			x = room_width/2;
			y = - 32;
			vsp = vsp/2;
		}
	}

	//out of room cleanup
	if(y > room_height + 32){
		if(room != Room_LevelFive && room != Room_LevelSix && room != Room_LevelSeven)
			instance_destroy(id);
		else{
			if(!pendingDestroy){
				if(x < room_width / 2)
					var _x = irandom_range(100,175);
				else
					var _x = irandom_range(320,380);
				var _g = instance_create_layer(_x,200,"Instances",obj_graveStone);
				_g.weight = weight;
				pendingDestroy = true;
				alarm[0] = 120;
			}
		}
	}

	if(selected && !instance_place(mouse_x,mouse_y,obj_wall)){
		x = mouse_x + selected_x;
		y = mouse_y + selected_y;
		vsp = 0;
		hsp = 0;
	}
	//Sprite Direction Control
	if(!selected && hsp != 0){
		if(hsp > 0 )
			image_xscale = 1;
		else
			image_xscale = -1;
	}

if(!obj_cage.cageMoving && obj_cage.roundOver){
	yLocked = true;
	x = scrApproach(x,room_width + 32,1);
	image_xscale = 1;
	if(sprite_index != walkingSprite)
		scrSpriteChange(id,walkingSprite,0);
}

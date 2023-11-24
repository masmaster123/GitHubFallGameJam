// Inherit the parent event
event_inherited();

vsp = vsp + gravity_speed;
vsp = clamp(vsp,-minVsp,maxVsp);
if(place_meeting(x,y + vsp, obj_scale)){
	if(scale_meeting == noone){
		scale_meeting = instance_place(x,y + vsp,obj_scale);
		scale_meeting.weight += weight;
	}else if(scale_meeting != noone){
		//vsp = scale_meeting.current_speed;
		y = scale_meeting.bbox_top;
	}
}else{
	if(!yLocked)
		y += vsp; // Enemy not on scale, apply speed
}


if(position_meeting(mouse_x,mouse_y,id) && isDestructable && mouse_check_button_pressed(mb_left)){
	currentHealth = scrApproach(currentHealth,0,1);
	instance_create_layer(mouse_x,mouse_y,"Instances",obj_hitMarker);
	if(currentHealth == 0){
		for(var i = 0; i< 4; i++){
			var _rock =	instance_create_layer(x,y,"Instances",obj_rockChunk);
			_rock.image_index = i;
			_rock.hsp = -1 + i *.5;
		}
		if(scale_meeting != noone)
			scale_meeting.weight -= weight;
		instance_destroy(id);
	}
}
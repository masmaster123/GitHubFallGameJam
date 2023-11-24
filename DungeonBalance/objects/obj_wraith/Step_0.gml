// find a target at random

if(sprite_index == spr_wraithSpawn && image_index >= image_number-1)
	scrSpriteChange(id,idleSprite,0);

if(sprite_index != spr_wraithSpawn && sprite_index != spr_wraithDie){
	if(targetPawn == noone){
		targetPawn = instance_find(obj_enemy,irandom_range(0,instance_number(obj_enemy)));
	}else{
		if(targetPawn.y < room_height){
			if(x != targetPawn.x){
				x = scrApproach(x,targetPawn.x,wraithSpeed);
			}
			if(y != targetPawn.bbox_top - sprite_height){
				y = scrApproach(y,targetPawn.y - sprite_height,wraithSpeed);
			}
			if(x == targetPawn.x && y == targetPawn.y - sprite_height && grabbedPawn == noone){
				grabbedPawn = targetPawn;
				grabbedPawn.abducted = true;
				grabbedPawn.selectable = false;
			}
		}else{
			targetPawn = noone;
		}
	}
	
	if(grabbedPawn != noone){
		y = scrApproach(y,0,0.2);
		grabbedPawn.y = y + sprite_height;
	}
	
}

if(position_meeting(mouse_x,mouse_y,id) && mouse_check_button_pressed(mb_left) && sprite_index != spr_wraithDie){
	instance_create_layer(mouse_x,mouse_y,"Instances",obj_hitMarker);
	currentHealth = scrApproach(currentHealth,0,1);
	if(currentHealth == 0){
		if(grabbedPawn != noone)
			grabbedPawn.abducted = false;
			scrSpriteChange(id,spr_wraithDie,0);
	}
}

if(sprite_index == spr_wraithDie && image_index >= image_number - 1)
	instance_destroy(id);
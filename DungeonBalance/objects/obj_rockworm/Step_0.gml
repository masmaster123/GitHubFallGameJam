/// @description Insert description here
// You can write your code in this editor

if(sprite_index != deathSprite){
	//Start Attack
	if(canAttack && sprite_index != attackSprite){
		scrSpriteChange(id,attackSprite,0);
		canAttack = false;
	}


	//Spawn Projectile
	if(sprite_index == attackSprite && image_index == 4){
		var _e =instance_nearest(x,y,obj_enemy);
		if(_e != noone){
			var _p = instance_create_layer(x + (sprite_width/2) * sign(-image_angle),y,"Instances",obj_rockwormProjectile);
			_p.direction = point_direction(x,y,_e.x,_e.y);
			_p.image_angle = _p.direction;
		}
	}

	//Attack Reset
	if(sprite_index == attackSprite && image_index >= image_number -1){
		scrSpriteChange(id,idleSprite,0);
		alarm[0] = attackTime;
	}

	//Damage on click
	if(position_meeting(mouse_x,mouse_y,id) && mouse_check_button_pressed(mb_left)){
		instance_create_layer(mouse_x,mouse_y,"Instances",obj_hitMarker);
		currentHealth = scrApproach(currentHealth,0,1);
		if(currentHealth == 0)
			scrSpriteChange(id,deathSprite,0);
	}

}


if(sprite_index == deathSprite && image_index >= image_number -1)
	image_index = image_number -1;


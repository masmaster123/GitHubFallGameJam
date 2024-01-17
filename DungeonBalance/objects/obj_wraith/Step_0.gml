//update from spawn sprite
if(sprite_index == spr_wraithSpawn && image_index >= image_number-1)
	scrSpriteChange(id,idleSprite,0);


	if(sprite_index != spr_wraithSpawn && sprite_index != spr_wraithDie && !roundCompeleted){
		//Find a new target if one does not exist, move to abduct 
		if(targetPawn == noone){
			targetPawn = instance_find(obj_enemy,irandom_range(0,instance_number(obj_enemy)));
		}else{
			if(targetPawn.y < room_height && targetPawn.y != -32){
				if(x != targetPawn.x){
					x = scrApproach(x,targetPawn.x,wraithSpeed);
					if(x < targetPawn.x + 5)
						image_xscale =	1;
					else
						image_xscale = -1;
				}
				if(y != targetPawn.bbox_top - sprite_height){
					y = scrApproach(y,targetPawn.y - sprite_height,wraithSpeed);
				}
				if(x == targetPawn.x && y == targetPawn.y - sprite_height && grabbedPawn == noone && targetPawn.selectable){
					grabbedPawn = targetPawn;
					grabbedPawn.abducted = true;
					grabbedPawn.selectable = false;
				}
			}else{
				//reset target
				targetPawn = noone;
			}
		}
		//Move to top of screen and turn to target pawn tombstone
		if(grabbedPawn != noone){
			y = scrApproach(y,0,0.2);
			grabbedPawn.y = y + sprite_height;
			if(y == 0){
				var _g = instance_create_layer(x,y,"Instances",obj_graveStone);
				_g.weight = grabbedPawn.weight;
				instance_destroy(grabbedPawn);
				grabbedPawn = noone;
				targetPawn = noone;
				if(room == Room_Cutscene){
					obj_CutSceneController.dialogePaused = false;
				}
			}
		}
	
	}
	//Onclick for this pawn
	if(position_meeting(mouse_x,mouse_y,id) && mouse_check_button_pressed(mb_left) && sprite_index != spr_wraithDie){
		instance_create_layer(mouse_x,mouse_y,"Instances",obj_hitMarker);
		currentHealth = scrApproach(currentHealth,0,1);
		audio_play_sound(snd_Click,3,false);
		if(currentHealth == 0){
			audio_play_sound(snd_wraithKilled,3,false);
			//remove pawn if one is grabbed
			if(grabbedPawn != noone){
				grabbedPawn.abducted = false;
				grabbedPawn.selectable = true;
			}
			scrSpriteChange(id,spr_wraithDie,0);
			//update cutscene
			if(room == Room_Cutscene){
				obj_CutSceneController.dialogePaused = false;
				obj_CutSceneController.savedTim = true;
			}
		}else{
			audio_play_sound(snd_Click,3,false);
		}
	}
	//Death clean up
	if(sprite_index == spr_wraithDie && image_index >= image_number - 1){
		if(targetPawn != noone)
			targetPawn = noone;
		if(grabbedPawn != noone)
			grabbedPawn = noone;
		instance_destroy(id);
	}
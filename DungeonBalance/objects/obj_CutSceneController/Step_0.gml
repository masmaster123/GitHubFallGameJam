if(mouse_check_button_pressed(mb_left) && !dialogePaused){
	if(dialogCounter < array_length(dialogArray) - 1){
		dialogCounter += 1;
		
		if(obj_playerPawn.playerLevel == 0){
			//Check and change text position
			switch(dialogCounter){
				case 1:
					textBoxX = playerTextX;
					textBoxY = playerTextY;
				break;
				case 2:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
				break;
				case 3:
					textBoxX = playerTextX;
					textBoxY = playerTextY;
				break;
				case 4:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
				break;
				case 7:
					textBoxX = playerTextX;
					textBoxY = playerTextY;
				break;
				case 8:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
				
					dialogePaused = true;
					obj_cage.targetY = obj_cage.roomFloor;
				
					var _z = instance_create_layer(224,128,"Instances",obj_endZone);
					_z.image_xscale = 2;
					_z.image_yscale = 2;
				
					var _rider = instance_create_layer(0,0,"Instances",obj_cageRider);
					_rider.sprite_index = spr_gobIdle;
				
				break;
		
			}
		}
		if(obj_playerPawn.playerLevel == 1){
			//Check and change text position
			switch(dialogCounter){
				case 0:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
				break;
				case 1:
					textBoxX = playerTextX;
					textBoxY = playerTextY;
				break;
				case 2:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
				break;
				case 3:
					textBoxX = playerTextX;
					textBoxY = playerTextY;

				break;
				case 4:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
				break;
				case 5:
					textBoxX = playerTextX;
					textBoxY = playerTextY;

				break;
				case 6:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
				break;
				case 7:
					textBoxX = playerTextX;
					textBoxY = playerTextY;

				break;
				case 8:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
				break;
				case 9:
					textBoxX = playerTextX;
					textBoxY = playerTextY;

				break;
				case 10:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
				
					dialogePaused = true;
					obj_cage.targetY = obj_cage.roomFloor;
				
					var _z = instance_create_layer(224,128,"Instances",obj_endZone);
					_z.image_xscale = 2;
					_z.image_yscale = 2;
				
					var _rider = instance_create_layer(0,0,"Instances",obj_cageRider);
					_rider.sprite_index = spr_skelIdle;
				
				break;
		
			}
		}
		if(obj_playerPawn.playerLevel == 2){
			//Check and change text position
			switch(dialogCounter){
				case 0:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
				break;
				case 1:
					textBoxX = playerTextX;
					textBoxY = playerTextY;
				break;
				case 2:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
				break;
				case 3:
					textBoxX = playerTextX;
					textBoxY = playerTextY;

				break;
				case 4:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
				break;
				case 5:
					textBoxX = playerTextX;
					textBoxY = playerTextY;

				break;
				case 6:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
				break;
				case 7:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
				
					dialogePaused = true;
					obj_cage.targetY = obj_cage.roomFloor;
				
					var _z = instance_create_layer(224,128,"Instances",obj_endZone);
					_z.image_xscale = 2;
					_z.image_yscale = 2;
				
					var _rider = instance_create_layer(0,0,"Instances",obj_cageRider);
					_rider.sprite_index = spr_orgeIdle;
				
				break;
		
			}
		}
		
		if(obj_playerPawn.playerLevel == 3){
			//Check and change text position
			switch(dialogCounter){
				case 0:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
				break;
				case 1:
					textBoxX = playerTextX;
					textBoxY = playerTextY;
				break;
				case 2:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
				break;
				case 3:
					textBoxX = playerTextX;
					textBoxY = playerTextY;

				break;
				case 4:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
				break;
				case 5:
					textBoxX = playerTextX;
					textBoxY = playerTextY;

				break;
				case 6:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
					dialogePaused = true;
					instance_create_layer(240,0,"Instances",obj_rock);
				break;
		
			}
		}
		
		if(obj_playerPawn.playerLevel == 4){
			//Check and change text position
			switch(dialogCounter){
				case 0:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
				break;
				case 1:
					textBoxX = playerTextX;
					textBoxY = playerTextY;
				break;
				case 2:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
				break;
				case 4:
					textBoxX = playerTextX;
					textBoxY = playerTextY;
				break;
				case 5:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
				break;
				case 6:
					textBoxX = playerTextX;
					textBoxY = playerTextY;
				break;
				case 7:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
				break;
				case 8:
					dialogePaused = true;
					obj_cage.targetY = obj_cage.roomFloor;
					instance_create_layer(240,0,"Instances",obj_goblin);
					var _rider = instance_create_layer(0,0,"Instances",obj_cageRider);
					_rider.sprite_index = spr_wraithIdle;
				break;
		
			}
		}
		if(obj_playerPawn.playerLevel == 5){
			//Check and change text position
			switch(dialogCounter){
				case 0:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
					break;
				
				case 1:
					textBoxX = playerTextX;
					textBoxY = playerTextY;
					break;
				
				case 2:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
					break;
				
				case 3:
					textBoxX = playerTextX;
					textBoxY = playerTextY;
					break;
				case 4:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
					break;
				case 5:
					textBoxX = playerTextX;
					textBoxY = playerTextY;
					break;
				
				case 6:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
					break;
				
				case 8:
					dialogePaused = true;
					scrSpriteChange(obj_rockworm,spr_rockWormIdle,0);
					break;
		
			}
		}
		if(obj_playerPawn.playerLevel == 6){
			//Check and change text position
			switch(dialogCounter){
				case 0:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
					break;
				
				case 1:
					textBoxX = playerTextX;
					textBoxY = playerTextY;
					break;
				
				case 2:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
					break;
				
				case 3:
					textBoxX = playerTextX;
					textBoxY = playerTextY;
					break;
				case 4:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
					break;
				case 5:
					textBoxX = playerTextX;
					textBoxY = playerTextY;
					break;
				
				case 6:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
					break;
				
				case 7:
					dialogePaused = true;
					obj_cage.targetY = obj_cage.roomFloor;
					var _z = instance_create_layer(224,128,"Instances",obj_endZone);
					_z.image_xscale = 2;
					_z.image_yscale = 2;
				
					var _rider = instance_create_layer(0,0,"Instances",obj_cageRider);
					_rider.sprite_index = spr_orcIdle;
					break;
		
			}
		}
		if(obj_playerPawn.playerLevel == 7){
			//Check and change text position
			switch(dialogCounter){
				case 0:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
					break;
				
				case 1:
					textBoxX = playerTextX;
					textBoxY = playerTextY;
					break;
				
				case 2:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
					break;
				
				case 3:
					textBoxX = playerTextX;
					textBoxY = playerTextY;
					break;
				case 4:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
					break;
				case 5:
					textBoxX = playerTextX;
					textBoxY = playerTextY;
					break;
				
				case 6:
					textBoxX = kingTextX;
					textBoxY = kingTextY;
					break;
				
				case 7:
					playerWin = true;
					break;
			}
		}
		textX = textBoxX + textXPadding;
		textY = textBoxY + textYPadding;
	}
	 else{
		 displayDialog = false;
		switch(obj_playerPawn.playerLevel){
			case 0: 
				var target_room = Room_LevelOne;
			break;
			case 1: 
				var target_room = Room_LevelTwo;
			break;
			case 2:
				var target_room = Room_LevelThree;
			break;
			case 3: 
				var target_room = Room_LevelFour;
			break;
			case 4: 
				var target_room = Room_LevelFive;
			break;
			case 5: 
				var target_room = Room_LevelSix;
			break;
			case 6: 
				var target_room = Room_LevelSeven;
			break;
		}
		if(obj_playerPawn.playerLevel != 7){
			var _transition = instance_create_layer(0, 0, "Instances", obj_transitionPixelate);
			_transition.target_room = target_room;
		}
	}
}


displayText = dialogArray[dialogCounter]
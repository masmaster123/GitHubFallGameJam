if(mouse_check_button_pressed(mb_left) && !dialogePaused){
	if(dialogCounter < array_length(dialogArray) - 1){
		dialogCounter += 1;
		
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
				var target_room = Room_LevelOne;
			break;
			case 5: 
				var target_room = Room_LevelOne;
			break;
			case 6: 
				var target_room = Room_LevelOne;
			break;
		}
		var _transition = instance_create_layer(0, 0, "Instances", obj_transitionPixelate);
		_transition.target_room = target_room;
	}
}


displayText = dialogArray[dialogCounter]
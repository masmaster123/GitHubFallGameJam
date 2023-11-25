/// @description Insert description here
// You can write your code in this editor

if(mouse_check_button_pressed(mb_left)){
	if(dialogCounter < array_length(dialogArray) - 1){
		dialogCounter += 1;
		
		/*
		switch(){
		
		}*/
		
	}
	else{
		switch(sceneIndex){
			case 0: 
				room_goto(Room_LevelOne);
			break;
			case 1: 
				room_goto(Room_LevelOne);
			break;
			case 2:
				room_goto(Room_LevelOne);
			break;
			case 3: 
				room_goto(Room_LevelOne);
			break;
			case 4: 
				room_goto(Room_LevelOne);
			break;
			case 5: 
				room_goto(Room_LevelOne);
			break;
			case 6: 
				room_goto(Room_LevelOne);
			break;
		}
	}
}

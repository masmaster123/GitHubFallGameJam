

if(!roundLost){
	if(roundTime != roundTimeLimit)
		roundTime = scrApproach(roundTime,roundTimeLimit,delta_time / 1000000);

	if(roundTime == roundTimeLimit && obj_cage.y != 32){
		obj_cage.cageMoving = true;
	}

	if(roundTime == roundTimeLimit){
		roundWon = true;
	}
	
}
//Round is won
if(roundWon && !obj_cage.cageMoving && mouse_check_button(mb_left)){
	obj_playerPawn.x = 0;
	obj_playerPawn.y = 224;
	var _transition = instance_create_layer(0, 0, "Instances", obj_transitionPixelate);
}
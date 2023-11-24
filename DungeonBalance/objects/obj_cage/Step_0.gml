/// @description Insert description here
// You can write your code in this editor


if(room != Room_Cutscene){
	if(cageMoving && y != 32){
		y = scrApproach(y,32,1);
		roundOver = true;
	}

	if(y == 32){
		show_debug_message("Round Complted");
		cageMoving = false;
	}
}else{
	if(y != targetY)
		y = scrApproach(y,targetY,moveSpeed);
}


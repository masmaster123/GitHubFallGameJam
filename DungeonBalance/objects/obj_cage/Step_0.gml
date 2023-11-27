
if(room != Room_Cutscene){
	if(cageMoving && y != 32){
		y = scrApproach(y,32,1);
		roundOver = true;
	}
	//Cage at top
	if(y == 32)
		cageMoving = false;
	if(obj_roundControllerParent.roundLost)
		y = scrApproach(y,room_height,1);
}else{
	if(y != targetY)
		y = scrApproach(y,targetY,moveSpeed);
}


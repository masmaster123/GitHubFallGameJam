

if(!roundOver){
	if(roundTime != roundTimeLimit)
		roundTime = scrApproach(roundTime,roundTimeLimit,delta_time / 1000000);

	if(roundTime == roundTimeLimit && obj_cage.y != 32){
		obj_cage.cageMoving = true;
	}
}
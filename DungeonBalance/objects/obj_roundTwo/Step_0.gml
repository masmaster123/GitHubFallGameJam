// Inherit the parent event
event_inherited();


if(!roundLost){
	if(roundTime >= 5.00 && spawnCounter == 0){
		SpawnPawns(obj_skel,(scaleLeftX[0] + scaleLeftX[1])/2,dropHeight,8,0,1);
		SpawnWarning((scaleLeftX[0] + scaleLeftX[1])/2,warningHeight,1,1,0);
		spawnCounter++;
	}

	if(roundTime >= 10.00 && spawnCounter == 1){
		SpawnPawns(obj_skel,scaleRightX[0] + 32,dropHeight,16,0,2);
		SpawnWarning(scaleRightX[0] + 32,warningHeight,1,1,0);
		spawnCounter++;
	}

	if(roundTime >= 15.00 && spawnCounter == 2){
		SpawnPawns(obj_skel,scaleRightX[0],dropHeight,0,16,2);
		SpawnWarning(scaleRightX[0],warningHeight,1,1,0);
		spawnCounter++;
	}

	if(roundTime >= 20.00 && spawnCounter == 3){
		SpawnWarning(scaleRightX[0],warningHeight,1,1,1);
		SpawnPawns(obj_goblin,scaleRightX[0],dropHeight,8,16,3);
		spawnCounter++;
	}
	
	if(roundTime >= 25.00 && spawnCounter == 4){
		SpawnWarning(scaleLeftX[0],warningHeight,1,1,0);
		SpawnPawns(obj_skel,scaleLeftX[0],dropHeight,4,16,2);
		spawnCounter++;
	}
	
	if(roundTime >= 30.00 && spawnCounter == 5){
		SpawnWarning(scaleRightX[1],warningHeight,1,1,0);
		SpawnPawns(obj_skel,scaleRightX[1],dropHeight,4,16,2);
		spawnCounter++;
	}
	if(roundTime >= 37.00 && spawnCounter == 6){
		SpawnWarning(scaleRightX[1],warningHeight,1,1,1);
		SpawnPawns(obj_goblin,scaleRightX[1],dropHeight,4,16,3);
		spawnCounter++;
	}
}
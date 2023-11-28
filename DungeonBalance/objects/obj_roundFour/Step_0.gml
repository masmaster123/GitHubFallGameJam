// Inherit the parent event
event_inherited();


if(!roundLost){
	if(roundTime >= 5.00 && spawnCounter == 0){
		SpawnPawns(obj_rock,(scaleLeftX[0] + scaleLeftX[1])/2,200,16,0,1);
		spawnCounter++;
	}

	if(roundTime >= 10.00 && spawnCounter == 1){
		SpawnPawns(obj_ogre,scaleRightX[0] + 32,200,16,0,1);
		spawnCounter++;
	}

	if(roundTime >= 15.00 && spawnCounter == 2){
		SpawnPawns(obj_rock,scaleLeftX[0],200,32,16,3);
		spawnCounter++;
	}

	if(roundTime >= 20.00 && spawnCounter == 3){
		SpawnPawns(obj_ogre,scaleRightX[0],200,8,16,2);
		spawnCounter++;
	}
	
	if(roundTime >= 25.00 && spawnCounter == 4){
		SpawnPawns(obj_rock,scaleRightX[0],200,32,16,2);
		spawnCounter++;
	}
	
	if(roundTime >= 30.00 && spawnCounter == 5){
		SpawnPawns(obj_skel,scaleRightX[1],200,16,16,2);
		spawnCounter++;
	}
	if(roundTime >= 37.00 && spawnCounter == 6){
		SpawnPawns(obj_rock,scaleLeftX[0],200,32,16,3);
		spawnCounter++;
	}
	if(roundTime >= 42.00 && spawnCounter == 7){
		SpawnPawns(obj_rock,scaleLeftX[0],200,32,16,3);
		spawnCounter++;
	}
	if(roundTime >= 49.00 && spawnCounter == 8){
		SpawnPawns(obj_goblin,scaleLeftX[0],200,16,16,7);
		spawnCounter++;
	}
}
// Inherit the parent event
event_inherited();


if(!roundLost){
	if(roundTime >= 5.00 && spawnCounter == 0){
		SpawnPawns(obj_goblin,(scaleLeftX[0] + scaleLeftX[1])/2,200,16,0,3);
		SpawnWarning((scaleLeftX[0] + scaleLeftX[1])/2,warningHeight,1,1,0);
		spawnCounter++;
	}

	if(roundTime >= 10.00 && spawnCounter == 1){
		SpawnPawns(obj_goblin,scaleRightX[0] + 32,200,16,0,2);
		SpawnWarning(scaleRightX[0] + 32,warningHeight,1,1,0);
		spawnCounter++;
	}

	if(roundTime >= 15.00 && spawnCounter == 2){
		SpawnPawns(obj_goblin,scaleRightX[0],200,16,16,2);
		SpawnWarning(scaleRightX[0],warningHeight,1,1,0);
		instance_create_layer(scaleRightX[0],warningHeight,"Instances",obj_warning);

		spawnCounter++;
	}

	if(roundTime >= 20.00 && spawnCounter == 3){
		SpawnPawns(obj_goblin,scaleLeftX[0],200,8,16,5);
		SpawnWarning(scaleLeftX[0],warningHeight,1,1,1);
		instance_create_layer(scaleLeftX[0],warningHeight,"Instances",obj_warning);
		spawnCounter++;
	}
	
	if(roundTime >= 25.00 && spawnCounter == 4){
		SpawnPawns(obj_goblin,scaleRightX[0],200,4,16,2);
		instance_create_layer(scaleRightX[0],warningHeight,"Instances",obj_warning);
		spawnCounter++;
	}
	
	if(roundTime >= 30.00 && spawnCounter == 5){
		SpawnPawns(obj_goblin,scaleRightX[1],200,4,16,6);
		SpawnWarning(scaleRightX[1] - 32,warningHeight,2,1,2);
		spawnCounter++;
	}
	if(roundTime >= 37.00 && spawnCounter == 6){
		SpawnPawns(obj_goblin,scaleRightX[1],200,4,16,3);
		instance_create_layer(scaleRightX[1],warningHeight,"Instances",obj_warning);
		spawnCounter++;
	}
}
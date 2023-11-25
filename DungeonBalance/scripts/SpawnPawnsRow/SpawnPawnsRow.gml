// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function SpawnPawns(pawnType,xLoc,yLoc,xOffset,yOffset,pawnNumber){
	for(var i = 0; i < pawnNumber;i++){
		instance_create_layer(xLoc + i * xOffset,yLoc + i * yOffset,"Instances",pawnType);
	}
}
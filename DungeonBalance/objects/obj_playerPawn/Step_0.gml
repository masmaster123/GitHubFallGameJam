if(room != Room_Cutscene)
	y = obj_cage.bbox_bottom - 4;


if(x != targetX){
	x = scrApproach(x,targetX,walkSpeed);
	if(sprite_index != walkSprite)
		scrSpriteChange(id,walkSprite,0);
}

if(x == targetX){
	if(sprite_index != idleSprite)
		scrSpriteChange(id,idleSprite,0);
}
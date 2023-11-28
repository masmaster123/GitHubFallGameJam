if(room != Room_Cutscene && room != Room_Title){
	y = obj_cage.bbox_bottom - 4;
	x = obj_cage.x + 2;
	targetX = x;
	if(mouse_x < x)
		image_xscale = -1;
	else
		image_xscale = 1;
}

if(x != targetX){
	x = scrApproach(x,targetX,walkSpeed);
	if(sprite_index != walkSprite)
		scrSpriteChange(id,walkSprite,0);
}

if(x == targetX){
	if(sprite_index != idleSprite)
		scrSpriteChange(id,idleSprite,0);
}


if(keyboard_check_pressed(vk_enter)){
	var _transition = instance_create_layer(0, 0, "Instances", obj_transitionPixelate);
}

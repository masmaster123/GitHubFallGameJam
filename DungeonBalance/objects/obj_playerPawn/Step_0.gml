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


if(mouse_check_button_pressed(mb_left) && room == Room_Title){
	var _transition = instance_create_layer(0, 0, "Instances", obj_transitionPixelate);
}

if(room == Room_Title && !audio_is_playing(snd_cave)){
	audio_play_sound(snd_cave,3,true);
}

if(keyboard_check(vk_escape))
	game_end();
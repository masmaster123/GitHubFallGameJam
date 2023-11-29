/// @description Insert description here
// You can write your code in this editor

if(obj_cage.y != obj_cage.roomFloor){
	x = obj_cage.x;
	y = obj_cage.bbox_bottom - 1;
}else{
	switch(sprite_index){
		case spr_gobIdle:
		instance_create_layer(x,y,"Instances",obj_goblin);
		break;
		case spr_skelIdle:
		instance_create_layer(x,y,"Instances",obj_skel);
		break;
		case spr_orgeIdle:
		instance_create_layer(x,y,"Instances",obj_ogre);
		break;
		
		case spr_wraithIdle:
		instance_create_layer(x,y,"Instances",obj_wraith);
		break;
	}

	instance_destroy(id);
}







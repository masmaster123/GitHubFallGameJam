/// @description Insert description here
// You can write your code in this editor

if(obj_cage.y != obj_cage.roomFloor){
	x = obj_cage.x;
	y = obj_cage.bbox_bottom - 1;
}else{
	instance_create_layer(x,y,"Instances",obj_goblin);
	instance_destroy(id);
}







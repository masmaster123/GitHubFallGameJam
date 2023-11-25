/// @description Insert description here
// You can write your code in this editor

if(!roundLost){
	if(!obj_cage.roundOver)
		y += current_speed;
	else if( obj_cage.cageMoving || y != end_y)
		y = scrApproach(y,end_y,1);
}else{
	y = scrApproach(y,room_height,weight);
	weight = scrApproach(weight,8,0.1);
}
/// @description Insert description here
// You can write your code in this editor

if(!obj_cage.roundOver)
	y += current_speed;
else if( obj_cage.cageMoving || y != end_y)
	y = scrApproach(y,end_y,1);
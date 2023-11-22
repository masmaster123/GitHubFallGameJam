/// @description Insert description here
// You can write your code in this editor

vsp = vsp + gravity_speed;

x += hsp;
y += vsp;

if(x > room_width || x < 0)
	instance_destroy(id);
if(y > room_height)
	instance_destroy(id);








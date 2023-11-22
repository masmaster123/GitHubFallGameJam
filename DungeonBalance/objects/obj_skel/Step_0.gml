// Inherit the parent event
event_inherited();

if(!isShattered && canShatter && vsp > 1 && instance_place(x,y + vsp, obj_scale) && !instance_place(x,y+1,obj_scale)){
	isShattered = true;
	hsp = 0;
	scrSpriteChange(id,shatterSprite,0);
	alarm[0] = shatterTime;
	selectable = false;
}

if(sprite_index == assembleSprite && image_index >= image_number -1){
	scrSpriteChange(id,idleSprite,0);
	isShattered = false;
	canShatter = true;
	if(!abducted)
		selectable = true;
}

if(isShattered && sprite_index = shatterSprite && image_index >= image_number -1 )
	image_index = image_number -1;
	

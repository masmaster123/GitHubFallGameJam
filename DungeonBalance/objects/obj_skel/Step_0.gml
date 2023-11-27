// Inherit the parent event
event_inherited();

if(!isShattered && canShatter && vsp > 2 && instance_place(x,bbox_bottom + vsp, obj_scale)){
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

//Sprite hold until it can reform
if(isShattered && sprite_index = shatterSprite && image_index >= image_number -1 )
	image_index = image_number -1;
	
if(!isShattered && sprite_index == idleSprite && scale_meeting != noone && !obj_roundControllerParent.roundWon ){
	scrSpriteChange(id,walkingSprite,0);
}

if(sprite_index == walkingSprite && !selected){
	hsp = walkSpeed * image_xscale;
}

if(selected && sprite_index == walkingSprite)
	scrSpriteChange(id,idleSprite,0);
	
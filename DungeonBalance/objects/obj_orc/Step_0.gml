// Inherit the parent event
event_inherited();

if(room != Room_Cutscene){
	if( scale_meeting != noone && !abducted && !selected){
		//Find target
		if(targetPawn == noone){
			var _g = instance_nearest(x,y,obj_goblin);
			if(_g != noone){
				if((x < 200 && _g.x < 200) || ((x > 200 && _g.x > 200)))
					targetPawn = _g;
			}
		}
		if(targetPawn != noone){
			//Move to target
			if(abs(x - targetPawn.x) > sprite_width/2){
				if(sprite_index != walkingSprite)
					scrSpriteChange(id,walkingSprite,0);
				if(x < targetPawn.x){
					image_xscale = 1;
					hsp = 1;
				}else{
					image_xscale = -1;
					hsp = -1;
				}
			}else{
				hsp = 0;
				if(sprite_index != attackSprite && abs(y - targetPawn.y) < sprite_height)
					scrSpriteChange(id,attackSprite,0);
			}
			
			//Target lost
			if(targetPawn != noone && abs(x - targetPawn.x) >= 100 || abs(y - targetPawn.y)>= sprite_height){
				targetPawn = noone;
				hsp = 0;
				if(sprite_index != idleSprite)
					scrSpriteChange(id,idleSprite,0);
			}
		}
	if(sprite_index == attackSprite && image_index == 4){
			var _hit = collision_rectangle(x,bbox_top,x + sprite_width,bbox_bottom,obj_goblin,false,true);
			if(_hit != noone){
				_hit.vsp = -2;
				_hit.hsp += image_xscale * 3;
				// set target pawn to noone
			}
	}
	if(sprite_index == attackSprite && image_index >= image_number -1)
		scrSpriteChange(id,idleSprite,0);
	
	}
}
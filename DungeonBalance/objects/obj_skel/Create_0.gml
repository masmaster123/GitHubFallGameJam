
// Inherit the parent event
event_inherited();

canShatter = true;
isShattered = false;
shatterTime = 240;

idleSprite = spr_skel;
shatterSprite = spr_skelShatter;
assembleSprite = spr_skelAssemble;
walkingSprite = spr_skelWalk;
alarm[0] = 0;
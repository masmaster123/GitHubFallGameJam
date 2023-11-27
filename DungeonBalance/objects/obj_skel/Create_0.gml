
// Inherit the parent event
event_inherited();

canShatter = true;
isShattered = false;
shatterTime = 240;

walkSpeed = 0.1;
canWalk = true;

idleSprite = spr_skelIdle;
shatterSprite = spr_skelShatter;
assembleSprite = spr_skelAssemble;
walkingSprite = spr_skelWalk;
alarm[0] = 0;
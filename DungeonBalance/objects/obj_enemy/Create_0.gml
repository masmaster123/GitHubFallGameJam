

//Movement Variables
vsp = 0;
hsp = 0;
maxVsp = 4;
minVsp = 4;
maxHsp = 5;
minHsp = 5
scaleFriction = 0.5;

pointsWorth = 1;

//How far they can fly
toss_hsp = 7;
toss_vsp = 7;
gravity_speed = 0.2;
weight = .1;

scale_meeting = noone;

selectable = true;
selected = false;
selected_x = 0;
selected_y = 0;

past_mouse_x = 0;
past_mouse_y = 0;
idleSprite = spr_enemy;
walkingSprite = spr_enemy;
yLocked = false;

canShatter = true;
isShattered = false;
shatterTime = 240;
abducted = false;
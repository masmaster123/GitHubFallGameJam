/// @description Insert description here
// You can write your code in this editor

scale_left = instance_create_layer(64,400,"Instances",obj_scale);
scale_right = instance_create_layer(288,400,"Instances",obj_scale);
selected_list = ds_list_create();


lastMouseX = 0;
lastMouseY = 0;
mouseResetTime = 1;
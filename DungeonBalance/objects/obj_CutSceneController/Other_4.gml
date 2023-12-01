/// @description Insert description here
// You can write your code in this editor


switch(obj_playerPawn.playerLevel){
	
	case 0:
	dialogArray = dialogArrayOne;
	break;
	
	case 1:
		dialogArray = dialogArrayTwo;
		break;
	
	case 2:
		dialogArray = dialogArrayThree;
		break;
	
	case 3:
		dialogArray = dialogArrayFour;
		break;
	
	case 4:
		dialogArray = dialogArrayFive;
		break;
	
	case 5:
		dialogArray = dialogArraySix;
		var _w = instance_create_layer(300,32,"Instances",obj_rockworm);
		_w.image_angle = 180;
		break;
	case 6:
		dialogArray = dialogArraySeven;
		break;
	case 7:
		dialogArray = dialogArrayEight;
		break;
		
}


if(room == Room_Cutscene){
	obj_playerPawn.x = 32;
	obj_playerPawn.y = 224;
}




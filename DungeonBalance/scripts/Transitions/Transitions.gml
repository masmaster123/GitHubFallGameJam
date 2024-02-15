global.midTransition = false;
global.roomTarget = -1;
global.warningHeight = 280;
//Places sequences in the room
function TransitionPlaceSequence(_type){
	if(layer_exists("transition")) layer_destroy("transition");
	var _lay = layer_create(-9999,"transition");
	layer_sequence_create(_lay,0,0,_type);
}
//Called when you want to go from one room to another using any combination of transition sequences
function TransitionStart(_roomTarget,_typeOut,_typeIn){
	if(!global.midTransition){
		global.midTransition = true;
		global.roomTarget = _roomTarget;
		TransitionPlaceSequence(_typeOut);
		layer_set_target_room(_roomTarget);
		TransitionPlaceSequence(_typeIn);
		layer_reset_target_room();
		return true;
	}
	return false;
}
//Called at the end of the the transition seqence
function TransitionChangeRoom(){
	room_goto(global.roomTarget);
}

//Called at the moment at the end of the transition sequence
function TransitionFinished(){
	layer_sequence_destroy(self.elementID);
	global.midTransition = false;
}

if(!other.selected && other.vsp == 0){
	obj_CutSceneController.dialogePaused = false;
	if(obj_CutSceneController.dialogCounter < array_length(obj_CutSceneController.dialogArray) - 1){
		obj_CutSceneController.dialogCounter += 1;
		instance_destroy(id);
	}
}








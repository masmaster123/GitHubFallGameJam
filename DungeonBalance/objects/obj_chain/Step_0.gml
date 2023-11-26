//Match cage movement

if(room == Room_Cutscene || !obj_roundControllerParent.roundLost)
	y = obj_chainStart.y - 32 * chainIndex;
else
	y = scrApproach(y,room_height,1);





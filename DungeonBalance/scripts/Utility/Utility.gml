
function scrSpriteChange(object, sprite, frame){
	object.sprite_index = sprite;
	object.image_index = frame;
}


/// @function srcApproach(startingNumber, endingNumber, approachSpeed)
/// @desc Gives an increasing or decreasing value as the startibng point approaches the ending point  
/// @param startingNumber number we are starting at
/// @param endingNumber number we are trying to reach
/// @param approachSpeed rate of change of the starting number
function scrApproach(startingNumber, endingNumber, approachSpeed){
	if(startingNumber < endingNumber)
	{
		startingNumber += approachSpeed;
		if(startingNumber > endingNumber)
			return endingNumber;
	}
	else{
		startingNumber -= approachSpeed;
		if(startingNumber < endingNumber)
			return endingNumber;
	}
	return startingNumber;
}

/// @function scrPlaySoundOnce(sound)
/// @desc given a sound paramater plays the sound while stoping the same sound if one is alreadu playing
/// @param sound the sound to be played once
function PlaySoundOnce(sound){
	if(audio_is_playing(sound)){
		audio_stop_sound(sound);
	}
	audio_play_sound(sound,5,false);
}
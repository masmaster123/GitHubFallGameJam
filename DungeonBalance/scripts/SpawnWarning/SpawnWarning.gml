/// @function SpawnWarning(xLoc,yLoc,xScale,yScale,threatLevel)
/// @desc Creates a transformed threat warning to warn the player
/// @param xLoc x location
/// @param yLoc y location
/// @param xScale scale the object in x 
/// @param yScale scale the object in y 
/// @param threatLevel ranges from 0 to 2 
function SpawnWarning(xLoc,yLoc,xScale,yScale,threatLevel){
	var _p = instance_create_layer(xLoc,yLoc,"Instances",obj_warning);
	_p.image_index = threatLevel;
	_p.image_xscale = xScale;
	_p.image_yscale = yScale;
}
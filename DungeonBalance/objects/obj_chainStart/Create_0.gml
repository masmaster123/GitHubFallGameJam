//Create ChainLinks
for(var i = 0; i < chainNumber; i++){
	var chain = instance_create_layer(x,y - 32 * i,"Instances",obj_chain);
	chain.chainIndex = i;
}








if(canFade && image_alpha != 0)
	image_alpha = scrApproach(image_alpha,0,0.01);

if(image_alpha == 0)
	instance_destroy(id);




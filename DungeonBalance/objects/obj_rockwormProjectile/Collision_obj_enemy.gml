
if(!other.isShattered && !other.abducted){
	if(x < other.x)
		other.hsp += force;
	else
		other.hsp -= force;
	other.vsp -= 2;
	instance_destroy(id);
}







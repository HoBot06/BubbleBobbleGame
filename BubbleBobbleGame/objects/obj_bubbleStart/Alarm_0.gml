
instance_destroy(self);

if(!global.is_gaint)
{
	var bb = instance_create_layer(x, y, "Instances",obj_bubble);
	bb.direction = 90;
}

if(global.is_gaint)
{
	var gaint = instance_create_layer(x,y,"Instances",obj_bubble_gaint);
	gaint.direction = 90;
}
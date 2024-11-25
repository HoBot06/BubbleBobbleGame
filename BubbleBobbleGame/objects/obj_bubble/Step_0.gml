if(!collision_circle(x, y, 20, obj_tile1, true, false)){
	direction = 90;
	isup = true;
}
if(place_meeting(x+5, y+2, obj_tile1)) {
	direction = 180;
}
else if(place_meeting(x-5, y+2, obj_tile1)) {
	direction =  0;
}
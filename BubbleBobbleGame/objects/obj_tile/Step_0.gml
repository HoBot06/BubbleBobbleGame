if(place_meeting(x,y+1, obj_p)) {
	obj_p.y = y+1;
}
if(place_meeting(x+1, y, obj_p)) {
	obj_p.x = x+2;
}
if(place_meeting(x-1, y, obj_p)) {
	obj_p.x = x-2;
}
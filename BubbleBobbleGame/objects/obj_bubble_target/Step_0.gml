if(!collision_circle(x, y, 20, obj_tile, true, false)){
	direction = point_direction(x, y, obj_Enemy.x, obj_Enemy.y);
	isup = true;
}
if(place_meeting(x+5, y+2, obj_tile)) {
	direction = point_direction(x, y, obj_Enemy.x, obj_Enemy.y);
}
if(place_meeting(x-5, y+2, obj_tile)) {
	direction = point_direction(x, y, obj_Enemy.x, obj_Enemy.y);
}
if(instance_exists(obj_Enemy)) {
	for (var i = 0; i < instance_number(obj_Enemy); i++) {
		var inst = instance_find(obj_Enemy, i);
		if(inst.sprite_index == enemy) {
			direction = point_direction(x, y, inst.x, inst.y);
			return;
		}
	}
}

if(!collision_circle(x, y, 20, obj_tile, true, false)){
	direction = 90;
	isup = true;
}
if(place_meeting(x+5, y+2, obj_tile)) {
	direction = 180;
}
else if(place_meeting(x-5, y+2, obj_tile)) {
	direction =  0;
}
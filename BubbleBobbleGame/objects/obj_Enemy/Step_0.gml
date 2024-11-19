if(sprite_index==enemy) {
	x = x + xspeed;
	if(place_meeting(x+xspeed, y-2, obj_tile)) {
		xspeed = xspeed * -1;
	}

	if(!place_meeting(x,y+vspd,obj_tile)) {
			{
				vspd += gravity_;
			}
		}
		else {
			vspd = 0;
		}
	y += vspd;

	if(xspeed >0) {
		image_xscale = -1;
	}
	else{
		image_xscale = 1;
	}
}
if(sprite_index==enemy_bubble) {
	speed = 3;
	if(!collision_circle(x, y, 15, obj_tile, true, false)){
	direction = 90;
	isup = true;
	}
	if(collision_circle(x+5, y, 8, obj_tile, true, false)) {
		direction = 180;
	}
	if(collision_circle(x-5, y, 8, obj_tile, true, false)) {
		direction =  0;
	}
	if(collision_circle(x, y, 10, obj_player, true, false)) {
		instance_destroy(self);
		global.score += 100;
	}
}

// 오른쪽으로 나갔다면 왼쪽으로 이동
if (x > room_width) {
    x = 0;
}

// 왼쪽으로 나갔다면 오른쪽으로 이동
if (x < 0) {
    x = room_width;
}

// 아래로 나갔다면 위쪽으로 이동
if (y > room_height) {
    y = 0;
}

// 위로 나갔다면 아래쪽으로 이동
if (y < 0) {
    y = room_height;
}
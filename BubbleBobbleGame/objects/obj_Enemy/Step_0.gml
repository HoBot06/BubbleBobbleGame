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
	y-=1;
	if(collision_circle(x, y, 10, obj_tile, true, false)) {
		instance_destroy(self);
		global.score += 100;
	}
}

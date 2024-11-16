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
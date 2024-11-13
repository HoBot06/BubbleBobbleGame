// Player horizontal move
if(keyboard_check(vk_left) || keyboard_check(vk_right))
{
	hspd = (keyboard_check(vk_left) - keyboard_check(vk_right))* -3;
	if(place_meeting(x+hspd,y-1,obj_tile)){
		hspd = 0;
	}
}
else
{
	hspd = 0;
}
x += hspd; 
// Player jump
if(keyboard_check(vk_up))
{
	if(place_meeting(x,y+1,obj_tile)) {
		vspd = jumpspd;
	}
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

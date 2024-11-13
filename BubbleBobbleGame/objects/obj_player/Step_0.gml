
// player horizontal moving
if(keyboard_check_pressed(vk_left)||keyboard_check_pressed(vk_right))
{
	image_xscale = keyboard_check_pressed(vk_right)-keyboard_check_pressed(vk_left);
	
	hspd =  keyboard_check_pressed(vk_right)-keyboard_check_pressed(vk_left) * 3;
}
else
{
	hspd = 0;
}

// player jump
if(keyboard_check_pressed(vk_up))
{
	if(place_meeting(obj_player.x,obj_player.y + 1,obj_wall))
	{
		vspd = jumpspd;
	}
}
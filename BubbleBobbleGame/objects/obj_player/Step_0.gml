
// player horizontal moving
if(keyboard_check_pressed(vk_left)||keyboard_check_pressed(vk_right))
{
	image_xscale = keyboard_check_pressed(vk_right)-keyboard_check_pressed(vk_left);
	
	spd =  keyboard_check_pressed(vk_right)-keyboard_check_pressed(vk_left) * 3;
}
else
{
	spd = 0;
}

// player jump
if(keyboard_check_pressed(vk_up))
{
	
}
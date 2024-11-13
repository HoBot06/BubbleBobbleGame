
if(keyboard_check_pressed(vk_left)||keyboard_check_pressed(vk_right))
{
	image_xscale = keyboard_check_pressed(vk_right)-keyboard_check_pressed(vk_left);
	
	hspd =  keyboard_check_pressed(vk_right)-keyboard_check_pressed(vk_left) * 3;
}
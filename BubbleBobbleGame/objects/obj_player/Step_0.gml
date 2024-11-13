// Player horizontal move
if(keyboard_check(vk_left) || keyboard_check(vk_right))
{
	image_xscale = keyboard_check(vk_right) - keyboard_check(vk_left);
	hspd = (keyboard_check(vk_right) - keyboard_check(vk_left))* 3;
	x += hspd; 
}
else
{
	hspd = 0;
}

// Player jump
if(keyboard_check(vk_up))
{
	vspd = jumpspd;	

}
vspd += gravity_;
y += vspd;


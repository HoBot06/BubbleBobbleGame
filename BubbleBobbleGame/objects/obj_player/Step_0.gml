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
	if(place_meeting(obj_player.x,obj_player.y+1,obj_tile))
	{
		vspd = jumpspd;
		y += vspd;
	}
}
vspd += gravity_;

//Player Shoot Bubble
if(keyboard_check_pressed(vk_space))
{
	var bulletStart = instance_create_layer(x,y,"Instances",obj_bubbleStart);
	bulletStart.direction = obj_player.x + 3;
}

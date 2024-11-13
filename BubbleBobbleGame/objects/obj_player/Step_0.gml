// Player horizontal move
if(keyboard_check(vk_left) || keyboard_check(vk_right))
{
	//image_xscale = keyboard_check(vk_right) - keyboard_check(vk_left);
	hspd = (keyboard_check(vk_right) - keyboard_check(vk_left))* 3;
	if(place_meeting(x+hspd, y-5, obj_tile)) {
		hspd = 0;
	}
}
else
{
	hspd = 0;
}
x += hspd;
if(!place_meeting(x,y+vspd,obj_tile)) {
	vspd += gravity_;
}
else{
	vspd = 0;
}
// Player jump
if(keyboard_check(vk_up)&&place_meeting(x,y+1,obj_tile))
{
	vspd = jumpspd;
}

y += vspd;

//Player Shoot Bubble
if(keyboard_check_pressed(vk_space))
{
	var bulletStart = instance_create_layer(x,y,"Instances",obj_bubbleStart);
	bulletStart.direction = obj_player.x + 3;
}

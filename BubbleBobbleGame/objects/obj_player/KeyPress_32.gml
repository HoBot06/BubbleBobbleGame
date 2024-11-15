
// Bubble create
var bulletStart = instance_create_layer(obj_player.x - 3 ,y,"Instances",obj_bubbleStart);

// Bubble direction change
if(image_xscale == 1)
{
	bulletStart.direction = 180;
}
if(image_xscale == -1)
{
	bulletStart.direction = 0;
}

// Animation Change
if (sprite_index == player)
{
    sprite_index = player_shoot;
	alarm[0] = 60;
} 

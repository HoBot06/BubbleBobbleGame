
if (!collision_circle(x, y, 20, obj_tile1, true, false))
{
    direction = 270; 
    isdown = true;   
}


if (place_meeting(x+5, y-2, obj_tile1))
{
    direction = 180; 
}

if (place_meeting(x-5, y-2, obj_tile1)) 
{
    direction = 0;
}

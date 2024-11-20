instance_destroy(self);

if (global.active_item == "Gaint") 
{
    var bb = instance_create_layer(x, y, "Instances", obj_bubble_gaint);
    bb.direction = 90;

}

else if (global.active_item == "Target") {
    var nearest_enemy = instance_nearest(x, y, obj_Enemy);
    
    if (nearest_enemy != noone) 
	{
        var bb = instance_create_layer(x, y, "Instances", obj_bubble_target);
        bb.direction = point_direction(x, y, nearest_enemy.x, nearest_enemy.y);
    }
}


else if (global.active_item == "Direct") 
{
    var bb = instance_create_layer(x, y, "Instances", obj_bubble_dircent);
    bb.direction = 90;
}

else
{
	var bb = instance_create_layer(x, y, "Instances", obj_bubble);
	bb.direction = 90;
}
if (can_destory) 
{
	with(obj_Enemy)
	{
		instance_destroy();
		global.score += 100;
		instance_create_layer(x,y,"Instances",obj_Bomb_Effect);
	}

	instance_destroy(self);
}
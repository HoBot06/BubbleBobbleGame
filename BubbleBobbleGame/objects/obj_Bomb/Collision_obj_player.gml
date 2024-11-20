if (global.can_destory) 
{
	with(obj_Enemy)
	{
		instance_destroy();
		global.score += 100;
	}

	instance_destroy(self);
}
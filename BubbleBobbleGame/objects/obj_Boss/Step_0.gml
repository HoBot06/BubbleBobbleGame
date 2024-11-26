if(instance_number(obj_Enemy) <= 0) {
	if(_isspawn == false) {
		if(_life == 3) {
			global._xspeed = 1.2;
			instance_create_depth(288, 96, 0, obj_Enemy);
			instance_create_depth(288, 256, 0, obj_Enemy);
			instance_create_depth(288, 416, 0, obj_Enemy);
			instance_create_depth(288, 576, 0, obj_Enemy);
			
		}
		if(_life == 2) {
			global._xspeed = 1.4;
			instance_create_depth(288, 96, 0, obj_Enemy);
			instance_create_depth(288, 256, 0, obj_Enemy);
			instance_create_depth(288, 416, 0, obj_Enemy);
			instance_create_depth(288, 576, 0, obj_Enemy);
			instance_create_depth(310, 500, -6, obj_Effect_Boss);
		}
		if(_life == 1) {
			global._xspeed = 1.6;
			instance_create_depth(288, 256, 0, obj_Enemy);
			instance_create_depth(288, 416, 0, obj_Enemy);
			instance_create_depth(288, 576, 0, obj_Enemy);
			instance_create_depth(310, 500, -6, obj_Effect_Boss);

		}
		if(_life == 0) {
			global._xspeed = 1.8;
			instance_create_depth(288, 416, 0, obj_Enemy);
			instance_create_depth(288, 576, 0, obj_Enemy);
			instance_create_depth(310, 500, -6, obj_Effect_Boss);
			
		}
		_isspawn = true;
	}
	else {
		if(_life < 0) {
			room_goto(Ending);
		}
		image_index = image_index + 1;
		_life -=1;
		_isspawn=false;
	}
}
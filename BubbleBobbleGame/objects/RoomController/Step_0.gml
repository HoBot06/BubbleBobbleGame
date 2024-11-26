if(global.hp <= 0)
{
	room_goto(GameOver);	
}
if(room == Stage1) {
	if(instance_number(obj_Enemy)<= 0) {
		room_goto(NextStage);
		global.hp = 5;
		global.stage ++;
		global.can_damage = true;
	}
}
if(room == Stage2) {
	if(instance_number(obj_Enemy)<= 0) {
		room_goto(NextStage);
		global.hp = 5;
		global.stage ++;
		global.can_damage = true;
	}
}
if(room == Stage3) {
	if(instance_number(obj_Enemy)<= 0) {
		room_goto(NextStage);
		global.hp = 5;
		global.stage ++;
		global.can_damage = true;
	}
}
if(room == Stage4) {
	if(instance_number(obj_Enemy)<= 0) {
		room_goto(NextStage);
		global.hp = 5;
		global.stage ++;
		global.can_damage = true;
	}
}
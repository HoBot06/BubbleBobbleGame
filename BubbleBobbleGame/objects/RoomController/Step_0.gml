if(global.hp <= 0)
{
	room_goto(GameOver);	
}
if(room == Stage1) {
	if(instance_number(obj_Enemy)<= 0) {
		room_goto(Stage2);
		global.hp = 5;
		global.can_damage = true;
	}
}
if(room == Stage2) {
	if(instance_number(obj_Enemy)<= 0) {
		room_goto(Stage3);
		global.hp = 5;
		global.can_damage = true;
	}
}
if(room == Stage3) {
	if(instance_number(obj_Enemy)<= 0) {
		room_goto(Stage4);
		global.hp = 5;
		global.can_damage = true;
	}
}
if(room == Stage4) {
	if(instance_number(obj_Enemy)<= 0) {
		room_goto(BossStage);
		global.hp = 5;
		global.can_damage = true;
	}
}
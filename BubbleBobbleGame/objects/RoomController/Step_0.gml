if(global.hp <= 0)
{
	game_end();
	show_message("Game Over!");
	
}
if(room == Stage1) {
	if(instance_number(obj_Enemy)<= 0) {
		room_goto(Stage2);
	}
}
if(room == Stage2) {
	if(instance_number(obj_Enemy)<= 0) {
		room_goto(Stage3);
	}
}
if(room == Stage3) {
	if(instance_number(obj_Enemy)<= 0) {
		room_goto(Stage4);
	}
}
if(room == Stage4) {
	if(instance_number(obj_Enemy)<= 0) {
		room_goto(BossStage);
	}
}
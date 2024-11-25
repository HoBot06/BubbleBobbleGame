if(global.hp <= 0)
{
	game_end();
	show_message("Game Over!");
	
}
if(global.score > 1000){
	room_goto(BossStage);
}
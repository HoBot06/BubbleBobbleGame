if(global.can_damage==true) {
	if(other.sprite_index == enemy){
		sprite_index = player_hit;
		alarm[2] = 40;
	}
}
if(other.sprite_index == enemy) {
	if(global.can_damage)
	{
		global.hp--;
		global.can_damage = false;
		alarm[3] = 180;
	}
}

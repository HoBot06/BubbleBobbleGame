  
// Player Invincible Time
if(sprite_index == enemy) {
	if(global.can_damage)
	{
		global.hp--;
		global.can_damage = false;
		alarm[1] = 180;
	
	}
}

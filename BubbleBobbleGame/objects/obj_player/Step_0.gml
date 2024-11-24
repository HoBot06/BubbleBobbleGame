// Player horizontal move
if(keyboard_check(vk_left) || keyboard_check(vk_right))
{
	hspd = (keyboard_check(vk_left) - keyboard_check(vk_right))* -3;
	if(place_meeting(x+hspd,y-1,obj_tile)){
		hspd = 0;
	}
}
else
{
	hspd = 0;
}
x += hspd; 

// Player jump
if(keyboard_check(vk_up))
{
	if(place_meeting(x,y+1,obj_tile) || place_meeting(x,y+vspd,obj_tile_boss) &&noclip==false) {
		vspd = jumpspd;
		noclip = true;
		alarm[1] = 40;
	}
}

vspd += gravity_;
if(vspd < 0) {
	if(place_meeting(x,y+vspd,obj_tile) || place_meeting(x,y+vspd,obj_tile_boss)) {
		vspd = max(vspd, -6)-gravity_-0.1;
	}
}
else if(vspd >= 0) {
	if(place_meeting(x,y+vspd,obj_tile) || place_meeting(x,y+vspd,obj_tile_boss)) {
		vspd = 0;
	}
}
y += vspd;

// 오른쪽으로 나갔다면 왼쪽으로 이동
if (x > room_width) {
    x = 0;
}

// 왼쪽으로 나갔다면 오른쪽으로 이동
if (x < 0) {
    x = room_width;
}

// 아래로 나갔다면 위쪽으로 이동
if (y > room_height) {
    y = 0;
}

// 위로 나갔다면 아래쪽으로 이동
if (y < 0) {
    y = room_height;
}

// Player Items Timer
if (global.item_timer > 0) 
{
    global.item_timer -= 1; 
} 
else 
{
    global.active_item = ""; 
}
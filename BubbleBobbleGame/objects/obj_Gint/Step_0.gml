if (place_meeting(x, y + 1, obj_tile1))
{
    can_destory = true;
} 
else 
{
    can_destory = false;
    y += 3;
}

// 경계를 넘어간 경우 위치 재설정
if (x > room_width) {
    x = 0;
}
if (x < 0) {
    x = room_width;
}
if (y > room_height) {
    y = 0;
}
if (y < 0) {
    y = room_height;
}




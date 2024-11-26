
draw_set_color(c_white);
draw_set_halign(fa_center);



if(global.stage == 5)
{
	draw_text(room_width/2, room_height/2 , "Next Stage: Boss Stage"); 
	draw_text(room_width/2, room_height/2 + 50, "-  Are you Ready?  Press Down Enter  -");

}
else
{
	draw_text(room_width/2, room_height/2 , "Next Stage: "+string(global.stage)+" stage"); 
	draw_text(room_width/2, room_height/2 + 50, "-  Are you Ready?  Press Down Enter  -");
}
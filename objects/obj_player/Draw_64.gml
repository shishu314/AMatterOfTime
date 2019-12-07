/// @description Insert description here
// You can write your code in this editor
if(global.isPart2) {
	camX = camera_get_view_x(view_camera[0]);
	if(!global.isPresent && timeTravelCount != 0){
		draw_set_color(c_white);
		draw_circle(-camX + x + abs(sprite_width)/2, y - sprite_height/2 - 26, 15, false);
		DrawPie(-camX + x + abs(sprite_width)/2, y - sprite_height/2 - 25, timeTravelMax - timeTravelCount, timeTravelMax, c_red, 14, 1);
	}
	if(global.isPresent && timeTravelCDCount != 0) {
		DrawCircularBar(-camX + x + abs(sprite_width)/2, y - sprite_height/2 - 25, timeTravelCD - timeTravelCDCount, timeTravelCD, c_aqua, 14, 1, 6);
	}
}
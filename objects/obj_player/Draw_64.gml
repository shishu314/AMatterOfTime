/// @description Insert description here
// You can write your code in this editor
if(!global.isPresent && timeTravelCount != 0){
	draw_set_color(c_white);
	draw_circle(x + abs(sprite_width)/2, y - sprite_height/2 - 26, 15, false);
	DrawPie(x + abs(sprite_width)/2, y - sprite_height/2 - 25, timeTravelMax - timeTravelCount, timeTravelMax, c_red, 14, 1);
}
if(global.isPresent && timeTravelCDCount != 0) {
	DrawCircularBar(x + abs(sprite_width)/2, y - sprite_height/2 - 25, timeTravelCD - timeTravelCDCount, timeTravelCD, c_aqua, 14, 1, 6);
}
/// @description Insert description here
// You can write your code in this editor
var player = instance_place(x, y, obj_player);
if(player != noone){
	draw_set_halign(fa_center);
	draw_set_color(c_gray);
	draw_rectangle(player.x - abs(player.sprite_width/2), player.y - 110, player.x + abs(player.sprite_width/2), player.y - 50, false);
	draw_set_color(c_black);
	draw_text_transformed(player.x, player.y - 100, "E", 2.0, 2.0, 0);
}
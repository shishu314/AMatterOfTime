/// @description Insert description here
// You can write your code in this editor
if(shouldDraw && global.sentenceArray == undefined){
	var player = instance_place(x, y, obj_player);
	if(player != noone){
		var camX = camera_get_view_x(view_camera[0]);
		var boxLeft = x - abs(sprite_width/2) - camX;
		var boxRight = x + abs(sprite_width/2) - camX;
		var boxTop = y - sprite_height/2 - 70;
		var boxBottom = y - sprite_height/2 - 20;
		draw_sprite(spr_e_button_prompt, 0, (boxLeft+boxRight)/2, (boxTop+boxBottom)/2);
	}
}
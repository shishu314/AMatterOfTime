/// @description Insert description here
// You can write your code in this editor

if(collidable) {
	var player = instance_place(x, y, obj_player);
	if(player != noone){
		if(x > player.x) {
			player.x = x - abs(sprite_width)/2 - abs(player.sprite_width)/2;
		} else {
			player.x = x + abs(sprite_width)/2 + abs(player.sprite_width)/2;
		}
	}
}

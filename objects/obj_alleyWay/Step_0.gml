/// @description Insert description here
// You can write your code in this editors
if(instance_place(x, y, obj_player) != noone) {
	if(keyboard_check_pressed(ord("E"))) {
		if(room == Level1){
			if(!global.hasApple){
				global.prevX = x;
				global.prevY = y;
				room_goto(AlleyWay);
			}
		} else {
			room_goto(Level1);
		}
	}
}
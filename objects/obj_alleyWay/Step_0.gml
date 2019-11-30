/// @description Insert description here
// You can write your code in this editors
if(instance_place(x, y, obj_player) != noone) {
	if(keyboard_check_pressed(ord("E")) && !global.hasApple) {
		if(room == Level1){
			global.prevX = x;
			global.prevY = y;
			room_goto(AlleyWay);
		} else {
			room_goto(Level1);
		}
	}
}
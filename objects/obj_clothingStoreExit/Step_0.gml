/// @description Insert description here
// You can write your code in this editor
shouldDraw = true;
if(instance_place(x, y, obj_player) != noone) {
	if(keyboard_check_pressed(ord("E")) && global.sentenceArray == undefined) {
		room_goto(Level1);
	}
}
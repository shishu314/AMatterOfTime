/// @description Insert description here
// You can write your code in this editor
if(instance_place(x, y, obj_player) != noone) {
	if(keyboard_check_pressed(ord("E"))) {
		global.currentLevel = FinalStage;
		room_goto(FinalStage);
	}
}
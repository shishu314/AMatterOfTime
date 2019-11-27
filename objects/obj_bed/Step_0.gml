/// @description Insert description here
// You can write your code in this editor
if(instance_place(x, y, obj_player) != noone) {
	if(keyboard_check_pressed(ord("E"))) {
		InitializeEndGameText("You decided that sleep was more important and went to sleep instead of saving the world");
		room_goto(GameOver);
	}
}
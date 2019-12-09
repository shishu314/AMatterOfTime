/// @description Insert description here
// You can write your code in this editor
if(instance_place(x, y, obj_player) != noone) {
	if(keyboard_check_pressed(ord("E")) && global.sentenceArray == undefined) {
		InitializeEndGameText("You decided that sleep was more important and went to sleep instead of saving the world");
		audio_stop_all();
		audio_play_sound(sfx_gameOver, 1, false);
		room_goto(GameOver);
	}
}
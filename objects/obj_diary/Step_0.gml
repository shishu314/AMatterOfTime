/// @description Insert description here
// You can write your code in this editor
if(instance_place(x, y, obj_player) != noone) {
	if(keyboard_check_pressed(ord("E")) && global.sentenceArray == undefined) {
		if(!obj_RoomState.diaryRead) {
			obj_RoomState.diaryRead = true;
			InitializeDialogBox("Dear Diary,# I thought I was done for the week, but the agency assigned me another task.# It's an especially important one with the whole world at stake.# John says the end of the world begins with one homeless guy.# Interesting...# Eh, i'll start tomorrow.# Gonna sleep and see how I feel later.# This time travel stuff really messes with my mind.# (Press Space to traverse through different times)");	
		} else {
			InitializeDialogBox("(Press Space to traverse through different times)");
		}
	}
}
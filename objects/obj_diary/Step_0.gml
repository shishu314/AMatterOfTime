/// @description Insert description here
// You can write your code in this editor
if(instance_place(x, y, obj_player) != noone) {
	if(keyboard_check_pressed(ord("E")) && global.sentenceArray == undefined) {
		if(!obj_RoomState.diaryRead) {
			obj_RoomState.diaryRead = true;
			InitializeDialogBox("Dear Diary,# I thought I was done for the week, but the agency assigned me another task.# It's an especially important one with the whole world at stake.# Supposedly the end of the world begins with one homeless guy.# He got mad and started throwing things, hitting a passing truck driver.# That truck ran off the roads and spilled all the chemicals it carried...# which sped up global warming and everything went to shit from there...# Interesting...# Eh, I'll get started tomorrow.# This time travel stuff really messes with my mind.# (Press Space to traverse through different times)");	
		} else {
			InitializeDialogBox("(Press Space to traverse through different times)");
		}
	}
}
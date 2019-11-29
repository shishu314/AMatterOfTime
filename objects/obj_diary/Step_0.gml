/// @description Insert description here
// You can write your code in this editor
if(instance_place(x, y, obj_player) != noone) {
	if(keyboard_check_pressed(ord("E")) && global.sentenceArray == undefined) {
		if(!obj_RoomState.diaryRead) {
			obj_RoomState.diaryRead = true;
			InitializeDialogBox("Dear Diary,# I have finally perfected the way to go back in time.# I should save the world now but# I don't really feel like it# Oh wells, gonna sleep and see how I feel tomorrow# (Press Space to traverse through different times)");	
		} else {
			InitializeDialogBox("(Press Space to traverse through different times)");
		}
	}
}
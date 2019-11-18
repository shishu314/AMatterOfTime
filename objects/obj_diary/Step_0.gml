/// @description Insert description here
// You can write your code in this editor
if(instance_place(x, y, obj_player) != noone) {
	if(keyboard_check_pressed(ord("E"))) {
		if(!obj_RoomState.diaryRead) {
			obj_RoomState.diaryRead = true;
			InitializeDialogBox("Dear Diary# Press Space to traverse through different times");	
		} else {
			InitializeDialogBox("Press Space to traverse through different times");
		}
	}
}
/// @description Insert description here
// You can write your code in this editor
switch(room){
	case Room:
		shouldDraw = obj_RoomState.diaryRead;
		if(instance_place(x, y, obj_player) != noone) {
			if(obj_RoomState.diaryRead) {
				if(keyboard_check_pressed(ord("E"))) {
					room_goto_next();
				}
			}
		}
		break;
	default:
		break;
}
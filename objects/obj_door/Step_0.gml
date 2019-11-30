/// @description Insert description here
// You can write your code in this editor
switch(room){
	case Room:
		shouldDraw = obj_RoomState.diaryRead;
		if(instance_place(x, y, obj_player) != noone) {
			if(obj_RoomState.diaryRead) {
				if(keyboard_check_pressed(ord("E"))) {
					global.currentLevel = Level1;
					room_goto_next();
				}
			}
		}
		break;
	case Level1:
		shouldDraw = !global.hasJacket;
		if(instance_place(x, y, obj_player) != noone) {
			if(keyboard_check_pressed(ord("E")) && !global.hasJacket) {
				global.prevX = x;
				global.prevY = y;
				global.currentLevel = ClothingStore;
				room_goto(ClothingStore);
			}
		}
		break;
	case ClothingStore:
		shouldDraw = true;
		if(instance_place(x, y, obj_player) != noone) {
			if(keyboard_check_pressed(ord("E"))) {
				room_goto(Level1);
			}
		}
		break;
	default:
		break;
}
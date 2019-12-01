/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if(instance_place(x, y, obj_player) != noone) {
	if(keyboard_check_pressed(ord("E")) && global.sentenceArray == undefined) {
		switch(room){
			case Level1:
				if(obj_hobo.useAlternate) {
					room_goto(Level2);
				} else {
					InitializeDialogBox("You must fix this timeline before you can go to the next!");
				}
				break;
			default:
				break;
		}
	}
}
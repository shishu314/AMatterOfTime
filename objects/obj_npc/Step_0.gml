/// @description Insert description here
// You can write your code in this editor
if(instance_place(x, y, obj_player) != noone) {
	if(keyboard_check_pressed(ord("E"))) {
		if(!hasTalked) {
			InitializeDialogBox(initialDialogue);
			hasTalked = true;
		} else {
			InitializeDialogBox(repeatDialogue)
		}
	}
}

if(introductionDialogue != undefined && !introduced && abs(obj_player.x - x) == 100) {
	introduced = true;
	InitializeDialogBox(introductionDialogue);
}
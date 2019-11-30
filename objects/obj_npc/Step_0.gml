/// @description Insert description here
// You can write your code in this editor
if(instance_place(x, y, obj_player) != noone) {
	if(keyboard_check_pressed(ord("E")) && global.sentenceArray == undefined) {
		if(global.isPresent){
			if(!hasTalkedPresent && initialPresentDialogue != undefined) {
				InitializeDialogBox(initialPresentDialogue);
				hasTalkedPresent = true;
			} else {
				InitializeDialogBox(repeatPresentDialogue)
			}
		} else {
			if(!hasTalkedPast && initialPastDialogue != undefined) {
				InitializeDialogBox(initialPastDialogue);
				hasTalkedPast = true;
			} else {
				InitializeDialogBox(repeatPastDialogue)
			}
		}
	}
}

if(introductionDialogue != undefined && !introduced && abs(obj_player.x - x) == 100) {
	introduced = true;
	InitializeDialogBox(introductionDialogue);
}
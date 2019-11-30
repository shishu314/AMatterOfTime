/// @description Insert description here
// You can write your code in this editor
shouldDraw = !global.isPresent;
if(!global.isPresent){
	if(instance_place(x,y, obj_player) != noone) {
		if(keyboard_check_pressed(ord("E")) && global.sentenceArray == undefined) {
			if(!global.hasApple){
				global.hasApple = true;
				InitializeDialogBox("Though disgusted, you dug through the trash can. You managed to find a somewhat okay apple# It's a bit dirty but I'm sure it's still safe to eat.");	
			} else {
				InitializeDialogBox("Why would you go through the trashcan again? YUCK");
			}
		}
	}
}
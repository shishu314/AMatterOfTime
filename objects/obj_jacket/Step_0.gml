/// @description Insert description here
// You can write your code in this editor
shouldDraw = !global.isPresent;
if(keyboard_check_pressed(ord("E")) && global.sentenceArray == undefined) {
	obj_player.hasJacket = true;
	InitializeDialogBox("You picked up an old jacket! It smells a bit funny but I'm sure someone will take it.");	
	instance_destroy();
}
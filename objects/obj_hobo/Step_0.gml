/// @description Insert description here
// You can write your code in this editor
if(instance_place(x, y, obj_player) != noone) {
	if(keyboard_check_pressed(ord("E"))) {
		if(!hasTalked) {
			InitializeDialogBox("Insert Long Hobo Life Story here");
			hasTalked = true;
		} else {
			InitializeDialogBox("Now fuck off unless you have a JACKET and FOOD for me.")
		}
	}
}
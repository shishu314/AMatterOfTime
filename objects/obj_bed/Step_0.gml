/// @description Insert description here
// You can write your code in this editor
if(instance_place(x,y, obj_player) == noone) {
	shouldDraw = true;	
}
if(shouldDraw && instance_place(x, y, obj_player) != noone) {
	if(keyboard_check_pressed(ord("E"))) {
		InitializeEndGameText("You decided to go back to sleep instead of saving the world");
		room_goto(GameOver);
	}
}
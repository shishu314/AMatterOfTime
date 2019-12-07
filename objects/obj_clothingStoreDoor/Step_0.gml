/// @description Insert description here
// You can write your code in this editor
shouldDraw = !global.hasJacket;
if(instance_place(x, y, obj_player) != noone) {
	if(keyboard_check_pressed(ord("E")) && !global.hasJacket) {
		global.prevX = x;
		global.prevY = y;
		global.currentLevel = ClothingStore;
		room_goto(ClothingStore);
	}
}
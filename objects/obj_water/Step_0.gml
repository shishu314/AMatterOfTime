/// @description Insert description here
// You can write your code in this editor
if(instance_place(x,y, obj_player)) {
	InitializeEndGameText("You fell into water and drowned");
	global.prevX = obj_waterDialogue.x;
	global.prevY = obj_waterDialogue.y;
	room_goto(GameOver);
}

if(!global.isPresent) {
	y = initialY + sprite_height;
} else {
	y = initialY;
}
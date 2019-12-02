/// @description Insert description here
// You can write your code in this editor
if(global.hasApple && global.hasJacket && !useAlternate) {
	if(instance_place(x, y, obj_player) != noone) {
		if(keyboard_check_pressed(ord("E")) && global.sentenceArray == undefined) {
			if(global.isPresent) {
				global.prevX = x;
				global.prevY = y;
				InitializeEndGameText("You helped the hobo, but now you didn't change the past.");
				room_goto(GameOver);
			} else {
				InitializeDialogBox("Is that jacket and food for me?# ...# Thank you stranger... Thank you so much!# T^T");
				useAlternate = true;
			}
		}
	}
} else {
	event_inherited();
}

if(useAlternate && global.isPresent) {
	sprite_index = spr_hobo_with_jacket;
} else {
	sprite_index = spr_hobo;
}
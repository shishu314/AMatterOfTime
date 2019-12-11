/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
if(obj_player.x >= x) {
	if(!obj_hobo.useAlternate) {
		InitializeDialogBox("I feel like I need to do something before heading on");
		obj_player.x = x - sprite_width;
	} else {
		if(!global.isPart2){
			global.isPresent = true;
			global.isPart2 = true;
			global.prevX = x;
			global.prevY = y;
			InitializeDialogBox("Ring...# John, there's been a change of plans.# This homeless guy is a tough one.# After you helped him, he became a hardworking salary man.# A very depressed and lonely one in fact.# So depressed that he jumps off a building and STILL ends up distracting that truck driver.# Our computers detect that he's at the top of a building right now. # But you've been out for too long. The time machine is running out of power.# Be careful and go stop this!");
			instance_create_depth(x, y, 0, obj_phone);
		}
	}
}
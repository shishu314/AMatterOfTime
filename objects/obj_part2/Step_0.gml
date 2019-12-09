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
			InitializeDialogBox("Ring...# There's been a change of plans.# The homeless man became a hardworking salary man, but he still leads to the end of world.# Our computers detect that he's at the top of a building. # You've been out for too long, # the time machine is running out of power. Be careful and GO SAVE THE WORLD!");
			instance_create_depth(x, y, 0, obj_phone);
		}
	}
}
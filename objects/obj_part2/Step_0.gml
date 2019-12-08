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
			InitializeDialogBox("Ring...# Dropped my phone yada yada");
			instance_create_depth(x, y, 0, obj_phone);
		}
	}
}
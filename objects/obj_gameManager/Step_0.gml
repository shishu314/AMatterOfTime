/// @description Insert description here
// You can write your code in this editor
#region time management
if(room != TitleScreen && room != GameOver){
	if(global.sentenceArray == undefined){
		// Adds one second to the time
		global.time += 0.00001/room_speed;
	}
}
#endregion

if(room == TitleScreen) {
	if(keyboard_check_pressed(vk_space)) {
		room_goto_next();
	}
}

if(room == GameOver) {
	if(keyboard_check_pressed(ord("R"))) {
		ResetGame();
	}
}

#region Layer Visibility
if(!global.isPresent){
	layer_set_visible("Future_tiles", false);
	layer_set_visible("Future_tiles2", false);
} else {
	layer_set_visible("Future_tiles", true);
	layer_set_visible("Future_tiles2", true);
}
#endregion
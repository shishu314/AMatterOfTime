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

if(keyboard_check_pressed(vk_alt)) {
	global.hasJacket = true;
	global.hasApple = true;
}

if(keyboard_check_pressed(vk_control)) {
	instance_create_depth(x, y, 0, obj_phone);
}
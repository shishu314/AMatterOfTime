/// @description Insert description here
// You can write your code in this editor
var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);
var cam_width = camera_get_view_width(view_camera[0]);
var cam_height = camera_get_view_height(view_camera[0]);

if(room != GameOver && room != TitleScreen) {
	#region Time
	draw_set_color(c_white);
	var currentTime = global.time;
	if(!global.isPresent){
		switch(room) {
			case Room:
			case Level1:
			case AlleyWay:
			case ClothingStore:
				// 20 years (accounting for leap years)
				currentTime -= 365*20+5;
				break;
			default:
				break;
		}
	}
	var timeText = string(date_get_month(currentTime)) + "/" + string(date_get_day(currentTime)) + "/" + string(date_get_year(currentTime)) + " " + string(date_get_hour(currentTime)) + ":" + string(date_get_minute(currentTime)) + ":" + string(date_get_second(currentTime));
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_text_transformed(cam_x+cam_width/8, cam_y+cam_height/8, timeText, 1.5, 1.5, 0);
	#endregion

	#region Dialog Box
	if(global.sentenceArray != undefined){
		draw_set_halign(fa_left);
		draw_set_valign(fa_middle);
		draw_set_color(c_black);
		draw_rectangle(cam_x, cam_height, cam_x + cam_width, 7*cam_height/8, false);
		draw_set_color(c_white);
		draw_text_transformed(cam_x+cam_width/10, 29*(cam_y+cam_height)/32,ds_list_find_value(global.sentenceArray, global.dialogBoxIndex),1.5,1.5, 0);
		// Flash every 0.25 seconds
		if((current_time/500) & 1) {
			draw_text_transformed(cam_x+cam_width/2, 31*(cam_y+cam_height)/32, "Press Space to Continue", 1, 1, 0);
		}
	}
	#endregion
} else {
	if(room == GameOver){
		draw_set_halign(fa_middle);
		draw_set_color(c_white);
		var yInterval = room_height/8;
		for(var i = 0; i < ds_list_size(global.sentenceArray); ++i) {
			draw_text_transformed(room_width/2, (i+1) * yInterval, ds_list_find_value(global.sentenceArray, i), 2.0, 2.0, 0);
		}
		draw_text_transformed(room_width/2, 6 * yInterval, "GAME OVER!", 2.0, 2.0, 0);
		draw_text_transformed(room_width/2, 7 * yInterval, "Press R to Retry", 2.0, 2.0, 0);
	}
	if(room == TitleScreen) {
		draw_set_halign(fa_middle);
		draw_set_color(c_white);
		draw_text_transformed(room_width/2, room_height/2, "A Matter of Time", 2.0, 2.0, 0);
		draw_text_transformed(room_width/2, 3*room_height/4, "Press Space To Start", 2.0, 2.0, 0);
	}
}
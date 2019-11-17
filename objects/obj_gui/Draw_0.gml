/// @description Insert description here
// You can write your code in this editor
if(room == Level1){
	draw_set_color(c_black);
	var currentTime = global.time;
	if(!global.isPresent){
		switch(room) {
			case Level1:
				// 10 years (accounting for leap years)
				currentTime += 365*10+3;
				break;
			default:
				break;
		}
	}
	var timeText = string(date_get_month(currentTime)) + "/" + string(date_get_day(currentTime)) + "/" + string(date_get_year(currentTime)) + " " + string(date_get_hour(currentTime)) + ":" + string(date_get_minute(currentTime)) + ":" + string(date_get_second(currentTime));
	draw_text_transformed(room_width/8, room_height/8, timeText, 1.5, 1.5, 0);
	#region Dialog Box
	if(global.sentenceArray != undefined){
		draw_set_color(c_black);
		draw_rectangle(0, room_height, room_width, room_height - 100, false);
		draw_set_color(c_white);
		draw_text_transformed(room_width/8, room_height - 100,ds_list_find_value(global.sentenceArray, global.dialogBoxIndex),1,1, 0);
		// Flash every 0.25 seconds
		if((current_time/500) & 1) {
			draw_text_transformed(room_width/2, room_height - 50, "Press Space to Continue", 1, 1, 0);
		}
	}
	#endregion
}
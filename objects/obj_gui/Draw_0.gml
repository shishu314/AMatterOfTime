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
	#endregion
}
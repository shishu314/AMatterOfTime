/// @description Insert description here
// You can write your code in this editor
if(room == Level1 || room == ClothingStore){
	var camX = clamp(obj_player.x - camWidth/2, 0, room_width - camWidth);
	camera_set_view_pos(view_camera[0], camX, 0);
}
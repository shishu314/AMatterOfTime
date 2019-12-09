/// @description Insert description here
// You can write your code in this editor
camX = camera_get_view_x(view_camera[0]);
camWidth = camera_get_view_width(view_camera[0]);
x = camX + camWidth/2;
y = room_height/2;
audio_play_sound(sfx_phoneRing, 1, true);
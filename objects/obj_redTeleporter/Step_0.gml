/// @description Insert description here
// You can write your code in this editor

var player = instance_place(x,y, obj_player);
if(shouldTeleport && player != noone) {
	player.x = obj_blueTeleporter.x;
	player.y = obj_blueTeleporter.y;
	obj_blueTeleporter.shouldTeleport = false;
}
if(player == noone){
	shouldTeleport = true;
}
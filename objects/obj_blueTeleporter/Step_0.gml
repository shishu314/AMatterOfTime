/// @description Insert description here
// You can write your code in this editor
var player = instance_place(x,y, obj_player);
if(shouldTeleport && player != noone) {
	player.x = obj_redTeleporter.x;
	player.y = obj_redTeleporter.y;
	obj_redTeleporter.shouldTeleport = false;
}
if(player == noone){
	shouldTeleport = true;
}
/// @description Insert description here
// You can write your code in this editor
global.isPresent = true;
global.currentLevel = Level1;
if(global.prevX == undefined && global.prevY == undefined){
	InitializeDialogBox("Man...# I could be looking at dank memes...# But here I am...")
} else {
	obj_player.x = global.prevX;
	obj_player.y = global.prevY;
	global.prevX = undefined;
	global.prevY = undefined;
	obj_hobo.introduced = true;
}
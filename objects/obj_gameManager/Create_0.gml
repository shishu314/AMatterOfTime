/// @description Insert description here
// You can write your code in this editor
global.gravAmt = 0.4;
global.isPresent = true;
global.currentLevel = undefined;
global.prevX = undefined;
global.prevY = undefined;
#region Player Items
global.hasJacket = false;
global.hasApple = false;
#endregion
global.isPart2 = false;
window_set_size(1200,900);
instance_create_depth(x, y, -1000, obj_gui);
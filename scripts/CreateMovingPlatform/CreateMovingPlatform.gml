_x = argument0;
_y = argument1;
_depth = argument2;
_XDirection = argument3;
_YDirection = argument4;
_maxDelta = argument5;
_mspd = argument6;

var movingPlatform = instance_create_depth(_x, _y, _depth, obj_movingPlatform);
if(_XDirection != undefined) {
	movingPlatform.currentXDirection = -1* _XDirection;
}
if(_YDirection != undefined) {
	movingPlatform.currentYDirection = -1* _YDirection;
}
movingPlatform.maxDelta = _maxDelta;
movingPlatform.currDelta = _maxDelta / 2;
movingPlatform.mspd = _mspd;
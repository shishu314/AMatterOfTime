/// @description Insert description here
// You can write your code in this editor
if(currDelta < maxDelta) {
	if(currentXDirection != undefined) {
		x += mspd * currentXDirection;
	}
	if(currentYDirection != undefined) {
		y += mspd * currentYDirection;
	}
	currDelta += mspd;
} else {
	if(currentXDirection != undefined) {
		currentXDirection *= -1;
	}
	if(currentYDirection != undefined) {
		currentYDirection *= -1;
	}
	currDelta = 0;
}
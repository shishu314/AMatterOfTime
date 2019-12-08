/// @description Insert description here
// You can write your code in this editor
#region Ground Check
if(jumpAmt<=0){
	hitPlat = instance_position(x, y+sprite_height/2, obj_platform);
	if(hitPlat != noone && hitPlat.shouldCollide) {
		y = hitPlat.y - hitPlat.sprite_height/2 - sprite_height/2;
		if(hitPlat.mspd != undefined) {
			if(hitPlat.currentXDirection != undefined) {
				x += hitPlat.mspd * hitPlat.currentXDirection;
			}
			if(hitPlat.currentYDirection != undefined) {
				y += hitPlat.mspd * hitPlat.currentYDirection;
			}
		}
		grounded = true;
		sprite_index = spr_player_idle;
	} else {
		grounded = false;
	}
}
#endregion

if(global.sentenceArray == undefined) {
#region Movement
if(keyboard_check(ord("A")) || keyboard_check(vk_left)) {
	if(x > abs(sprite_width/2)){
		x -= mspd;
	}
	sprite_index = spr_player_walk;
	image_xscale = -1;
} else if(keyboard_check(ord("D")) || keyboard_check(vk_right)) {
	sprite_index = spr_player_walk;
	image_xscale = 1;
	if(x < room_width - abs(sprite_width/2)){
		x += mspd;
	}
}
#endregion

#region Jumping
if (!keyboard_check(ord("W")) && !keyboard_check(vk_up)) {
	isJumping = false;
	jumpTimer = jumpTime;
}
if grounded {											
	jumpTimer = 0;
	jumpAmt = 0	;									
	
	if (keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up)){	
	    jumpAmt = jumpMax;
		y -= jumpAmt;
		isJumping=true;
		grounded=false;	
	}
}else{													
	y -= jumpAmt;								
	if(jumpTimer >= jumpTime) {
		jumpAmt -= global.gravAmt;
	} else {
		jumpAmt += global.gravAmt;	
	}
	jumpTimer += 1/room_speed;
	
	if (jumpAmt > 0) {
		sprite_index = spr_player_jump;
	} else {
		sprite_index = spr_player_fall;
	}
}
#endregion

#region Time Travel
if(keyboard_check_pressed(vk_space)) {
	if(global.isPresent){
		if(timeTravelCDCount == 0){
			global.isPresent = !global.isPresent;
			if(global.isPart2) {
				alarm[0] = timeTravelMax;
				timeTravelCount = timeTravelMax;
			}
		}
	} else {
		global.isPresent = true;
		if(global.isPart2) {
			timeTravelCDCount = timeTravelCD;
		}
	}
}
timeTravelCDCount = clamp(timeTravelCDCount - 1, 0, timeTravelCD); 
timeTravelCount = clamp(timeTravelCount - 1, 0, timeTravelMax);
#endregion
}

#region Advance Dialog
if(global.sentenceArray != undefined) {
	if(keyboard_check_pressed(vk_space)) {
		if(global.dialogBoxIndex == ds_list_size(global.sentenceArray) - 1) {
			ds_list_destroy(global.sentenceArray);
			global.sentenceArray = undefined;
		} else {
			global.dialogBoxIndex += 1;
		}
	}
}
#endregion

#region Fall
if(y > room_height) {
	if(room == ClothingStore){
		global.hasJacket = false;
	}
	InitializeEndGameText("You fell out of the world and died");
	room_goto(GameOver);
}
#endregion
/// @description Insert description here
// You can write your code in this editor
#region Ground Check
if(jumpAmt<=0){
	hitPlat = instance_position(x, y+sprite_height/2, obj_platform);
	if(hitPlat == noone) {
		if(global.isPresent) {
			hitPlat = instance_position(x, y+sprite_height/2, obj_presentPlatform);
		} else {
			hitPlat = instance_position(x, y+sprite_height/2, obj_pastPlatform);
		}
	}
	if(hitPlat != noone) {
		y = hitPlat.y - hitPlat.sprite_height/2 - sprite_height/2;
		grounded = true;
		sprite_index = spr_player_idle;
	} else {
		grounded = false;
	}
}
#endregion

if(global.sentenceArray == undefined) {
#region Movement
if(keyboard_check(ord("A"))) {
	if(x > abs(sprite_width/2)){
		x -= mspd;
	}
	sprite_index = spr_player_walk;
	image_xscale = -1;
} else if(keyboard_check(ord("D"))) {
	sprite_index = spr_player_walk;
	image_xscale = 1;
	x += mspd;
}
#endregion

#region Jumping
if not keyboard_check(ord("W")) {
	isJumping = false;
	jumpTimer = jumpTime;
}
if grounded {											
	jumpTimer = 0;
	jumpAmt = 0	;									
	
	if keyboard_check_pressed(ord("W")){	
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
			if(room != Level1) {
				alarm[0] = timeTravelCount;
			}
		}
	} else {
		global.isPresent = true;
		timeTravelCDCount = timeTravelCD;
	}
}
timeTravelCDCount = clamp(timeTravelCDCount - 1, 0, timeTravelCD); 
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
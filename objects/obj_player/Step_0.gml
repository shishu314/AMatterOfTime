/// @description Insert description here
// You can write your code in this editor
#region Ground Check
if(jumpAmt<=0){
	hitPlat = instance_position(x, y+sprite_height/2, obj_platform);
	if(hitPlat != noone) {
		y = hitPlat.y - hitPlat.sprite_height/2 - sprite_height/2;
		grounded = true;
		sprite_index = spr_player_idle;
	} else {
		grounded = false;
	}
}
#endregion

#region Movement
if(keyboard_check(ord("A"))) {
	x -= mspd;
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
	global.isPresent = !global.isPresent;
}
#endregion
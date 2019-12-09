/// @description Insert description here
// You can write your code in this editor
if(global.sentenceArray != undefined) {
	if(global.dialogBoxIndex != 0) {
		sprite_index = spr_phone;
		audio_stop_sound(sfx_phoneRing);
	}
} else {
	instance_destroy();
}
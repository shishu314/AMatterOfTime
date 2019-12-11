/// @description Insert description here
// You can write your code in this editor
global.time = date_create_datetime(2050, 12, 10, 10, 10, 10);
global.currentLevel = Room;
diaryRead = false;
InitializeDialogBox("...# ..# .# Hey John, just wanted to discuss the plan for today's mission...# ...blah blah blah...# Hey! Why do you sound so tired? Don't tell me you were still sleeping!?# John! Not again...# This is IMPORTANT.# You better not mess this up or you're FIRED!");
read = false;
instance_create_depth(x,y, 0, obj_phone);
audio_play_sound(sfx_room, 1, true);
ds_list_destroy(global.sentenceArray);
global.sentenceArray = undefined;
room_goto(global.currentLevel);
audio_stop_all();
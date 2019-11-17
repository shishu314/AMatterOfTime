_text = argument0;
if(global.sentenceArray != undefined) {
	ds_list_destroy(global.sentenceArray);
}
var wordArray = ds_list_create();
while(_text != ""){
	var index = string_pos(" ", _text);
	if(index == 0) {
		ds_list_add(wordArray,_text);
		_text = "";
	} else {
		ds_list_add(wordArray, string_copy(_text, 0, index-1));
		_text = string_copy(_text, index+1, string_length(_text)-index);
	}
}
global.sentenceArray = ds_list_create();
var sentence = "";
for(var i = 0; i < ds_list_size(wordArray); ++i) {
	var currentWord = ds_list_find_value(wordArray, i);
	if(string_length(sentence+ currentWord) < global.maxSentenceLength){
		if(string_char_at(currentWord, string_length(currentWord)) == "#") {
			sentence += string_copy(currentWord, 0, string_length(currentWord) - 1);
			ds_list_add(global.sentenceArray, sentence);
			sentence = "";
		} else {
			sentence += currentWord + " ";
		}
	} else {
		ds_list_add(global.sentenceArray, sentence);
		sentence = ds_list_find_value(wordArray, i)+ " ";
	}
}
ds_list_destroy(wordArray);
if(sentence != "") {
	ds_list_add(global.sentenceArray, sentence);
}
global.dialogBoxIndex = 0;
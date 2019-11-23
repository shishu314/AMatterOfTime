_wordArray = argument0;
_maxSentenceLength = argument1;
var sentenceArray = ds_list_create();
var sentence = "";
for(var i = 0; i < ds_list_size(_wordArray); ++i) {
	var currentWord = ds_list_find_value(_wordArray, i);
	if(string_length(sentence+ currentWord) < _maxSentenceLength){
		if(string_char_at(currentWord, string_length(currentWord)) == "#") {
			sentence += string_copy(currentWord, 0, string_length(currentWord) - 1);
			ds_list_add(sentenceArray, sentence);
			sentence = "";
		} else {
			sentence += currentWord + " ";
		}
	} else {
		ds_list_add(sentenceArray, sentence);
		if(string_char_at(currentWord, string_length(currentWord)) == "#") {
			ds_list_add(sentenceArray, string_copy(currentWord, 0, string_length(currentWord) - 1));
			sentence = "";
		} else {
			sentence = currentWord+ " ";
		}
	}
}
ds_list_destroy(_wordArray);
if(sentence != "") {
	ds_list_add(sentenceArray, sentence);
}
return sentenceArray;
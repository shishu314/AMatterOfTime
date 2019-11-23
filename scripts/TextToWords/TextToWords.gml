_text = argument0;
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
return wordArray;
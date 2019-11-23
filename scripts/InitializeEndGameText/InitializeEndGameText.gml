_text = argument0;
if(global.sentenceArray != undefined) {
	ds_list_destroy(global.sentenceArray);
}
var wordArray = TextToWords(_text);
global.sentenceArray = WordsToSentences(wordArray, global.maxEndGameSentenceLength);
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function arrayIncludes(array, searchTerm){
	for (var i = 0; i < array_length_1d(array); i ++) {
		if (array[i] == searchTerm) {
			return true;
		}
	}
	
	return false;
}
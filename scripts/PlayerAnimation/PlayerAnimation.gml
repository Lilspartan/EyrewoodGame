// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerAnimation(){
	var _oldSprite = sprite_index;
	
	if (state != PLAYERSTATE.LOCKED) {
		if (inputMagnitude == 0) {
			sprite_index = sIdle;
		} else {
			direction = inputDirection;
			sprite_index = sRun;	
		}
		
		if (_oldSprite != sprite_index) localFrame = 0;
		
		var _cardinalDirection = round(direction / 90);
		var _totalFrames = sprite_get_number(sprite_index) / 4;
		image_index = localFrame + (_cardinalDirection * _totalFrames);
		localFrame += sprite_get_speed(sprite_index) / FRAME_RATE;
		
		if (localFrame >= _totalFrames) {
			animationEnd = true;	
			localFrame -= _totalFrames;
		} else animationEnd = false;
	}
}
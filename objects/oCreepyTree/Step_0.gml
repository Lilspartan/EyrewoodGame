image_speed = 0;

var _blinkRnd = random_range(0, 1000) < blinkFreq;

if (_blinkRnd || blinking) {
	if (!blinking) {
		image_index = 1;
		blinking = true;
	} else {
		if (blinktmr < blinkTime + random_range(0, 100)) {
			blinktmr ++;
		} else {
			image_index = 0;
			blinking = false;
			blinktmr = 0;
		}
	}
} else {
	image_index = 0;	
}

if (point_in_circle(oPlayer.x, oPlayer.y, x, y, 100)) {
	ChangeCameraSubject(self, 0.8, 0.03);
} else {
	ChangeCameraSubject(oPlayer, 1, 0.005);
}

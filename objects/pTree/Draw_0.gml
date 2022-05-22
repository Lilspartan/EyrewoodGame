if (global.debug) {
	var _halfW = sprite_width / 2;
	draw_rectangle(x - _halfW, y - sprite_height, x + _halfW, y, 1);
}

draw_self()
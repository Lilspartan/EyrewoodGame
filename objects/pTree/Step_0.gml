if (goBehind) {
	var _halfW = abs(sprite_width) / 2;
	if (point_in_rectangle(oPlayer.x, oPlayer.y, x - _halfW, y - abs(sprite_height), x + _halfW, y)) {
		current_opacity = max(0.5, current_opacity - max((current_opacity / 10), 0.005));
	} else {
		current_opacity = min(1, current_opacity + max(((1 - current_opacity) / 10), 0.005));
	}
	image_alpha = current_opacity;
}